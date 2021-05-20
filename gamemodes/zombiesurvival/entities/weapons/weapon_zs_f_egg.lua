AddCSLuaFile()

SWEP.Base = "weapon_zs_basefood"

SWEP.PrintName = "Egg"

if CLIENT then
	SWEP.VElements = {
		["egg"] = { type = "Model", model = "models/foodnhouseholditems/egg2.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(3.496, 2.914, -1.678), angle = Angle(0, 0, 179.658), size = Vector(1.21, 1.21, 1.21), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
	}

	SWEP.WElements = {
		["egg"] = { type = "Model", model = "models/foodnhouseholditems/egg2.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(3.359, 2.417, -1.423), angle = Angle(0, 0, 180), size = Vector(1.157, 1.157, 1.157), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
	}
end

SWEP.ViewModel = "models/weapons/c_grenade.mdl"
SWEP.WorldModel = "models/foodnhouseholditems/egg2.mdl"

SWEP.Primary.Ammo = "egg"

SWEP.FoodHealth = 1
SWEP.FoodEatTime = 2

