--local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
--local Window = OrionLib:MakeWindow({Name = "Vva babft hub", HidePremium = false, SaveConfig = true, ConfigFolder})
--local TweenService = game:GetService("TweenService")
--local player = game.Players.LocalPlayer

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

local function tweenTeleport(position)
    local character = player.Character
    local humanoidRootPart = character and character:WaitForChild("HumanoidRootPart")

    if humanoidRootPart then
        local goal = {}
        goal.Position = position

        local tweenInfo = TweenInfo.new(2) -- You can adjust the time duration here
        local tween = TweenService:Create(humanoidRootPart, tweenInfo, goal)

        tween:Play()

        tween.Completed:Connect(function()
            print("Teleported to", position)
        end)
    else
        warn("Character or HumanoidRootPart not found.")
    end
end

function tickdata()
	local player = game.Players.LocalPlayer
	local playerName = player.Name
end

function tickrun(textinput)
	LOCAL GBAUFTOG = False
	if textinput == "WGF1" then
		loadstring(game:HttpGet("https://raw.githubusercontent.com/nuc2222/Autobuild-build-a-boat-/main/Data/Functions/Rejoinwhite.lua"))()
	end
	if textinput == "WGF2" then
		setclipboard('loadstring(game:HttpGet("https://raw.githubusercontent.com/nuc2222/Autobuild-build-a-boat-/main/Data/Functions/Rejoinwhite.lua"))()')
		toclipboard('loadstring(game:HttpGet("https://raw.githubusercontent.com/nuc2222/Autobuild-build-a-boat-/main/Data/Functions/Rejoinwhite.lua"))()')
	end
	if textinput == "toggleGBAUF" then
		if GBAUFTOG == false then
			local GBAUFTOG = true
		else
			loca GBAUFTOG = false
		end
	if textinput == "GBAUF" then
		if GBAUFTOG == true then
			local GBAUf = false
			local player = game.Players.LocalPlayer
			local character = player.Character or player.CharacterAdded:Wait()
			local destination = Vector3.new(-51.5656, 65, 5989)
			character:MoveTo(destination)
			wait(1)
			character:MoveTo(destination)
			wait(1)
			local destination = Vector3.new(-51.5656, -100, 9498)
			character:MoveTo(destination)
			wait(4)
			local GBAUf = true
		end

	end
end
while true do wait(0.01)
	tickrun("GBAUF")
end
