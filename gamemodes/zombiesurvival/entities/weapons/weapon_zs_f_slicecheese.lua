AddCSLuaFile()

SWEP.Base = "weapon_zs_basefood"

SWEP.PrintName = "Slice of Cheese"

if CLIENT then
	SWEP.VElements = {
		["cheese"] = { type = "Model", model = "models/foodnhouseholditems/cheesewheel1c.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(2.454, 3.081, -2.235), angle = Angle(-94.386, 0, -18.659), size = Vector(0.437, 0.527, 0.182), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
	}

	SWEP.WElements = {
		["cheese"] = { type = "Model", model = "models/foodnhouseholditems/cheesewheel1c.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(2.186, 1.277, -1.267), angle = Angle(0, -11.662, 88.116), size = Vector(0.272, 0.476, 0.075), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
	}
end

SWEP.ViewModel = "models/weapons/c_stunstick.mdl"
SWEP.WorldModel = "models/foodnhouseholditems/cheesewheel1c.mdl"

SWEP.Primary.Ammo = "slicecheese"

SWEP.FoodHealth = 2
SWEP.FoodEatTime = 1
