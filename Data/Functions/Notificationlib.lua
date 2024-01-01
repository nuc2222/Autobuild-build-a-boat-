local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local SoundService = game:GetService("SoundService")

local player = Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

-- Function to create and display an enhanced notification
local function notify(title, content)
    local notification = Instance.new("ScreenGui")
    notification.Name = "Notification"
    notification.Parent = playerGui
    notification.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

    local frame = Instance.new("Frame")
    frame.Size = UDim2.new(0, 200, 0, 80)
    frame.Position = UDim2.new(1, -220, 0.5, -40) -- Right corner, horizontally centered
    frame.AnchorPoint = Vector2.new(1, 0.5)
    frame.BackgroundColor3 = Color3.new(0, 0, 0)
    frame.BorderSizePixel = 0
    frame.BackgroundTransparency = 0.7 -- Adjust transparency
    frame.Parent = notification

    local textLabel = Instance.new("TextLabel")
    textLabel.Size = UDim2.new(1, -20, 1, -20)
    textLabel.Position = UDim2.new(0, 10, 0, 10)
    textLabel.Text = title .. "\n" .. content
    textLabel.TextScaled = true
    textLabel.TextWrapped = true
    textLabel.TextColor3 = Color3.new(1, 1, 1)
    textLabel.Font = Enum.Font.SourceSansBold
    textLabel.Parent = frame

    notification.Parent = playerGui

    wait(2) -- Wait for 2 seconds before animation

    local tweenInfo = TweenInfo.new(2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
    local goal = {}
    goal.Position = UDim2.new(1, -210, 1, 100)

    local tween = TweenService:Create(frame, tweenInfo, goal)
    tween:Play()

    -- Play a notification sound (replace with your sound ID)
    local sound = Instance.new("Sound")
    sound.SoundId = "rbxassetid://987654321"
    sound.Parent = frame
    sound:Play()

    tween.Completed:Connect(function()
        notification:Destroy()
    end)
end

notify("Notification Title", "This is the content of the notification.")
