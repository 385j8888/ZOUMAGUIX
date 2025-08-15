local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")

-- 创建UI
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "PersistentButtonGUI"
screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

local button = Instance.new("TextButton")
button.Name = "PersistentButton"
button.Size = UDim2.new(0, 120, 0, 40) -- 适当大小
button.Position = UDim2.new(0.5, -60, 0.8, -20) -- 底部居中
button.BackgroundColor3 = Color3.new(0, 0, 0) -- 黑色背景
button.TextColor3 = Color3.new(1, 1, 1) -- 白色文字
button.Text = "透视异想体"
button.TextSize = 14
button.Font = Enum.Font.SourceSansBold
button.ZIndex = 10
button.Transparency = 0.5
button.Parent = screenGui

-- 添加圆角
local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0.3, 0)
corner.Parent = button

-- 按钮拖动功能
local isDragging = false
local dragStartPos
local buttonStartPos

button.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.Touch then
        isDragging = true
        dragStartPos = input.Position
        buttonStartPos = button.Position
    end
end)

button.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.Touch and isDragging then
        local delta = input.Position - dragStartPos
        button.Position = UDim2.new(
            buttonStartPos.X.Scale,
            buttonStartPos.X.Offset + delta.X,
            buttonStartPos.Y.Scale,
            buttonStartPos.Y.Offset + delta.Y
        )
    end
end)

button.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.Touch then
        isDragging = false
    end
end)

-- 透视功能
local isActive = false
local billboards = {} -- 存储创建的悬浮文字

local function createBillboard(model)
    if not model:FindFirstChild("PersistentBillboard") then
        local billboard = Instance.new("BillboardGui")
        billboard.Name = "PersistentBillboard"
        billboard.Adornee = model
        billboard.Size = UDim2.new(0, 100, 0, 40)
        billboard.StudsOffset = Vector3.new(0, 3, 0)
        billboard.AlwaysOnTop = true
        billboard.Enabled = true
        billboard.LightInfluence = 0
        billboard.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
        billboard.Parent = model
        
        local textLabel = Instance.new("TextLabel")
        textLabel.Size = UDim2.new(1, 0, 1, 0)
        textLabel.BackgroundTransparency = 1
        textLabel.Text = model.Name
        textLabel.TextColor3 = Color3.new(1, 1, 1)
        textLabel.TextStrokeTransparency = 0.5
        textLabel.TextStrokeColor3 = Color3.new(0, 0, 0)
        textLabel.Font = Enum.Font.SourceSansBold
        textLabel.TextSize = 18
        textLabel.Parent = billboard
        
        table.insert(billboards, billboard)
    end
end

local function removeAllBillboards()
    for _, billboard in ipairs(billboards) do
        if billboard and billboard.Parent then
            billboard:Destroy()
        end
    end
    billboards = {}
end

local function updateBillboards()
    local unitsFolder = workspace:FindFirstChild("Units")
    if not unitsFolder then return end
    
    local player = Players.LocalPlayer
    local playerCharacter = player and player.Character
    
    for _, model in ipairs(unitsFolder:GetChildren()) do
        if model:IsA("Model") then
            -- 排除名为"Clerk"的Model和玩家Model
            if model.Name ~= "Clerk" and model ~= playerCharacter then
                createBillboard(model)
            end
        end
    end
end

-- 按钮点击事件
button.MouseButton1Click:Connect(function()
    isActive = not isActive
    
    if isActive then
        button.Text = "关闭透视"
        -- 初始添加一次
        updateBillboards()
        -- 持续检测
        while isActive and task.wait(1) do
            updateBillboards()
        end
    else
        button.Text = "透视异想体"
        removeAllBillboards()
    end
end)

-- 清理残留悬浮文字
game:GetService("Players").LocalPlayer.CharacterAdded:Connect(function()
    if not isActive then
        removeAllBillboards()
    end
end)