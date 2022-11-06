--MADE BY 14lss--
--GAME: https://www.roblox.com/games/2619187362/Super-Power-Fighting-Simulator

--GLOBALS--
getgenv().autoPsychic = false
getgenv().autoStrength = false
getgenv().autoEndurance = false

getgenv().autoUpgradeEndurance = false
getgenv().autoUpgradeStrength = false
getgenv().autoUpgradePsychic = false
getgenv().autoUpgradeSpeed = false

local buy = game:GetService("ReplicatedStorage").Events.PurchaseItem
local player = game.Players.LocalPlayer
local spawnLocation = CFrame.new(-414.717072, 68.2445068, -110.162308)
local e100k = CFrame.new(202.963257,65.2400017,-221.57991)
local p500m = CFrame.new(398.000031, 167.237869, -517.148071)
local e10k = CFrame.new(253.780029, 85.1365509, -310.04599)
local s100 = CFrame.new(-264.744293, 85.0313644, -131.090805)
local s500m = CFrame.new(123.674133, 85.0773239, -509.647644)
local p100k = CFrame.new(190.618683, 46.0915375, -514.744568)
local e500m = CFrame.new(-740.309692, 85.9875565, -48.9764633)
local s10k = CFrame.new(-138.19043, 85.2744064, -426.468964)
local e1k = CFrame.new(-774.134521, 85.3344193, -398.552277)
local p1k = CFrame.new(-884.125549, 85.806572, -434.067017)
local p5m = CFrame.new(-858.992432, 85.0320969, -43.2305489)
local e100 = CFrame.new(-764.503479, 85.1365509, -620.936523)
local s100k = CFrame.new(-958.396423, 85.4565506, -154.64743)
local s5m = CFrame.new(-668.338013, 141.708107, -1154.0564)
local e5m = CFrame.new(-633.691223, 85.5641403, -34.2950859)
local s1k = CFrame.new(-781.927185, 85.3344269, -356.250061)
local p10k = CFrame.new(-887.459656, 110.119049, -466.301239)
local e50b = CFrame.new(-1523.10522, 64.4658585, -1994.56982)
local e30t = CFrame.new(-1517.45947, 64.4798813, -1715.58093)
local s50b = CFrame.new(-1615.35425, 64.4798813, -1775.50659)
local p50b = CFrame.new(-1483.75525, 64.5762253, -1902.66345)
local s30t = CFrame.new(-1396.73804, 105.7648697, -1878.51819)
local p30t = CFrame.new(-1421.84253, 65.5298805, -1751.08765)
local p10qa = CFrame.new(999.653625, 65.3254051, 973.910583)
local e10qa = CFrame.new(1281.30908, 53.2159081, 835.958862)
local s10qa = CFrame.new(1144.33411, 67.8855515, 941.762756)
local s25qi = CFrame.new(1002.85077, 68.2787056, 839.671875)
local p25qi = CFrame.new(1015.05005, 220.121262, 858.249023)
local e25qi = CFrame.new(798.797729, 64.6644058, 707.896362)

--AUTOS--
function psychic()
	spawn(function ()
		while wait(1) do
			if not autoPsychic then break end
			game:GetService("ReplicatedStorage").Events.Train:FireServer("Psychic")
		end
	end)
end

function strength()
	spawn(function ()
		while wait(1) do
			if not autoStrength then break end
			game:GetService("ReplicatedStorage").Events.Train:FireServer("Strength")
		end
	end)
end

function endurance()
	spawn(function ()
		while wait(1) do
			if not autoEndurance then break end
			game:GetService("ReplicatedStorage").Events.Train:FireServer("Endurance")
		end
	end)
end

--UPGRADES--
function upgradeEndurance()
	spawn(function ()
		while wait(1) do
			if not autoUpgradeEndurance then break end
			game:GetService("ReplicatedStorage").Functions.Multiplier:InvokeServer("EnduranceMultiplier")
		end
	end)
end

