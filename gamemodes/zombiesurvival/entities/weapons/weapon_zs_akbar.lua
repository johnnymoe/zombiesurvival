AddCSLuaFile()

SWEP.PrintName = "'Akbar' Assault Rifle"
SWEP.Description = "Reliable assault rifle with a very fast reload speed. Not quite as accurate as other assault rifles, but still precise enough nonetheless."

SWEP.Slot = 2
SWEP.SlotPos = 0

if CLIENT then
	SWEP.ViewModelFlip = false
	SWEP.ViewModelFOV = 50

	SWEP.HUD3DBone = "v_weapon.AK47_Parent"
	SWEP.HUD3DPos = Vector(-1, -4.5, -4)
	SWEP.HUD3DAng = Angle(0, 0, 0)
	SWEP.HUD3DScale = 0.015
end

SWEP.Base = "weapon_zs_base"

SWEP.HoldType = "ar2"

SWEP.ViewModel = "models/weapons/cstrike/c_rif_ak47.mdl"
SWEP.WorldModel = "models/weapons/w_rif_ak47.mdl"
SWEP.UseHands = true

SWEP.ReloadSound = Sound("Weapon_AK47.Clipout")
SWEP.Primary.Sound = Sound("Weapon_AK47.Single")
SWEP.Primary.Damage = 21.75
SWEP.Primary.NumShots = 1
SWEP.Primary.Delay = 0.12

SWEP.Primary.ClipSize = 30
SWEP.Primary.Automatic = true
SWEP.Primary.Ammo = "ar2"
GAMEMODE:SetupDefaultClip(SWEP.Primary)

SWEP.ConeMax = 2.65
SWEP.ConeMin = 1.275

SWEP.WalkSpeed = SPEED_SLOW

SWEP.Tier = 3

SWEP.ReloadSpeed = 1

SWEP.AllowQualityWeapons = true

function SWEP:EmitFireSound()
    self:EmitSound(self.Primary.Sound, 100, math.random(85,110))
     
end

SWEP.IronSightsPos = Vector(-6.6, 20, 3.1)

