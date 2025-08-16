-- 创建主界面
local player = game.Players.LocalPlayer
local gui = Instance.new("ScreenGui")
gui.Name = "EntityTeleporterUI"
gui.ResetOnSpawn = false
gui.Parent = player:WaitForChild("PlayerGui")

-- 创建移动控制按钮（黑色圆角按钮）
local mainButton = Instance.new("TextButton")
mainButton.Name = "MainButton"
mainButton.Text = "异想体传送"
mainButton.Size = UDim2.new(0.25, 0, 0.1, 0)
mainButton.Position = UDim2.new(0.05, 0, 0.8, 0) -- 初始位置在左下角
mainButton.BackgroundColor3 = Color3.new(0, 0, 0)
mainButton.TextColor3 = Color3.new(1, 1, 1)
mainButton.TextScaled = true
mainButton.ZIndex = 10

-- 添加圆角效果
local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0.2, 0)
corner.Parent = mainButton

-- 创建可拖动功能
local dragging, dragInput, dragStart, startPos
mainButton.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.Touch then
        dragging = true
        dragStart = input.Position
        startPos = mainButton.Position
        
        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                dragging = false
            end
        end)
    end
end)

mainButton.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.Touch then
        dragInput = input
    end
end)

game:GetService("UserInputService").InputChanged:Connect(function(input)
    if input == dragInput and dragging then
        local delta = input.Position - dragStart
        mainButton.Position = UDim2.new(
            startPos.X.Scale, 
            startPos.X.Offset + delta.X,
            startPos.Y.Scale,
            startPos.Y.Offset + delta.Y
        )
    end
end)

-- 创建传送界面（滚动框架）
local scrollFrame = Instance.new("Frame")
scrollFrame.Name = "TeleportScrollFrame"
scrollFrame.Size = UDim2.new(0.8, 0, 0.6, 0)
scrollFrame.Position = UDim2.new(0.1, 0, 0.2, 0)
scrollFrame.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
scrollFrame.Visible = false
scrollFrame.ZIndex = 5

-- 添加圆角效果
local scrollCorner = Instance.new("UICorner")
scrollCorner.CornerRadius = UDim.new(0.05, 0)
scrollCorner.Parent = scrollFrame

-- 创建滚动视图
local scrollingFrame = Instance.new("ScrollingFrame")
scrollingFrame.Name = "EntityScroller"
scrollingFrame.Size = UDim2.new(0.95, 0, 0.95, 0)
scrollingFrame.Position = UDim2.new(0.025, 0, 0.025, 0)
scrollingFrame.BackgroundTransparency = 1
scrollingFrame.ScrollBarThickness = 10
scrollingFrame.AutomaticCanvasSize = Enum.AutomaticSize.Y
scrollingFrame.ZIndex = 5

-- 创建UI列表布局
local listLayout = Instance.new("UIListLayout")
listLayout.Padding = UDim.new(0.02, 0)
listLayout.Parent = scrollingFrame

-- 创建模板按钮（用于生成每个异想体条目）
local templateButton = Instance.new("TextButton")
templateButton.Name = "EntityTemplate"
templateButton.Size = UDim2.new(1, 0, 0, 60)
templateButton.BackgroundColor3 = Color3.new(0.3, 0.3, 0.3)
templateButton.Text = ""
templateButton.Visible = false
templateButton.ZIndex = 6

-- 添加模板圆角
local templateCorner = Instance.new("UICorner")
templateCorner.CornerRadius = UDim.new(0.1, 0)
templateCorner.Parent = templateButton

-- 创建模板元素
local nameLabel = Instance.new("TextLabel")
nameLabel.Name = "EntityName"
nameLabel.Size = UDim2.new(0.6, 0, 0.8, 0)
nameLabel.Position = UDim2.new(0.05, 0, 0.1, 0)
nameLabel.BackgroundTransparency = 1
nameLabel.TextColor3 = Color3.new(1, 1, 1)
nameLabel.TextScaled = true
nameLabel.TextXAlignment = Enum.TextXAlignment.Left
nameLabel.ZIndex = 7
nameLabel.Parent = templateButton

