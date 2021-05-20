AddCSLuaFile()

SWEP.Base = "weapon_zs_basefood"

SWEP.PrintName = "Cooked Meat"

if CLIENT then
	SWEP.VElements = {
		["cookedmeat"] = { type = "Model", model = "models/fallout 3/steak.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(5.818, 2.276, 0.925), angle = Angle(13.854, -14.235, -86.56), size = Vector(1.093, 1.074, 1.748), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
	}


	SWEP.WElements = {
		["cookedmeat"] = { type = "Model", model = "models/fallout 3/steak.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(3.243, 2, 0.925), angle = Angle(13, -14, -86.56), size = Vector(0.727, 1.148, 0.727), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
	}
end

SWEP.ViewModel = "models/weapons/c_grenade.mdl"
SWEP.WorldModel = "models/fallout 3/steak.mdl"

SWEP.Primary.Ammo = "cookedmeat"

SWEP.FoodHealth = 45
SWEP.FoodEatTime = 4
SWEP.FoodIsLiquid = false


