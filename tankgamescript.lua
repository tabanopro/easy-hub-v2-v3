local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = " ~Easy Hub V2 (Free) - [Tankery!]~ ", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest", IntroEnabled = true, IntroText = "Please wait.. Easy Hub V2 Loading..."})

--[[
Name = <string> - The name of the UI.
HidePremium = <bool> - Whether or not the user details shows Premium status or not.
SaveConfig = <bool> - Toggles the config saving in the UI.
ConfigFolder = <string> - The name of the folder where the configs are saved.
IntroEnabled = <bool> - Whether or not to show the intro animation.
IntroText = <string> - Text to show in the intro animation.
IntroIcon = <string> - URL to the image you want to use in the intro animation.
Icon = <string> - URL to the image you want displayed on the window.
CloseCallback = <function> - Function to execute when the window is closed.
]]


local Tanks = Window:MakeTab({
	Name = "Tanks",
	Icon = "rbxassetid://636810794",
	PremiumOnly = false
})
local TankToSpawn = nil
Tanks:AddDropdown({
	Name = "Free Tank",
	Default = "1",
	Options = {'AMX1390', 'SU12244', 'AMX13902', 'Achilles', 'UC2pdr', 'Charioteer', 'T54', 'Centurion', 'Challenger', 'Cheeto', 'ChiHa', 'SdKfz234', 'T67', 'PantherM10', 'M4', 'VK3001', 'Valentine', 'T23E3', 'Tiger1', 'T95E6', 'M60SS', 'GAZ72', 'T44', 'T3485', 'T32', 'T34', 'T1E6', 'T-50', 'STB1', 'm24', 'S35', 'Pz38t', 'ShermanFirefly', 'T-26', 'T-46', 'Panzer3', 'Pershing', 'Panther', 'Panzer4', 'Comet', 'M5A1', 'M4A3E8', 'M4A3105', 'M48A5', 'LTvz38', 'Luchs', 'M10', 'M2', 'M18', 'T-28', 'KingTiger', 'Hetzer', 'KeNi', 'KV2', 'KV1', 'IS8', 'IS2', 'Crusader3', 'M48A1', 'Ferdinand', 'FMax', 'E100e', 'M36B1', 'STA1', 'Conqueror', 'JPanther', 'HC', 'Lorraine39L', 'M41WB', 'KeHo', 'Churchill3', 'M36', 'T34A', 'ChurchillVII', 'IS3', 'SU85B', 'Pz2', 'Fury', 'Pz38tG', 'JTiger', 'T80', 'T28', 'T28p', 'Leopard', 'ChiNu', 'Luchs3cm', 'KV85', 'Crusader2', 'Panther2', 'Panzer4Event', 'T-44-122', 'SU152', 'PZ2M', 'CrusaderSP', 'T110E5', 'M4A3E2', 'IndienPanzer', 'E50', 'Panzer 3M', 'PZJ1', 'Panzer 4C', 'HaGo', 'Cromwell', 'm4a1', 'M4A1R', 'TigerJ', 'Stug3', 'RU251', 'SU85', 'ShtuGB', 'AMX13152', 'M4FL10', 'Panzer3K', 'AMX1324', 'M24 60MM', 'PantherC', 'B1', 'MBT70', 'Centurion7', 'T62', 'T341940', 'Panzer3F', 'M4A2', 'M4A275', 'KingTigerZ', 'Tiger1Z', 'PantherZ', 'E100', 'T54b', 'CharioteerL7', 'Tiger134', 'HoNiI', 'BP57', 'AMX50', 'ARL44', 'ACG1', 'BatChat', 'Lorraine40t', 'SU100P', 'T34122'},
    function(Value)
		print(Value)
        TankToSpawn = Value
	end    
})

--[[
Name = <string> - The name of the dropdown.
Default = <string> - The default value of the dropdown.
Options = <table> - The options in the dropdown.
Callback = <function> - The function of the dropdown.
]]

