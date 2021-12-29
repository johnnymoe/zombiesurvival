AddCSLuaFile()
DEFINE_BASECLASS("weapon_zs_base")

SWEP.PrintName = "'Crackler' Assault Rifle"
SWEP.Description = "An unsophisticated assault rifle which has good damage and accuracy."

SWEP.Slot = 2
SWEP.SlotPos = 0

if CLIENT then
	SWEP.ViewModelFlip = false
	SWEP.ViewModelFOV = 60

	SWEP.HUD3DBone = "v_weapon.famas"
	SWEP.HUD3DPos = Vector(1.1, -3.5, 10)
	SWEP.HUD3DScale = 0.02
end

SWEP.Base = "weapon_zs_base"

SWEP.HoldType = "ar2"

SWEP.ViewModel = "models/weapons/cstrike/c_rif_famas.mdl"
SWEP.WorldModel = "models/weapons/w_rif_famas.mdl"
SWEP.UseHands = true

SWEP.ReloadSound = Sound("Weapon_FAMAS.Clipout")
SWEP.Primary.Sound = Sound("Weapon_FAMAS.Single")
SWEP.Primary.Damage = 15
SWEP.Primary.NumShots = 1
SWEP.Primary.Delay = 0.175

SWEP.Primary.ClipSize = 22
SWEP.Primary.Automatic = true
SWEP.Primary.Ammo = "ar2"
GAMEMODE:SetupDefaultClip(SWEP.Primary)

SWEP.ConeMax = 3.0 --0.045
SWEP.ConeMin = 1.6 --0.019

SWEP.ReloadSpeed = 1.1

SWEP.WalkSpeed = SPEED_SLOW

SWEP.IronSightsPos = Vector(-3, 3, 2)

GAMEMODE:AttachWeaponModifier(SWEP, WEAPON_MODIFIER_MAX_SPREAD, -0.375, 1)
GAMEMODE:AttachWeaponModifier(SWEP, WEAPON_MODIFIER_MIN_SPREAD, -0.2, 1)
GAMEMODE:AddNewRemantleBranch(SWEP, 1, "'Crackler' Combat Rifle", "Loses automatic fire rate but gains a bit of damage and accuracy", function(wept)
	wept.Primary.Damage = wept.Primary.Damage * 1.2
	wept.Primary.Delay = wept.Primary.Delay * 1.84
	wept.Primary.ClipSize = 15
	wept.ConeMin = wept.ConeMin * 0.7
	wept.ConeMax = wept.ConeMax * 0.7
	wept.Primary.Automatic = false
end)

local branch = GAMEMODE:AddNewRemantleBranch(SWEP, 2,"'Cruckler' Burst Rifle", "Increases accuracy but also turns into burst fire",function (wept)

wept.Primary.Delay = wept.Primary.Delay * 4
wept.Primary.BurstShots = 3
wept.ConeMin = wept.ConeMin * 0.6
wept.ConeMax = wept.ConeMax * 0.6

wept.PrimaryAttack = function(self)
		if not self:CanPrimaryAttack() then return end

		self:SetNextPrimaryFire(CurTime() + self:GetFireDelay())
		self:EmitFireSound()

		self:SetNextShot(CurTime())
		self:SetShotsLeft(self.Primary.BurstShots)

		self.IdleAnimation = CurTime() + self:SequenceDuration()
	end

	wept.Think = function(self)
		BaseClass.Think(self)

		local shotsleft = self:GetShotsLeft()
		if shotsleft > 0 and CurTime() >= self:GetNextShot() then
			self:SetShotsLeft(shotsleft - 1)
			self:SetNextShot(CurTime() + self:GetFireDelay()/9)

			if self:Clip1() > 0 and self:GetReloadFinish() == 0 then
				self:EmitFireSound()
				self:TakeAmmo()
				self:ShootBullets(self.Primary.Damage, self.Primary.NumShots, self:GetCone())

				self.IdleAnimation = CurTime() + self:SequenceDuration()
			else
				self:SetShotsLeft(0)
			end
		end
	end
end)
branch.NewNames = {"Reverse-Engineered", "Re-Invented", "Re-Assembled"}

function SWEP:SetNextShot(nextshot)
	self:SetDTFloat(5, nextshot)
end

function SWEP:GetNextShot()
	return self:GetDTFloat(5)
end

function SWEP:SetShotsLeft(shotsleft)
	self:SetDTInt(1, shotsleft)
end

function SWEP:GetShotsLeft()
	return self:GetDTInt(1)
end
  
  