local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")

local player = Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

-- Function to create and display a stylish notification
local function notify(message)
    local notification = Instance.new("ScreenGui")
    notification.Name = "Notification"
    notification.Parent = playerGui
    notification.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

    local frame = Instance.new("Frame")
    frame.Size = UDim2.new(0, 300, 0, 80)
    frame.Position = UDim2.new(1, -320, 0.5, -40) -- Right corner, horizontally centered
    frame.AnchorPoint = Vector2.new(1, 0.5)
    frame.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
    frame.BorderSizePixel = 0
    frame.BackgroundTransparency = 0.7 -- Adjust transparency
    frame.Parent = notification

    local textLabel = Instance.new("TextLabel")
    textLabel.Size = UDim2.new(1, 0, 1, 0)
    textLabel.Text = message
    textLabel.TextScaled = true
    textLabel.TextColor3 = Color3.new(1, 1, 1)
    textLabel.Font = Enum.Font.SourceSansBold
    textLabel.Parent = frame

    local tweenInfo = TweenInfo.new(2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
    local goal = {}
    goal.Position = UDim2.new(1, -320, 1, -80)

    local tween = TweenService:Create(frame, tweenInfo, goal)
    tween:Play()

    wait(5) -- Adjust the wait time as needed

    notification:Destroy()
end

notify("Hello, this is a stylish notification!")
