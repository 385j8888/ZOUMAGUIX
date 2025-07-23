local player = game.Players.LocalPlayer
local gui = Instance.new("ScreenGui")
gui.Name = "ButtonGui"
gui.Parent = player:WaitForChild("PlayerGui")

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 200, 0, 150)
frame.Position = UDim2.new(0.5, -100, 0.5, -75)  -- 居中
frame.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
frame.Parent = gui

local button1 = Instance.new("TextButton")
button1.Size = UDim2.new(0.8, 0, 0.3, 0)
button1.Position = UDim2.new(0.1, 0, 0.1, 0)
button1.Text = "走马观花X通用"
button1.BackgroundColor3 = Color3.fromRGB(70, 130, 180)
button1.Parent = frame

local button2 = Instance.new("TextButton")
button2.Size = UDim2.new(0.8, 0, 0.3, 0)
button2.Position = UDim2.new(0.1, 0, 0.6, 0)
button2.Text = "加载器"
button2.BackgroundColor3 = Color3.fromRGB(60, 179, 113)
button2.Parent = frame
    
button1.MouseButton1Click:Connect(function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/385j8888/ZOUMAGUIX/refs/heads/main/%E8%B5%B0%E9%A9%AC%E8%A7%82%E8%8A%B1X%E9%80%9A%E7%94%A8.lua"))()
    gui.Enabled = false  -- 隐藏整个界面
end)

button2.MouseButton1Click:Connect(function()
    loadstring(game:HttpGet("https://pastebin.com/raw/VgaEhPNa"))()
    gui.Enabled = false
end)

local label = Instance.new("TextLabel")
label.Text = "你想要？"
label.Size = UDim2.new(1, 0, 0.2, 0)
label.Position = UDim2.new(0, 0, -0.2, 0)
label.BackgroundTransparency = 1
label.TextColor3 = Color3.new(1, 1, 1)
label.Font = Enum.Font.SourceSansBold
label.TextSize = 20
label.Parent = frame