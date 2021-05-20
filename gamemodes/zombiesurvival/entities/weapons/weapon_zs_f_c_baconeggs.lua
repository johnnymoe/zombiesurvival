AddCSLuaFile()

SWEP.Base = "weapon_zs_basefood"

SWEP.PrintName = "Bacon and eggs"

if CLIENT then
	SWEP.VElements = {
		["egg1"] = { type = "Model", model = "models/foodnhouseholditems/egg.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(3.677, 3.836, -2.687), angle = Angle(1.549, 164.876, 180), size = Vector(0.5, 0.5, 0.5), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["plate"] = { type = "Model", model = "models/foodnhouseholditems/plate.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(1.753, 2.476, -2.753), angle = Angle(6.673, 7.344, 180), size = Vector(0.666, 0.666, 0.666), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["bacon"] = { type = "Model", model = "models/foodnhouseholditems/baconcooked.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(-0.198, 2.006, -3.129), angle = Angle(0, 0, 0), size = Vector(0.649, 0.649, 0.649), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["egg2"] = { type = "Model", model = "models/foodnhouseholditems/egg.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(3.253, 0.746, -2.559), angle = Angle(-3.701, -155.012, 180), size = Vector(0.5, 0.5, 0.5), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
	}

	SWEP.WElements = {
		["egg1"] = { type = "Model", model = "models/foodnhouseholditems/egg.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(4.32, -0.036, -2.191), angle = Angle(0, -69.209, 180), size = Vector(0.27, 0.27, 0.27), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["plate"] = { type = "Model", model = "models/foodnhouseholditems/plate.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(5.212, 1.435, -2.027), angle = Angle(4.159, 0, 180), size = Vector(0.6, 0.6, 0.6), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["bacon"] = { type = "Model", model = "models/foodnhouseholditems/baconcooked.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(5.964, 2.907, -2.31), angle = Angle(0, 120.933, 4.912), size = Vector(0.5, 0.5, 0.5), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
		["egg2"] = { type = "Model", model = "models/foodnhouseholditems/egg.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(5.951, -0.539, -2.02), angle = Angle(0, -79.889, 180), size = Vector(0.27, 0.27, 0.27), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
	}
end

SWEP.ViewModel = "models/weapons/c_grenade.mdl"
SWEP.WorldModel = "models/foodnhouseholditems/plate.mdl"

SWEP.Primary.Ammo = "baconandeggs"

SWEP.FoodHealth = 30
SWEP.FoodEatTime = 3
SWEP.FoodIsLiquid = false


