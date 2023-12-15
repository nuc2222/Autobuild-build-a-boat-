-- declsre main functions.
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "build a boat scripts", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})
keya = loadstring(game:HttpGet("https://raw.githubusercontent.com/nuc2222/Autobuild-build-a-boat-/main/Data/Keysystem/Getkeyapi.lua"))()
local autobuildscriptTab = Window:MakeTab({
	Name = "autobuild babft",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local vvahubTab = Window:MakeTab({
	Name = "babft gui",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

autobuildscriptTab:AddTextbox({
	Name = "enter key",
	Default = "",
	TextDisappear = true,
	Callback = function(key)
		if key == keya then
			loadstring(game:HttpGet("https://raw.githubusercontent.com/nuc2222/Autobuild-build-a-boat-/main/Data/Scripts/Autobuild.lua"))()
		else
			OrionLib:MakeNotification({
				Name = "key system",
				Content = "uh oh it seems youve entered the incorrect key",
				Image = "rbxassetid://4483345998",
				Time = 5
                        })
		end

	end	  
})
vvahubTab:AddTextbox({
	Name = "enter key",
	Default = "",
	TextDisappear = true,
	Callback = function(key)
		if key == keya then
			loadstring(game:HttpGet("https://raw.githubusercontent.com/nuc2222/Autobuild-build-a-boat-/main/Data/Scripts/vvahub.lua"))()
		else
			OrionLib:MakeNotification({
				Name = "key system",
				Content = "uh oh it seems youve entered the incorrect key",
				Image = "rbxassetid://4483345998",
				Time = 5
                        })
		end

	end	  
})
OrionLib:Init()
