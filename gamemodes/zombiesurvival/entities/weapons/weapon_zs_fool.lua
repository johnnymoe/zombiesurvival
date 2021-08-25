AddCSLuaFile()

SWEP.PrintName = "'Fool' Tec-9"
SWEP.Description = "Originally intended for all people,it found its place commonly with criminals. And it proves why. Also appears to have a broken autofire system."

SWEP.Slot = 2
SWEP.SlotPos = 0

if CLIENT then
    SWEP.ViewModelFOV = 70
    SWEP.ViewModelFlip = false
    
	SWEP.VElements = {
	["body2"] = { type = "Model", model = "models/hunter/blocks/cube025x1x025.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "body1", pos = Vector(0.839, 1.016, 7.798), angle = Angle(0, 0, 90), size = Vector(0.135, 0.159, 0.076), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
	["magholder2"] = { type = "Model", model = "models/props_wasteland/kitchen_counter001a.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "magholder1", pos = Vector(-0.695, -0.086, 3.809), angle = Angle(0, 0, 0), size = Vector(0.032, 0.046, 0.032), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
	["mag2"] = { type = "Model", model = "models/hunter/plates/plate05x05.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "mag", pos = Vector(0, 3.207, 0.968), angle = Angle(90, 0, 90), size = Vector(0.104, 0.063, 0.104), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/fender_chrome", skin = 0, bodygroup = {} },
	["body1"] = { type = "Model", model = "models/hunter/tubes/tube1x1x2.mdl", bone = "v_weapon.ump45_Parent", rel = "", pos = Vector(0, -7.099, -6.577), angle = Angle(0, 0, 0), size = Vector(0.052, 0.052, 0.123), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
	["magholder1"] = { type = "Model", model = "models/hunter/blocks/cube025x05x025.mdl", bone = "v_weapon.ump45_Parent", rel = "body2", pos = Vector(0.057, 5.377, 0.002), angle = Angle(0, 0, 0), size = Vector(0.136, 0.12, 0.372), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
	["grip1"] = { type = "Model", model = "models/props_c17/gravestone001a.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "body4", pos = Vector(-0.811, -1.581, 2.918), angle = Angle(180, 0, 9.85), size = Vector(0.319, 0.076, 0.083), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
	["cockbloc2"] = { type = "Model", model = "models/props_c17/lampShade001a.mdl", bone = "v_weapon.ump45_Bolt", rel = "", pos = Vector(-1.591, -1.232, 8.484), angle = Angle(0, 53.549, 90), size = Vector(0.046, 0.046, 0.112), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/fender_chrome", skin = 0, bodygroup = {} },
	["barrelleft"] = { type = "Model", model = "models/props_docks/dock01_pole01a_128.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "body1", pos = Vector(-0.784, 0.811, 5.637), angle = Angle(0, 0, 0), size = Vector(0.061, 0.061, 0.085), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
	["body1blocker"] = { type = "Model", model = "models/hunter/tubes/circle2x2.mdl", bone = "v_weapon.ump45_Parent", rel = "body1", pos = Vector(0, 0, 11.645), angle = Angle(0, 0, 0), size = Vector(0.026, 0.026, 0.026), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
	["barrelextend+"] = { type = "Model", model = "models/hunter/tubes/tube1x1x2.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "body1", pos = Vector(0, 0, -6.009), angle = Angle(0, -19.584, 0), size = Vector(0.052, 0.052, 0.041), color = Color(0, 63, 73, 255), surpresslightning = false, material = "phoenix_storms/lag_sign", skin = 0, bodygroup = {} },
	["barrelend"] = { type = "Model", model = "models/hunter/triangles/05x05x05.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "body1", pos = Vector(0, 0.395, 11.223), angle = Angle(180, 0, 0), size = Vector(0.105, 0.064, 0.064), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
	["cockblock1"] = { type = "Model", model = "models/mechanics/solid_steel/type_a_2_4.mdl", bone = "v_weapon.ump45_Parent", rel = "body1", pos = Vector(-0.967, -0.727, 5.662), angle = Angle(90, -35.875, 0), size = Vector(0.087, 0.07, 0.07), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/fender_chrome", skin = 0, bodygroup = {} },
	["barrelextend"] = { type = "Model", model = "models/hunter/tubes/tube1x1x2.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "body1", pos = Vector(0, 0, -3.494), angle = Angle(0, -19.584, 0), size = Vector(0.052, 0.052, 0.041), color = Color(0, 63, 73, 255), surpresslightning = false, material = "phoenix_storms/lag_sign", skin = 0, bodygroup = {} },
	["ironsigh1"] = { type = "Model", model = "models/props_interiors/Furniture_Vanity01a.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "body1", pos = Vector(0, -0.815, 11.272), angle = Angle(90, -90, 0), size = Vector(0.025, 0.025, 0.025), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/fender_chrome", skin = 0, bodygroup = {} },
	["mag"] = { type = "Model", model = "models/Items/BoxSRounds.mdl", bone = "v_weapon.ump45_Clip", rel = "", pos = Vector(-0.798, 3.18, 1.367), angle = Angle(180, 0, 0), size = Vector(0.197, 0.379, 0.174), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/fender_chrome", skin = 0, bodygroup = {} },
	["body3"] = { type = "Model", model = "models/hunter/misc/platehole1x1d.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "body2", pos = Vector(-0.8, -3.783, 2.062), angle = Angle(0, 90, 90), size = Vector(0.074, 0.059, 0.518), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
	["triggerrahmen"] = { type = "Model", model = "models/mechanics/solid_steel/sheetmetal_90_4.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "body4", pos = Vector(-0.538, 0.742, 2.29), angle = Angle(90, 180, 0), size = Vector(0.046, 0.092, 0.104), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
	["body4"] = { type = "Model", model = "models/hunter/blocks/cube025x05x025.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "body2", pos = Vector(0, 1.001, 0.87), angle = Angle(0, 0, 0), size = Vector(0.129, 0.25, 0.103), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
	["bodybarrelfix"] = { type = "Model", model = "models/hunter/geometric/hex05x1.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "body1", pos = Vector(0.004, 1.154, 0.111), angle = Angle(0, 90, 0), size = Vector(0.035, 0.024, 0.351), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
	["barrelboolet"] = { type = "Model", model = "models/hunter/tubes/tube1x1x2.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "body1", pos = Vector(0, 0, -8.749), angle = Angle(0, 0, 0), size = Vector(0.024, 0.024, 0.14), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
	["barrelextend++"] = { type = "Model", model = "models/hunter/tubes/tube1x1x2.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "body1", pos = Vector(0, 0, -8.598), angle = Angle(0, -19.584, 0), size = Vector(0.052, 0.052, 0.041), color = Color(0, 63, 73, 255), surpresslightning = false, material = "phoenix_storms/lag_sign", skin = 0, bodygroup = {} }
}

end

SWEP.Base = "weapon_zs_base"

SWEP.HoldType = "rpg"

SWEP.ViewModel = "models/weapons/cstrike/c_smg_ump45.mdl"
SWEP.WorldModel = "models/weapons/w_smg_ump45.mdl"
SWEP.UseHands = true

SWEP.ShowViewModel = true
SWEP.ShowWorldModel = false

SWEP.WElements = {
	["body2"] = { type = "Model", model = "models/hunter/blocks/cube025x1x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "body1", pos = Vector(0.839, 1.016, 7.798), angle = Angle(0, 0, 90), size = Vector(0.135, 0.159, 0.076), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
	["magholder2"] = { type = "Model", model = "models/props_wasteland/kitchen_counter001a.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "magholder1", pos = Vector(-0.837, 0.019, 3.943), angle = Angle(0, 0, 0), size = Vector(0.032, 0.046, 0.032), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
	["mag2"] = { type = "Model", model = "models/hunter/plates/plate05x05.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "mag", pos = Vector(0, 3.207, 0.968), angle = Angle(90, 0, 90), size = Vector(0.104, 0.063, 0.104), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/fender_chrome", skin = 0, bodygroup = {} },
	["body1"] = { type = "Model", model = "models/hunter/tubes/tube1x1x2.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(12.027, 0.762, -5.961), angle = Angle(0, 90, -90), size = Vector(0.052, 0.052, 0.123), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
	["magholder1"] = { type = "Model", model = "models/hunter/blocks/cube025x05x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "body2", pos = Vector(0.057, 5.377, 0.002), angle = Angle(0, 0, 0), size = Vector(0.136, 0.12, 0.372), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
	["grip1"] = { type = "Model", model = "models/props_c17/gravestone001a.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "body4", pos = Vector(-0.811, -1.581, 2.918), angle = Angle(180, 0, 9.85), size = Vector(0.319, 0.076, 0.083), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
	["mag"] = { type = "Model", model = "models/Items/BoxSRounds.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(10.536, 0.476, 0), angle = Angle(0, 90, -90), size = Vector(0.197, 0.379, 0.174), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/fender_chrome", skin = 0, bodygroup = {} },
	["barrelextend"] = { type = "Model", model = "models/hunter/tubes/tube1x1x2.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "body1", pos = Vector(0, 0, -3.494), angle = Angle(0, -19.584, 0), size = Vector(0.052, 0.052, 0.041), color = Color(0, 63, 73, 255), surpresslightning = false, material = "phoenix_storms/lag_sign", skin = 0, bodygroup = {} },
	["body1blocker"] = { type = "Model", model = "models/hunter/tubes/circle2x2.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "body1", pos = Vector(0, 0, 11.645), angle = Angle(0, 0, 0), size = Vector(0.026, 0.026, 0.026), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
	["barrelextend+"] = { type = "Model", model = "models/hunter/tubes/tube1x1x2.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "body1", pos = Vector(0, 0, -6.009), angle = Angle(0, -19.584, 0), size = Vector(0.052, 0.052, 0.041), color = Color(0, 63, 73, 255), surpresslightning = false, material = "phoenix_storms/lag_sign", skin = 0, bodygroup = {} },
	["barrelend"] = { type = "Model", model = "models/hunter/triangles/05x05x05.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "body1", pos = Vector(0, 0.395, 11.223), angle = Angle(180, 0, 0), size = Vector(0.105, 0.064, 0.064), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
	["barrelextend++"] = { type = "Model", model = "models/hunter/tubes/tube1x1x2.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "body1", pos = Vector(0, 0, -8.598), angle = Angle(0, -19.584, 0), size = Vector(0.052, 0.052, 0.041), color = Color(0, 63, 73, 255), surpresslightning = false, material = "phoenix_storms/lag_sign", skin = 0, bodygroup = {} },
	["barrelleft"] = { type = "Model", model = "models/props_docks/dock01_pole01a_128.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "body1", pos = Vector(-0.784, 0.811, 5.637), angle = Angle(0, 0, 0), size = Vector(0.061, 0.061, 0.085), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
	["bodybarrelfix"] = { type = "Model", model = "models/hunter/geometric/hex05x1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "body1", pos = Vector(0.004, 1.154, 0.111), angle = Angle(0, 90, 0), size = Vector(0.035, 0.024, 0.351), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
	["body4"] = { type = "Model", model = "models/hunter/blocks/cube025x05x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "body2", pos = Vector(0, 1.001, 0.87), angle = Angle(0, 0, 0), size = Vector(0.129, 0.25, 0.103), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
	["body3"] = { type = "Model", model = "models/hunter/misc/platehole1x1d.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "body2", pos = Vector(-0.8, -3.783, 2.062), angle = Angle(0, 90, 90), size = Vector(0.074, 0.059, 0.518), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
	["triggerrahmen"] = { type = "Model", model = "models/mechanics/solid_steel/sheetmetal_90_4.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "body4", pos = Vector(-0.538, 0.742, 2.29), angle = Angle(90, 180, 0), size = Vector(0.046, 0.092, 0.104), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
	["cockblock1"] = { type = "Model", model = "models/mechanics/solid_steel/type_a_2_4.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "body1", pos = Vector(-0.967, -0.727, 5.662), angle = Angle(90, -35.875, 0), size = Vector(0.087, 0.07, 0.07), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/fender_chrome", skin = 0, bodygroup = {} },
	["ironsigh1"] = { type = "Model", model = "models/props_interiors/Furniture_Vanity01a.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "body1", pos = Vector(0, -0.815, 11.272), angle = Angle(90, -90, 0), size = Vector(0.025, 0.025, 0.025), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/fender_chrome", skin = 0, bodygroup = {} },
	["barrelboolet"] = { type = "Model", model = "models/hunter/tubes/tube1x1x2.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "body1", pos = Vector(0, 0, -8.749), angle = Angle(0, 0, 0), size = Vector(0.024, 0.024, 0.14), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
	["cockbloc2"] = { type = "Model", model = "models/props_c17/lampShade001a.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(8.512, 2.096, -6.617), angle = Angle(0, -3.695, -58.52), size = Vector(0.046, 0.046, 0.112), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/fender_chrome", skin = 0, bodygroup = {} }
}

SWEP.ViewModelBoneMods = {
	["ValveBiped.Bip01_L_Hand"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(1.223, -10.495, 0) },
	["ValveBiped.Bip01_Spine4"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-9.528, 1.302, 0) },
	["ValveBiped.Bip01_L_Finger0"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(9.843, 0, 0) },
	["v_weapon.ump45_Parent"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0.533, 1.47, 0.948), angle = Angle(4.028, 0, 0) },
	["v_weapon.ump45_Clip"] = { scale = Vector(0.101, 0.101, 0.101), pos = Vector(0.533, 1.47, 0.948), angle = Angle(4.028, 0, 0) },
	["v_weapon.ump45_Trigger"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0.5, 0.5), angle = Angle(4.028, 0, 0) },
	["ValveBiped.Bip01_L_Forearm"] = { scale = Vector(1, 1, 1), pos = Vector(-6.075, 0.867, -1.956), angle = Angle(0, 0, 0) }
}

SWEP.Primary.Sound = Sound("weapons/elite/elite-1.wav")
SWEP.Primary.Damage = 31
SWEP.Primary.NumShots = 1
SWEP.Primary.Delay = 0.075

SWEP.Primary.ClipSize = 32
SWEP.Primary.Automatic = false
SWEP.Primary.Ammo = "pistol"
GAMEMODE:SetupDefaultClip(SWEP.Primary)

SWEP.Tier = 4
SWEP.MaxStock = 4
SWEP.IronSightsPos = Vector(-7.56, -12.825, 2.97)
SWEP.IronSightsAng = Vector(-0.505, -4.393, 0)

SWEP.ConeMax = 2.5
SWEP.ConeMin = 0.75

SWEP.WalkSpeed = SPEED_SLOWEST * 1.05

function SWEP:EmitFireSound()
	self:EmitSound(self.Primary.Sound, 100, math.random(145,150))
end

GAMEMODE:AddNewRemantleBranch(SWEP,1,"'Echter Gangsta' Fixed Tec-9", "Fixes the broken Autofire System at the cost of accuracy and damage",function(wept)

wept.Primary.Damage = 25
wept.Primary.Delay = wept.Primary.Delay * 1
wept.Primary.Automatic = true
wept.ConeMax = wept.ConeMax * 3
wept.ConeMin = wept.ConeMin * 7

end)


//Made by DuffT
//Thanks to erdf,Murphy, Superspooner and thanks to Johnny Moe.  Produced for Hot Dad ZS.