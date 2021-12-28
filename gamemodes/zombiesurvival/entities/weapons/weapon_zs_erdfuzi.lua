AddCSLuaFile()

SWEP.PrintName = "'Learsi' Erdf's Uzi SMG"
SWEP.Description = "A relatively mass produced SMG, its been brought all the way here to kick ass. Some parts seem to have been modified to fit personal taste."

SWEP.Slot = 3
SWEP.SlotPos = 0

if CLIENT then
SWEP.ViewModelBoneMods = {
	["ValveBiped.Bip01_Spine4"] = { scale = Vector(1, 1, 1), pos = Vector(-2.468, 0, 0), angle = Angle(0, 0, 0) },
	["v_weapon.p228_Parent"] = { scale = Vector(1, 1, 1), pos = Vector(-2.974, -0.57, -0.317), angle = Angle(0.955, 0, 0) }
}

	SWEP.ViewModelFOV = 70
	SWEP.ViewModelFlip = false

	SWEP.HUD3DBone = "v_weapon.p228_Slide"
	SWEP.HUD3DPos = Vector(-0.88, 0.35, 1)
	SWEP.HUD3DAng = Angle(0, 0, 0)
	SWEP.HUD3DScale = 0.015
	
	SWEP.VElements = {
	["bareeeeeeeeeeeeel"] = { type = "Model", model = "models/hunter/tubes/tube1x1x3.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "body1", pos = Vector(-0.774, 8.206, 1.149), angle = Angle(90, 90, 0), size = Vector(0.016, 0.016, 0.039), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
	["sideeffect1"] = { type = "Model", model = "models/hunter/misc/roundthing2.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "body1", pos = Vector(-1.599, -0.147, 0.446), angle = Angle(-90, 0, 0), size = Vector(0.009, 0.016, 0.009), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
	["body3curveleft"] = { type = "Model", model = "models/hunter/triangles/05x05x05.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "body2", pos = Vector(-1.297, 2.403, 1.046), angle = Angle(90, 90, 0), size = Vector(0.087, 0.01, 0.019), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
	["body1curvebottom+"] = { type = "Model", model = "models/props_wasteland/panel_leverHandle001a.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "body1", pos = Vector(-0.735, 0, 2.368), angle = Angle(-83.215, 90, 0), size = Vector(0.234, 0.234, 0.234), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
	["body1+++"] = { type = "Model", model = "models/hunter/misc/platehole1x1d.mdl", bone = "v_weapon.p228_Parent", rel = "body1++", pos = Vector(-0.062, -0.918, 0.158), angle = Angle(0, 0, 180), size = Vector(0.046, 0.024, 0.474), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
	["body1+"] = { type = "Model", model = "models/hunter/blocks/cube025x1x025.mdl", bone = "v_weapon.p228_Parent", rel = "body1", pos = Vector(0, 3.453, 1.401), angle = Angle(0, 0, 0), size = Vector(0.129, 0.064, 0.056), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
	["top3+"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "top3", pos = Vector(3.548, 0.134, -0.06), angle = Angle(0, 90, 0), size = Vector(0.071, 0.426, 0.045), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
	["ironsightback+"] = { type = "Model", model = "models/mechanics/articulating/arm_base_b.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "body1", pos = Vector(-1.218, 7.875, 0.012), angle = Angle(180, 0, 0), size = Vector(0.026, 0.041, 0.019), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
	["body1+++++"] = { type = "Model", model = "models/hunter/blocks/cube025x1x025.mdl", bone = "v_weapon.p228_Parent", rel = "body1", pos = Vector(0.016, 1.745, 1.401), angle = Angle(0, 0, 90), size = Vector(0.128, 0.019, 0.196), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
	["body3curveleft+"] = { type = "Model", model = "models/hunter/triangles/05x05x05.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "body3curveleft", pos = Vector(-0.004, 1.159, 0.012), angle = Angle(0, 180, 0), size = Vector(0.087, 0.01, 0.019), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
	["ironsightmiddleleft"] = { type = "Model", model = "models/hunter/misc/platehole1x1d.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "top4", pos = Vector(0.043, 0.004, -0.613), angle = Angle(-90, 180, 89), size = Vector(0.014, 0.009, 0.18), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
	["body2+"] = { type = "Model", model = "models/hunter/blocks/cube025x075x025.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "body2", pos = Vector(-0.242, 1.644, 2.107), angle = Angle(0, 0, 90), size = Vector(0.079, 0.059, 0.231), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
	["ironsightback"] = { type = "Model", model = "models/mechanics/articulating/arm_base_b.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "body1", pos = Vector(-1.441, -1.168, 1.156), angle = Angle(180, 0, 0), size = Vector(0.041, 0.063, 0.052), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
	["body2"] = { type = "Model", model = "models/hunter/blocks/cube025x075x025.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "body1+", pos = Vector(-0.088, 0.537, -1.435), angle = Angle(0, 0, 0), size = Vector(0.12, 0.061, 0.175), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
	["top1+"] = { type = "Model", model = "models/hunter/tubes/circle2x2c.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "top1", pos = Vector(0, 0, -1.158), angle = Angle(0, 0, 0), size = Vector(0.009, 0.071, 0.118), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
	["body1++++"] = { type = "Model", model = "models/hunter/misc/roundthing2.mdl", bone = "v_weapon.p228_Slide", rel = "", pos = Vector(-0.798, -0.225, -1.099), angle = Angle(0, 90, 90), size = Vector(0.041, 0.017, 0.028), color = Color(161, 163, 161, 255), surpresslightning = false, material = "phoenix_storms/gear", skin = 0, bodygroup = {} },
	["top4"] = { type = "Model", model = "models/hunter/misc/squarecap1x1x1.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "top3+", pos = Vector(0.043, -0.327, -0.257), angle = Angle(0, 0, 0), size = Vector(0.012, 0.012, 0.012), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
	["body1"] = { type = "Model", model = "models/hunter/blocks/cube025x1x025.mdl", bone = "v_weapon.p228_Parent", rel = "", pos = Vector(0.634, -5.047, 3.203), angle = Angle(0, 0, 90), size = Vector(0.129, 0.082, 0.177), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
	["top3"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "top2", pos = Vector(-0.969, 0.112, 0.303), angle = Angle(0, 0, 0), size = Vector(0.057, 0.061, 0.046), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
	["top2"] = { type = "Model", model = "models/hunter/geometric/hex05x1.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "body1", pos = Vector(-0.972, 6.018, -0.079), angle = Angle(0, 90, 0), size = Vector(0.016, 0.014, 0.134), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
	["grip+++"] = { type = "Model", model = "models/squad/sf_tubes/sf_tube1x90.mdl", bone = "v_weapon.p228_Trigger", rel = "", pos = Vector(-0.325, -0.285, 1.437), angle = Angle(-90, 180, 0), size = Vector(0.019, 0.019, 0.045), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
	["grip+"] = { type = "Model", model = "models/squad/sf_tubes/sf_tube1x90.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "grip", pos = Vector(-1.42, 2.282, 3.529), angle = Angle(-90, 0, 0), size = Vector(0.03, 0.03, 0.03), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
	["bareeeeeeeeeeeeel+"] = { type = "Model", model = "models/xqm/airplanewheel1.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "bareeeeeeeeeeeeel", pos = Vector(0, 0, 0.363), angle = Angle(90, 0, 0), size = Vector(0.085, 0.059, 0.059), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
	["grip"] = { type = "Model", model = "models/hunter/blocks/cube025x1x025.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "body1", pos = Vector(-0.131, 0.808, 4.546), angle = Angle(0, 0, 88.986), size = Vector(0.115, 0.104, 0.135), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
	["ironsightfronttop"] = { type = "Model", model = "models/hunter/plates/plate05.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "ironsightback+", pos = Vector(-0.473, 0, 0.065), angle = Angle(0, 90, 90), size = Vector(0.052, 0.048, 0.026), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
	["grip++"] = { type = "Model", model = "models/hunter/plates/plate025x025.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "grip", pos = Vector(-1.162, 1.072, 1.651), angle = Angle(60, 100, 0), size = Vector(0.09, 0.039, 0.014), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
	["top1"] = { type = "Model", model = "models/hunter/tubes/circle2x2c.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "body1", pos = Vector(-1.346, 2.75, 0.026), angle = Angle(90, 0, 0), size = Vector(0.009, 0.071, 0.127), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
	["body1curvebottom"] = { type = "Model", model = "models/props_wasteland/panel_leverHandle001a.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "body1", pos = Vector(-0.735, 0, 2.368), angle = Angle(90, -90, 0), size = Vector(0.234, 0.234, 0.234), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
	["body1++"] = { type = "Model", model = "models/hunter/misc/platehole1x1d.mdl", bone = "v_weapon.p228_Parent", rel = "body1+", pos = Vector(-0.927, -0.018, -1.599), angle = Angle(-90, 0, 0), size = Vector(0.046, 0.024, 0.412), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
	["ironsightmiddleleft+"] = { type = "Model", model = "models/hunter/misc/platehole1x1d.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "ironsightmiddleleft", pos = Vector(0, -0.098, 0), angle = Angle(0, 0, 180), size = Vector(0.014, 0.009, 0.18), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
	["magabove1"] = { type = "Model", model = "models/props_junk/cardboard_box001a.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "body1", pos = Vector(-0.801, 2.599, 1.973), angle = Angle(0, 0, 0), size = Vector(0.048, 0.093, 0.039), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
	["sideeffect1+"] = { type = "Model", model = "models/hunter/misc/roundthing2.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "sideeffect1", pos = Vector(-0.649, 0, 0), angle = Angle(0, 0, 0), size = Vector(0.009, 0.016, 0.009), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
	["body1curvebottom++"] = { type = "Model", model = "models/props_trainstation/Ceiling_Arch001a.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "body1", pos = Vector(-0.735, -0.557, 3.43), angle = Angle(0, 0, -180), size = Vector(0.149, 0.03, 0.026), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
	["gripfront"] = { type = "Model", model = "models/hunter/tubes/circle2x2c.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "body2", pos = Vector(-1.094, 2.476, 0.922), angle = Angle(-90, 90, 0), size = Vector(0.039, 0.009, 1.393), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} }
}



end

SWEP.Base = "weapon_zs_base"

SWEP.HoldType = "pistol"

SWEP.UseHands = true
SWEP.ViewModel = "models/weapons/cstrike/c_pist_p228.mdl"
SWEP.WorldModel = "models/weapons/w_smg_mac10.mdl"
SWEP.ShowViewModel = true
SWEP.ShowWorldModel = true

SWEP.Primary.Sound = Sound("Weapon_P228.Single")
SWEP.Primary.Damage = 16
SWEP.Primary.NumShots = 1
SWEP.Primary.Delay = 0.1

SWEP.Primary.ClipSize = 30
SWEP.Primary.Automatic = true
SWEP.Primary.Ammo = "smg1"


SWEP.ConeMax = 4
SWEP.ConeMin = 0.75

SWEP.Tier = 2

SWEP.IronSightsPos = Vector(-6.6, -5.097, 1.48)
SWEP.IronSightsAng = Vector(0.85, -0.988, -0.024)

//Made by DuffT. Thanks to Superspooner,Johnny Moe, and erdf 