local teleportButton = Instance.new("TextButton")
teleportButton.Name = "TeleportButton"
teleportButton.Size = UDim2.new(0.3, 0, 0.7, 0)
teleportButton.Position = UDim2.new(0.65, 0, 0.15, 0)
teleportButton.Text = "传送"
teleportButton.BackgroundColor3 = Color3.new(0, 0.5, 0)
teleportButton.TextColor3 = Color3.new(1, 1, 1)
teleportButton.ZIndex = 7
teleportButton.Parent = templateButton

-- 添加按钮圆角
local teleportCorner = Instance.new("UICorner")
teleportCorner.CornerRadius = UDim.new(0.2, 0)
teleportCorner.Parent = teleportButton

-- 组装UI结构
templateButton.Parent = gui
scrollingFrame.Parent = scrollFrame
scrollFrame.Parent = gui
mainButton.Parent = gui

-- 刷新异想体列表的函数
local function refreshEntityList()
    -- 清除现有条目（保留模板）
    for _, child in ipairs(scrollingFrame:GetChildren()) do
        if child:IsA("TextButton") and child.Name ~= "EntityTemplate" then
            child:Destroy()
        end
    end
    
    -- 获取所有异想体（排除Clerk）
    local validEntities = {}
    for _, model in ipairs(workspace.Units:GetChildren()) do
        if model:IsA("Model") and model.Name ~= "Clerk" then
            table.insert(validEntities, model)
        end
    end
    
    -- 创建新条目
    for _, entity in ipairs(validEntities) do
        local newEntry = templateButton:Clone()
        newEntry.Name = "Entry_" .. entity.Name
        newEntry.Visible = true
        newEntry.LayoutOrder = #validEntities - _
        
        local nameDisplay = newEntry:FindFirstChild("EntityName")
        if nameDisplay then
            nameDisplay.Text = entity.Name
        end
        
        local teleBtn = newEntry:FindFirstChild("TeleportButton")
        if teleBtn then
            teleBtn.MouseButton1Click:Connect(function()
                -- 传送玩家到异想体位置
                local humanoid = player.Character and player.Character:FindFirstChild("Humanoid")
                local rootPart = player.Character and player.Character:FindFirstChild("HumanoidRootPart")
                
                if humanoid and rootPart then
                    -- 寻找异想体的主位置
                    local targetPosition
                    local humanoidPart = entity:FindFirstChild("HumanoidRootPart") or entity:FindFirstChild("Head")
                    
                    if humanoidPart then
                        targetPosition = humanoidPart.Position
                    else
                        -- 尝试获取模型中心
                        local cf, size = entity:GetBoundingBox()
                        if cf then
                            targetPosition = cf.Position
                        else
                            targetPosition = entity:GetPivot().Position
                        end
                    end
                    
                    -- 在目标位置上方传送
                    humanoid:ChangeState(Enum.HumanoidStateType.GettingUp)
                    rootPart.CFrame = CFrame.new(targetPosition + Vector3.new(0, 5, 0))
                end
            end)
        end
        
        newEntry.Parent = scrollingFrame
    end
end

-- 自动刷新循环
task.spawn(function()
    while true do
        if scrollFrame.Visible then
            refreshEntityList()
        end
        task.wait(5) -- 每5秒刷新一次
    end
end)

-- 主按钮点击事件
local isOpen = false
mainButton.MouseButton1Click:Connect(function()
    isOpen = not isOpen
    scrollFrame.Visible = isOpen
    
    if isOpen then
        refreshEntityList()
    end
end)

-- 点击界面外部关闭
local function onInputBegan(input)
    if input.UserInputType == Enum.UserInputType.Touch and isOpen then
        local touchPos = input.Position
        local framePos = scrollFrame.AbsolutePosition
        local frameSize = scrollFrame.AbsoluteSize
        
        -- 检查是否点击在界面外部
        if touchPos.X < framePos.X or touchPos.X > framePos.X + frameSize.X or
           touchPos.Y < framePos.Y or touchPos.Y > framePos.Y + frameSize.Y then
            isOpen = false
            scrollFrame.Visible = false
        end
    end
end

game:GetService("UserInputService").InputBegan:Connect(onInputBegan)