GAMEMODE:AttachWeaponModifier(SWEP, WEAPON_MODIFIER_MAX_SPREAD, -0.344)
GAMEMODE:AttachWeaponModifier(SWEP, WEAPON_MODIFIER_MIN_SPREAD, -0.172)
local branch = GAMEMODE:AddNewRemantleBranch(SWEP,1, "'Pulemjot' Light Machine Gun", "Turns the Akbar into semi-cheap suppressive fire while losing damage, and losing accuracy and reload speed", function(wept)

wept.Primary.Damage = wept.Primary.Damage * 0.8
wept.ConeMax = wept.ConeMax * 4
wept.ConeMin = wept.ConeMin * 0.5
wept.Primary.ClipSize = 60
wept.Primary.Delay = wept.Primary.Delay * 0.9

wept.IronSightsPos = Vector(-6.6, -11.558, 3.769)
wept.IronSightsAng = Vector(0.28, 0.261, 0)

wept.ReloadSpeed = 0.33


if CLIENT then

wept.ViewModelFOV = 50

wept.HUD3DBone = "v_weapon.AK47_Parent"
wept.HUD3DPos = Vector(-1,-4.5,-4)
wept.HUD3DAng = Angle(0,0,0)
wept.HUD3DScale = 0.015

wept.ViewModelBoneMods = {
["ValveBiped.Bip01_Spine4"] = { scale = Vector(1, 1, 1), pos = Vector(2.822, -0.062, -0.394), angle = Angle(0, 0, 0) },
	["v_weapon.AK47_Parent"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(5, 0, 0), angle = Angle(0, 0, 0) },
	["v_weapon.AK47_Bolt"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["v_weapon.AK47_Clip"] = { scale = Vector(1,1,1), pos = Vector(-0.2, 0, 3.5), angle = Angle(0, 0, 0) },
	["v_weapon.AK47_ClipRelease"] = { scale = Vector(0.001,0.001,0.001), pos = Vector(-0.2, 0, 3.5), angle = Angle(0, 0, 0) },
	["ValveBiped.Bip01_R_UpperArm"] = { scale = Vector(1, 1, 1), pos = Vector(2.966, 0.814, 0), angle = Angle(0, 0, 0)},
}





wept.VElements = {
	["TRIGGER"] = { type = "Model", model = "models/Gibs/HGIBS_rib.mdl", bone = "v_weapon.AK47_Trigger", rel = "guntrigerrrahemfgbnwijg", pos = Vector(0, -0.102, -0.433), angle = Angle(-90, 0, 0), size = Vector(0.172, 0.054, 0.093), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/chrome", skin = 0, bodygroup = {} },
	["realbarrel2"] = { type = "Model", model = "models/hunter/tubes/circle2x2.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "body", pos = Vector(-0.773, -11.209, 1.412), angle = Angle(-90, 90, 0), size = Vector(0.032, 0.016, 0.156), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/black_brushes", skin = 0, bodygroup = {} },
	["guntrigerrrahemfgbnwijg"] = { type = "Model", model = "models/xqm/deg360single.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "body", pos = Vector(-0.894, 6.724, 0.105), angle = Angle(0, 0, 0), size = Vector(0.009, 0.046, 0.046), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/chrome", skin = 0, bodygroup = {} },
	["body4+"] = { type = "Model", model = "models/hunter/plates/plate025x125.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "body4", pos = Vector(-0.339, 3.161, 0.072), angle = Angle(0, 0, 0), size = Vector(0.074, 0.18, 0.115), color = Color(100, 100, 100, 255), surpresslightning = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
	["actualrealsupertruebarrelofgun5"] = { type = "Model", model = "models/hunter/blocks/cube025x1x025.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "actualrealsupertruebarrelofgun1", pos = Vector(0.982, -0.317, 1.026), angle = Angle(0, 90, 0), size = Vector(0.057, 0.041, 0.029), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
	["bipodstick3+"] = { type = "Model", model = "models/hunter/misc/roundthing2.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "bipodstick2", pos = Vector(-4.264, 0.528, 0.152), angle = Angle(-20, 0, 0), size = Vector(0.012, 0.017, 0.012), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
	["bipodstick2+"] = { type = "Model", model = "models/props_phx/construct/wood/wood_boardx1.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "bipodstick", pos = Vector(2.255, 3.332, 0.925), angle = Angle(0, 126.273, 90), size = Vector(0.174, 0.009, 0.112), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
	["bipodstick3++"] = { type = "Model", model = "models/hunter/misc/roundthing2.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "bipodstick2+", pos = Vector(-4.245, 0.381, 0), angle = Angle(34.29, 0, 0), size = Vector(0.012, 0.017, 0.012), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
	["realbarrel1"] = { type = "Model", model = "models/hunter/tubes/circle2x2c.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "body", pos = Vector(-0.764, -7.778, 2.355), angle = Angle(-90, 90, 0), size = Vector(0.014, 0.014, 2.17), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/fender_wood", skin = 0, bodygroup = {} },
	["realbarrel1++++"] = { type = "Model", model = "models/hunter/geometric/hex05x1.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "realbarrel1+", pos = Vector(0.155, 0.008, -2.142), angle = Angle(0, 0, 0), size = Vector(0.046, 0.009, 0.735), color = Color(100, 100, 100, 255), surpresslightning = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
	["actualrealsupertruebarrelofgun1"] = { type = "Model", model = "models/props_trainstation/trainstation_column001.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "realbarrel2", pos = Vector(0.16, 0, 19.555), angle = Angle(180, 0, 0), size = Vector(0.072, 0.072, 0.09), color = Color(100, 100, 100, 255), surpresslightning = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
	["stock1"] = { type = "Model", model = "models/props_wasteland/medbridge_post01.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "body", pos = Vector(-0.801, 8.73, 0.649), angle = Angle(0, 0, 90), size = Vector(0.029, 0.052, 0.057), color = Color(200, 200, 150, 255), surpresslightning = false, material = "phoenix_storms/fender_wood", skin = 0, bodygroup = {} },
	["body2+"] = { type = "Model", model = "models/hunter/plates/plate025x125.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "body2", pos = Vector(0, 0.178, -0.383), angle = Angle(0, 0, 0), size = Vector(0.126, 0.193, 0.275), color = Color(100, 100, 100, 255), surpresslightning = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
	["ironsight1"] = { type = "Model", model = "models/props_wasteland/panel_leverHandle001a.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "body6", pos = Vector(0, -11.101, 1.057), angle = Angle(-70.461, 90, 0), size = Vector(0.137, 0.137, 0.137), color = Color(191, 194, 199, 255), surpresslightning = false, material = "phoenix_storms/black_brushes", skin = 0, bodygroup = {} },
	["body5left"] = { type = "Model", model = "models/xqm/cylinderx2.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "body4", pos = Vector(-0.631, 5.789, 0.358), angle = Angle(0, -90, 0), size = Vector(0.449, 0.024, 0.076), color = Color(100, 100, 100, 255), surpresslightning = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
	["body2"] = { type = "Model", model = "models/hunter/plates/plate025x125.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "body", pos = Vector(-0.768, 3.246, 1.136), angle = Angle(0, 0, 0), size = Vector(0.075, 0.19, 0.259), color = Color(100, 100, 100, 255), surpresslightning = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
	["stock2"] = { type = "Model", model = "models/props_junk/metalgascan.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "stock1", pos = Vector(-0.06, 1.557, 4.144), angle = Angle(180, 0, 0), size = Vector(0.107, 0.107, 0.107), color = Color(200, 200, 150, 255), surpresslightning = false, material = "phoenix_storms/fender_wood", skin = 0, bodygroup = {} },
	["body5left+"] = { type = "Model", model = "models/xqm/cylinderx2.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "body4", pos = Vector(-0.047, 5.789, 0.358), angle = Angle(0, -90, 0), size = Vector(0.449, 0.024, 0.076), color = Color(100, 100, 100, 255), surpresslightning = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
	["realbarrel15"] = { type = "Model", model = "models/hunter/tubes/circle2x2c.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "body", pos = Vector(-0.81, -6.67, 0.66), angle = Angle(90, 90, 0), size = Vector(0.019, 0.018, 2.924), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/fender_wood", skin = 0, bodygroup = {} },
	["realbarrel1+"] = { type = "Model", model = "models/hunter/geometric/hex05x1.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "realbarrel1", pos = Vector(1.703, -0.464, -3.335), angle = Angle(0, 0, 0), size = Vector(0.041, 0.01, 2.2), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/fender_wood", skin = 0, bodygroup = {} },
	["body6"] = { type = "Model", model = "models/xqm/cylinderx1.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "body4+", pos = Vector(0, 5.217, -0.168), angle = Angle(0, 0, 0), size = Vector(0.054, 0.115, 0.158), color = Color(100, 100, 100, 255), surpresslightning = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
	["bipodstick3"] = { type = "Model", model = "models/xqm/pistontype1.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "body", pos = Vector(-0.866, -29.621, 0.731), angle = Angle(0, 0, 0), size = Vector(0.09, 0.686, 0.086), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
	["body3left"] = { type = "Model", model = "models/xqm/cylinderx2.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "body2+", pos = Vector(-0.505, 2.69, 0.734), angle = Angle(0, -90, 0), size = Vector(0.465, 0.035, 0.07), color = Color(100, 100, 100, 255), surpresslightning = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
	["STOCK2CRINGE"] = { type = "Model", model = "models/props_junk/gascan001a.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "body", pos = Vector(-0.801, 8.673, -1.127), angle = Angle(180, 0, -167.622), size = Vector(0.12, 0.054, 0.104), color = Color(50, 50, 50, 255), surpresslightning = false, material = "phoenix_storms/fender_chrome", skin = 0, bodygroup = {} },
	["body"] = { type = "Model", model = "models/hunter/blocks/cube025x125x025.mdl", bone = "v_weapon.AK47_Parent", rel = "", pos = Vector(0.874, -3.027, -2.55), angle = Angle(0, 0, -91.559), size = Vector(0.128, 0.193, 0.097), color = Color(100, 100, 100, 255), surpresslightning = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
	["bipodstick2"] = { type = "Model", model = "models/props_phx/construct/wood/wood_boardx1.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "bipodstick", pos = Vector(-2.115, 3.332, 0.925), angle = Angle(0, 62.73, 90), size = Vector(0.174, 0.009, 0.112), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
	["body3left+"] = { type = "Model", model = "models/xqm/cylinderx2.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "body2+", pos = Vector(0.51, 2.69, 0.734), angle = Angle(0, -90, 0), size = Vector(0.465, 0.035, 0.07), color = Color(100, 100, 100, 255), surpresslightning = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
	["actualrealsupertruebarrelofgun2"] = { type = "Model", model = "models/props_c17/GasPipes006a.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "actualrealsupertruebarrelofgun1", pos = Vector(0.685, -0.238, 18.836), angle = Angle(0, 0, 180), size = Vector(0.107, 0.127, 0.065), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
	["barrelconnector1"] = { type = "Model", model = "models/hunter/tubes/circle2x2c.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "body", pos = Vector(-0.763, -4.475, 2.369), angle = Angle(-90, 90, 0), size = Vector(0.014, 0.014, 0.083), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/black_brushes", skin = 0, bodygroup = {} },
	["body7"] = { type = "Model", model = "models/hunter/triangles/05x05x05.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "body2", pos = Vector(-0.009, 5.752, 0.624), angle = Angle(0, 180, 0), size = Vector(0.037, 0.009, 0.016), color = Color(100, 100, 100, 255), surpresslightning = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
	["body4"] = { type = "Model", model = "models/hunter/blocks/cube025x125x025.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "body2", pos = Vector(0.338, -3.414, 0.717), angle = Angle(0, 0, 0), size = Vector(0.056, 0.179, 0.071), color = Color(100, 100, 100, 255), surpresslightning = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
	["vent"] = { type = "Model", model = "models/props_silo/wall_vent.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "body", pos = Vector(-0.77, 8.357, 2.144), angle = Angle(32.533, -90, 0), size = Vector(0.064, 0.014, 0.014), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/black_brushes", skin = 0, bodygroup = {} },
	["actualrealsupertruebarrelofgun4"] = { type = "Model", model = "models/hunter/tubes/tube1x1x1c.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "actualrealsupertruebarrelofgun1", pos = Vector(2.365, 0.052, 1.014), angle = Angle(0, 0, 0), size = Vector(0.018, 0.019, 0.009), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
	["realbarrel1++"] = { type = "Model", model = "models/hunter/geometric/hex05x1.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "realbarrel1+", pos = Vector(0.013, 0.941, 0.006), angle = Angle(0, 0, 0), size = Vector(0.041, 0.009, 2.145), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/fender_wood", skin = 0, bodygroup = {} },
	["ironsightbox"] = { type = "Model", model = "models/props_c17/FurnitureShelf001a.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "ironsight1", pos = Vector(0.363, 0.004, 0.129), angle = Angle(-15, 0, 0), size = Vector(0.039, 0.025, 0.025), color = Color(100, 100, 100, 255), surpresslightning = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
	["bipodstick"] = { type = "Model", model = "models/props_c17/signpole001.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "body", pos = Vector(-0.817, -31.293, 0.196), angle = Angle(0, 0, 90), size = Vector(0.182, 0.182, 0.177), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
	["realbarrel1+++"] = { type = "Model", model = "models/hunter/blocks/cube025x025x025.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "realbarrel1+", pos = Vector(-0.45, 0.017, -0.828), angle = Angle(0, 7.797, 0), size = Vector(0.086, 0.078, 0.224), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/fender_wood", skin = 0, bodygroup = {} },
	["hole1+"] = { type = "Model", model = "models/hunter/misc/roundthing2.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "hole1", pos = Vector(0, 2.948, 0), angle = Angle(0, 0, 0), size = Vector(0.009, 0.014, 0.009), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/rt_camera", skin = 0, bodygroup = {} },
	["body1extra"] = { type = "Model", model = "models/hunter/blocks/cube025x1x025.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "body", pos = Vector(0.013, 3.454, -0.264), angle = Angle(0, 0, 0), size = Vector(0.128, 0.239, 0.032), color = Color(100, 100, 100, 255), surpresslightning = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
	["hole1"] = { type = "Model", model = "models/hunter/misc/roundthing2.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "realbarrel1", pos = Vector(0.595, -0.833, 1.271), angle = Angle(0, 8.368, 90), size = Vector(0.009, 0.014, 0.009), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/rt_camera", skin = 0, bodygroup = {} },
	["actualrealsupertruebarrelofgun3"] = { type = "Model", model = "models/props_c17/canister_propane01a.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "actualrealsupertruebarrelofgun2", pos = Vector(0.467, 0, -1.303), angle = Angle(0, 0, 0), size = Vector(0.019, 0.019, 0.045), color = Color(100, 100, 100, 255), surpresslightning = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
	["realbarrel3a"] = { type = "Model", model = "models/props_c17/FurnitureDrawer003a.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "body", pos = Vector(-1.461, -6.947, 1.776), angle = Angle(180, 0, 90), size = Vector(0.026, 0.014, 0.196), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/rt_camera", skin = 0, bodygroup = {} }
}

end
end)






