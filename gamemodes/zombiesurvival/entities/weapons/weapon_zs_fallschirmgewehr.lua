AddCSLuaFile()
DEFINE_BASECLASS("weapon_zs_base")

SWEP.PrintName = "'Fallschirmgewehr' FG 42"
SWEP.Description = "Used by german Parachuters in the second world war, it still holds its status as a strong rifle today."

SWEP.Slot = 2
SWEP.SlotPos = 0
SWEP.Tier = 4
SWEP.MaxStock = 3

if CLIENT then
	SWEP.ViewModelFlip = false
	SWEP.ViewModelFOV = 75

	
end



SWEP.Base = "weapon_zs_base"

SWEP.HoldType = "ar2"

SWEP.CSMuzzleFlashes = true


SWEP.VElements = {
	["bodycircleblocker"] = { type = "Model", model = "models/hunter/tubes/circle2x2c.mdl", bone = "Base", rel = "body1+", pos = Vector(0, 0.043, 0.175), angle = Angle(0, 0, 0), size = Vector(0.043, 0.043, 0.043), color = Color(255, 85, 73, 255), surpresslightning = false, material = "phoenix_storms/white_brushes", skin = 0, bodygroup = {} },
	["frontironsight"] = { type = "Model", model = "models/props_trainstation/trainstation_ornament001.mdl", bone = "Base", rel = "bareeeeeeeeeeeeeeeeeeel", pos = Vector(0.008, -0.129, 20.79), angle = Angle(0, 0, -90), size = Vector(0.039, 0.039, 0.039), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/black_chrome", skin = 0, bodygroup = {} },
	["body1"] = { type = "Model", model = "models/phxtended/bar1x.mdl", bone = "Base", rel = "bareeeeeeeeeeeeeeeeeeel", pos = Vector(-2.142, 0.922, -13.886), angle = Angle(0, 0, 90), size = Vector(0.737, 0.293, 0.505), color = Color(109, 67, 0, 255), surpresslightning = true, material = "phoenix_storms/white_brushes", skin = 0, bodygroup = {} },
	["bareeeeeeeeeeeeeeeeeeel"] = { type = "Model", model = "models/props_c17/signpole001.mdl", bone = "Base", rel = "", pos = Vector(-0.765, 1.444, 22.978), angle = Angle(-2.073, 0, 0), size = Vector(1.075, 1.075, 0.201), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/black_chrome", skin = 0, bodygroup = {} },
	["body1holes+++"] = { type = "Model", model = "models/xqm/cylinderx1.mdl", bone = "Base", rel = "body1holes", pos = Vector(-9.207, 0, 0), angle = Angle(0, 0, 0), size = Vector(0.159, 0.109, 0.109), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/black_chrome", skin = 0, bodygroup = {} },
	["body1+"] = { type = "Model", model = "models/hunter/tubes/tube1x1x1c.mdl", bone = "Base", rel = "bareeeeeeeeeeeeeeeeeeel", pos = Vector(0.057, 0.959, -13.688), angle = Angle(0, -90, 0), size = Vector(0.092, 0.089, 0.287), color = Color(109, 67, 0, 255), surpresslightning = true, material = "phoenix_storms/white_brushes", skin = 0, bodygroup = {} },
	["body1holes+"] = { type = "Model", model = "models/xqm/cylinderx1.mdl", bone = "Base", rel = "body1holes", pos = Vector(-3.023, 0, 0), angle = Angle(0, 0, 0), size = Vector(0.159, 0.109, 0.109), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/black_chrome", skin = 0, bodygroup = {} },
	["backironsight2"] = { type = "Model", model = "models/props_c17/SuitCase001a.mdl", bone = "Base", rel = "backironsight", pos = Vector(0, 0, 0.199), angle = Angle(0, 0, 180), size = Vector(0.028, 0.052, 0.25), color = Color(255, 255, 255, 255), surpresslightning = true, material = "phoenix_storms/black_chrome", skin = 0, bodygroup = {} },
	["body1++"] = { type = "Model", model = "models/phxtended/bar1x.mdl", bone = "Base", rel = "body1", pos = Vector(0.048, 15.279, -0.031), angle = Angle(0, 0, 0), size = Vector(0.722, 0.333, 0.528), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/black_chrome", skin = 0, bodygroup = {} },
	["backironsight"] = { type = "Model", model = "models/props_c17/BriefCase001a.mdl", bone = "Base", rel = "body3", pos = Vector(-2.388, 1.557, 0.931), angle = Angle(0, 90, -90), size = Vector(0.065, 0.151, 0.12), color = Color(255, 255, 255, 255), surpresslightning = true, material = "phoenix_storms/black_chrome", skin = 0, bodygroup = {} },
	["body1holes"] = { type = "Model", model = "models/xqm/cylinderx1.mdl", bone = "Base", rel = "body1+", pos = Vector(-1.051, -1.185, 11.347), angle = Angle(90, 0, 0), size = Vector(0.159, 0.109, 0.109), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/black_chrome", skin = 0, bodygroup = {} },
	["body4magholder"] = { type = "Model", model = "models/props_phx/construct/metal_tube.mdl", bone = "Base", rel = "body3", pos = Vector(-0.852, -0.999, -2.438), angle = Angle(0, 0, 0), size = Vector(0.046, 0.166, 0.059), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/black_chrome", skin = 0, bodygroup = {} },
	["bareeeeeeeeeeeeeeeeeeelmuzzle"] = { type = "Model", model = "models/props_lab/jar01b.mdl", bone = "Base", rel = "bareeeeeeeeeeeeeeeeeeel", pos = Vector(0, 0.087, 24.816), angle = Angle(180, 0, 0), size = Vector(0.517, 0.517, 0.517), color = Color(0, 0, 0, 255), surpresslightning = true, material = "phoenix_storms/smallwheel_side", skin = 0, bodygroup = {} },
	["bipod"] = { type = "Model", model = "models/props_wasteland/barricade001a.mdl", bone = "Base", rel = "mEtAlPoLEEEeee", pos = Vector(0, 40.143, 23.343), angle = Angle(-90, 90, 0), size = Vector(0.054, 0.256, 0.257), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/black_chrome", skin = 0, bodygroup = {} },
	["body5mag"] = { type = "Model", model = "models/Items/BoxSRounds.mdl", bone = "Base", rel = "body4magholder", pos = Vector(0.195, 3.615, -3.106), angle = Angle(0, 180, 90), size = Vector(0.321, 0.404, 0.575), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/black_brushes", skin = 0, bodygroup = {} },
	["stock"] = { type = "Model", model = "models/hunter/misc/squarecap2x1x1.mdl", bone = "Base", rel = "", pos = Vector(-15.021, 3.872, -0.977), angle = Angle(0, 0, 0), size = Vector(0.12, 0.026, 0.12), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/black_chrome", skin = 0, bodygroup = {} },
	["backironsight3"] = { type = "Model", model = "models/props_phx/wheels/magnetic_small.mdl", bone = "Base", rel = "backironsight2", pos = Vector(-0.166, -0.015, -2.77), angle = Angle(-90, 0, 0), size = Vector(0.043, 0.043, 0.079), color = Color(255, 255, 255, 255), surpresslightning = true, material = "phoenix_storms/black_chrome", skin = 0, bodygroup = {} },
	["body5maghole1++"] = { type = "Model", model = "models/Items/item_item_crate_chunk02.mdl", bone = "Base", rel = "body5maghole1", pos = Vector(0, 0, -3.076), angle = Angle(0, 0, 0), size = Vector(0.414, 0.212, 2.457), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/black_brushes", skin = 0, bodygroup = {} },
	["bodycircleblocker+"] = { type = "Model", model = "models/hunter/tubes/circle2x2c.mdl", bone = "Base", rel = "body1+", pos = Vector(0.081, 0.043, 13.803), angle = Angle(0, 0, 0), size = Vector(0.045, 0.045, 0.045), color = Color(255, 85, 73, 255), surpresslightning = false, material = "phoenix_storms/white_brushes", skin = 0, bodygroup = {} },
	["body5maghole1+++"] = { type = "Model", model = "models/Items/item_item_crate_chunk02.mdl", bone = "Base", rel = "body5maghole1", pos = Vector(0, 0, -5.38), angle = Angle(0, 0, 0), size = Vector(0.414, 0.212, 1.08), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/black_brushes", skin = 0, bodygroup = {} },
	["body5maghole1+"] = { type = "Model", model = "models/Items/item_item_crate_chunk02.mdl", bone = "Base", rel = "body5maghole1", pos = Vector(0, 0.079, -1.142), angle = Angle(0, 0, 0), size = Vector(0.414, 0.212, 0.55), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/black_brushes", skin = 0, bodygroup = {} },
	["body3"] = { type = "Model", model = "models/hunter/blocks/cube025x05x025.mdl", bone = "Base", rel = "body2", pos = Vector(0.017, -1.086, 5.764), angle = Angle(0, 0, 90), size = Vector(0.172, 0.813, 0.172), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/black_chrome", skin = 0, bodygroup = {} },
	["body5maghole1"] = { type = "Model", model = "models/Items/item_item_crate_chunk02.mdl", bone = "Base", rel = "body5mag", pos = Vector(0.179, 0.172, 5.843), angle = Angle(0, 0, 0), size = Vector(0.414, 0.219, 0.947), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/black_brushes", skin = 0, bodygroup = {} },
	["mEtAlPoLEEEeee"] = { type = "Model", model = "models/props_c17/signpole001.mdl", bone = "Base", rel = "bareeeeeeeeeeeeeeeeeeel", pos = Vector(0, 2.542, -2.912), angle = Angle(0, 0, 0), size = Vector(0.356, 0.356, 0.237), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/black_chrome", skin = 0, bodygroup = {} },
	["body1holes++"] = { type = "Model", model = "models/xqm/cylinderx1.mdl", bone = "Base", rel = "body1holes", pos = Vector(-6.226, 0, 0), angle = Angle(0, 0, 0), size = Vector(0.159, 0.109, 0.109), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/black_chrome", skin = 0, bodygroup = {} },
	["body2"] = { type = "Model", model = "models/hunter/tubes/tube1x1x1c.mdl", bone = "Base", rel = "body1++", pos = Vector(2.125, -0.008, 0.002), angle = Angle(90, 180, 90), size = Vector(0.083, 0.086, 0.333), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/black_chrome", skin = 0, bodygroup = {} },
	["bodycircleblocker++"] = { type = "Model", model = "models/hunter/tubes/circle2x2c.mdl", bone = "Base", rel = "body1+", pos = Vector(0.081, 0.118, -15.485), angle = Angle(0, 0, 0), size = Vector(0.045, 0.045, 2.532), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/black_brushes", skin = 0, bodygroup = {} }
}


SWEP.WElements = {
	["bodycircleblocker"] = { type = "Model", model = "models/hunter/tubes/circle2x2c.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "body1+", pos = Vector(0, 0.043, 0.175), angle = Angle(0, 0, 0), size = Vector(0.043, 0.043, 0.043), color = Color(255, 85, 73, 255), surpresslightning = false, material = "phoenix_storms/white_brushes", skin = 0, bodygroup = {} },
	["body1holes++++++"] = { type = "Model", model = "models/xqm/cylinderx1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "body1holes++++", pos = Vector(6.269, 0, -0), angle = Angle(0, 0, 0), size = Vector(0.159, 0.109, 0.109), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/black_chrome", skin = 0, bodygroup = {} },
	["body1+++"] = { type = "Model", model = "models/phxtended/bar1x.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "body1", pos = Vector(0.048, 19.143, 0.212), angle = Angle(0, 0, 0), size = Vector(0.722, 0.104, 0.528), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/black_brushes", skin = 0, bodygroup = {} },
	["body1+"] = { type = "Model", model = "models/hunter/tubes/tube1x1x1c.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "bareeeeeeeeeeeeeeeeeeel", pos = Vector(0.057, 0.959, -13.688), angle = Angle(0, -90, 0), size = Vector(0.092, 0.089, 0.287), color = Color(255, 85, 73, 255), surpresslightning = false, material = "phoenix_storms/white_brushes", skin = 0, bodygroup = {} },
	["backironsight2"] = { type = "Model", model = "models/props_c17/SuitCase001a.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "backironsight", pos = Vector(0, 0, 0.199), angle = Angle(0, 0, 180), size = Vector(0.028, 0.052, 0.25), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/black_brushes", skin = 0, bodygroup = {} },
	["body5maghole1+++"] = { type = "Model", model = "models/Items/item_item_crate_chunk02.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "body5maghole1", pos = Vector(0, 0, -5.618), angle = Angle(0, 0, 0), size = Vector(0.5, 0.201, 1.22), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/black_brushes", skin = 0, bodygroup = {} },
	["body1holes++++"] = { type = "Model", model = "models/xqm/cylinderx1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "body1holes", pos = Vector(-9.207, 2.447, 0), angle = Angle(0, 0, 0), size = Vector(0.159, 0.109, 0.109), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/black_chrome", skin = 0, bodygroup = {} },
	["bareeeeeeeeeeeeeeeeeeelmuzzle"] = { type = "Model", model = "models/props_junk/garbage_metalcan001a.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "bareeeeeeeeeeeeeeeeeeel", pos = Vector(0, 0.087, 14.373), angle = Angle(180, 0, 0), size = Vector(0.828, 0.828, 0.828), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/car_tire", skin = 0, bodygroup = {} },
	["body5maghole1++"] = { type = "Model", model = "models/Items/item_item_crate_chunk02.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "body5maghole1", pos = Vector(0, 0, -3.396), angle = Angle(0, 0, 0), size = Vector(0.5, 0.201, 2.424), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/black_brushes", skin = 0, bodygroup = {} },
	["body5maghole1+"] = { type = "Model", model = "models/Items/item_item_crate_chunk02.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "body5maghole1", pos = Vector(0, 0, -1.548), angle = Angle(0, 0, 0), size = Vector(0.5, 0.201, 0.55), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/black_brushes", skin = 0, bodygroup = {} },
	["body3"] = { type = "Model", model = "models/hunter/blocks/cube025x05x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "body2", pos = Vector(0.017, -1.086, 5.764), angle = Angle(0, 0, 90), size = Vector(0.172, 0.813, 0.172), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/black_brushes", skin = 0, bodygroup = {} },
	["body5maghole1"] = { type = "Model", model = "models/Items/item_item_crate_chunk02.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "body5mag", pos = Vector(-0.159, 0.096, 6.309), angle = Angle(0, 0, 0), size = Vector(0.5, 0.195, 1.011), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/black_brushes", skin = 0, bodygroup = {} },
	["body1holes++"] = { type = "Model", model = "models/xqm/cylinderx1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "body1holes", pos = Vector(-6.226, 0, 0), angle = Angle(0, 0, 0), size = Vector(0.159, 0.109, 0.109), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/black_chrome", skin = 0, bodygroup = {} },
	["body2"] = { type = "Model", model = "models/hunter/tubes/tube1x1x1c.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "body1++", pos = Vector(2.125, -0.008, 0.002), angle = Angle(90, 180, 90), size = Vector(0.083, 0.086, 0.333), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/black_brushes", skin = 0, bodygroup = {} },
	["frontironsight"] = { type = "Model", model = "models/props_trainstation/trainstation_ornament001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "bareeeeeeeeeeeeeeeeeeel", pos = Vector(0.008, -0.129, 12.053), angle = Angle(0, 0, -90), size = Vector(0.039, 0.039, 0.039), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/black_brushes", skin = 0, bodygroup = {} },
	["body1"] = { type = "Model", model = "models/phxtended/bar1x.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "bareeeeeeeeeeeeeeeeeeel", pos = Vector(-2.142, 0.922, -13.886), angle = Angle(0, 0, 90), size = Vector(0.737, 0.293, 0.505), color = Color(255, 85, 73, 255), surpresslightning = false, material = "phoenix_storms/white_brushes", skin = 0, bodygroup = {} },
	["bareeeeeeeeeeeeeeeeeeel"] = { type = "Model", model = "models/props_c17/signpole001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(25.232, 2.467, -9.801), angle = Angle(2.588, -90.362, -103.219), size = Vector(1.075, 1.075, 0.116), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/black_brushes", skin = 0, bodygroup = {} },
	["body1holes+"] = { type = "Model", model = "models/xqm/cylinderx1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "body1holes", pos = Vector(-3.023, 0, 0), angle = Angle(0, 0, 0), size = Vector(0.159, 0.109, 0.109), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/black_chrome", skin = 0, bodygroup = {} },
	["body1++"] = { type = "Model", model = "models/phxtended/bar1x.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "body1", pos = Vector(0.048, 15.279, -0.031), angle = Angle(0, 0, 0), size = Vector(0.722, 0.333, 0.528), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/black_brushes", skin = 0, bodygroup = {} },
	["body1holes"] = { type = "Model", model = "models/xqm/cylinderx1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "body1+", pos = Vector(-1.051, -1.185, 11.347), angle = Angle(90, 0, 0), size = Vector(0.159, 0.109, 0.109), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/black_chrome", skin = 0, bodygroup = {} },
	["body4magholder"] = { type = "Model", model = "models/props_phx/construct/metal_tube.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "body3", pos = Vector(-0.852, -0.999, -2.438), angle = Angle(0, 0, 0), size = Vector(0.046, 0.166, 0.059), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/black_brushes", skin = 0, bodygroup = {} },
	["body1holes+++++++"] = { type = "Model", model = "models/xqm/cylinderx1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "body1holes++++", pos = Vector(6.269, 0, -0), angle = Angle(0, 0, 0), size = Vector(0.159, 0.109, 0.109), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/black_chrome", skin = 0, bodygroup = {} },
	["body5mag"] = { type = "Model", model = "models/Items/BoxSRounds.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "body4magholder", pos = Vector(0.195, 3.615, -3.106), angle = Angle(0, 180, 90), size = Vector(0.347, 0.367, 0.665), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/black_brushes", skin = 0, bodygroup = {} },
	["stock"] = { type = "Model", model = "models/hunter/misc/squarecap2x1x1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(-7.515, 1.435, -2.675), angle = Angle(-90, 0, 0), size = Vector(0.09, 0.052, 0.079), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/black_brushes", skin = 0, bodygroup = {} },
	["backironsight3"] = { type = "Model", model = "models/props_phx/wheels/magnetic_small.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "backironsight2", pos = Vector(-0.166, -0.015, -2.77), angle = Angle(-90, 0, 0), size = Vector(0.043, 0.043, 0.079), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/black_brushes", skin = 0, bodygroup = {} },
	["bodycircleblocker+"] = { type = "Model", model = "models/hunter/tubes/circle2x2c.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "body1+", pos = Vector(0.081, 0.043, 13.803), angle = Angle(0, 0, 0), size = Vector(0.045, 0.045, 0.045), color = Color(255, 85, 73, 255), surpresslightning = false, material = "phoenix_storms/white_brushes", skin = 0, bodygroup = {} },
	["bodycircleblocker++"] = { type = "Model", model = "models/hunter/tubes/circle2x2c.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "body1+", pos = Vector(0.081, 0.118, -15.485), angle = Angle(0, 0, 0), size = Vector(0.045, 0.045, 2.532), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/black_brushes", skin = 0, bodygroup = {} },
	["body1holes+++++"] = { type = "Model", model = "models/xqm/cylinderx1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "body1holes++++", pos = Vector(3.088, 0, -0), angle = Angle(0, 0, 0), size = Vector(0.159, 0.109, 0.109), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/black_chrome", skin = 0, bodygroup = {} },
	["backironsight"] = { type = "Model", model = "models/props_c17/BriefCase001a.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "body3", pos = Vector(-2.388, 1.557, 0.931), angle = Angle(0, 90, -90), size = Vector(0.065, 0.151, 0.12), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/black_brushes", skin = 0, bodygroup = {} },
	["body1holes+++"] = { type = "Model", model = "models/xqm/cylinderx1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "body1holes", pos = Vector(-9.207, 0, 0), angle = Angle(0, 0, 0), size = Vector(0.159, 0.109, 0.109), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/black_chrome", skin = 0, bodygroup = {} }
}

SWEP.ViewModel = "models/weapons/c_irifle.mdl"
SWEP.WorldModel = "models/weapons/w_irifle.mdl"
SWEP.UseHands = true

SWEP.ShowViewModel = false
SWEP.ShowWorldModel = false
SWEP.ReloadSound = Sound("Weapon_SMG1.Reload")
SWEP.Primary.Sound = Sound("weapons/ar2/fire1.wav")
SWEP.Primary.Damage = 85
SWEP.Primary.NumShots = 1
SWEP.Primary.Delay = 0.23

SWEP.Primary.ClipSize = 20
SWEP.Primary.Automatic = true
SWEP.Primary.Ammo = "357"
GAMEMODE:SetupDefaultClip(SWEP.Primary)

SWEP.ConeMax = 9
SWEP.ConeMin = 0.1

SWEP.WalkSpeed = SPEED_SLOWEST

SWEP.IronSightsPos = Vector(-7.64, -3.016, 1.2)
SWEP.IronSightsAng = Vector(0, -1.825, 0)



SWEP.PointsMultiplier = GAMEMODE.PulsePointsMultiplier

SWEP.TracerName = "AR2Tracer"

SWEP.FireAnimSpeed = 0.4


function SWEP:EmitFireSound()
    self:EmitSound(self.Primary.Sound, 100, math.random(70,80))
     
end

function SWEP:SendReloadAnimation()	
self:SendWeaponAnim(ACT_VM_DRAW)
end

local ghostlerp = 0
function SWEP:CalcViewModelView(vm, oldpos, oldang, pos, ang)
if self:GetOwner():GetBarricadeGhosting() or self:GetReloadFinish() > 0 then
ghostlerp = math.min(1, ghostlerp + FrameTime() * 0.1)
elseif ghostlerp > 0 then
ghostlerp = math.max(0, ghostlerp - FrameTime() * 0.9)
end

if ghostlerp > 0 then
ang:RotateAroundAxis(ang:Right(), -65 * ghostlerp)
end

return pos, ang
end

SWEP.ReloadSpeed = 0.3


//Made by DuffT. Thanks to Superspooner,Johnny Moe, and erdf 
//Thanks to Worm for the idea to recreate this gun


