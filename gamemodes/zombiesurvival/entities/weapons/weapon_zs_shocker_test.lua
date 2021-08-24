AddCSLuaFile()

SWEP.PrintName = "Lightning Blade (TEST)"

if CLIENT then

	SWEP.VElements = {
		["base2"] = { type = "Model", model = "models/props_lab/teleportring.mdl", bone = "ValveBiped.Bip01", rel = "base", pos = Vector(0, 0, 0), angle = Angle(0, 180, 0), size = Vector(0.08, 0.08, 0.08), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["base"] = { type = "Model", model = "models/props_lab/powerbox02d.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(-0.9, 4.975, -8.412), angle = Angle(5.961, 270, 16.764), size = Vector(0.25, 0.25, 0.25), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["ss"] = { type = "Sprite", sprite = "sprites/grav_flare", bone = "ValveBiped.Bip01", rel = "base", pos = Vector(-1.338, 2.894, 0.125), size = { x = 5, y = 5 }, color = Color(255, 255, 255, 255), nocull = true, additive = true, vertexalpha = true, vertexcolor = true, ignorez = false},
		["base2+"] = { type = "Model", model = "models/props_lab/teleportring.mdl", bone = "ValveBiped.Bip01", rel = "base", pos = Vector(-0.975, -0.263, 0.232), angle = Angle(0, 270, 90), size = Vector(0.15, 0.15, 0.15), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
	}

	SWEP.WElements = {
		["base2"] = { type = "Model", model = "models/props_lab/teleportring.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "base", pos = Vector(0, 0, 0), angle = Angle(0, 180, 0), size = Vector(0.08, 0.08, 0.08), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["ss"] = { type = "Sprite", sprite = "sprites/grav_flare", bone = "ValveBiped.Bip01_R_Hand", rel = "base", pos = Vector(-1.338, 2.894, 0.125), size = { x = 5, y = 5 }, color = Color(255, 255, 255, 255), nocull = true, additive = true, vertexalpha = true, vertexcolor = true, ignorez = false},
		["base"] = { type = "Model", model = "models/props_lab/powerbox02d.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(3, 1, -8), angle = Angle(270, 90, 90), size = Vector(0.25, 0.25, 0.25), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["base2+"] = { type = "Model", model = "models/props_lab/teleportring.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "base", pos = Vector(-0.975, -0.263, 0.232), angle = Angle(0, 270, 90), size = Vector(0.15, 0.15, 0.15), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
	}
end

SWEP.Base = "weapon_zs_basemelee"

SWEP.MeleeDamage = 25

SWEP.ViewModel = "models/weapons/v_hammer/c_hammer.mdl"
SWEP.WorldModel = "models/weapons/w_hammer.mdl"
SWEP.UseHands = true

SWEP.BaseShockChance = 45
SWEP.BaseShockDMG = 20
SWEP.BaseShockRange = 120

GAMEMODE:SetPrimaryWeaponModifier(SWEP, WEAPON_MODIFIER_FIRE_DELAY, -0.04)
GAMEMODE:AttachWeaponModifier(SWEP, WEAPON_MODIFIER_MELEE_RANGE, 3, 1)

function SWEP:GetTracesNumPlayers(traces)
	local numplayers = 0

	local ent
	for _, trace in pairs(traces) do
		ent = trace.Entity
		if ent and ent:IsValidPlayer() then
			numplayers = numplayers + 1
		end
	end

	return numplayers
end

function SWEP:GetDamage(numplayers, basedamage)
	basedamage = basedamage or self.MeleeDamage

	if numplayers then
		return basedamage * math.Clamp(1.25 - numplayers * 0.25, 0.5, 1)
	end

	return basedamage
end

function SWEP:MeleeSwing()
	local owner = self:GetOwner()

	owner:DoAttackEvent()
	self:SendWeaponAnim(self.MissAnim)
	self.IdleAnimation = CurTime() + self:SequenceDuration()

	local hit = false
	local tr = owner:CompensatedPenetratingMeleeTrace(self.MeleeRange * (owner.MeleeRangeMul or 1), self.MeleeSize)
	local damage = self:GetDamage(self:GetTracesNumPlayers(tr))
	local ent

	local damagemultiplier = owner:Team() == TEAM_HUMAN and owner.MeleeDamageMultiplier or 1 --(owner.BuffMuscular and owner:Team()==TEAM_HUMAN) and 1.2 or 1
	if owner:IsSkillActive(SKILL_LASTSTAND) then
		if owner:Health() <= owner:GetMaxHealth() * 0.25 then
			damagemultiplier = damagemultiplier * 2
		else
			damagemultiplier = damagemultiplier * 0.85
		end
	end

	for _, trace in ipairs(tr) do
		if not trace.Hit then continue end

		ent = trace.Entity

		hit = true

		local hitflesh = trace.MatType == MAT_FLESH or trace.MatType == MAT_BLOODYFLESH or trace.MatType == MAT_ANTLION or trace.MatType == MAT_ALIENFLESH

		if hitflesh then
			util.Decal(self.BloodDecal, trace.HitPos + trace.HitNormal, trace.HitPos - trace.HitNormal)

			if SERVER then
				self:ServerHitFleshEffects(ent, trace, damagemultiplier)
			end

		end

		if ent and ent:IsValid() then
			if SERVER then
				self:ServerMeleeHitEntity(trace, ent, damagemultiplier)
			end

			self:MeleeHitEntity(trace, ent, damagemultiplier, damage)

			if SERVER then
				self:ServerMeleePostHitEntity(trace, ent, damagemultiplier)
			end

			if owner.GlassWeaponShouldBreak then break end
		end
	end

	if hit then
		self:PlayHitSound()
	else
		self:PlaySwingSound()

		if owner.MeleePowerAttackMul and owner.MeleePowerAttackMul > 1 then
			self:SetPowerCombo(0)
		end
	end
end

function SWEP:MeleeHitEntity(tr, hitent, damagemultiplier, damage)
	if not IsFirstTimePredicted() then return end

	local owner = self:GetOwner()

	damage = damage * damagemultiplier

	local dmginfo = DamageInfo()
	dmginfo:SetDamagePosition(tr.HitPos)
	dmginfo:SetAttacker(owner)
	dmginfo:SetInflictor(self)
	dmginfo:SetDamageType(self.DamageType)
	dmginfo:SetDamage(damage)
	dmginfo:SetDamageForce(math.min(self.MeleeDamage, 50) * 50 * owner:GetAimVector())
	
	if not hitent:IsPlayer() then return end
	local shockTargets = {}
	--Random chance of shocking the zombie target
	if math.random(1, 100) <= self.BaseShockChance then
		--Emits a electric sound
		hitent:EmitSound("npc/roller/mine/rmine_shockvehicle2.wav")
		
		--Because Lua is stupid, this method below seems to work
		
		--Shock target table
		
		--For each ent (that is a zombie player) add to the tbl of shock targets
		for _, z in ipairs(ents.FindInSphere(hitent:GetPos(), self.BaseShockRange)) do
			if z:IsPlayer() and z:Team() ~= TEAM_SURVIVOR then
				table.insert(shockTargets, z)
			end
		end
	end
	
	--SHOULD BE CALLED ON SERVER TO PREVENT CLIENT ISSUES
	--for each shock target thats in the table, deal shock damage
	if SERVER then
		for k = 1, #shockTargets do
			shockTargets[k]:TakeDamage(self.BaseShockDMG, owner, self)
		end
		
		--And of course, damage the hit target
		hitent:TakeDamage(self.MeleeDamage, owner, self)
	end
end