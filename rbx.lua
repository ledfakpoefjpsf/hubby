
-- Nebula Hub - Keyless Loader Template
-- RightShift: Toggle GUI

local Players = game:GetService("Players")
local UIS = game:GetService("UserInputService")

local Player = Players.LocalPlayer
local PlayerGui = Player:WaitForChild("PlayerGui")

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "NebulaHub"
ScreenGui.ResetOnSpawn = false

local Main = Instance.new("Frame")
Main.Name = "Main"
Main.Size = UDim2.fromOffset(420, 280)
Main.Position = UDim2.new(0.5, -210, 0.5, -140)
Main.BackgroundColor3 = Color3.fromRGB(22, 24, 34)
Main.BorderSizePixel = 0
Main.Active = true
Main.Draggable = true
Main.Parent = ScreenGui

local Corner = Instance.new("UICorner")
Corner.CornerRadius = UDim.new(0, 12)
Corner.Parent = Main

local Title = Instance.new("TextLabel")
Title.Size = UDim2.new(1, -20, 0, 45)
Title.Position = UDim2.fromOffset(15, 5)
Title.BackgroundTransparency = 1
Title.Text = "NEBULA HUB"
Title.TextColor3 = Color3.fromRGB(120, 150, 255)
Title.Font = Enum.Font.GothamBold
Title.TextSize = 22
Title.TextXAlignment = Enum.TextXAlignment.Left
Title.Parent = Main

local Subtitle = Instance.new("TextLabel")
Subtitle.Size = UDim2.new(1, -30, 0, 25)
Subtitle.Position = UDim2.fromOffset(15, 48)
Subtitle.BackgroundTransparency = 1
Subtitle.Text = "Keyless Edition"
Subtitle.TextColor3 = Color3.fromRGB(170, 175, 190)
Subtitle.Font = Enum.Font.Gotham
Subtitle.TextSize = 12
Subtitle.TextXAlignment = Enum.TextXAlignment.Left
Subtitle.Parent = Main

local Status = Instance.new("TextLabel")
Status.Size = UDim2.new(1, -30, 0, 35)
Status.Position = UDim2.fromOffset(15, 95)
Status.BackgroundTransparency = 1
Status.Text = "Nebula Hub loaded successfully"
Status.TextColor3 = Color3.fromRGB(100, 220, 150)
Status.Font = Enum.Font.Gotham
Status.TextSize = 13
Status.TextXAlignment = Enum.TextXAlignment.Left
Status.Parent = Main

ScreenGui.Parent = PlayerGui

UIS.InputBegan:Connect(function(input, processed)
    if processed then return end

    if input.KeyCode == Enum.KeyCode.RightShift then
        Main.Visible = not Main.Visible
    end
end)

print("[Nebula Hub] Loaded - RightShift toggles GUI")
