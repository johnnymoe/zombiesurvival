INC_SERVER()

local function RefreshCookOwners(pl)
	for _, ent in pairs(ents.FindByClass("prop_cookstove")) do
		if ent:IsValid() and ent:GetObjectOwner() == pl then
			ent:SetObjectOwner(NULL)
		end
	end
end
hook.Add("PlayerDisconnected", "CookStove.PlayerDisconnected", RefreshCookOwners)
hook.Add("OnPlayerChangedTeam", "CookStove.OnPlayerChangedTeam", RefreshCookOwners)

function ENT:Initialize()
	self:SetModel("models/props_c17/furniturestove001a.mdl")
	self:PhysicsInit(SOLID_VPHYSICS)
	self:SetUseType(SIMPLE_USE)
	self:SetCollisionGroup(COLLISION_GROUP_WORLD)

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
	if key == "maxcookstovehealth" then
		value = tonumber(value)
		if not value then return end

		self:SetMaxObjectHealth(value)
	elseif key == "maxcookstovehealth" then
		value = tonumber(value)
		if not value then return end

		self:SetObjectHealth(value)
	end
end

function ENT:AcceptInput(name, activator, caller, args)
	if name == "setcookstovehealth" then
		self:KeyValue("cookstovehealth", args)
		return true
	elseif name == "setmaxcookstovehealth" then
		self:KeyValue("maxcookstovehealth", args)
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
	self:TakePhysicsDamage(dmginfo)

	if dmginfo:GetDamage() <= 0 then return end

	local attacker = dmginfo:GetAttacker()
	if not (attacker:IsValid() and attacker:IsPlayer() and attacker:Team() == TEAM_HUMAN) then
		self:ResetLastBarricadeAttacker(attacker, dmginfo)
		self:SetObjectHealth(self:GetObjectHealth() - dmginfo:GetDamage())
	end
end

function ENT:Use(activator, caller)
	local ishuman = activator:Team() == TEAM_HUMAN and activator:Alive()

	if ishuman then
		activator:SendLua("GAMEMODE:OpenStoveMenu()")
	end
end

function ENT:AltUse(activator, tr)
	self:PackUp(activator)
end

function ENT:OnPackedUp(pl)
	pl:GiveEmptyWeapon("weapon_zs_cookstove")
	pl:GiveAmmo(1, "Hornet")

	pl:PushPackedItem(self:GetClass(), self:GetObjectHealth())

	self:Remove()
end

function ENT:Think()
	if self.Destroyed then
		self:Remove()
	end
end