function upgradeStrength()
	spawn(function ()
		while wait(1) do
			if not autoUpgradeStrength then break end
			game:GetService("ReplicatedStorage").Functions.Multiplier:InvokeServer("StrengthMultiplier")
		end
	end)
end

function upgradePsychic()
	spawn(function ()
		while wait(1) do
			if not autoUpgradePsychic then break end
			game:GetService("ReplicatedStorage").Functions.Multiplier:InvokeServer("PsychicMultiplier")
		end
	end)
end

function upgradeSpeed()
	spawn(function ()
		while wait(1) do
			if not autoUpgradeSpeed then break end
			game:GetService("ReplicatedStorage").Functions.Multiplier:InvokeServer("SpeedMultiplier")
		end
	end)
end

--TELEPORTS--
function teleport(location)
	if location == "spawn" then
		player.Character.HumanoidRootPart.CFrame = spawnLocation
	end
	if location == "500m Psychic" then 
		player.Character.HumanoidRootPart.CFrame = p500m
	end
	if location == "10k Endurance" then
		player.Character.HumanoidRootPart.CFrame = e10k
	end
	if location == "100k Endurance" then
		player.Character.HumanoidRootPart.CFrame = e100k
	end
	if location == "100 Strength" then
		player.Character.HumanoidRootPart.CFrame = s100
	end
	if location == "500m Strength" then
		player.Character.HumanoidRootPart.CFrame = s500m
	end
	if location == "100k Psychic" then
		player.Character.HumanoidRootPart.CFrame = p100k
	end
	if location == "500m Endurance" then
		player.Character.HumanoidRootPart.CFrame = e500m
	end
	if location == "10k Strength" then
		player.Character.HumanoidRootPart.CFrame = s10k
	end
	if location == "1k Endurance" then
		player.Character.HumanoidRootPart.CFrame = e1k
	end
	if location == "1k Psychic" then
		player.Character.HumanoidRootPart.CFrame = p1k
	end
	if location == "5m Psychic" then
		player.Character.HumanoidRootPart.CFrame = p5m
	end
	if location == "100 Endurance" then
		player.Character.HumanoidRootPart.CFrame = e100
	end
	if location == "100k Strength" then
		player.Character.HumanoidRootPart.CFrame = s100k
	end
	if location == "5m Strength" then
		player.Character.HumanoidRootPart.CFrame = s5m
	end
	if location == "5m Endurance" then
		player.Character.HumanoidRootPart.CFrame = e5m
	end
	if location == "1k Strength" then
		player.Character.HumanoidRootPart.CFrame = s1k
	end
	if location == "10k Psychic" then
		player.Character.HumanoidRootPart.CFrame = p10k
	end
	if location == "50b Endurance" then
		player.Character.HumanoidRootPart.CFrame = e50b
	end
	if location == "30t Endurance" then
		player.Character.HumanoidRootPart.CFrame = e30t
	end
	if location == "50b Strength" then
		player.Character.HumanoidRootPart.CFrame = s50b
	end
	if location == "50b Psychic" then
		player.Character.HumanoidRootPart.CFrame = p50b
	end
	if location == "30t Strength" then
		player.Character.HumanoidRootPart.CFrame = s30t
	end
	if location == "30t Psychic" then
		player.Character.HumanoidRootPart.CFrame = p30t
	end
	if location == "10qa Psychic" then
		player.Character.HumanoidRootPart.CFrame = p10qa
	end
	if location == "10qa Endurance" then
		player.Character.HumanoidRootPart.CFrame = e10qa
	end
	if location == "10qa Strength" then
		player.Character.HumanoidRootPart.CFrame = s10qa
	end
	if location == "25qi Strength" then
		player.Character.HumanoidRootPart.CFrame = s25qi
	end
	if location == "25qi Psychic" then
		player.Character.HumanoidRootPart.CFrame = p25qi
	end
	if location == "25qi Endurance" then
		player.Character.HumanoidRootPart.CFrame = e25qi
	end
end

