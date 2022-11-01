--HOW FAR CAN YOU FLY GUI BY 14lss--
--GAME: https://www.roblox.com/games/9912491609/NEW-MAP-How-Far-Can-You-Fly

--GLOBAL VARS--
getgenv().autoCoin = false
getgenv().autoBuySM = false
getgenv().autoJump = false
getgenv().autoBuyRebirth = false
getgenv().cameraLock = false

--VARS--
local vim = game:service("VirtualInputManager")
local pos = Vector3.new(0, 0, 0)
local lookAt = Vector3.new(0, 0, -10)
local cameraCFrame = CFrame.new(pos, lookAt)

--FUNCTIONS--

function collectCoins()
    spawn(function()
        while wait() do
            if not autoCoin then break end
            for i, v in pairs(game.Workspace.Coins:GetChildren()) do
                if not autoCoin then break end
                local playerCharacter = game.Players.LocalPlayer.Character
                playerCharacter.HumanoidRootPart.CFrame = v.CFrame
                wait()
            end
        end
    end)
end

function buySM()
    spawn(function()
        while wait() do
            if not autoBuySM then break end
            local price = game:GetService("Players").LocalPlayer.Price.Value
            local coins = game:GetService("Players").LocalPlayer.leaderstats.Coins.Value
            if coins >= price then
                game:GetService("ReplicatedStorage").BuySM:FireServer()
                break
            end
        end  
    end)
end

function buyRebirth()
    spawn(function()
        while wait() do
            if not autoBuyRebirth then break end
            local rebirthPrice = game:GetService("Players").SoggySlop8.RebirthPrice.Value
            local sm = game:GetService("Players").SoggySlop8.leaderstats.SM.Value
            if sm >= rebirthPrice then
                game:GetService("ReplicatedStorage").BuyRebirth:FireServer()
                break
            end
        end
    end)
end

function jump()
    spawn(function()
        while wait() do
            if not autoJump then
                vim:SendKeyEvent(false, 119, false, game)
                break
            end
            local player = game.Players.LocalPlayer
            local x = player.Character.HumanoidRootPart.CFrame.x
            local y = player.Character.HumanoidRootPart.CFrame.y
            local z = player.Character.HumanoidRootPart.CFrame.z
            local cf = CFrame.new(x,y,z)
            player.Character.HumanoidRootPart.CFrame = cf
            vim:SendKeyEvent(true, 119, false, game)
        end
    end)
end

function lockCamera()
    spawn(function()
        while wait() do
            if not cameraLock then break end
            workspace.CurrentCamera.CFrame = cameraCFrame
        end
    end)
end

--GUI--
--MADE BY https://v3rmillion.net/member.php?action=profile&uid=507120 --

local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wall%20v3')))()

local w = library:CreateWindow("How Far Can You Fly GUI")

local a = w:CreateFolder("Autos")

local b = w:CreateFolder("Misc")

--AUTOS--
a:Toggle("Auto Collect Coins",function(bool)
    getgenv().autoCoin = bool
    collectCoins()
end)

a:Toggle("Auto Buy SM",function(bool)
    getgenv().autoBuySM = bool
    buySM()
end)

a:Toggle("Auto Rebirth",function(bool)
    getgenv().autoBuyRebirth = bool
    buyRebirth()
end)

a:Toggle("Auto Jump",function(bool)
    getgenv().autoJump = bool
    getgenv().cameraLock = bool
    jump()
    lockCamera()
end)

--MISC--
b:Label("Made by 14lss",{
    TextSize = 16;
    TextColor = Color3.fromRGB(255,255,255);
    BgColor = Color3.fromRGB(69,69,69);
}) 

b:DestroyGui()
