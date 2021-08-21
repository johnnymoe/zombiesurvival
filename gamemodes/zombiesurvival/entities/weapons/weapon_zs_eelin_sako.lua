AddCSLuaFile()
DEFINE_BASECLASS("weapon_zs_base")

SWEP.PrintName = "'Eelis' Sniper Rifle"
SWEP.Description = "A sniper rifle fitted with custom Pulse rounds, found in an abandoned Finnish home."

SWEP.Slot = 5
SWEP.SlotPos = 0

if CLIENT then
	SWEP.ViewModelFlip = false

	SWEP.HUD3DBone = "v_weapon.scout_Parent"
	SWEP.HUD3DPos = Vector(-1, -2.75, -6)
	SWEP.HUD3DAng = Angle(0, 0, 0)
	SWEP.HUD3DScale = 0.015
end

SWEP.IronSightsPos = Vector(-6.63, -16.605, 3.282)
SWEP.IronSightsAng = Vector(-0.504, 0.039, 0)

SWEP.Base = "weapon_zs_base"

SWEP.HoldType = "crossbow"

SWEP.ViewModel = "models/weapons/cstrike/c_snip_scout.mdl"
SWEP.WorldModel = "models/weapons/w_snip_scout.mdl"
SWEP.UseHands = true
SWEP.ShowViewModel = true
SWEP.ShowWorldModel = true

