AddCSLuaFile()
DEFINE_BASECLASS("weapon_zs_base")
SWEP.PrintName = "Pickaxe"
SWEP.Description = "Its a pickaxe. What am i supposed to write else here? Deals x3 damage to the head."

if CLIENT then
	SWEP.ViewModelFOV = 70
	SWEP.ViewModelFlip = false

	SWEP.ShowViewModel = false
	SWEP.ShowWorldModel = false
	SWEP.VElements = {
	["headcircle"] = { type = "Model", model = "models/hunter/tubes/tube1x1x1.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "stick", pos = Vector(-5.795, 0, 0), angle = Angle(90, 0, 0), size = Vector(0.043, 0.043, 0.08), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/fender_chrome", skin = 0, bodygroup = {} },
	["headcircletrapezium"] = { type = "Model", model = "models/hunter/plates/plate1x4x2trap1.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "headcircle", pos = Vector(0.403, 0, 3.803), angle = Angle(-180, 0, 0), size = Vector(0.044, 0.034, 0.201), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/fender_chrome", skin = 0, bodygroup = {} },
	["headcircletrapezium+"] = { type = "Model", model = "models/hunter/plates/plate1x4x2trap1.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "headcircle", pos = Vector(0.426, 0.008, 2.31), angle = Angle(-169.662, 0, 0), size = Vector(0.044, 0.033, 0.199), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/fender_chrome", skin = 0, bodygroup = {} },
	["headcircletrapezium++"] = { type = "Model", model = "models/hunter/plates/plate1x4x2trap1.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "headcircle", pos = Vector(0.252, 0.233, 2.567), angle = Angle(-173.63901, 3.615, 90), size = Vector(0.044, 0.034, 0.184), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/fender_chrome", skin = 0, bodygroup = {} },
	["headcircletrapezium+++"] = { type = "Model", model = "models/hunter/plates/plate1x4x2trap1.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "headcircle", pos = Vector(0.403, 0, 3.072), angle = Angle(0, 0, 0), size = Vector(0.044, 0.034, 0.201), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/fender_chrome", skin = 0, bodygroup = {} },
	["headcircletrapezium++++"] = { type = "Model", model = "models/hunter/plates/plate1x4x2trap1.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "headcircle", pos = Vector(0.426, 0.089, 1.749), angle = Angle(-8.62, 0, 0), size = Vector(0.044, 0.033, 0.199), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/fender_chrome", skin = 0, bodygroup = {} },
	["headcircletrapezium+++++"] = { type = "Model", model = "models/hunter/plates/plate1x4x2trap1.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "headcircle", pos = Vector(0.413, 0.303, 2.805), angle = Angle(-4.148, -3.631, 94.148), size = Vector(0.044, 0.034, 0.184), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/fender_chrome", skin = 0, bodygroup = {} },
	["headheadheadheadtrapeziumspicypickspitz"] = { type = "Model", model = "models/hunter/geometric/tri1x1eq.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "headcircle", pos = Vector(-7.778, 0.025, 2.996), angle = Angle(-6.77, 0, 0), size = Vector(0.062, 0.013, 0.088), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/fender_chrome", skin = 0, bodygroup = {} },
	["headheadheadheadtrapeziumspicypickspitz+"] = { type = "Model", model = "models/hunter/geometric/tri1x1eq.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "headcircle", pos = Vector(-7.778, 0.025, 3.395), angle = Angle(2.544, 0, 0), size = Vector(0.062, 0.013, 0.088), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/fender_chrome", skin = 0, bodygroup = {} },
	["headheadheadheadtrapeziumspicypickspitz++"] = { type = "Model", model = "models/hunter/geometric/tri1x1eq.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "headcircle", pos = Vector(-7.736, 0.072, 3.407), angle = Angle(1.421, -5.293, 90), size = Vector(0.046, 0.01, 0.086), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/fender_chrome", skin = 0, bodygroup = {} },
	["headheadheadheadtrapeziumspicypickspitz+++"] = { type = "Model", model = "models/hunter/geometric/tri1x1eq.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "headcircle", pos = Vector(-7.736, -0.29, 3.407), angle = Angle(1.421, 6.848, 90), size = Vector(0.046, 0.01, 0.086), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/fender_chrome", skin = 0, bodygroup = {} },
	["stick"] = { type = "Model", model = "models/xqm/cylinderx1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(3.586, 1.603, -4.901), angle = Angle(94.248, -17.954, 0), size = Vector(1.63, 0.147, 0.162), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/white_brushes", skin = 0, bodygroup = {} }
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
SWEP.MeleeRange = 78
SWEP.MeleeSize = 1.3
SWEP.MeleeKnockBack = 0
SWEP.OriginalMeleeDamage = SWEP.MeleeDamage

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

function SWEP.OnMeleeHit(hitent,hitflesh, tr)
 if hitent:IsValid() and hitent:IsPlayer() and hitent:Team() == TEAM_UNDEAD and gamemode.Call("PlayerShouldTakeDamage", hitent, self:GetOwner()) then
hitent:TakeSpecialDamage(hitent:Health() * 0.2, DMG_DIRECT, self:GetOwner(), self, tr.HitPos)
	end
end

function SWEP:PostOnMeleeHit(hitent, hitflesh, tr)
	self.MeleeDamage = self.OriginalMeleeDamage
 end

