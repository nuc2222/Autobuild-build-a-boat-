-- declsre main functions
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "build a boat autobuild", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})
-- bootup script

OrionLib:MakeNotification({
	Name = "Welcom",
	Content = "script made by vva productions",
	Image = "rbxassetid://4483345998",
	Time = 5
})

-- main

local homeTab = Window:MakeTab({
	Name = "home",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Local autobuildTab = Window:MakeTab({
	Name = "autobuild",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

autobuildTab:AddTextbox({
	Name = "load file name",
	Default = "",
	TextDisappear = False,
	Callback = function(Value)
		print(Value)
	end	  
})
