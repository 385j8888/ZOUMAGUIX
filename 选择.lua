local Players = game:GetService("Players")
local player = Players.LocalPlayer
local gui = Instance.new("ScreenGui")
gui.Name = "CustomUI"
gui.ResetOnSpawn = false
gui.Parent = player:WaitForChild("PlayerGui")

local mainFrame = Instance.new("Frame")
mainFrame.Name = "MainFrame"
mainFrame.Size = UDim2.new(0, 300, 0, 200)
mainFrame.Position = UDim2.new(0.5, -150, 0.5, -100)  -- 居中
mainFrame.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
mainFrame.Active = true
mainFrame.Draggable = true
mainFrame.Parent = gui

local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 12)
corner.Parent = mainFrame

local titleBar = Instance.new("Frame")
titleBar.Name = "TitleBar"
titleBar.Size = UDim2.new(1, 0, 0, 30)
titleBar.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
titleBar.Parent = mainFrame

local titleCorner = Instance.new("UICorner")
titleCorner.CornerRadius = UDim.new(0, 12)
titleCorner.Parent = titleBar

local closeButton = Instance.new("TextButton")
closeButton.Name = "CloseButton"
closeButton.Size = UDim2.new(0, 25, 0, 25)
closeButton.Position = UDim2.new(1, -30, 0.5, -12)
closeButton.BackgroundColor3 = Color3.fromRGB(220, 60, 60)
closeButton.Text = "X"
closeButton.Font = Enum.Font.SourceSansBold
closeButton.TextSize = 18
closeButton.Parent = titleBar

local closeCorner = Instance.new("UICorner")
closeCorner.CornerRadius = UDim.new(0, 12)
closeCorner.Parent = closeButton

local buttonContainer = Instance.new("Frame")
buttonContainer.Name = "ButtonContainer"
buttonContainer.Size = UDim2.new(1, -40, 0, 100)
buttonContainer.Position = UDim2.new(0, 20, 0.5, -50)
buttonContainer.BackgroundTransparency = 1
buttonContainer.Parent = mainFrame

local button1 = Instance.new("TextButton")
button1.Name = "Button1"
button1.Size = UDim2.new(0.8, 0, 0, 40)
button1.Position = UDim2.new(0.1, 0, 0, 10)
button1.BackgroundColor3 = Color3.fromRGB(65, 105, 225)
button1.Text = "走马观花X通用"
button1.Font = Enum.Font.SourceSans
button1.TextSize = 18
button1.Parent = buttonContainer

local button2 = Instance.new("TextButton")
button2.Name = "Button2"
button2.Size = UDim2.new(0.8, 0, 0, 40)
button2.Position = UDim2.new(0.1, 0, 1, -50)
button2.BackgroundColor3 = Color3.fromRGB(50, 205, 50)
button2.Text = "按服务器分配"
button2.Font = Enum.Font.SourceSans
button2.TextSize = 18
button2.Parent = buttonContainer

local buttonCorner = Instance.new("UICorner")
buttonCorner.CornerRadius = UDim.new(0, 8)
buttonCorner.Parent = button1
buttonCorner:Clone().Parent = button2

closeButton.MouseButton1Click:Connect(function()
    gui:Destroy()
end)

button1.MouseButton1Click:Connect(function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/385j8888/ZOUMAGUIX/refs/heads/main/%E8%B5%B0%E9%A9%AC%E8%A7%82%E8%8A%B1X%E9%80%9A%E7%94%A8.lua"))()
end)

button2.MouseButton1Click:Connect(function()
    loadstring(game:HttpGet("https://pastebin.com/raw/VgaEhPNa"))()
end)

-- 标题栏拖动功能
local dragging
local dragInput
local dragStart
local startPos

local function update(input)
    local delta = input.Position - dragStart
    mainFrame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
end

titleBar.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        dragging = true
        dragStart = input.Position
        startPos = mainFrame.Position
        
        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                dragging = false
            end
        end)
    end
end)

titleBar.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement then
        dragInput = input
    end
end)

game:GetService("UserInputService").InputChanged:Connect(function(input)
    if input == dragInput and dragging then
        update(input)
    end
end)