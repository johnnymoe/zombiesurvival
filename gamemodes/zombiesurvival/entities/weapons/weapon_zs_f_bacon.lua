AddCSLuaFile()

SWEP.Base = "weapon_zs_basefood"

SWEP.PrintName = "Raw Bacon"

if CLIENT then
	SWEP.ViewModelFOV = 80

	SWEP.VElements = {
		["base"] = { type = "Model", model = "models/foodnhouseholditems/bacon.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(1, 4, -3), angle = Angle(-45, -70, -80), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
	}

	SWEP.WElements = {
		["base"] = { type = "Model", model = "models/foodnhouseholditems/bacon.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(5, 1, -3), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
	}
end

SWEP.ViewModel = "models/weapons/c_stunstick.mdl"
SWEP.WorldModel = "models/foodnhouseholditems/bacon.mdl"

SWEP.Primary.Ammo = "rawbacon"

SWEP.FoodHealth = 2
SWEP.FoodEatTime = 5
