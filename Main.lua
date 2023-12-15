-- declsre main functions.
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "build a boat autobuild", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})
-- bootup script.
keya = "devkey"
local autobuildscriptTab = Window:MakeTab({
	Name = "Tab 1",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local vvahubTab = Window:MakeTab({
	Name = "Tab 1",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

autobuildscript:AddTextbox({
	Name = "enter key",
	Default = "",
	TextDisappear = true,
	Callback = function(key)
		if key == keya then
				
	end	  
})
OrionLib:Init()
