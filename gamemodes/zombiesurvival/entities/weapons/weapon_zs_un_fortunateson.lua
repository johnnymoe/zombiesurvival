AddCSLuaFile()
DEFINE_BASECLASS("weapon_zs_base")

SWEP.PrintName = "'(Un)Fortunate Son' M16"
SWEP.Description = "A vietnam relic brought home by an old Infantry Veteran. Turns out the thought of never needing it again is wrong."
SWEP.Slot = 2
SWEP.SlotPos = 0

if CLIENT then
	SWEP.ViewModelFlip = false
	SWEP.ViewModelFOV = 64.188303049829
	
	SWEP.ShowViewModel = true
	SWEP.ShowWorldModel = false


	SWEP.ViewModelBoneMods = {
	["ValveBiped.Bip01_R_Forearm"] = { scale = Vector(1, 1, 1), pos = Vector(1.264, -0.5, 0.635), angle = Angle(0, 0, 0) },
	["v_weapon.m4_Parent"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(-0.283, 0.063, -0.786), angle = Angle(5.502, -1.499, 3.135) },
	["v_weapon.m4_Clip"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0,0,0), angle = Angle(0,0,0) },
	["ValveBiped.Bip01_L_Finger02"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 21.91, 0) },
	["v_weapon.m4_Eject"] = { scale = Vector(0.8, 0.8, 0.8), pos = Vector(0.5, 0, 0), angle = Angle(0,0, 180) },
	["ValveBiped.Bip01_L_Forearm"] = { scale = Vector(1, 1, 1), pos = Vector(2.197, 1.019, 0.936), angle = Angle(0, 0, 0) },
	["ValveBiped.Bip01_Spine4"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-0.87, 0.731, 2.884) },
	["ValveBiped.Bip01_L_Hand"] = { scale = Vector(1, 1, 1), pos = Vector(0.232, 0.027, 0.029), angle = Angle(0.204, -0.033, 11.845) }
}


