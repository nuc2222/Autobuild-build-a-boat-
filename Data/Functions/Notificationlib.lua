local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")

local player = Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

-- Function to create and display a notification
local function notify(message)
    local notification = Instance.new("ScreenGui")
    notification.Name = "Notification"
    notification.Parent = playerGui

    local frame = Instance.new("Frame")
    frame.Size = UDim2.new(0, 200, 0, 50)
    frame.Position = UDim2.new(1, -190, 1, -70)
    frame.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
    frame.BorderSizePixel = 0
    frame.Parent = notification

    local textLabel = Instance.new("TextLabel")
    textLabel.Size = UDim2.new(1, 0, 1, 0)
    textLabel.Text = message
    textLabel.TextScaled = true
    textLabel.TextColor3 = Color3.new(1, 1, 1)
    textLabel.Parent = frame

    notification.Parent = playerGui

    local tweenInfo = TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
    local goal = {}
    goal.Position = UDim2.new(1, -220, 1, -70)

    local tween = TweenService:Create(frame, tweenInfo, goal)
    tween:Play()

    wait(2) -- Adjust the wait time as needed

    tween:Destroy()
end
notify("Hello, this is a notification!")
