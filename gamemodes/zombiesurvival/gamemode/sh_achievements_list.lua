--TODO: Add achievement creation template

--Use below as a template for creating achievements
--KEEP IT IN GM.Achievements
--[[
	["Name"] = {
		["Desc"] = "Insert your description here",
		["Icon"] = here would be the material path
		["IsRare"] = false
		["Rewards"] = 0,
		["InitialValue"] = 0, - The starting value
		["UpdateValue"] = 0, - Update value to notify the player per value (E.G: every 5 zombie kills notify the player's progress)
		["MaxValue"] = 0 - The requirement value to give the achievement 
	}
}

--]]


GM.Achievements = {
	[1] = {
		["Name"] = "Test",
		["Desc"] = "Basic test achievement",
		["Icon"] = nil,
		["IsRare"] = false,
		["Rewards"] = 0,
		["InitialValue"] = 0,
		["UpdateValue"] = 0,
		["MaxValue"] = 1
	},
	
	[2] = {
		["Name"] = "Test Rare",
		["Desc"] = "A rare test achievement",
		["Icon"] = nil,
		["IsRare"] = false,
		["Rewards"] = 5,
		["InitialValue"] = 0,
		["UpdateValue"] = 0,
		["MaxValue"] = 1
	},
	
	[3] = {
		["Name"] = "Zombie Killer 1",
		["Desc"] = "A rare test achievement",
		["Icon"] = nil,
		["IsRare"] = false,
		["Rewards"] = 5,
		["InitialValue"] = 0,
		["UpdateValue"] = 0,
		["MaxValue"] = 1
	},
	
	[4] = {
		["Name"] = "Zombie Killer 2",
		["Desc"] = "A rare test achievement",
		["Icon"] = nil,
		["IsRare"] = false,
		["Rewards"] = 5,
		["InitialValue"] = 0,
		["UpdateValue"] = 0,
		["MaxValue"] = 1
	},
}



local meta = FindMetaTable("Player")
if not meta then return end

hook.Add("PlayerInitialSpawn", "GetAchievements", function(pl)
	local steamid = string.Replace(pl:SteamID(), ":", "!")
	
	if not file.IsDir( "zsach_data", "DATA") then
		print("MISSING ZOMBIE SURVIVAL ACHIEVEMENT DATA FOLDER: Making new one")
		file.CreateDir("zsach_data", "DATA")
	end
	
	local fileAch = file.Read("zsach_data/" .. steamid .. ".txt", "DATA")
	
	pl:SetAchievements(fileAch)
end)

function meta:SetAchievements(ach)
	local desiredAchs = self:GetDesiredAchievements()
	
	if ach then
		table.insert(desiredAchs, ach)
	end
	self:SetDesiredAchievements(desiredAchs)
end

function meta:SetDesiredAchievements(ach)
	self.DesiredAchievements = table.ToKeyValues(ach)
end

function meta:GetDesiredAchievements()
	return self.DesiredAchievements or {}
end

function GM:SaveAchievements(pl)
	local steamid = string.Replace(pl:SteamID(), ":", "!") or "invalid"
	
	if not file.IsDir( "zsach_data", "DATA") then
		print("MISSING ZOMBIE SURVIVAL ACHIEVEMENT DATA FOLDER: Making new one")
		file.CreateDir("zsach_data", "DATA")
	end
	
	file.Write("zsach_data/" .. steamid .. ".txt", util.TableToJSON(pl:GetDesiredAchievements(), true))
end