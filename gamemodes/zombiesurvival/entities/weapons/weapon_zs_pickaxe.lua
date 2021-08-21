AddCSLuaFile()

SWEP.PrintName = "Pickaxe"
SWEP.Description = "Its a pickaxe. What am i supposed to write else here? Deals x3 damage to the head."

if CLIENT then
	SWEP.ViewModelFOV = 70
	SWEP.ViewModelFlip = false

	SWEP.ShowViewModel = false
	SWEP.ShowWorldModel = false
	SWEP.VElements = {
	["head"] = { type = "Model", model = "models/props_mining/pickaxe01_head.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "stick", pos = Vector(-7.841, 0, 0), angle = Angle(90, 0, 0), size = Vector(0.5, 0.5, 0.5), color = Color(206, 255, 255, 255), surpresslightning = false, material = "models/props_pipes/Pipesystem01a_skin3", skin = 0, bodygroup = {} },
	["stick"] = { type = "Model", model = "models/xqm/cylinderx1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(3.585, 1.603, -6.252), angle = Angle(94.248, -17.955, 0), size = Vector(1.629, 0.146, 0.162), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/white_brushes", skin = 0, bodygroup = {} }
}

	
end

SWEP.ViewModelBoneMods = {}

SWEP.Base = "weapon_zs_basemelee"

SWEP.ViewModel = "models/weapons/c_stunstick.mdl"
SWEP.WorldModel = "models/weapons/w_stunbaton.mdl"
SWEP.UseHands = true

SWEP.WElements = {
	["stick"] = { type = "Model", model = "models/xqm/cylinderx1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(3.822, 1.258, -2.441), angle = Angle(100.03, -30.803, 22.673), size = Vector(1.639, 0.177, 0.234), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/white_brushes", skin = 0, bodygroup = {} },
	["head"] = { type = "Model", model = "models/props_mining/pickaxe01_head.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "stick", pos = Vector(-7.841, 0, 0), angle = Angle(90, 0, 0), size = Vector(0.699, 0.602, 0.545), color = Color(206, 255, 255, 255), surpresslightning = false, material = "models/props_pipes/Pipesystem01a_skin3", skin = 0, bodygroup = {} }
}

SWEP.HoldType = "melee2"

SWEP.Tier = 2

SWEP.MeleeDamage = 55
SWEP.MeleeRange = 90
SWEP.MeleeSize = 1.3
SWEP.MeleeKnockBack = 0

SWEP.HeadshotMulti = 3

SWEP.WalkSpeed = SPEED_FAST


SWEP.SwingTime = 1.2
SWEP.SwingRotation = Angle(0, -20, -40)
SWEP.SwingOffset = Vector(10, 0, 0)
SWEP.SwingHoldType = "melee"

SWEP.HitDecal = "Manhackcut"

SWEP.AllowQualityWeapons = true

GAMEMODE:AttachWeaponModifier(SWEP, WEAPON_MODIFIER_MELEE_RANGE, 3)

function SWEP:PlaySwingSound()
	self:EmitSound("weapons/iceaxe/iceaxe_swing1.wav", 75, math.random(65, 70))
end

function SWEP:PlayHitSound()
	self:EmitSound("weapons/melee/golf club/golf_hit-0"..math.random(4)..".ogg")
end

function SWEP:PlayHitFleshSound()
	self:EmitSound("physics/body/body_medium_break"..math.random(2, 4)..".wav")
end