SWEP.VElements = {
	["stockbottom"] = { type = "Model", model = "models/hunter/triangles/1x05x05.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "body1+", pos = Vector(0.172, 1.47, 3.509), angle = Angle(180, 0, 90), size = Vector(0.09, 0.164, 0.092), color = Color(44, 44, 44, 255), surpresslightning = false, material = "phoenix_storms/concrete1", skin = 0, bodygroup = {} },
	["body1+"] = { type = "Model", model = "models/hunter/tubes/tube1x1x2.mdl", bone = "v_weapon.m4_Parent", rel = "", pos = Vector(0.497, -4.634, -0.014), angle = Angle(0, 0, 0), size = Vector(0.041, 0.041, 0.076), color = Color(44, 44, 44, 255), surpresslightning = false, material = "phoenix_storms/concrete1", skin = 0, bodygroup = {} },
	["abovebody2"] = { type = "Model", model = "models/props_c17/playground_teetertoter_stan.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "abovebody1", pos = Vector(-0.807, 0.017, 3.19), angle = Angle(90, 0, 0), size = Vector(0.188, 0.51, 0.078), color = Color(44, 44, 44, 255), surpresslightning = false, material = "phoenix_storms/roadside", skin = 0, bodygroup = {} },
	["abovebody3"] = { type = "Model", model = "models/hunter/triangles/1x1x1carved025.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "abovebody2", pos = Vector(3.095, -0.008, 0.476), angle = Angle(100.328, 0, 90), size = Vector(0.046, 0.02, 0.025), color = Color(44, 44, 44, 255), surpresslightning = false, material = "phoenix_storms/roadside", skin = 0, bodygroup = {} },
	["BarrelTri1+"] = { type = "Model", model = "models/hunter/plates/plate1x3x1trap.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "BarrelTri1", pos = Vector(0.006, -1.629, 0.043), angle = Angle(0, 0, 180), size = Vector(0.016, 0.046, 0.016), color = Color(44, 44, 44, 255), surpresslightning = false, material = "phoenix_storms/concrete1", skin = 0, bodygroup = {} },
	["body3"] = { type = "Model", model = "models/hunter/blocks/cube025x075x025.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "body1", pos = Vector(0.888, 0.266, 7.791), angle = Angle(0, -5, 90), size = Vector(0.151, 0.209, 0.151), color = Color(44, 44, 44, 255), surpresslightning = false, material = "phoenix_storms/grey_steel", skin = 0, bodygroup = {} },
	["barrel3front"] = { type = "Model", model = "models/xqm/cylinderx1.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "barrel1front", pos = Vector(0, 0, 6.171), angle = Angle(90, 0, 0), size = Vector(0.081, 0.071, 0.081), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/black_brushes", skin = 0, bodygroup = {} },
	["magholder"] = { type = "Model", model = "models/hunter/triangles/1x05x05.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "body2", pos = Vector(-0.217, -2.523, -2.125), angle = Angle(180, 5.13, -90), size = Vector(0.075, 0.075, 0.045), color = Color(44, 44, 44, 255), surpresslightning = false, material = "phoenix_storms/roadside", skin = 0, bodygroup = {} },
	["body2"] = { type = "Model", model = "models/hunter/misc/shell2x2a.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "body1", pos = Vector(0, 0, 0.004), angle = Angle(0, 0, 180), size = Vector(0.023, 0.023, 0.023), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["abovebody4"] = { type = "Model", model = "models/hunter/triangles/05x05x05.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "abovebody3", pos = Vector(-1.632, 0.98, 0.003), angle = Angle(90, 90, 81.117), size = Vector(0.05, 0.064, 0.101), color = Color(44, 44, 44, 255), surpresslightning = false, material = "phoenix_storms/grey_steel", skin = 0, bodygroup = {} },
	["charginghandle"] = { type = "Model", model = "models/hunter/misc/roundthing2.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "body1", pos = Vector(0, -0.847, 7.915), angle = Angle(90, -93.765, 0), size = Vector(0.016, 0.014, 0.009), color = Color(44, 44, 44, 255), surpresslightning = false, material = "phoenix_storms/roadside", skin = 0, bodygroup = {} },
	["body1"] = { type = "Model", model = "models/hunter/tubes/tube1x1x2.mdl", bone = "v_weapon.m4_Parent", rel = "", pos = Vector(0.497, -4.634, -8.2), angle = Angle(0, 0, 0), size = Vector(0.041, 0.041, 0.086), color = Color(44, 44, 44, 255), surpresslightning = false, material = "phoenix_storms/grey_steel", skin = 0, bodygroup = {} },
	["ironsighttop1"] = { type = "Model", model = "models/phxtended/tri2x1solid.mdl", bone = "v_weapon.m4_Parent", rel = "abovebody2", pos = Vector(2.536, 0.578, 1.345), angle = Angle(0, 180, 90), size = Vector(0.046, 0.014, 0.019), color = Color(44, 44, 44, 255), surpresslightning = false, material = "phoenix_storms/grey_steel", skin = 0, bodygroup = {} },
	["BarrelTriSideLeft"] = { type = "Model", model = "models/hunter/plates/plate1x3x1trap.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "BarrelTri1+", pos = Vector(-1.522, 0.199, 0.045), angle = Angle(90, 69.774, 0), size = Vector(0.059, 0.1, 0.037), color = Color(44, 44, 44, 255), surpresslightning = false, material = "phoenix_storms/concrete1", skin = 0, bodygroup = {} },
	["abovebody1"] = { type = "Model", model = "models/hunter/blocks/cube025x05x025.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "body1", pos = Vector(0.003, -0.719, 0.219), angle = Angle(0, -94.196, 0), size = Vector(0.086, 0.05, 0.565), color = Color(44, 44, 44, 255), surpresslightning = false, material = "phoenix_storms/grey_steel", skin = 0, bodygroup = {} },
	["mag"] = { type = "Model", model = "models/Items/BoxSRounds.mdl", bone = "v_weapon.m4_Clip", rel = "", pos = Vector(0.006, -0.115, -0.829), angle = Angle(180, -5.292, 0), size = Vector(0.268, 0.166, 0.268), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/roadside", skin = 0, bodygroup = {} },
	["bottombarrelfix"] = { type = "Model", model = "models/xqm/cylinderx1.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "BarrelTriTop", pos = Vector(0.05, -3.244, 3.023), angle = Angle(0, 90, 0), size = Vector(0.041, 0.275, 0.083), color = Color(44, 44, 44, 255), surpresslightning = false, material = "phoenix_storms/concrete1", skin = 0, bodygroup = {} },
	["mag+"] = { type = "Model", model = "models/hunter/triangles/1x05x05.mdl", bone = "v_weapon.m4_Clip", rel = "mag", pos = Vector(-0.029, 1.753, 1.444), angle = Angle(-180, 180, -90), size = Vector(0.064, 0.059, 0.025), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/roadside", skin = 0, bodygroup = {} },
	["BarrelTrapeziumBottom"] = { type = "Model", model = "models/hunter/geometric/hex05x1.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "BarrelTriTop", pos = Vector(0.014, -3.333, 3.125), angle = Angle(11.72, 90, 0), size = Vector(0.273, 0.035, 0.03), color = Color(44, 44, 44, 255), surpresslightning = false, material = "phoenix_storms/concrete1", skin = 0, bodygroup = {} },
	["barrel2front"] = { type = "Model", model = "models/phxtended/tri1x1.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "barrel1front", pos = Vector(-0.12, 0.064, 2.7), angle = Angle(0, -90, -90), size = Vector(0.054, 0.054, 0.046), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/black_brushes", skin = 0, bodygroup = {} },
	["BarrelTriTop"] = { type = "Model", model = "models/hunter/plates/plate025x075.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "BarrelTri1", pos = Vector(-3, -0.824, 3.546), angle = Angle(0, -90, -90), size = Vector(0.082, 0.201, 0.082), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/concrete1", skin = 0, bodygroup = {} },
	["barrel1front"] = { type = "Model", model = "models/hunter/tubes/tube1x1x2.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "body2", pos = Vector(-0.058, -0.015, 11.451), angle = Angle(0, 0, 0), size = Vector(0.014, 0.014, 0.061), color = Color(44, 44, 44, 255), surpresslightning = false, material = "phoenix_storms/concrete1", skin = 0, bodygroup = {} },
	["barreltopholes"] = { type = "Model", model = "models/mechanics/solid_steel/type_a_6_20.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "topbarrelfix", pos = Vector(0.057, 0, -0.318), angle = Angle(0, 0, 0), size = Vector(0.035, 0.035, 0.035), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/black_chrome", skin = 0, bodygroup = {} },
	["ironsightcircle"] = { type = "Model", model = "models/hunter/tubes/tube1x1x1.mdl", bone = "v_weapon.m4_Parent", rel = "", pos = Vector(0.685, -7.92, -2.692), angle = Angle(0, 0, 0), size = Vector(0.009, 0.009, 0.009), color = Color(44, 44, 44, 255), surpresslightning = false, material = "phoenix_storms/grey_steel", skin = 0, bodygroup = {} },
	["BarrelTrapezium"] = { type = "Model", model = "models/hunter/triangles/trapezium.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "BarrelTriTop", pos = Vector(-0.101, 7.666, 0.425), angle = Angle(90, 90, 0), size = Vector(0.02, 0.01, 0.02), color = Color(44, 44, 44, 255), surpresslightning = false, material = "phoenix_storms/concrete1", skin = 0, bodygroup = {} },
	["topbarrelfix"] = { type = "Model", model = "models/xqm/cylinderx1.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "BarrelTriTop", pos = Vector(-0.007, 2.207, -0.093), angle = Angle(0, 90, 0), size = Vector(0.945, 0.082, 0.061), color = Color(44, 44, 44, 255), surpresslightning = false, material = "phoenix_storms/concrete1", skin = 0, bodygroup = {} },
	["triggerblock"] = { type = "Model", model = "models/hunter/misc/platehole1x1a.mdl", bone = "v_weapon.m4_Parent", rel = "body3", pos = Vector(-0.875, 2.835, 2.334), angle = Angle(0, -90, 90), size = Vector(0.046, 0.021, 0.642), color = Color(44, 44, 44, 255), surpresslightning = false, material = "phoenix_storms/grey_steel", skin = 0, bodygroup = {} },
	["circlebody2"] = { type = "Model", model = "models/hunter/tubes/circle2x2.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "body2", pos = Vector(0, 0, -0.017), angle = Angle(0, 0, 0), size = Vector(0.023, 0.023, 0.023), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/black_brushes", skin = 0, bodygroup = {} },
	["ironsighttop1+"] = { type = "Model", model = "models/phxtended/tri2x1solid.mdl", bone = "v_weapon.m4_Parent", rel = "ironsighttop1", pos = Vector(0, 0.002, 1.039), angle = Angle(0, 0, 0), size = Vector(0.046, 0.014, 0.019), color = Color(44, 44, 44, 255), surpresslightning = false, material = "phoenix_storms/grey_steel", skin = 0, bodygroup = {} },
	["stockback"] = { type = "Model", model = "models/hunter/misc/roundthing2.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "body1+", pos = Vector(-0.08, 0.819, 7.086), angle = Angle(0, -1.831, 0), size = Vector(0.035, 0.025, 0.009), color = Color(44, 44, 44, 255), surpresslightning = false, material = "phoenix_storms/concrete1", skin = 0, bodygroup = {} },
	["BarrelTri1"] = { type = "Model", model = "models/hunter/plates/plate1x3x1trap.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "body2", pos = Vector(0.712, -1.614, 0.029), angle = Angle(-5.213, 94, 0), size = Vector(0.016, 0.046, 0.016), color = Color(44, 44, 44, 255), surpresslightning = false, material = "phoenix_storms/concrete1", skin = 0, bodygroup = {} },
	["BarrelTriSideRight"] = { type = "Model", model = "models/hunter/plates/plate1x3x1trap.mdl", bone = "v_weapon.m4_Parent", rel = "BarrelTri1", pos = Vector(-1.545, 0.305, 0.009), angle = Angle(-90, 68.601, 0.289), size = Vector(0.059, 0.1, 0.059), color = Color(44, 44, 44, 255), surpresslightning = false, material = "phoenix_storms/concrete1", skin = 0, bodygroup = {} },
	["gripper1"] = { type = "Model", model = "models/hunter/misc/roundthing2.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "body1", pos = Vector(-0.338, 3.069, 6.171), angle = Angle(0, 0, -13.006), size = Vector(0.026, 0.026, 0.035), color = Color(44, 44, 44, 255), surpresslightning = false, material = "phoenix_storms/roadside", skin = 0, bodygroup = {} }
}


end


SWEP.WElements = {
	["stockbottom"] = { type = "Model", model = "models/hunter/triangles/1x05x05.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "body1+", pos = Vector(0.172, 1.47, 3.509), angle = Angle(180, 0, 90), size = Vector(0.09, 0.164, 0.092), color = Color(44, 44, 44, 255), surpresslightning = false, material = "phoenix_storms/concrete1", skin = 0, bodygroup = {} },
	["BarrelTriSideRight"] = { type = "Model", model = "models/hunter/plates/plate1x3x1trap.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "BarrelTri1", pos = Vector(-1.545, 0.305, 0.009), angle = Angle(-90, 68.601, 0.289), size = Vector(0.059, 0.1, 0.059), color = Color(44, 44, 44, 255), surpresslightning = false, material = "phoenix_storms/concrete1", skin = 0, bodygroup = {} },
	["ironsighttop1+"] = { type = "Model", model = "models/phxtended/tri2x1solid.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "ironsighttop1", pos = Vector(0, 0.002, 1.039), angle = Angle(0, 0, 0), size = Vector(0.046, 0.014, 0.019), color = Color(44, 44, 44, 255), surpresslightning = false, material = "phoenix_storms/grey_steel", skin = 0, bodygroup = {} },
	["abovebody3"] = { type = "Model", model = "models/hunter/triangles/1x1x1carved025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "abovebody2", pos = Vector(3.095, -0.008, 0.476), angle = Angle(100.328, 0, 90), size = Vector(0.046, 0.02, 0.025), color = Color(44, 44, 44, 255), surpresslightning = false, material = "phoenix_storms/roadside", skin = 0, bodygroup = {} },
	["BarrelTri1+"] = { type = "Model", model = "models/hunter/plates/plate1x3x1trap.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "BarrelTri1", pos = Vector(0.006, -1.629, 0.043), angle = Angle(0, 0, 180), size = Vector(0.016, 0.046, 0.016), color = Color(44, 44, 44, 255), surpresslightning = false, material = "phoenix_storms/concrete1", skin = 0, bodygroup = {} },
	["body3"] = { type = "Model", model = "models/hunter/blocks/cube025x075x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "body1", pos = Vector(0.888, 0.266, 7.791), angle = Angle(0, -5, 90), size = Vector(0.151, 0.209, 0.151), color = Color(44, 44, 44, 255), surpresslightning = false, material = "phoenix_storms/grey_steel", skin = 0, bodygroup = {} },
	["triggerblock"] = { type = "Model", model = "models/hunter/misc/platehole1x1a.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "body3", pos = Vector(-0.875, 2.835, 2.334), angle = Angle(0, -90, 90), size = Vector(0.046, 0.021, 0.642), color = Color(44, 44, 44, 255), surpresslightning = false, material = "phoenix_storms/grey_steel", skin = 0, bodygroup = {} },
	["magholder"] = { type = "Model", model = "models/hunter/triangles/1x05x05.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "body2", pos = Vector(-0.217, -2.523, -2.125), angle = Angle(180, 5.13, -90), size = Vector(0.075, 0.075, 0.045), color = Color(44, 44, 44, 255), surpresslightning = false, material = "phoenix_storms/roadside", skin = 0, bodygroup = {} },
	["body2"] = { type = "Model", model = "models/hunter/misc/shell2x2a.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "body1", pos = Vector(0, 0, 0.004), angle = Angle(0, 0, 180), size = Vector(0.023, 0.023, 0.023), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["abovebody4"] = { type = "Model", model = "models/hunter/triangles/05x05x05.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "abovebody3", pos = Vector(-1.632, 0.98, 0.003), angle = Angle(90, 90, 81.117), size = Vector(0.05, 0.064, 0.101), color = Color(44, 44, 44, 255), surpresslightning = false, material = "phoenix_storms/grey_steel", skin = 0, bodygroup = {} },
	["charginghandle"] = { type = "Model", model = "models/hunter/misc/roundthing2.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "body1", pos = Vector(0, -0.847, 7.915), angle = Angle(90, -93.765, 0), size = Vector(0.016, 0.014, 0.009), color = Color(44, 44, 44, 255), surpresslightning = false, material = "phoenix_storms/roadside", skin = 0, bodygroup = {} },
	["body1"] = { type = "Model", model = "models/hunter/tubes/tube1x1x2.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(11.043, 0.996, -4.286), angle = Angle(0, 90, -91.121), size = Vector(0.041, 0.041, 0.086), color = Color(44, 44, 44, 255), surpresslightning = false, material = "phoenix_storms/grey_steel", skin = 0, bodygroup = {} },
	["ironsighttop1"] = { type = "Model", model = "models/phxtended/tri2x1solid.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "abovebody2", pos = Vector(2.536, 0.578, 1.345), angle = Angle(0, 180, 90), size = Vector(0.046, 0.014, 0.019), color = Color(44, 44, 44, 255), surpresslightning = false, material = "phoenix_storms/grey_steel", skin = 0, bodygroup = {} },
	["BarrelTriSideLeft"] = { type = "Model", model = "models/hunter/plates/plate1x3x1trap.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "BarrelTri1+", pos = Vector(-1.522, 0.199, 0.045), angle = Angle(90, 69.774, 0), size = Vector(0.059, 0.1, 0.037), color = Color(44, 44, 44, 255), surpresslightning = false, material = "phoenix_storms/concrete1", skin = 0, bodygroup = {} },
	["gripper1"] = { type = "Model", model = "models/hunter/misc/roundthing2.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "body1", pos = Vector(-0.338, 3.069, 6.171), angle = Angle(0, 0, -13.006), size = Vector(0.026, 0.026, 0.035), color = Color(44, 44, 44, 255), surpresslightning = false, material = "phoenix_storms/roadside", skin = 0, bodygroup = {} },
	["body1+"] = { type = "Model", model = "models/hunter/tubes/tube1x1x2.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(2.812, 1.014, -4.276), angle = Angle(180, -90.309, 90), size = Vector(0.041, 0.041, 0.076), color = Color(44, 44, 44, 255), surpresslightning = false, material = "phoenix_storms/concrete1", skin = 0, bodygroup = {} },
	["mag"] = { type = "Model", model = "models/Items/BoxSRounds.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(7.269, 1.167, -1.77), angle = Angle(-173.157, 90.393, 92.084), size = Vector(0.268, 0.166, 0.268), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/roadside", skin = 0, bodygroup = {} },
	["mag+"] = { type = "Model", model = "models/hunter/triangles/1x05x05.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "mag", pos = Vector(-0.029, 1.753, 1.444), angle = Angle(-180, 180, -90), size = Vector(0.064, 0.059, 0.025), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/roadside", skin = 0, bodygroup = {} },
	["BarrelTrapeziumBottom"] = { type = "Model", model = "models/hunter/geometric/hex05x1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "BarrelTriTop", pos = Vector(0.014, -3.333, 3.125), angle = Angle(11.72, 90, 0), size = Vector(0.273, 0.035, 0.03), color = Color(44, 44, 44, 255), surpresslightning = false, material = "phoenix_storms/concrete1", skin = 0, bodygroup = {} },
	["barrel2front"] = { type = "Model", model = "models/phxtended/tri1x1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "barrel1front", pos = Vector(-0.12, 0.064, 2.7), angle = Angle(0, -90, -90), size = Vector(0.054, 0.054, 0.046), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/black_brushes", skin = 0, bodygroup = {} },
	["barrel3front"] = { type = "Model", model = "models/xqm/cylinderx1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "barrel1front", pos = Vector(0, 0, 6.171), angle = Angle(90, 0, 0), size = Vector(0.081, 0.071, 0.081), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/black_brushes", skin = 0, bodygroup = {} },
	["barrel1front"] = { type = "Model", model = "models/hunter/tubes/tube1x1x2.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "body2", pos = Vector(-0.058, -0.015, 11.451), angle = Angle(0, 0, 0), size = Vector(0.014, 0.014, 0.061), color = Color(44, 44, 44, 255), surpresslightning = false, material = "phoenix_storms/concrete1", skin = 0, bodygroup = {} },
	["barreltopholes"] = { type = "Model", model = "models/mechanics/solid_steel/type_a_6_20.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "topbarrelfix", pos = Vector(0.057, 0, -0.318), angle = Angle(0, 0, 0), size = Vector(0.035, 0.035, 0.035), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/black_chrome", skin = 0, bodygroup = {} },
	["ironsightcircle"] = { type = "Model", model = "models/hunter/tubes/tube1x1x1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(5.341, 0.799, -7.665), angle = Angle(-90, 0, 0), size = Vector(0.009, 0.009, 0.009), color = Color(44, 44, 44, 255), surpresslightning = false, material = "phoenix_storms/grey_steel", skin = 0, bodygroup = {} },
	["BarrelTrapezium"] = { type = "Model", model = "models/hunter/triangles/trapezium.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "BarrelTriTop", pos = Vector(-0.101, 7.666, 0.425), angle = Angle(90, 90, 0), size = Vector(0.02, 0.01, 0.02), color = Color(44, 44, 44, 255), surpresslightning = false, material = "phoenix_storms/concrete1", skin = 0, bodygroup = {} },
	["topbarrelfix"] = { type = "Model", model = "models/xqm/cylinderx1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "BarrelTriTop", pos = Vector(-0.007, 2.207, -0.093), angle = Angle(0, 90, 0), size = Vector(0.945, 0.082, 0.061), color = Color(44, 44, 44, 255), surpresslightning = false, material = "phoenix_storms/concrete1", skin = 0, bodygroup = {} },
	["BarrelTriTop"] = { type = "Model", model = "models/hunter/plates/plate025x075.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "BarrelTri1", pos = Vector(-3, -0.824, 3.546), angle = Angle(0, -90, -90), size = Vector(0.082, 0.201, 0.082), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/concrete1", skin = 0, bodygroup = {} },
	["abovebody2"] = { type = "Model", model = "models/props_c17/playground_teetertoter_stan.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "abovebody1", pos = Vector(-0.807, 0.017, 3.19), angle = Angle(90, 0, 0), size = Vector(0.188, 0.51, 0.078), color = Color(44, 44, 44, 255), surpresslightning = false, material = "phoenix_storms/roadside", skin = 0, bodygroup = {} },
	["bottombarrelfix"] = { type = "Model", model = "models/xqm/cylinderx1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "BarrelTriTop", pos = Vector(0.05, -3.244, 3.023), angle = Angle(0, 90, 0), size = Vector(0.041, 0.275, 0.083), color = Color(44, 44, 44, 255), surpresslightning = false, material = "phoenix_storms/concrete1", skin = 0, bodygroup = {} },
	["stockback"] = { type = "Model", model = "models/hunter/misc/roundthing2.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "body1+", pos = Vector(-0.08, 0.819, 7.086), angle = Angle(0, -1.831, 0), size = Vector(0.035, 0.025, 0.009), color = Color(44, 44, 44, 255), surpresslightning = false, material = "phoenix_storms/concrete1", skin = 0, bodygroup = {} },
	["BarrelTri1"] = { type = "Model", model = "models/hunter/plates/plate1x3x1trap.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "body2", pos = Vector(0.712, -1.614, 0.029), angle = Angle(-5.213, 94, 0), size = Vector(0.016, 0.046, 0.016), color = Color(44, 44, 44, 255), surpresslightning = false, material = "phoenix_storms/concrete1", skin = 0, bodygroup = {} },
	["circlebody2"] = { type = "Model", model = "models/hunter/tubes/circle2x2.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "body2", pos = Vector(0, 0, -0.017), angle = Angle(0, 0, 0), size = Vector(0.023, 0.023, 0.023), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/black_brushes", skin = 0, bodygroup = {} },
	["abovebody1"] = { type = "Model", model = "models/hunter/blocks/cube025x05x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "body1", pos = Vector(0.003, -0.719, 0.219), angle = Angle(0, -94.196, 0), size = Vector(0.086, 0.05, 0.565), color = Color(44, 44, 44, 255), surpresslightning = false, material = "phoenix_storms/grey_steel", skin = 0, bodygroup = {} }
}


SWEP.Base = "weapon_zs_base"

SWEP.HoldType = "ar2"

SWEP.ViewModel = "models/weapons/cstrike/c_rif_m4a1.mdl"
SWEP.WorldModel = "models/weapons/w_rif_m4a1.mdl"
SWEP.UseHands = true

SWEP.Primary.Sound = Sound("weapons/scout/scout_fire-1.wav")
SWEP.Primary.Damage = 26
SWEP.Primary.NumShots = 1
SWEP.Primary.Delay = 0.075

SWEP.CSMuzzleFlashes = true

SWEP.Primary.ClipSize = 30
SWEP.Primary.Automatic = true
SWEP.Primary.Ammo = "ar2"
GAMEMODE:SetupDefaultClip(SWEP.Primary)

SWEP.Primary.Gesture = ACT_HL2MP_GESTURE_RANGE_ATTACK_SMG1
SWEP.ReloadGesture = ACT_HL2MP_GESTURE_RELOAD_SMG1

SWEP.ConeMax = 5
SWEP.ConeMin = 0.5

SWEP.WalkSpeed = SPEED_SLOW

SWEP.Tier = 5
SWEP.MaxStock = 3

SWEP.IronSightsPos = Vector(-7.961, -7.393, 0.789)
SWEP.IronSightsAng = Vector(0.007, -6.097, -0.528)

GAMEMODE:AttachWeaponModifier(SWEP, WEAPON_MODIFIER_CLIP_SIZE, 3)




  
  

function SWEP:GetAuraRange()
	return 512
end

function SWEP:EmitFireSound()
    self:EmitSound(self.Primary.Sound, 100, math.random(65,66))
     
end


//Made by DuffT. Thanks to Johnny Moe, SuperSpooner and erdf. Thanks Worm for inspiration (Peacemaker 5.56)
