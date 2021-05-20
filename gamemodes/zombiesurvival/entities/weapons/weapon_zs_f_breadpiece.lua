AddCSLuaFile()

SWEP.Base = "weapon_zs_basefood"

SWEP.PrintName = "Piece of Bread"

if CLIENT then
	SWEP.VElements = {
		["bun"] = { type = "Model", model = "models/foodnhouseholditems/bread_slice.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(2.24, 3.657, -1.655), angle = Angle(145.873, 43.977, -21.591), size = Vector(0.847, 0.847, 0.847), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
	}

	SWEP.WElements = {
		["bun"] = { type = "Model", model = "models/foodnhouseholditems/bread_slice.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(4.295, 0.87, -2.843), angle = Angle(-36.857, 164.947, 59.912), size = Vector(0.782, 0.782, 0.782), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
	}
end

SWEP.ViewModel = "models/weapons/c_stunstick.mdl"
SWEP.WorldModel = "models/foodnhouseholditems/bread_slice.mdl"

SWEP.Primary.Ammo = "breadpiece"

SWEP.FoodHealth = 1
SWEP.FoodEatTime = 4

