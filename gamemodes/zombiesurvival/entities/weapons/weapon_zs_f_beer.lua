AddCSLuaFile()

SWEP.Base = "weapon_zs_basefood"

SWEP.PrintName = "Beer"

if CLIENT then
	SWEP.VElements = {
		["beer"] = { type = "Model", model = "models/props_junk/glassbottle01a.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(4.059, 2.44, -2.835), angle = Angle(0, 0, 180), size = Vector(0.943, 0.943, 0.943), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
	}

	SWEP.WElements = {
		["base"] = { type = "Model", model = "models/props_junk/glassbottle01a.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(3.75, 2.5, -2), angle = Angle(180, 0, -25), size = Vector(0.5, 0.5, 0.5), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
	}
end

SWEP.ViewModel = "models/weapons/c_grenade.mdl"
SWEP.WorldModel = "models/props_junk/glassbottle01a.mdl"

SWEP.Primary.Ammo = "foodmilk"

SWEP.FoodHealth = 11
SWEP.FoodEatTime = 5
SWEP.FoodIsLiquid = true
