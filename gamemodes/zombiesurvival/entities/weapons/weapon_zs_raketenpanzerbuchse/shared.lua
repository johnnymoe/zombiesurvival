

SWEP.PrintName = "'Panzerschreck' Raketenpanzerbüchse 54"
SWEP.Description = "With a stupidly high explosive rocket capable of piercing an IS-2, you can damn well expect this Panzerschreck to shred zombies to nothingness. But you better not aim it at the fucking ground right below you."

SWEP.UseHands = true

SWEP.ShowViewModel = false
SWEP.ShowWorldModel = false


if CLIENT then
 SWEP.ViewModelBoneMods = {
	["base"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0.361, 3.823, -6.15), angle = Angle(1.077, 0, 0) },
	["ValveBiped.Bip01_Spine4"] = { scale = Vector(1, 1, 1), pos = Vector(4.848, 4.806, -3.863), angle = Angle(0, 0, 0) }
}
end

SWEP.Base = "weapon_zs_baseproj"

SWEP.HoldType = "rpg"

SWEP.ViewModelFOV = 70
SWEP.ViewModelFlip = false

SWEP.ViewModel = "models/weapons/c_rpg.mdl"
SWEP.WorldModel = "models/weapons/w_rocket_launcher.mdl"

SWEP.Primary.Delay = 3.3
SWEP.Primary.ClipSize = 1
SWEP.Primary.Automatic = false
SWEP.Primary.Ammo = "impactmine"
SWEP.Primary.DefaultClip = 1
SWEP.Primary.Damage = 400
SWEP.HeadshotMulti = 1
SWEP.ReloadSound = Sound("vehicles/tank_readyfire1.wav")
SWEP.Primary.Sound = Sound("weapons/stinger_fire1.wav")

SWEP.ReloadSpeed = 0.6
SWEP.Recoil = 3

SWEP.ConeMin = 0.0001
SWEP.ConeMax = 0.0001

SWEP.Primary.Gesture = ACT_HL2MP_GESTURE_RANGE_ATTACK_RPG
SWEP.ReloadGesture = ACT_HL2MP_GESTURE_RELOAD_RPG

SWEP.WalkSpeed = SPEED_SLOWEST * 0.3

SWEP.FireAnimSpeed = 0.5

SWEP.Tier = 5
SWEP.MaxStock = 1

SWEP.IronSightsPos = Vector(-9.23, -35, 1.85)
SWEP.IronSightsAng = Vector(0, -0.627, 0)

GAMEMODE:AttachWeaponModifier(SWEP,WEAPON_MODIFIER_FIRE_DELAY, -0.4)
GAMEMODE:AttachWeaponModifier(SWEP, WEAPON_MODIFIER_RELOAD_SPEED, -0.05, 1)

function SWEP:EmitFireSound()
	self:EmitSound(self.Primary.Sound, 80, math.random(118, 123), 0.8)
	self:EmitSound("weapons/grenade_launcher1.wav", 80, math.random(76, 82), 0.7, CHAN_WEAPON + 20)
end