--BUY CHESTS--
function buyChest(chest)
	if chest == "Basic" then
		buy:FireServer("BasicChest")
	end
	if chest == "Void" then
		buy:FireServer("VoidChest")
	end
	if chest == "Elemental" then
		buy:FireServer("ElementalChest")
	end
	if chest == "Epic" then
		buy:FireServer("EpicChest")
	end
	if chest == "Legendary" then
		buy:FireServer("LegendaryChest")
	end
	if chest == "Alien" then
		buy:FireServer("AlienChest")
	end
	if chest == "Haunted" then
		buy:FireServer("HalloweenChest")
	end
	if chest == "LightDark" then
		buy:FireServer("LightDarkChest")
	end
	if chest == "Festive" then
		buy:FireServer("WinterChest")
	end
	if chest == "Galaxy" then
		buy:FireServer("GalaxyChest")
	end
	if chest == "Ancient God" then
		buy:FireServer("AncientGodChest")
	end
	if chest == "Dark Pumpkin" then
		buy:FireServer("DarkPumpkinChest")
	end
	if chest == "Holiday" then
		buy:FireServer("HolidayChest")
	end
	if chest == "Mythical Beast" then
		buy:FireServer("MythicalChest")
	end
end
-- GUI

local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wall%20v3')))()

local w = library:CreateWindow("SPFS GUI")

local a = w:CreateFolder("Autos")

local u = w:CreateFolder("Upgrades")

local t = w:CreateFolder("Teleports")

local c = w:CreateFolder("Buy Chests")

local b = w:CreateFolder("Misc")

--AUTOS--
a:Toggle("Strength",function(bool)
    getgenv().autoStrength = bool
    strength()
end)

a:Toggle("Endurance",function(bool)
    getgenv().autoEndurance = bool
    endurance()
end)

a:Toggle("Psychic",function(bool)
    getgenv().autoPsychic = bool
    psychic()
end)

--UPGRADES--
u:Toggle("Strength",function(bool)
    getgenv().autoUpgradeStrength = bool
	upgradeStrength()
end)

u:Toggle("Endurance",function(bool)
    getgenv().autoUpgradeEndurance = bool
	upgradeEndurance()
end)

u:Toggle("Psychic",function(bool)
    getgenv().autoUpgradePsychic = bool
	upgradePsychic()
end)

u:Toggle("Speed",function(bool)
    getgenv().autoUpgradeSpeed = bool
	upgradeSpeed()
end)

--TELEPORTS--
local selectedEndurance;
t:Dropdown("Endurance",{"100 Endurance","1k Endurance","10k Endurance","100k Endurance","5m Endurance","500m Endurance","50b Endurance","30t Endurance","10qa Endurance","25qi Endurance"},true,function(value)
    selectedEndurance = value;
	if selectedEndurance then
		teleport(selectedEndurance)
	end
end)

local selectedStrength
t:Dropdown("Strength",{"100 Strength","1k Strength","10k Strength","100k Strength","5m Strength","500m Strength","50b Strength","30t Strength","10qa Strength","25qi Strength"},true,function(value)
    selectedStrength = value;
	if selectedStrength then
		teleport(selectedStrength)
	end
end)

local selectedPsychic
t:Dropdown("Psychic",{"1k Psychic","10k Psychic","100k Psychic","5m Psychic","500m Psychic","50b Psychic","30t Psychic","10qa Psychic","25qi Psychic"},true,function(value)
    selectedPsychic = value;
	if selectedPsychic then
		teleport(selectedPsychic)
	end
end)

t:Button("Teleport to Spawn",function()
	teleport("spawn")
end)

--BUY CHESTS
local selectedChest
c:Dropdown("Chest",{"Basic","Void","Elemental","Alien","Haunted","LighDark","Festive","Galaxy","Ancient God","Dark Pumpkin","Holiday","Mythical Beast"},true,function(value)
    selectedChest = value;
end)

c:Button("Buy Chest",function()
    buyChest(selectedChest)
end)

--MISC--
b:Label("Made by 14lss",{
    TextSize = 16;
    TextColor = Color3.fromRGB(255,255,255);
    BgColor = Color3.fromRGB(69,69,69);
}) 

b:DestroyGui()
