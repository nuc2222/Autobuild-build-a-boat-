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
    frame.Size = UDim2.new(0, 400, 0, 120)
    frame.Position = UDim2.new(1, -420, 0.5, -60) -- Right corner, horizontally centered
    frame.AnchorPoint = Vector2.new(1, 0.5)
    frame.BackgroundColor3 = Color3.new(0, 0, 0)
    frame.BorderSizePixel = 0
    frame.BackgroundTransparency = 0.7 -- Adjust transparency
    frame.Parent = notification

    local titleImage = Instance.new("ImageLabel")
    titleImage.Size = UDim2.new(0, 40, 0, 40)
    titleImage.Position = UDim2.new(0, 10, 0, 10)
    titleImage.Image = "rbxassetid://123456789" -- Replace with your image ID
    titleImage.Parent = frame

    local textLabel = Instance.new("TextLabel")
    textLabel.Size = UDim2.new(1, -60, 1, -20)
    textLabel.Position = UDim2.new(0, 60, 0, 10)
    textLabel.Text = content
    textLabel.TextScaled = true
    textLabel.TextWrapped = true
    textLabel.TextColor3 = Color3.new(1, 1, 1)
    textLabel.Font = Enum.Font.SourceSansBold
    textLabel.Parent = frame

    notification.Parent = playerGui

    local tweenInfo = TweenInfo.new(2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
    local goal = {}
    goal.Position = UDim2.new(1, -420, 1, -120)

    local tween = TweenService:Create(frame, tweenInfo, goal)
    tween:Play()

    -- Play a notification sound (replace with your sound ID)
    local sound = Instance.new("Sound")
    sound.SoundId = "rbxassetid://987654321"
    sound.Parent = frame
    sound:Play()

    wait(5) -- Adjust the wait time as needed

    notification:Destroy()
end

notify("Notification Title", "This is the content of the notification.")
