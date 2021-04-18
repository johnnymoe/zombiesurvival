INC_SERVER()

local function RefreshFridgeOwners(pl)
	for _, ent in pairs(ents.FindByClass("prop_fridgestorage")) do
		if ent:IsValid() and ent:GetObjectOwner() == pl then
			ent:SetObjectOwner(NULL)
		end
	end
end
hook.Add("PlayerDisconnected", "FridgeStorage.PlayerDisconnected", RefreshFridgeOwners)
hook.Add("OnPlayerChangedTeam", "FridgeStorage.OnPlayerChangedTeam", RefreshFridgeOwners)

function ENT:Initialize()
	self:SetModel("models/props_c17/furniturefridge001a.mdl")
	self:PhysicsInit(SOLID_VPHYSICS)
	self:SetUseType(SIMPLE_USE)
	self:SetPlaybackRate(1)
	self:SetCollisionGroup(COLLISION_GROUP_WORLD) -- I decided to make them not collide.

	self:CollisionRulesChanged()

	local phys = self:GetPhysicsObject()
	if phys:IsValid() then
		phys:EnableMotion(false)
	end

	self:SetMaxObjectHealth(400)
	self:SetObjectHealth(self:GetMaxObjectHealth())
end

function ENT:KeyValue(key, value)
	key = string.lower(key)
	if key == "maxfridgehealth" then
		value = tonumber(value)
		if not value then return end

		self:SetMaxObjectHealth(value)
	elseif key == "fridgehealth" then
		value = tonumber(value)
		if not value then return end

		local caches = MySelf.FridgeItems
	end
end

function ENT:AcceptInput(name, activator, caller, args)
	if name == "setfridgehealth" then
		self:KeyValue("fridgehealth", args)
		return true
	elseif name == "setmaxfridgehealth" then
		self:KeyValue("maxfridgehealth", args)
		return true
	end
end

function ENT:SetObjectHealth(health)
	self:SetDTFloat(0, health)
	if health <= 0 and not self.Destroyed then
		self.Destroyed = true

		if self:GetObjectOwner():IsValidLivingHuman() then
			self:GetObjectOwner():SendDeployableLostMessage(self)
		end

		local ent = ents.Create("prop_physics")
		if ent:IsValid() then
			ent:SetModel(self:GetModel())
			ent:SetMaterial(self:GetMaterial())
			ent:SetAngles(self:GetAngles())
			ent:SetPos(self:GetPos())
			ent:SetSkin(self:GetSkin() or 0)
			ent:SetColor(self:GetColor())
			ent:Spawn()
			ent:Fire("break", "", 0)
			ent:Fire("kill", "", 0.1)
		end
	end
end

function ENT:OnTakeDamage(dmginfo)
	if dmginfo:GetDamage() <= 0 then return end

	self:TakePhysicsDamage(dmginfo)

	local attacker = dmginfo:GetAttacker()
	if not (attacker:IsValid() and attacker:IsPlayer() and attacker:Team() == TEAM_HUMAN) then
		self:SetObjectHealth(self:GetObjectHealth() - dmginfo:GetDamage())
		self:ResetLastBarricadeAttacker(attacker, dmginfo)
	end
end

function ENT:AltUse(activator, tr)
	self:PackUp(activator)
end

function ENT:OnPackedUp(pl)
	pl:GiveEmptyWeapon("weapon_zs_fridgestorage")
	pl:GiveAmmo(1, "fridge")

	pl:PushPackedItem(self:GetClass(), self:GetObjectHealth())

	self:Remove()
end

function ENT:Think()
	if self.Destroyed then
		self:Remove()
	elseif self.Close and CurTime() >= self.Close then
		self.Close = nil
		self:EmitSound("items/ammocrate_close.wav")
	end
end

function ENT:Use(activator, caller)
	if activator:Team() ~= TEAM_HUMAN or not activator:Alive() or GAMEMODE:GetWave() <= 0 then return end

	if not self:GetObjectOwner():IsValid() then
		self:SetObjectOwner(activator)
		self:GetObjectOwner():SendDeployableClaimedMessage(self)
	end

	local owner = self:GetObjectOwner()
	local resup = activator:Restock(owner, self)

	if resup and not self.Close then
		self:EmitSound("items/ammocrate_close.wav")
	end
	self.Close = CurTime() + 3
end