Tanks:AddButton({
	Name = "Spawn Free Tank",
	Callback = function()
        OrionLib:MakeNotification({
            Name = "Note from dev:",
            Content = "only work once! cuz idk",
            Image = "rbxassetid://6525527347",
            Time = 3
        })
        local args = {
            [1] = TankToSpawn
        }
        
        game:GetService("Players").LocalPlayer:WaitForChild("Events"):WaitForChild("SpawnTank"):FireServer(unpack(args))
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tanks:AddButton({
    Name = "Change Tank Preview To:(Select tank first)", 
    Callback = function()
        local args = {
            [1] = {
                [1] = TankToSpawn
            }
        }
        
        workspace:WaitForChild("Events"):WaitForChild("ChangeTank"):FireServer(unpack(args))
    end
})

Tanks:AddButton({
    Name = "Auto Kill (extremely buggy)", 
    Callback = function ()
        OrionLib:MakeNotification({
            Name = "Note from dev:",
            Content = "If get kick use anti kick next time and it not work if you not sellect tank your using!",
            Image = "rbxassetid://6525527347",
            Time = 3
        })
        local PlayerUsername = game:GetService("Players").LocalPlayer.name
       for i,v in pairs(game.Players:GetPlayers()) do
            if v ~= game.Players.LocalPlayer and v.Team ~= tostring(game.Players.LocalPlayer.Team) then
                plr = v
            end
        end
        game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(plr.Character.HumanoidRootPart.CFrame + Vector3.new(0,-10,0))
        task.wait(0.1)
        game:GetService("Workspace"):FindFirstChild(PlayerUsername):FindFirstChild(TankToSpawn).Target.Value = plr.Character.HumanoidRootPart.Position
        game:GetService("Players").LocalPlayer.Character:FindFirstChild(tank).StartFiring:FireServer()
        task:wait()
        game:GetService("Players").LocalPlayer.Character:FindFirstChild(TankToSpawn).StopFiring:FireServer()
    end
})

local Credits = Window:MakeTab({
	Name = "Credits",
	Icon = "rbxassetid://636810794",
	PremiumOnly = false
})
Credits:AddButton({
	Name = "Script Devleoper:okho#2479",
	Callback = function()
      		print("button pressed")
  	end    
})
Credits:AddButton({
	Name = "Main Script Devleoper:tabanopro#3951 (/w ui)",
	Callback = function()
      		print("button pressed")
  	end    
})
Credits:AddButton({
	Name = "Click for Noob Army Discord Server",
	Callback = function()
      		print("button pressed")
            setclipboard("https://discord.gg/Uan6cWHAHj")
  	end    
})

local Settings = Window:MakeTab({
	Name = "Settings",
	Icon = "rbxassetid://636810794",
	PremiumOnly = false
})
Settings:AddButton({
    Name = "Destroy GUI",
    Callback = function()
        OrionLib:MakeNotification({
            Name = "We are sorry to see you go.",
            Content = "Goodbye.",
            Image = "rbxassetid://4483345998",
            Time = 3
        })
        wait(3)
        OrionLib:Destroy()
    end
})

Tanks:AddButton({
    Name = "Auto Kill V2 (new!!!)",
    Callback = function()
        function Teleport(XP,YP,ZP)
            -- Config How Many Blocks It Will Tp You Untill The Final Destination:
            local XTpEvery = 10
            local YTpEvery = 10
            local ZTpEvery = 10
            --Time to Tp Every:
            local Timer = 0.001
            local pos = game:GetService('Players').LocalPlayer.Character.HumanoidRootPart
            if pos.Position.X < XP then
            for x = pos.Position.X,XP,XTpEvery do
            game.Players.LocalPlayer.Character:MoveTo(Vector3.new(x,pos.Position.Y,pos.Position.Z))
            local part = Instance.new("Part", workspace)
            part.Anchored = true
            part.Size = Vector3.new(10,0.1,10)
            part.Material = "Glass"
            part.BrickColor = BrickColor.Random()
            part.Transparency = 0.7
            part.Position = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(0,-3.05,0)
            wait(Timer)
            part.Destroy(part)
            end
            else
            for x = pos.Position.X,XP,-XTpEvery do
            game.Players.LocalPlayer.Character:MoveTo(Vector3.new(x,pos.Position.Y,pos.Position.Z))
            local part = Instance.new("Part", workspace)
            part.Anchored = true
            part.Size = Vector3.new(10,0.1,10)
            part.Material = "Glass"
            part.BrickColor = BrickColor.Random()
            part.Transparency = 0.7
            part.Position = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(0,-3.05,0)
            wait(Timer)
            part.Destroy(part)
            end
            end
            if pos.Position.Z < ZP then
            for z = pos.Position.Z,ZP,ZTpEvery do
            game.Players.LocalPlayer.Character:MoveTo(Vector3.new(pos.Position.X,pos.Position.Y,z))
            local part = Instance.new("Part", workspace)
            part.Anchored = true
            part.Size = Vector3.new(10,0.1,10)
            part.Material = "Glass"
            part.BrickColor = BrickColor.Random()
            part.Transparency = 0.7
            part.Position = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(0,-3.05,0)
            wait(Timer)
            part.Destroy(part)
            end
            else
            for z = pos.Position.Z,ZP,-ZTpEvery do
            game.Players.LocalPlayer.Character:MoveTo(Vector3.new(pos.Position.X,pos.Position.Y,z))
            local part = Instance.new("Part", workspace)
            part.Anchored = true
            part.Size = Vector3.new(10,0.1,10)
            part.Material = "Glass"
            part.BrickColor = BrickColor.Random()
            part.Transparency = 0.7
            part.Position = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(0,-3.05,0)
            wait(Timer)
            part.Destroy(part)
            end
            end
            if pos.Position.Y < YP then
            for High = pos.Position.Y,YP,YTpEvery do
            game.Players.LocalPlayer.Character:MoveTo(Vector3.new(pos.Position.X ,High ,pos.Position.Z))
            local part = Instance.new("Part", workspace)
            part.Anchored = true
            part.Size = Vector3.new(10,0.1,10)
            part.Material = "Glass"
            part.BrickColor = BrickColor.Random()
            part.Transparency = 0.7
            part.Position = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(0,-3.05,0)
            wait(Timer)
            part.Destroy(part)
            end
            else
            for High = pos.Position.Y,YP,-YTpEvery do
            game.Players.LocalPlayer.Character:MoveTo(Vector3.new(pos.Position.X ,High ,pos.Position.Z))
            local part = Instance.new("Part", workspace)
            part.Anchored = true
            part.Size = Vector3.new(10,0.1,10)
            part.Material = "Glass"
            part.BrickColor = BrickColor.Random()
            part.Transparency = 0.7
            part.Position = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(0,-3.05,0)
            wait(Timer)
            part.Destroy(part)
            end
            end
            game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(XP + 5,YP,ZP + 5)
            end
            function TeleportTP(CFrame)
                Teleport(CFrame.X,CFrame.Y,CFrame.Z)
            end
    end
})




OrionLib:Init()