SWEP.ViewModelBoneMods = {
	["ValveBiped.Bip01_L_Finger0"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(10.369, 0, 0) },
	["v_weapon.scout_Parent"] = { scale = Vector(0.010, 0.010, 0.010), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["v_weapon.scout_Bolt"] = { scale = Vector(0.010, 0.010, 0.010), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["v_weapon.scout_Clip"] = { scale = Vector(0.010, 0.010, 0.010), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["ValveBiped.Bip01_L_Forearm"] = { scale = Vector(1, 1, 0.985), pos = Vector(0, 0.55, 0.116), angle = Angle(0, 0, 0) }
}

SWEP.VElements = {
	["bareeeeeelmuzzle7+"] = { type = "Model", model = "models/hunter/tubes/circle2x2.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "bareeeeeelmuzzle7", pos = Vector(0, 0, -0.805), angle = Angle(0, 0, 0), size = Vector(0.016, 0.016, 0.13), color = Color(255, 255, 255, 255), surpresslightning = true, material = "models/props_c17/metalladder003", skin = 0, bodygroup = {} },
	["bipodcircle"] = { type = "Model", model = "models/xqm/Rails/cap.mdl", bone = "v_weapon.scout_Parent", rel = "bareeeeeeeeeeel", pos = Vector(-0.58, 0.546, 6.839), angle = Angle(0, 0, -5.462), size = Vector(0.032, 0.027, 0.032), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/fender_chrome", skin = 0, bodygroup = {} },
	["fronttriggerblock"] = { type = "Model", model = "models/hunter/plates/plate025x05.mdl", bone = "v_weapon.scout_Parent", rel = "body1", pos = Vector(-0.338, -11.759, -1.053), angle = Angle(0, 180, 90), size = Vector(0.082, 0.12, 0.13), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/fender_chrome", skin = 0, bodygroup = {} },
	["triggeritself"] = { type = "Model", model = "models/hunter/misc/shell2x2x45.mdl", bone = "v_weapon.scout_Parent", rel = "body1", pos = Vector(-0.723, -12.155, -1.795), angle = Angle(180, 20.454, -171.174), size = Vector(0.013, 0.009, 0.009), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/props_wasteland/rockcliff02a", skin = 0, bodygroup = {} },
	["bareeeeeelmuzzle5+"] = { type = "Model", model = "models/hunter/tubes/tube1x1x1d.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "bareeeeeelmuzzle5", pos = Vector(0, 0, -0.704), angle = Angle(0, 0, 0), size = Vector(0.03, 0.03, 0.014), color = Color(0, 255, 255, 255), surpresslightning = true, material = "models/props_c17/metalladder003", skin = 0, bodygroup = {} },
	["body1verylowtriangle+"] = { type = "Model", model = "models/hunter/triangles/05x05x05.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "body1verylow", pos = Vector(-0.47, 1.554, -0.276), angle = Angle(0, 90, -90), size = Vector(0.057, 0.025, 0.057), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/fender_chrome", skin = 0, bodygroup = {} },
	["body1extender"] = { type = "Model", model = "models/hunter/plates/plate025x075.mdl", bone = "v_weapon.scout_Parent", rel = "body1above", pos = Vector(0.028, -4.034, -0.033), angle = Angle(0, 0, 0), size = Vector(0.105, 0.307, 0.105), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/fender_chrome", skin = 0, bodygroup = {} },
	["curvehider"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "v_weapon.scout_Parent", rel = "clipareabody1", pos = Vector(-0.436, -2.767, 0.73), angle = Angle(0, 0, 0), size = Vector(0.068, 0.067, 0.101), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/fender_chrome", skin = 0, bodygroup = {} },
	["teethscope1"] = { type = "Model", model = "models/Mechanics/gears2/pinion_80t1.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "bodybehindbarel1+", pos = Vector(-0.288, 9.038, 0.31), angle = Angle(0, 90, -90), size = Vector(0.068, 0.078, 0.087), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/fender_chrome", skin = 0, bodygroup = {} },
	["racksupport"] = { type = "Model", model = "models/hunter/triangles/05x05x05.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "bodybehindbarel1", pos = Vector(-0.926, 3.263, 0.01), angle = Angle(0, 90, 0), size = Vector(0.032, 0.009, 0.019), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/fender_chrome", skin = 0, bodygroup = {} },
	["boltreleaser"] = { type = "Model", model = "models/hunter/misc/platehole1x1c.mdl", bone = "v_weapon.scout_Parent", rel = "bareeeeeeeeeeel", pos = Vector(-0.01, -0.212, 18.988), angle = Angle(0, -90, 0), size = Vector(0.023, 0.019, 0.635), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/fender_chrome", skin = 0, bodygroup = {} },
	["body1above"] = { type = "Model", model = "models/hunter/plates/plate025x175.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "body1", pos = Vector(-0.566, -3.145, 0.319), angle = Angle(0, 0, 0), size = Vector(0.09, 0.209, 0.09), color = Color(226, 227, 225, 255), surpresslightning = false, material = "phoenix_storms/fender_chrome", skin = 0, bodygroup = {} },
	["racksupport+++"] = { type = "Model", model = "models/hunter/triangles/05x05x05.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "bodybehindbarel1", pos = Vector(-0.926, 12.788, 0.01), angle = Angle(0, 90, 0), size = Vector(0.032, 0.009, 0.019), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/fender_chrome", skin = 0, bodygroup = {} },
	["bipodcircle+"] = { type = "Model", model = "models/xqm/Rails/cap.mdl", bone = "v_weapon.scout_Parent", rel = "bipodcircle", pos = Vector(1.134, 0, 0), angle = Angle(0, 180, 0), size = Vector(0.032, 0.027, 0.032), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/fender_chrome", skin = 0, bodygroup = {} },
	["actualbolt+"] = { type = "Model", model = "models/mechanics/roboticslarge/c2.mdl", bone = "v_weapon.scout_Bolt", rel = "actualbolt", pos = Vector(0.458, -0.601, 0.87), angle = Angle(-4.36, 54.908, 0), size = Vector(0.009, 0.009, 0.009), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/fender_chrome", skin = 0, bodygroup = {} },
	["body1verylowtriangle"] = { type = "Model", model = "models/hunter/triangles/05x05x05.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "body1verylow", pos = Vector(-0.524, 2.907, -0.273), angle = Angle(0, 90, -90), size = Vector(0.057, 0.025, 0.057), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/fender_chrome", skin = 0, bodygroup = {} },
	["scopesupport"] = { type = "Model", model = "models/props_wasteland/cafeteria_bench001a.mdl", bone = "v_weapon.scout_Parent", rel = "body1", pos = Vector(-0.522, -1.045, 1.493), angle = Angle(0, 0, 180), size = Vector(0.021, 0.172, 0.071), color = Color(255, 0, 0, 255), surpresslightning = false, material = "phoenix_storms/fender_chrome", skin = 0, bodygroup = {} },
	["racksupportplate"] = { type = "Model", model = "models/hunter/plates/plate025x175.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "racksupport", pos = Vector(-4.487, 0.096, 0.202), angle = Angle(90, -90, 0), size = Vector(0.009, 0.151, 0.009), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/fender_chrome", skin = 0, bodygroup = {} },
	["bareeeeeelmuzzle6"] = { type = "Model", model = "models/hunter/tubes/tube1x1x1d.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "bareeeeeelmuzzle3", pos = Vector(0, 0, -0.7), angle = Angle(0, 0, 0), size = Vector(0.03, 0.03, 0.014), color = Color(0, 255, 255, 255), surpresslightning = true, material = "models/props_c17/metalladder003", skin = 0, bodygroup = {} },
	["gripblocker"] = { type = "Model", model = "models/hunter/tubes/circle2x2.mdl", bone = "v_weapon.scout_Parent", rel = "body1", pos = Vector(-0.52, -5.564, -1.435), angle = Angle(0, 0, 90), size = Vector(0.017, 0.017, 0.017), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/fender_chrome", skin = 0, bodygroup = {} },
	["stocker4"] = { type = "Model", model = "models/hunter/plates/plate025x05.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "stocker3", pos = Vector(0, 2.078, -1.903), angle = Angle(0, 0, -90), size = Vector(0.082, 0.172, 0.074), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/fender_chrome", skin = 0, bodygroup = {} },
	["bareeeeeelmuzzle2"] = { type = "Model", model = "models/hunter/tubes/tube1x1x1d.mdl", bone = "v_weapon.scout_Parent", rel = "bareeeeeelmuzzle1", pos = Vector(0, 0, -1.272), angle = Angle(0, -127.999, 0), size = Vector(0.03, 0.03, 0.014), color = Color(0, 255, 255, 255), surpresslightning = true, material = "models/props_c17/metalladder003", skin = 0, bodygroup = {} },
	["boltback"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "v_weapon.scout_Parent", rel = "body1", pos = Vector(-0.579, -10.004, 0.683), angle = Angle(0, 0, 0), size = Vector(0.082, 0.082, 0.082), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/fender_chrome", skin = 0, bodygroup = {} },
	["clipcurve"] = { type = "Model", model = "models/hunter/plates/platehole1x1.mdl", bone = "v_weapon.scout_Parent", rel = "clipareabody1", pos = Vector(-0.803, -2.814, -1.272), angle = Angle(-90, 0, 0), size = Vector(0.03, 0.03, 0.541), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/fender_chrome", skin = 0, bodygroup = {} },
	["body1verylow+"] = { type = "Model", model = "models/hunter/blocks/cube025x150x025.mdl", bone = "v_weapon.scout_Parent", rel = "body1+", pos = Vector(7.341, -0.838, -2.057), angle = Angle(0, 0, 0), size = Vector(0.55, 0.019, 0.131), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/fender_chrome", skin = 0, bodygroup = {} },
	["racksupport+"] = { type = "Model", model = "models/hunter/triangles/05x05x05.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "bodybehindbarel1", pos = Vector(-0.926, 6.741, 0.01), angle = Angle(0, 90, 0), size = Vector(0.032, 0.009, 0.019), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/fender_chrome", skin = 0, bodygroup = {} },
	["bipodstick"] = { type = "Model", model = "models/props_phx/trains/monorail1.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "bipodcircle", pos = Vector(-0.129, 0.101, -2.454), angle = Angle(-90, 1.315, 0), size = Vector(0.009, 0.019, 0.009), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["racksupport+++++++"] = { type = "Model", model = "models/hunter/triangles/05x05x05.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "bodybehindbarel1", pos = Vector(0.09, 12.868, 0.01), angle = Angle(0, -90, 0), size = Vector(0.032, 0.009, 0.019), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/fender_chrome", skin = 0, bodygroup = {} },
	["clipcurve2"] = { type = "Model", model = "models/hunter/triangles/1x1x1carved025.mdl", bone = "v_weapon.scout_Parent", rel = "clipareabody1", pos = Vector(-0.671, 0.619, -0.718), angle = Angle(33.82, -90, -90), size = Vector(0.082, 0.028, 0.029), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/fender_chrome", skin = 0, bodygroup = {} },
	["racksupport++++++"] = { type = "Model", model = "models/hunter/triangles/05x05x05.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "bodybehindbarel1", pos = Vector(0.089, 9.918, 0.01), angle = Angle(0, -90, 0), size = Vector(0.029, 0.009, 0.019), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/fender_chrome", skin = 0, bodygroup = {} },
	["bareeeeeeeeeeel"] = { type = "Model", model = "models/hunter/tubes/tube1x1x1.mdl", bone = "v_weapon.scout_Parent", rel = "body1", pos = Vector(-0.569, 12.678, 0.504), angle = Angle(0, -180, 90), size = Vector(0.018, 0.018, 0.411), color = Color(0, 255, 255, 255), surpresslightning = false, material = "metal4", skin = 0, bodygroup = {} },
	["body1verylow"] = { type = "Model", model = "models/hunter/blocks/cube025x150x025.mdl", bone = "v_weapon.scout_Parent", rel = "body1+", pos = Vector(-2.691, -1.109, -1.285), angle = Angle(0, 90, 0), size = Vector(0.109, 0.068, 0.065), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/fender_chrome", skin = 0, bodygroup = {} },
	["stocker3"] = { type = "Model", model = "models/hunter/plates/plate025x05.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "stocker2", pos = Vector(0.01, 3.288, -2.011), angle = Angle(0, 0, 90), size = Vector(0.032, 0.166, 0.052), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/fender_chrome", skin = 0, bodygroup = {} },
	["body1+++"] = { type = "Model", model = "models/hunter/plates/plate025x025.mdl", bone = "v_weapon.scout_Parent", rel = "body1", pos = Vector(0.029, -1.405, 0.513), angle = Angle(0, 90, 0), size = Vector(0.067, 0.009, 0.115), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/fender_chrome", skin = 0, bodygroup = {} },
	["body1+"] = { type = "Model", model = "models/hunter/plates/plate025x025.mdl", bone = "v_weapon.scout_Parent", rel = "body1", pos = Vector(0.029, 1.764, 0.518), angle = Angle(0, 90, 0), size = Vector(0.067, 0.009, 0.115), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/fender_chrome", skin = 0, bodygroup = {} },
	["bipodground"] = { type = "Model", model = "models/props_phx/trains/double_wheels_base.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "bipodstick", pos = Vector(2.657, 0.075, -0.47), angle = Angle(-90, -90, 90), size = Vector(0.009, 0.009, 0.009), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/fender_chrome", skin = 0, bodygroup = {} },
	["bareeeeeelmuzzle1"] = { type = "Model", model = "models/props_docks/dock01_pole01a_128.mdl", bone = "v_weapon.scout_Parent", rel = "", pos = Vector(-0.072, -3.445, -26.674), angle = Angle(0.658, -0.954, 0), size = Vector(0.09, 0.09, 0.009), color = Color(0, 255, 255, 255), surpresslightning = true, material = "models/props_c17/metalladder003", skin = 0, bodygroup = {} },
	["body1verylowtriangle++"] = { type = "Model", model = "models/hunter/triangles/05x05x05.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "body1verylow", pos = Vector(-0.47, 0.259, -0.276), angle = Angle(0, 90, -90), size = Vector(0.057, 0.025, 0.057), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/fender_chrome", skin = 0, bodygroup = {} },
	["lefttotheboltlongstick"] = { type = "Model", model = "models/hunter/plates/plate1.mdl", bone = "v_weapon.scout_Parent", rel = "body1", pos = Vector(-0.109, -6.558, -0.137), angle = Angle(0, 0, 0), size = Vector(0.18, 0.215, 0.167), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/fender_chrome", skin = 0, bodygroup = {} },
	["bipodstick+"] = { type = "Model", model = "models/props_phx/trains/monorail1.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "bipodcircle", pos = Vector(0.776, 0.101, -2.454), angle = Angle(-90, 1.315, 0), size = Vector(0.009, 0.019, 0.009), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["stocker2"] = { type = "Model", model = "models/hunter/plates/plate025x05.mdl", bone = "v_weapon.scout_Parent", rel = "stocker1", pos = Vector(0.707, 0.744, 2.582), angle = Angle(-7.831, -81.02, -48.257), size = Vector(0.083, 0.293, 0.083), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/fender_chrome", skin = 0, bodygroup = {} },
	["clipcurvetriangle"] = { type = "Model", model = "models/hunter/triangles/1x05x05.mdl", bone = "v_weapon.scout_Parent", rel = "clipareabody1", pos = Vector(-0.772, 0.823, -0.457), angle = Angle(0, 0, -180), size = Vector(0.064, 0.09, 0.064), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/fender_chrome", skin = 0, bodygroup = {} },
	["bipodground+"] = { type = "Model", model = "models/props_phx/trains/double_wheels_base.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "bipodstick", pos = Vector(2.644, 0.075, 1.71), angle = Angle(-90, -90, 90), size = Vector(0.009, 0.009, 0.009), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/fender_chrome", skin = 0, bodygroup = {} },
	["rackside+"] = { type = "Model", model = "models/Mechanics/gears2/pinion_20t2.mdl", bone = "v_weapon.scout_Parent", rel = "rackside", pos = Vector(0, -1.491, 0), angle = Angle(0, 0, 180), size = Vector(0.068, 0.068, 0.041), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/car_tire", skin = 0, bodygroup = {} },
	["boltactualreleaserl"] = { type = "Model", model = "models/hunter/plates/plate025x05.mdl", bone = "v_weapon.scout__BoltBase", rel = "bareeeeeeeeeeel", pos = Vector(-0.371, -0.399, 21.197), angle = Angle(0, -90, -90), size = Vector(0.059, 0.13, 0.07), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/egg", skin = 0, bodygroup = {} },
	["racksupport++++"] = { type = "Model", model = "models/hunter/triangles/05x05x05.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "bodybehindbarel1", pos = Vector(0.079, 3.263, 0.01), angle = Angle(0, -90, 0), size = Vector(0.032, 0.009, 0.019), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/fender_chrome", skin = 0, bodygroup = {} },
	["body1verylowfattriangle"] = { type = "Model", model = "models/hunter/tubes/tube1x1x2.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "body1verylow+", pos = Vector(0, 0.412, 0.008), angle = Angle(0, 90, -90), size = Vector(0.027, 0.032, 0.068), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/fender_chrome", skin = 0, bodygroup = {} },
	["middleundertriggerblock"] = { type = "Model", model = "models/hunter/plates/plate025x05.mdl", bone = "v_weapon.scout_Parent", rel = "fronttriggerblock", pos = Vector(-0.031, 1.327, 1.054), angle = Angle(0, 0, 90), size = Vector(0.087, 0.087, 0.087), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/fender_chrome", skin = 0, bodygroup = {} },
	["body1++++"] = { type = "Model", model = "models/hunter/plates/plate025x025.mdl", bone = "v_weapon.scout_Parent", rel = "body1", pos = Vector(0.029, -4.297, 0.513), angle = Angle(0, 90, 0), size = Vector(0.067, 0.009, 0.115), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/fender_chrome", skin = 0, bodygroup = {} },
	["clipareabody1"] = { type = "Model", model = "models/hunter/blocks/cube025x05x025.mdl", bone = "v_weapon.scout_Parent", rel = "body1", pos = Vector(0.282, -8.049, -1.158), angle = Angle(0, 0, 0), size = Vector(0.141, 0.207, 0.101), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/fender_chrome", skin = 0, bodygroup = {} },
	["racksupportplate+"] = { type = "Model", model = "models/hunter/plates/plate025x175.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "racksupport", pos = Vector(-4.816, -0.12, -0.493), angle = Angle(90, -90, 0), size = Vector(0.017, 0.123, 0.017), color = Color(243, 245, 234, 255), surpresslightning = false, material = "phoenix_storms/fender_chrome", skin = 0, bodygroup = {} },
	["stocker1"] = { type = "Model", model = "models/mechanics/robotics/a1.mdl", bone = "v_weapon.scout_Parent", rel = "body1", pos = Vector(-0.068, -14.374, -1.907), angle = Angle(49.217, -99.384, 0), size = Vector(0.194, 0.122, 0.122), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/fender_chrome", skin = 0, bodygroup = {} },
	["body1++"] = { type = "Model", model = "models/hunter/plates/plate025x025.mdl", bone = "v_weapon.scout_Parent", rel = "body1", pos = Vector(0.029, 5.235, 0.518), angle = Angle(0, 90, 0), size = Vector(0.067, 0.009, 0.115), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/fender_chrome", skin = 0, bodygroup = {} },
	["body1"] = { type = "Model", model = "models/hunter/blocks/cube025x2x025.mdl", bone = "v_weapon.scout_Parent", rel = "", pos = Vector(-0.56, -2.957, -13.509), angle = Angle(0, 180, 90), size = Vector(0.108, 0.119, 0.028), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/fender_chrome", skin = 0, bodygroup = {} },
	["fronttriggerblock+"] = { type = "Model", model = "models/hunter/plates/plate025x05.mdl", bone = "v_weapon.scout_Parent", rel = "fronttriggerblock", pos = Vector(-0.026, 0.284, 1.475), angle = Angle(0, 0, 0), size = Vector(0.082, 0.078, 0.12), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/fender_chrome", skin = 0, bodygroup = {} },
	["boltfinalball"] = { type = "Model", model = "models/XQM/Rails/trackball_1.mdl", bone = "v_weapon.scout_Bolt", rel = "actualbolt+++", pos = Vector(0.845, -0.898, -0.355), angle = Angle(0, 0, 0), size = Vector(0.019, 0.019, 0.019), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/black_chrome", skin = 0, bodygroup = {} },
	["bareeeeeelmuzzle3"] = { type = "Model", model = "models/hunter/tubes/tube1x1x1d.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "bareeeeeelmuzzle2", pos = Vector(0, 0, 0), angle = Angle(0, 167.36, 0), size = Vector(0.03, 0.03, 0.014), color = Color(0, 255, 255, 255), surpresslightning = true, material = "models/props_c17/metalladder003", skin = 0, bodygroup = {} },
	["bareeeeeelmuzzle6+"] = { type = "Model", model = "models/hunter/tubes/tube1x1x1d.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "bareeeeeelmuzzle6", pos = Vector(0, 0, -0.704), angle = Angle(0, 0, 0), size = Vector(0.03, 0.03, 0.014), color = Color(0, 255, 255, 255), surpresslightning = true, material = "models/props_c17/metalladder003", skin = 0, bodygroup = {} },
	["racksupport+++++"] = { type = "Model", model = "models/hunter/triangles/05x05x05.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "bodybehindbarel1", pos = Vector(0.086, 6.741, 0.009), angle = Angle(0, -90, 0), size = Vector(0.032, 0.009, 0.019), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/fender_chrome", skin = 0, bodygroup = {} },
	["actualbolt"] = { type = "Model", model = "models/hunter/misc/shell2x2a.mdl", bone = "v_weapon.scout_Bolt", rel = "", pos = Vector(-0.044, 0.041, -0.875), angle = Angle(4.412, 130.192, 0), size = Vector(0.009, 0.009, 0.028), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/fender_chrome", skin = 0, bodygroup = {} },
	["clipitself"] = { type = "Model", model = "models/hunter/blocks/cube025x05x025.mdl", bone = "v_weapon.scout_Clip", rel = "", pos = Vector(0.1, -0.5, 0.5), angle = Angle(0, 0, 90), size = Vector(0.075, 0.174, 0.125), color = Color(0, 240, 255, 255), surpresslightning = true, material = "phoenix_storms/spheremappy", skin = 0, bodygroup = {} },
	["bareeeeeelmuzzle7"] = { type = "Model", model = "models/hunter/tubes/circle2x2.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "bareeeeeelmuzzle4", pos = Vector(0, 0, -0.805), angle = Angle(0, 0, 0), size = Vector(0.016, 0.016, 0.13), color = Color(171, 255, 255, 255), surpresslightning = true, material = "models/props_c17/metalladder003", skin = 0, bodygroup = {} },
	["bareeeeeelmuzzle4"] = { type = "Model", model = "models/hunter/tubes/circle2x2.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "bareeeeeelmuzzle1", pos = Vector(0, 0, -1.116), angle = Angle(0, 0, 0), size = Vector(0.016, 0.016, 0.13), color = Color(92, 255, 255, 255), surpresslightning = true, material = "models/props_c17/metalladder003", skin = 0, bodygroup = {} },
	["boltactualreleaserl+"] = { type = "Model", model = "models/hunter/plates/plate025x05.mdl", bone = "v_weapon.scout_Parent", rel = "boltactualreleaserl", pos = Vector(0.003, 0.086, 0.749), angle = Angle(0, 0, 0), size = Vector(0.059, 0.123, 0.057), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/egg", skin = 0, bodygroup = {} },
	["actualbolt+++"] = { type = "Model", model = "models/XQM/Rails/gumball_1.mdl", bone = "v_weapon.scout_Bolt", rel = "actualbolt", pos = Vector(-0.053, -0.038, 1.215), angle = Angle(0, 0.939, 0), size = Vector(0.009, 0.009, 0.009), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/combine_scanner/scanner_eye", skin = 0, bodygroup = {} },
	["bodybehindbarel1+"] = { type = "Model", model = "models/hunter/blocks/cube025x075x025.mdl", bone = "v_weapon.scout_Parent", rel = "bodybehindbarel1", pos = Vector(-0.087, 0, 0.254), angle = Angle(0, 0, 0), size = Vector(0.046, 0.512, 0.014), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/fender_chrome", skin = 0, bodygroup = {} },
	["rackside"] = { type = "Model", model = "models/Mechanics/gears2/pinion_20t2.mdl", bone = "v_weapon.scout_Parent", rel = "body1", pos = Vector(0.246, 0.181, 0.414), angle = Angle(0, 90, 0), size = Vector(0.068, 0.068, 0.041), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/car_tire", skin = 0, bodygroup = {} },
	["bareeeeeelmuzzle5"] = { type = "Model", model = "models/hunter/tubes/tube1x1x1d.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "bareeeeeelmuzzle2", pos = Vector(0, 0, -0.7), angle = Angle(0, 0, 0), size = Vector(0.03, 0.03, 0.014), color = Color(0, 255, 255, 255), surpresslightning = true, material = "models/props_c17/metalladder003", skin = 0, bodygroup = {} },
	["bodybehindbarel1"] = { type = "Model", model = "models/hunter/blocks/cube025x075x025.mdl", bone = "v_weapon.scout_Parent", rel = "bareeeeeeeeeeel", pos = Vector(0.372, -0.382, 4.197), angle = Angle(0, 0, -90), size = Vector(0.067, 0.421, 0.023), color = Color(0, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/fender_chrome", skin = 0, bodygroup = {} },
	["racksupport++"] = { type = "Model", model = "models/hunter/triangles/05x05x05.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "bodybehindbarel1", pos = Vector(-0.926, 9.918, 0.01), angle = Angle(0, 90, 0), size = Vector(0.029, 0.009, 0.019), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/fender_chrome", skin = 0, bodygroup = {} }
}



SWEP.ReloadSound = Sound("Weapon_Scout.ClipOut")
SWEP.Primary.Sound = Sound("weapons/p228/p228-1.wav")
SWEP.Primary.Damage = 100
SWEP.HeadshotMulti = 4
SWEP.Primary.NumShots = 1
SWEP.Primary.Delay = 1
SWEP.ReloadDelay = SWEP.Primary.Delay

SWEP.Primary.ClipSize = 5
SWEP.Primary.Automatic = false
SWEP.Primary.Ammo = "pulse"
SWEP.Primary.DefaultClip = 5

SWEP.Primary.Gesture = ACT_HL2MP_GESTURE_RANGE_ATTACK_CROSSBOW
SWEP.ReloadGesture = ACT_HL2MP_GESTURE_RELOAD_SHOTGUN

SWEP.ConeMax = 4
SWEP.ConeMin = 0

SWEP.IronSightsPos = Vector(-6.63, -16.605, 3.282)
SWEP.IronSightsAng = Vector(-0.504, 0.039, 0)


SWEP.WalkSpeed = SPEED_SLOW





function SWEP:EmitFireSound()
	self:EmitSound(self.Primary.Sound, 100, math.random(145,170))
end

if CLIENT then
	SWEP.IronsightsMultiplier = 2
end

function SWEP.BulletCallback(attacker, tr, dmginfo)
	local ent = tr.Entity
	if ent:IsValidZombie() then
		ent:AddLegDamageExt(30, attacker, attacker:GetActiveWeapon(), SLOWTYPE_PULSE)
	end

	if IsFirstTimePredicted() then
		util.CreatePulseImpactEffect(tr.HitPos, tr.HitNormal)
	end
end

//Made by DuffT. Thanks to SuperSpooner along with Johnny Moe, erdf, MIL260 on Advice