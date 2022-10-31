--THEIF SIMULATOR GUI BY 14lss--
--GAME: https://www.roblox.com/games/8232438881/HALLOWEEN-Thief-Simulator

--VARS--
getgenv().autoRob = false
local vim = game:service("VirtualInputManager")
local player = game.Players.LocalPlayer
local sellPos = game.Workspace.Sells.World1.Sell.CFrame
local questPos = game.Workspace.Jobs.World1.Jobs.CFrame
local shopPos = game.Workspace.Shops.Spawn.Shop.CFrame

--FUNCTIONS--
local function hold(keyCode, time)
    --MADE BY https://v3rmillion.net/member.php?action=profile&uid=698945--
    vim:SendKeyEvent(true, keyCode, false, game)
    task.wait(time)
    vim:SendKeyEvent(false, keyCode, false, game)
end

function doRob()
    spawn(function()
        while wait() do
            if not autoRob then break end
            local player = game.Players.LocalPlayer
            local npc = findNPC()
            player.Character.HumanoidRootPart.CFrame = npc.HumanoidRootPart.CFrame
        end
    end)
    spawn(function()
        while autoRob do
            hold(101,3.1)
        end
    end)
end

function findNPC()
    for i,v in pairs(game.Workspace:GetDescendants()) do
        if string.find(v.Name, "HumanoidRootPart") then
            if string.find(v.Parent.Name, "Base:") then
                local npcPath = v.Parent
                return npcPath
            end
        end
    end
end

function teleport(location)
    if location == "sell" then
        player.Character.HumanoidRootPart.CFrame = sellPos
    end
    if location == "quest" then
        player.Character.HumanoidRootPart.CFrame = questPos
    end
    if location == "shop" then
        player.Character.HumanoidRootPart.CFrame = shopPos
    end
end

--GUI--
--MADE BY https://v3rmillion.net/member.php?action=profile&uid=507120--

local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wall%20v3')))()

local w = library:CreateWindow("Theif Simulator GUI")

local a = w:CreateFolder("Auto Steal")

local b = w:CreateFolder("Teleports")

local c = w:CreateFolder("Misc")

--AUTOS--
a:Toggle("Toggle",function(bool)
    getgenv().autoRob = bool
    doRob()
end)

--TELEPORTS--
b:Button("Sell",function()
    teleport("sell")
end)

b:Button("Quest",function()
    teleport("quest")
end)

b:Button("Shop",function()
    teleport("shop")
end)

--MISC--
c:Label("Made by 14lss",{
    TextSize = 16;
    TextColor = Color3.fromRGB(255,255,255);
    BgColor = Color3.fromRGB(69,69,69);
}) 

c:DestroyGui()