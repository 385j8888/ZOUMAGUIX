local Players = game:GetService("Players")
local player = Players.LocalPlayer
local RunService = game:GetService("RunService")

-- 创建UI
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "EntityViewerUI"
screenGui.ResetOnSpawn = false
screenGui.Parent = player:WaitForChild("PlayerGui")

-- 创建可拖动按钮
local button = Instance.new("TextButton")
button.Name = "EntityViewerButton"
button.Text = "透视异想体"
button.Size = UDim2.new(0, 120, 0, 40)
button.Position = UDim2.new(0.5, -60, 0.8, -20)
button.BackgroundColor3 = Color3.new(0, 0, 0)
button.TextColor3 = Color3.new(1, 1, 1)
button.Font = Enum.Font.SourceSansBold
button.TextSize = 18
button.AutoButtonColor = false
button.Parent = screenGui

-- 添加圆角
local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0.3, 0)
corner.Parent = button

-- 拖动功能
local dragging, dragInput, dragStart, startPos
button.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.Touch then
        dragging = true
        dragStart = input.Position
        startPos = button.Position
        
        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                dragging = false
            end
        end)
    end
end)

button.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.Touch then
        dragInput = input
    end
end)

game:GetService("UserInputService").InputChanged:Connect(function(input)
    if input == dragInput and dragging then
        local delta = input.Position - dragStart
        button.Position = UDim2.new(
            startPos.X.Scale, 
            startPos.X.Offset + delta.X,
            startPos.Y.Scale,
            startPos.Y.Offset + delta.Y
        )
    end
end)

-- 功能状态管理
local active = false
local billboards = {}  -- 存储创建的悬浮文字

-- 创建悬浮文字
local function createBillboard(model)
    if not model:FindFirstChild("EntityBillboard") then
        local billboard = Instance.new("BillboardGui")
        billboard.Name = "EntityBillboard"
        billboard.Adornee = model
        billboard.Size = UDim2.new(0, 200, 0, 50)
        billboard.StudsOffset = Vector3.new(0, 3, 0)
        billboard.AlwaysOnTop = true
        billboard.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
        billboard.Parent = model
        
        local textLabel = Instance.new("TextLabel")
        textLabel.Size = UDim2.new(1, 0, 1, 0)
        textLabel.BackgroundTransparency = 1
        textLabel.Text = model.Name
        textLabel.TextColor3 = Color3.new(1, 1, 1)
        textLabel.TextStrokeTransparency = 0.5
        textLabel.Font = Enum.Font.SourceSansBold
        textLabel.TextSize = 18
        textLabel.Parent = billboard
        
        table.insert(billboards, billboard)
    end
end

-- 清除所有悬浮文字
local function clearBillboards()
    for _, billboard in ipairs(billboards) do
        if billboard and billboard.Parent then
            billboard:Destroy()
        end
    end
    billboards = {}
end

-- 检查模型是否有效
local function isValidModel(model)
    return model:IsA("Model") and 
           model.Name ~= "Clerk" and 
           model ~= player.Character and 
           not Players:GetPlayerFromCharacter(model)
end

-- 主循环
local connection
button.MouseButton1Click:Connect(function()
    active = not active
    
    if active then
        button.BackgroundColor3 = Color3.fromRGB(50, 50, 50)  -- 激活状态颜色
        clearBillboards()  -- 清除旧悬浮文字
        
        -- 开始检测
        connection = RunService.Heartbeat:Connect(function()
            local units = workspace:FindFirstChild("Units")
            if units then
                for _, model in ipairs(units:GetChildren()) do
                    if isValidModel(model) then
                        createBillboard(model)
                    end
                end
            end
        end)
    else
        button.BackgroundColor3 = Color3.new(0, 0, 0)  -- 恢复原始颜色
        if connection then
            connection:Disconnect()
            connection = nil
        end
        clearBillboards()
    end
end)