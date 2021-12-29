AddCSLuaFile()
DEFINE_BASECLASS("weapon_zs_base")

SWEP.PrintName = "'Ender' Automatic Shotgun"
SWEP.Description = "Relatively accurate, clip loaded, automatic shotgun."

SWEP.Slot = 3
SWEP.SlotPos = 0

if CLIENT then
	SWEP.ViewModelFlip = false
	SWEP.ViewModelFOV = 60

	SWEP.HUD3DBone = "v_weapon.galil"
	SWEP.HUD3DPos = Vector(1, 0, 6)
	SWEP.HUD3DScale = 0.015
end

SWEP.Base = "weapon_zs_base"

SWEP.HoldType = "shotgun"

SWEP.ViewModel = "models/weapons/cstrike/c_rif_galil.mdl"
SWEP.WorldModel = "models/weapons/w_rif_galil.mdl"
SWEP.UseHands = true

SWEP.Primary.Sound = Sound("Weapon_Galil.Single")
SWEP.Primary.Damage = 9.5
SWEP.Primary.NumShots = 8
SWEP.Primary.Delay = 0.4

SWEP.Primary.ClipSize = 8
SWEP.Primary.Automatic = true
SWEP.Primary.Ammo = "buckshot"
GAMEMODE:SetupDefaultClip(SWEP.Primary)

SWEP.ConeMax = 5.625
SWEP.ConeMin = 4.875

SWEP.WalkSpeed = SPEED_SLOWER

SWEP.Tier = 3

GAMEMODE:AttachWeaponModifier(SWEP, WEAPON_MODIFIER_MAX_SPREAD, -0.603, 1)
GAMEMODE:AttachWeaponModifier(SWEP, WEAPON_MODIFIER_MIN_SPREAD, -0.51, 1)
GAMEMODE:AddNewRemantleBranch(SWEP, 1, "'Ender' Automatic Slug Rifle", "Single accurate slug round, less total damage", function(wept)
	wept.Primary.Damage = wept.Primary.Damage * 5.5
	wept.Primary.NumShots = 1
	wept.ConeMin = wept.ConeMin * 0.15
	wept.ConeMax = wept.ConeMax * 0.3
end)

function SWEP:SecondaryAttack()
end


local branch = GAMEMODE:AddNewRemantleBranch(SWEP,2, "'Galidl' Automatic AR", "Fires assault rifle rounds instead of shotgun rounds", function(wept)

wept.Primary.Damage = wept.Primary.Damage * 2.3
wept.Primary.NumShots = 1
wept.ConeMin = wept.ConeMin * 0.5
wept.ConeMax = wept.ConeMax * 0.8
wept.Primary.Delay = wept.Primary.Delay * 0.27
wept.Primary.Ammo = "ar2"
wept.Primary.ClipSize = wept.Primary.ClipSize * 4.1
end)

branch.NewNames = {"Reverse-Engineered", "Re-Invented", "Re-Assembled"}