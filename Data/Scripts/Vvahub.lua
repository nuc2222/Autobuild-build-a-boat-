local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Vva babft hub", HidePremium = false, SaveConfig = true, ConfigFolder})

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

local teamTab = Window:MakeTab({
	Name = "misc",
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

homeTab:AddButton({
	Name = "destroy gui",
	Callback = function()
      		OrionLib:MakeNotification({
			Name = "goodbye",
			Content = "destroying gui...",
			Image = "rbxassetid://4483345998",
			Time = 3
		})
                wait(3)
		OrionLib:Destroy()
  	end    
})

mainTab:AddToggle({
	Name = "autofarm gold block",
	Default = false,
	Callback = function(toggler)
		while toggler do
			local player = game.Players.LocalPlayer
			local character = player.Character or player.CharacterAdded:Wait()
			local destination = Vector3.new(-51.5656, 65, 5989)
			character:MoveTo(destination)
			wait(2)
			local player = game.Players.LocalPlayer
			local character = player.Character or player.CharacterAdded:Wait()
			local destination = Vector3.new(-51.5656, -100, 9498)
			character:MoveTo(destination)
			wait(10)
		end
	end    
})
function tickdata()
	local player = game.Players.LocalPlayer
	local playerName = player.Name
end

function tickrun(textinout)

end
