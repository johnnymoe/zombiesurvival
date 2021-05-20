AddCSLuaFile()

SWEP.Base = "weapon_zs_basefood"

SWEP.PrintName = "Double Cheeseburger"

if CLIENT then
	SWEP.VElements = {
		["burger"] = { type = "Model", model = "models/foodnhouseholditems/mcdburger.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(3.319, 3.187, -2.392), angle = Angle(8.013, 113.01, -113.45), size = Vector(1.087, 1.087, 1.087), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
	}


	SWEP.WElements = {
		["burger"] = { type = "Model", model = "models/foodnhouseholditems/mcdburger.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(3.331, 2.137, -1.043), angle = Angle(159.604, 13.48, 17.089), size = Vector(1.036, 1.036, 1.036), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
	}
end

SWEP.ViewModel = "models/weapons/c_grenade.mdl"
SWEP.WorldModel = "models/foodnhouseholditems/mcdburger.mdl"

SWEP.Primary.Ammo = "doublecheeseburger"

SWEP.FoodHealth = 85
SWEP.FoodEatTime = 8
SWEP.FoodIsLiquid = false
