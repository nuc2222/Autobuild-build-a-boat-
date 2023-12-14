-- declsre main functions.
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "build a boat autobuild", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})
-- bootup script.
keys = {
	"devkey",
}
local Tab = autobuildscript:MakeTab({
	Name = "babft autobuild script",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Tab = babfthubscript:MakeTab({
	Name = "babft hub script",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

autobuildscript:AddTextbox({
	Name = "enter key",
	Default = "",
	TextDisappear = true,
	Callback = function(key)
		local _G.inputkey = key
	end	  
})
autobuildscript:AddButton({
	Name = "Button!",
	Callback = function()
			for _, key in ipairs(keys) do
			        if key == _G.inputkey then
					loadstring(game:HttpGet("https://raw.githubusercontent.com/nuc2222/Autobuild-build-a-boat-/main/Data/Scripts/Autobuild.lua"))()
					break
				end
			end
		end
})
OrionLib:Init()
