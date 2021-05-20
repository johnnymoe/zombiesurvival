local meta = FindMetaTable("Player")
if not meta then return end

function meta:GiveAchievement(achName)

	local ach = nil
	
	local stored = self:GetDesiredAchievements() or {}
	if not achName then print("ERROR: bad achievement name") return end
	
	for i, list in ipairs(GAMEMODE.Achievements) do
		ach = table.Copy(list)
	end
	
	if table.HasValue(GAMEMODE.Achievements, stored) then return end
	
	if not ach then print("ERROR: achievement not found") return end

	--Show the popup achievement
	net.Start("ZS_EarnedAchievement")
		net.WriteString(achName)
		net.WriteTable(ach)
	net.Send(self)
	
	--[[
	--Notify everyone of the achiever
	net.Start("ZS_NotifyAchievement")
		net.WriteString(self:Nick())
		net.WriteString(achName["Name"])
		net.WriteBool(achName["IsRare"])
	net.Broadcast()
	--]]
	self:SetAchievements(ach)
	GAMEMODE:SaveAchievements(self)
end

function UpdateNotify(pl, attacker, inflictor, assistpl, headshot)
	local achName = ""
	local ach = nil
	if pl:Team() == TEAM_HUMAN then
		for _, zombKiller in ipairs(GAMEMODE.Achievements) do
			if not string.find(table.ToString(GAMEMODE.Achievements[zombKiller]), "Zombie Killer") then break end
			if table.HasValue(self.DesiredAchievements, GAMEMODE.Achievements[zombKiller]) then break end
		end
	end
	

	for i, list in ipairs(GAMEMODE.Achievements) do
		if table.HasValue(self.DesiredAchievements, GAMEMODE.Achievements[list]) then return end
		
		if list == achName then
			ach = table.Copy(GAMEMODE.Achievements[list])
		end
	end
end

