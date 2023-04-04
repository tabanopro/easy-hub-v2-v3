local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = " Easy Hub (Free) - [Tankery!] ~ Collab with Noob Army Script~ ", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest", IntroEnabled = true, IntroText = "Please wait.. Easy Hub Loading..."})

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


local Tab = Window:MakeTab({
	Name = "Tab 1",
	Icon = "rbxassetid://636810794",
	PremiumOnly = false
})
local TankToSpawn = nil
Tab:AddDropdown({
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

Tab:AddButton({
	Name = "Spawn Free Tank",
	Callback = function()
        OrionLib:MakeNotification({
            Name = "Note from dev:",
            Content = "Some tank model will not spawn correctly but still works fine. And use only once in lobby",
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









