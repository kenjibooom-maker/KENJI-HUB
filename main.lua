
-- KENJI HUB v1.0.0

local Players = game:GetService("Players")
local player = Players.LocalPlayer

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "KENJI_HUB"
ScreenGui.ResetOnSpawn = false

local Main = Instance.new("Frame")
Main.Name = "Main"
Main.Size = UDim2.new(0, 300, 0, 230)
Main.Position = UDim2.new(0.5, -150, 0.5, -115)
Main.BackgroundColor3 = Color3.fromRGB(17, 17, 23)
Main.Parent = ScreenGui

local Corner = Instance.new("UICorner")
Corner.CornerRadius = UDim.new(0, 12)
Corner.Parent = Main

local Title = Instance.new("TextLabel")
Title.Size = UDim2.new(1, 0, 0, 50)
Title.BackgroundTransparency = 1
Title.Text = "KENJI HUB"
Title.TextColor3 = Color3.fromRGB(180, 100, 255)
Title.TextSize = 23
Title.Font = Enum.Font.GothamBold
Title.Parent = Main

local Info = Instance.new("TextLabel")
Info.Position = UDim2.new(0, 0, 0, 65)
Info.Size = UDim2.new(1, 0, 0, 30)
Info.BackgroundTransparency = 1
Info.Text = "Welcome, " .. player.Name
Info.TextColor3 = Color3.fromRGB(255, 255, 255)
Info.TextSize = 14
Info.Font = Enum.Font.Gotham
Info.Parent = Main

local Button = Instance.new("TextButton")
Button.Position = UDim2.new(0, 20, 0, 120)
Button.Size = UDim2.new(1, -40, 0, 40)
Button.BackgroundColor3 = Color3.fromRGB(100, 45, 160)
Button.Text = "HOME"
Button.TextColor3 = Color3.fromRGB(255, 255, 255)
Button.TextSize = 15
Button.Font = Enum.Font.GothamBold
Button.Parent = Main

local ButtonCorner = Instance.new("UICorner")
ButtonCorner.CornerRadius = UDim.new(0, 8)
ButtonCorner.Parent = Button
Button.MouseButton1Click:Connect(function()
    Info.Text = "Welcome to KENJI HUB!"
end)

ScreenGui.Parent = player:WaitForChild("PlayerGui")

