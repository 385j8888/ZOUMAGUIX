local Players = game:GetService("Players")
local CoreGui = game:GetService("CoreGui")

-- 创建主界面容器
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "DragButtonUI"
screenGui.Parent = CoreGui
screenGui.ResetOnSpawn = false
screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

-- 创建可拖动按钮
local dragButton = Instance.new("TextButton")
dragButton.Name = "ControlButton"
dragButton.Size = UDim2.new(0, 60, 0, 60)
dragButton.Position = UDim2.new(0.5, -40, 0.7, -40)
dragButton.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
dragButton.Text = "设置"
dragButton.TextSize = 20
dragButton.TextColor3 = Color3.white
dragButton.Parent = screenGui

-- 创建设置界面
local settingsFrame = Instance.new("Frame")
settingsFrame.Name = "Settings"
settingsFrame.Size = UDim2.new(0, 300, 0, 200)
settingsFrame.Position = UDim2.new(0.5, -150, 0.5, -100)
settingsFrame.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
settingsFrame.Visible = false
settingsFrame.Parent = screenGui

-- 添加标题
local title = Instance.new("TextLabel")
title.Text = "攻击速度设置"
title.Size = UDim2.new(1, 0, 0, 40)
title.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
title.TextColor3 = Color3.white
title.Parent = settingsFrame

-- 添加输入框
local inputBox = Instance.new("TextBox")
inputBox.Name = "SpeedInput"
inputBox.PlaceholderText = "请输入攻击速度"
inputBox.Size = UDim2.new(0.8, 0, 0, 40)
inputBox.Position = UDim2.new(0.1, 0, 0.3, 0)
inputBox.BackgroundColor3 = Color3.white
inputBox.TextColor3 = Color3.new(0, 0, 0)
inputBox.TextSize = 18
inputBox.Parent = settingsFrame

-- 添加确认按钮
local confirmButton = Instance.new("TextButton")
confirmButton.Name = "ConfirmButton"
confirmButton.Text = "应用设置"
confirmButton.Size = UDim2.new(0.6, 0, 0, 40)
confirmButton.Position = UDim2.new(0.2, 0, 0.7, 0)
confirmButton.BackgroundColor3 = Color3.fromRGB(0, 200, 0)
confirmButton.TextColor3 = Color3.white
confirmButton.Parent = settingsFrame

-- 按钮拖动功能 (移动端适配)
local dragging, dragInput, dragStart, startPos

local function updateInput(input)
    if input.UserInputType == Enum.UserInputType.Touch then
        local delta = input.Position - dragStart
        dragButton.Position = UDim2.new(
            startPos.X.Scale, 
            startPos.X.Offset + delta.X,
            startPos.Y.Scale,
            startPos.Y.Offset + delta.Y
        )
    end
end

dragButton.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.Touch then
        dragging = true
        dragStart = input.Position
        startPos = dragButton.Position
        
        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                dragging = false
            end
        end)
    end
end)

dragButton.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.Touch then
        dragInput = input
    end
end)

game:GetService("UserInputService").InputChanged:Connect(function(input)
    if input == dragInput and dragging then
        updateInput(input)
    end
end)

-- 切换设置界面显示/隐藏
dragButton.MouseButton1Click:Connect(function()
    settingsFrame.Visible = not settingsFrame.Visible
end)

-- 应用设置按钮功能
confirmButton.MouseButton1Click:Connect(function()
    local speedValue = tonumber(inputBox.Text)
    
    if speedValue then
        for _, descendant in pairs(workspace:GetDescendants()) do
            if descendant.Name == "AttackSpeed" and descendant:IsA("NumberValue") then
                descendant.Value = speedValue
            end
        end
        print("攻击速度已设置为:", speedValue)
    else
        print("请输入有效的数字")
    end
    
    -- 应用后自动关闭设置界面
    settingsFrame.Visible = false
end)