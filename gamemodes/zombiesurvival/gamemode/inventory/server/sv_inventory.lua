local meta = FindMetaTable("Player")

function meta:AddInventoryItem(item)
	if not GAMEMODE:IsInventoryItem(item) then return false end

	self.ZSInventory[item] = self.ZSInventory[item] and self.ZSInventory[item] + 1 or 1

	if GAMEMODE:GetInventoryItemType(item) == INVCAT_TRINKETS then
		self:ApplyTrinkets()
	end

	net.Start("zs_inventoryitem")
		net.WriteString(item)
		net.WriteInt(self.ZSInventory[item], 5)
	net.Send(self)

	return true
end

function meta:TakeInventoryItem(item)
	if not self:HasInventoryItem(item) then return false end

	local setnil = self.ZSInventory[item] == 1
	self.ZSInventory[item] = self.ZSInventory[item] - 1

	if setnil then
		self.ZSInventory[item] = nil
	end

	if GAMEMODE:GetInventoryItemType(item) == INVCAT_TRINKETS then
		self:ApplyTrinkets()
	end

	net.Start("zs_inventoryitem")
		net.WriteString(item)
		net.WriteInt(self.ZSInventory[item] or 0, 5)
	net.Send(self)

	return true -- Return true aka item was taken
end

function meta:WipePlayerInventory()
	if not self.ZSInventory or table.Count(self.ZSInventory) == 0 then return end

	self.ZSInventory = {}
	self:ApplyTrinkets()

	net.Start("zs_wipeinventory")
	net.Send(self)
end

net.Receive("zs_trycraft", function(len, pl)
	local items = net.ReadTable()
	pl:TryAssembleItem(items)
	local nearest = pl:NearestCraftingStationOwnedByOther()
	if nearest then
		local owner = nearest.GetObjectOwner and nearest:GetObjectOwner() or nearest:GetOwner()
		if owner:IsValid() then
			local commission = items["Reward"]
			if commission > 0 then
				owner:AddPoints(commission, nil, nil, true)
				
				net.Start("zs_commission")
					net.WriteEntity(nearest)
					net.WriteEntity(pl)
					net.WriteFloat(commission)
				net.Send(owner)
			end
		end
	end
end)

function meta:TryAssembleItem(components)
	
	local heldclass = components["Weapon"]
	
	local heldwep, desiassembly = components["Weapon"]
	
	for i, reqs in pairs(GAMEMODE.Assemblies) do
		for item, count in pairs(self.ZSInventory) do
			for k, l in pairs(reqs["Recipes"]) do
				if string.find(item, k) and count >= l then
					if reqs["Weapon"] == heldclass then
						desiassembly = reqs["Result"]
					end
				end				
			end
		end
	end

	if not desiassembly then
		self:CenterNotify(COLOR_RED, "You can't make anything with this component and your currently held weapon.")
		self:SendLua("surface.PlaySound(\"buttons/button10.wav\")")
		return
	end
	
	local invitemresult = GAMEMODE:GetInventoryItemType(desiassembly) ~= -1

	local desitable
	if invitemresult then
		for k, l in pairs(components) do
			self:TakeInventoryItem(l)
		end	
		self:AddInventoryItem(desiassembly)
		self:CenterNotify(COLOR_LIMEGREEN, translate.ClientGet(self, "crafting_successful"), color_white, "   ("..GAMEMODE.ZSInventoryItemData[desiassembly].PrintName..")")
	else
		desitable = weapons.Get(desiassembly)
		if (not desitable.AmmoIfHas and self:HasWeapon(desiassembly)) then return end
		for k, l in pairs(components) do
			for count = #components - 1, #components do
				self:TakeInventoryItem(l)
			end	
		end	
		
		if desitable.AmmoIfHas then
			self:GiveAmmo(1, desitable.Primary.Ammo)
		end
		self:GiveEmptyWeapon(desiassembly)
		self:SelectWeapon(desiassembly)
		self:UpdateAltSelectedWeapon()

		self:CenterNotify(COLOR_LIMEGREEN, translate.ClientGet(self, "crafting_successful"), color_white, "   ("..desitable.PrintName..")")
	end
	
	self:TakeInventoryItem(heldclass)
	if heldwep then
		self:GetWeapon(heldwep):EmptyAll(true)
		if heldwep.AmmoIfHas then
			self:RemoveAmmo(1, heldwep.Primary.Ammo)
		end
		self:StripWeapon(heldclass)
	end
	
	
	self:SendLua("surface.PlaySound(\"buttons/lever"..math.random(5)..".wav\")")

	GAMEMODE.StatTracking:IncreaseElementKV(STATTRACK_TYPE_WEAPON, desiassembly, "Crafts", 1)
end

function meta:DropInventoryItemByType(itype)
	if GAMEMODE.ZombieEscape then return end
	if not self:HasInventoryItem(itype) then return end

	local ent = ents.Create("prop_invitem")
	if ent:IsValid() then
		ent:SetInventoryItemType(itype)
		ent:Spawn()
		ent.DroppedTime = CurTime()

		self:TakeInventoryItem(itype)
		self:UpdateAltSelectedWeapon()

		return ent
	end
end

function meta:DropAllInventoryItems()
	local vPos = self:GetPos()
	local vVel = self:GetVelocity()
	local zmax = self:OBBMaxs().z * 0.75
	for invitem, count in pairs(self:GetInventoryItems()) do
		for i = 1, count do
			local ent = self:DropInventoryItemByType(invitem)
			if ent and ent:IsValid() then
				ent:SetPos(vPos + Vector(math.Rand(-16, 16), math.Rand(-16, 16), math.Rand(2, zmax)))
				ent:SetAngles(VectorRand():Angle())
				local phys = ent:GetPhysicsObject()
				if phys:IsValid() then
					phys:AddAngleVelocity(Vector(math.Rand(-720, 720), math.Rand(-720, 720), math.Rand(-720, 720)))
					phys:ApplyForceCenter(phys:GetMass() * (math.Rand(32, 328) * VectorRand():GetNormalized() + vVel))
				end
			end
		end
	end
end

function meta:GiveInventoryItemByType(itype, plyr)
	if GAMEMODE.ZombieEscape then return end
	if not self:HasInventoryItem(itype) then return end

	if GAMEMODE:GetInventoryItemType(itype) == INVCAT_TRINKETS and plyr:HasInventoryItem(itype) then
		self:CenterNotify(COLOR_RED, translate.ClientGet(self, "they_already_have_this_trinket"))
		return
	end

	self:TakeInventoryItem(itype)
	self:UpdateAltSelectedWeapon()

	net.Start("zs_invgiven")
		net.WriteString(itype)
		net.WriteEntity(self)
	net.Send(plyr)

	plyr:AddInventoryItem(itype)
end

function GM:IsInventoryItem(item)
	return self.ZSInventoryItemData[item]
end

function meta:GetInventoryItems()
	return self.ZSInventory
end

function meta:HasInventoryItem(item)
	return self.ZSInventory[item]
end
