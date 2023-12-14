local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Title of the library", HidePremium = false, SaveConfig = true, ConfigFolder

local homeTab = Window:MakeTab({
	Name = "home",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local mainTab = Window:MakeTab({
	Name = "main",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local miscTab = Window:MakeTab({
	Name = "misc",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local othersTab = Window:MakeTab({
	Name = "others",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
