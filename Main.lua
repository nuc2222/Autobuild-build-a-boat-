-- declsre main functions.
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "build a boat autobuild", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})
keya = loadstring(game:HttpGet("https://raw.githubusercontent.com/nuc2222/Autobuild-build-a-boat-/main/Data/Keysystem/Getkeyapi.lua I am "))()
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
				loadstring(game:HttpGet('https://raw.githubusercontent.com/nuc2222/Autobuild-build-a-boat-/main/Data/Scripts/Autobuild.lua'))()
		end
	end	  
})
OrionLib:Init()
