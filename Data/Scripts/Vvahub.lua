lollocal OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
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
mainTab:AddToggle({
	Name = "autofarm gold block",
	Default = false,
	Callback = function(Value)
		while true do
			if Value == true then
				local player = game.Players.LocalPlayer
				local character = player.Character or player.CharacterAdded:Wait()
				local destination = Vector3.new(-51.5656, 65, 5989.09)
				character:MoveTo(destination)
				wait(2)
				local player = game.Players.LocalPlayer
				local character = player.Character or player.CharacterAdded:Wait()
				local destination = Vector3.new(-51.5656, -100, 9498)
				character:MoveTo(destination)
				wait(5)
			else
				break
			end
		end
	end    
})
