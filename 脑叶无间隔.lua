local Player = game.Players.LocalPlayer
local PlayerGui = Player:WaitForChild("PlayerGui")

-- 创建屏幕GUI
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "AttackButtonGui"
screenGui.ResetOnSpawn = false
screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
screenGui.Parent = PlayerGui

-- 创建可拖动按钮
local button = Instance.new("TextButton")
button.Name = "AttackButton"
button.Size = UDim2.new(0, 120, 0, 50) -- 长方形按钮（宽度120，高度50）
button.Position = UDim2.new(0.5, -60, 0.8, -25) -- 初始位置在屏幕底部中央
button.AnchorPoint = Vector2.new(0.5, 0.5) -- 中心锚点
button.BackgroundColor3 = Color3.fromRGB(0, 102, 255) -- 蓝色背景
button.TextColor3 = Color3.new(1, 1, 1) -- 白色文字
button.Text = "开启无间隔攻击"
button.TextSize = 14
button.Font = Enum.Font.SourceSansBold
button.BorderSizePixel = 0
button.AutoButtonColor = false

-- 添加圆角效果
local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0.2, 0)
corner.Parent = button

button.Parent = screenGui

-- 拖动功能变量
local isDragging = false
local dragStartPos
local buttonStartPos

-- 触摸开始事件
button.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.Touch then
        isDragging = true
        dragStartPos = input.Position
        buttonStartPos = button.Position
    end
end)

-- 触摸移动事件
button.InputChanged:Connect(function(input)
    if isDragging and input.UserInputType == Enum.UserInputType.Touch then
        local delta = input.Position - dragStartPos
        button.Position = UDim2.new(
            buttonStartPos.X.Scale,
            buttonStartPos.X.Offset + delta.X,
            buttonStartPos.Y.Scale,
            buttonStartPos.Y.Offset + delta.Y
        )
    end
end)

-- 触摸结束事件
button.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.Touch then
        isDragging = false
    end
end)

-- 点击事件处理
local function activateAttack()
    for _, descendant in pairs(workspace:GetDescendants()) do
        if descendant.Name == "AttackSpeed" and descendant:IsA("ValueBase") then
            descendant.Value = 6
        end
    end
end

button.MouseButton1Click:Connect(activateAttack)