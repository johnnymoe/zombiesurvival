AddCSLuaFile()

SWEP.Base = "weapon_zs_basefood"

SWEP.PrintName = "Raw Bacon"

if CLIENT then
	SWEP.VElements = {
		["rawbacon"] = { type = "Model", model = "models/foodnhouseholditems/bacon.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(5.578, 0.718, -4.094), angle = Angle(-2.988, -66.962, -82.28), size = Vector(0.5, 0.75, 0.5), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
	}

	SWEP.WElements = {
		["rawbacon"] = { type = "Model", model = "models/foodnhouseholditems/bacon.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(3.398, 1.128, -1.51), angle = Angle(-9.164, 2.674, 93.096), size = Vector(0.5, 0.509, 0.5), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
	}
end

SWEP.ViewModel = "models/weapons/c_stunstick.mdl"
SWEP.WorldModel = "models/foodnhouseholditems/bacon.mdl"

SWEP.Primary.Ammo = "rawbacon"

SWEP.FoodHealth = 3
SWEP.FoodEatTime = 5
SWEP.FoodIsLiquid = false



