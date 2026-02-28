-- 创建主UI
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Parent = game:GetService("CoreGui")

local mainFrame = Instance.new("Frame")
mainFrame.Size = UDim2.new(0, 320, 0, 360)
mainFrame.Position = UDim2.new(0.5, -160, 0.5, -180)
mainFrame.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
mainFrame.BorderSizePixel = 0
mainFrame.Active = true
mainFrame.Draggable = true
mainFrame.Parent = ScreenGui

-- 标题栏
local titleBar = Instance.new("Frame")
titleBar.Size = UDim2.new(1, 0, 0, 30)
titleBar.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
titleBar.Parent = mainFrame

local title = Instance.new("TextLabel")
title.Text = "走马观花X通用自瞄"
title.Size = UDim2.new(0.7, 0, 1, 0)
title.TextColor3 = Color3.new(1, 1, 1)
title.BackgroundTransparency = 1
title.Font = Enum.Font.SourceSansBold
title.Parent = titleBar

-- 最小化按钮
local minimizeBtn = Instance.new("TextButton")
minimizeBtn.Text = "_"
minimizeBtn.Size = UDim2.new(0, 30, 1, 0)
minimizeBtn.Position = UDim2.new(1, -60, 0, 0)
minimizeBtn.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
minimizeBtn.TextColor3 = Color3.new(1, 1, 1)
minimizeBtn.Parent = titleBar

-- 关闭按钮
local closeBtn = Instance.new("TextButton")
closeBtn.Text = "X"
closeBtn.Size = UDim2.new(0, 30, 1, 0)
closeBtn.Position = UDim2.new(1, -30, 0, 0)
closeBtn.BackgroundColor3 = Color3.fromRGB(180, 60, 60)
closeBtn.TextColor3 = Color3.new(1, 1, 1)
closeBtn.Parent = titleBar

-- 内容区域
local contentFrame = Instance.new("Frame")
contentFrame.Size = UDim2.new(1, -10, 1, -40)
contentFrame.Position = UDim2.new(0, 5, 0, 35)
contentFrame.BackgroundTransparency = 1
contentFrame.Parent = mainFrame

-- 自瞄开关
local aimToggle = Instance.new("TextButton")
aimToggle.Text = "开启自瞄"
aimToggle.Size = UDim2.new(1, 0, 0, 30)
aimToggle.TextColor3 = Color3.new(0, 1, 0)
aimToggle.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
aimToggle.Parent = contentFrame

-- 范围输入框
local rangeLabel = Instance.new("TextLabel")
rangeLabel.Text = "自瞄范围:"
rangeLabel.Size = UDim2.new(0.4, 0, 0, 25)
rangeLabel.Position = UDim2.new(0, 0, 0, 40)
rangeLabel.BackgroundTransparency = 1
rangeLabel.TextColor3 = Color3.new(1, 1, 1)
rangeLabel.Parent = contentFrame

local rangeInput = Instance.new("TextBox")
rangeInput.PlaceholderText = "输入范围"
rangeInput.Size = UDim2.new(0.6, 0, 0, 25)
rangeInput.Position = UDim2.new(0.4, 0, 0, 40)
rangeInput.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
rangeInput.TextColor3 = Color3.new(1, 1, 1)
rangeInput.Text = "50"
rangeInput.Parent = contentFrame

-- 队伍判定开关
local teamToggle = Instance.new("TextButton")
teamToggle.Text = "队伍判定: 关闭"
teamToggle.Size = UDim2.new(1, 0, 0, 30)
teamToggle.Position = UDim2.new(0, 0, 0, 75)
teamToggle.TextColor3 = Color3.new(1, 0, 0)
teamToggle.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
teamToggle.Parent = contentFrame

-- 掩体判定开关
local coverToggle = Instance.new("TextButton")
coverToggle.Text = "掩体判定: 关闭"
coverToggle.Size = UDim2.new(1, 0, 0, 30)
coverToggle.Position = UDim2.new(0, 0, 0, 110)
coverToggle.TextColor3 = Color3.new(1, 0, 0)
coverToggle.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
coverToggle.Parent = contentFrame

-- 瞄准部位选择
local partLabel = Instance.new("TextLabel")
partLabel.Text = "瞄准部位:"
partLabel.Size = UDim2.new(0.4, 0, 0, 25)
partLabel.Position = UDim2.new(0, 0, 0, 145)
partLabel.BackgroundTransparency = 1
partLabel.TextColor3 = Color3.new(1, 1, 1)
partLabel.Parent = contentFrame

local partSelect = Instance.new("TextButton")
partSelect.Text = "头部"
partSelect.Size = UDim2.new(0.6, 0, 0, 25)
partSelect.Position = UDim2.new(0.4, 0, 0, 145)
partSelect.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
partSelect.TextColor3 = Color3.new(1, 1, 1)
partSelect.Parent = contentFrame

-- NPC瞄准开关
local npcToggle = Instance.new("TextButton")
npcToggle.Text = "只瞄准NPC: 关闭"
npcToggle.Size = UDim2.new(1, 0, 0, 30)
npcToggle.Position = UDim2.new(0, 0, 0, 180)
npcToggle.TextColor3 = Color3.new(1, 0, 0)
npcToggle.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
npcToggle.Parent = contentFrame

-- 状态变量
local aimEnabled = false
local teamCheck = false
local coverCheck = false
local npcOnly = false
local aimPart = "Head" -- 默认瞄准头部
local currentRange = 50

-- 绘制瞄准圈
local circle = Drawing.new("Circle")
circle.Visible = false
circle.Thickness = 2
circle.Color = Color3.new(1, 0, 0)
circle.Transparency = 1
circle.Position = Vector2.new(workspace.CurrentCamera.ViewportSize.X/2, workspace.CurrentCamera.ViewportSize.Y/2)

-- 按钮功能
aimToggle.MouseButton1Click:Connect(function()
    aimEnabled = not aimEnabled
    circle.Visible = aimEnabled
    
    if aimEnabled then
        aimToggle.Text = "关闭自瞄"
        aimToggle.TextColor3 = Color3.new(1, 0, 0)
    else
        aimToggle.Text = "开启自瞄"
        aimToggle.TextColor3 = Color3.new(0, 1, 0)
    end
end)

teamToggle.MouseButton1Click:Connect(function()
    teamCheck = not teamCheck
    if teamCheck then
        teamToggle.Text = "队伍判定: 开启"
        teamToggle.TextColor3 = Color3.new(0, 1, 0)
    else
        teamToggle.Text = "队伍判定: 关闭"
        teamToggle.TextColor3 = Color3.new(1, 0, 0)
    end
end)

coverToggle.MouseButton1Click:Connect(function()
    coverCheck = not coverCheck
    if coverCheck then
        coverToggle.Text = "掩体判定: 开启"
        coverToggle.TextColor3 = Color3.new(0, 1, 0)
    else
        coverToggle.Text = "掩体判定: 关闭"
        coverToggle.TextColor3 = Color3.new(1, 0, 0)
    end
end)

partSelect.MouseButton1Click:Connect(function()
    if aimPart == "Head" then
        aimPart = "HumanoidRootPart"
        partSelect.Text = "躯干"
    else
        aimPart = "Head"
        partSelect.Text = "头部"
    end
end)

npcToggle.MouseButton1Click:Connect(function()
    npcOnly = not npcOnly
    if npcOnly then
        npcToggle.Text = "只瞄准NPC: 开启"
        npcToggle.TextColor3 = Color3.new(0, 1, 0)
    else
        npcToggle.Text = "只瞄准NPC: 关闭"
        npcToggle.TextColor3 = Color3.new(1, 0, 0)
    end
end)

rangeInput.FocusLost:Connect(function()
    local num = tonumber(rangeInput.Text)
    if num and num > 0 then
        currentRange = num
        circle.Radius = num
    else
        rangeInput.Text = tostring(currentRange)
    end
end)

-- 最小化功能
local minimized = false
local originalSize = mainFrame.Size
local originalPosition = mainFrame.Position

minimizeBtn.MouseButton1Click:Connect(function()
    minimized = not minimized
    if minimized then
        mainFrame.Size = UDim2.new(0, 320, 0, 30)
        contentFrame.Visible = false
    else
        mainFrame.Size = originalSize
        contentFrame.Visible = true
    end
end)

closeBtn.MouseButton1Click:Connect(function()
    ScreenGui:Destroy()
    circle:Remove()
end)

-- 初始化圆圈
circle.Radius = currentRange
circle.NumSides = 64
circle.Visible = aimEnabled

-- 自瞄逻辑
local function getClosestTarget()
    local localPlayer = game.Players.LocalPlayer
    local localChar = localPlayer.Character
    if not localChar then return nil end
    
    local localRoot = localChar:FindFirstChild("HumanoidRootPart")
    if not localRoot then return nil end
    
    local closestTarget = nil
    local shortestDistance = currentRange + 1
    
    -- 获取所有可能的实体（玩家或NPC）
    local targets = {}
    
    if npcOnly then
        -- 只获取NPC
        for _, npc in ipairs(workspace:GetDescendants()) do
            if npc:IsA("Model") and npc ~= localChar then
                local humanoid = npc:FindFirstChild("Humanoid")
                local rootPart = npc:FindFirstChild("HumanoidRootPart")
                
                if humanoid and humanoid.Health > 0 and rootPart then
                    -- 确保不是玩家角色
                    if not game.Players:GetPlayerFromCharacter(npc) then
                        table.insert(targets, {
                            character = npc,
                            rootPart = rootPart,
                            isPlayer = false
                        })
                    end
                end
            end
        end
    else
        -- 获取玩家
        for _, player in ipairs(game.Players:GetPlayers()) do
            if player ~= localPlayer and player.Character then
                local char = player.Character
                local humanoid = char:FindFirstChild("Humanoid")
                local rootPart = char:FindFirstChild("HumanoidRootPart")
                
                if humanoid and humanoid.Health > 0 and rootPart then
                    table.insert(targets, {
                        character = char,
                        rootPart = rootPart,
                        isPlayer = true,
                        player = player
                    })
                end
            end
        end
    end
    
    -- 寻找最近目标
    for _, target in ipairs(targets) do
        local char = target.character
        local rootPart = target.rootPart
        
        -- 距离检查
        local distance = (rootPart.Position - localRoot.Position).Magnitude
        if distance > currentRange then
            continue
        end
        
        -- 队伍检查（仅对玩家）
        if teamCheck and target.isPlayer and target.player.Team == localPlayer.Team then
            continue
        end
        
        -- 掩体检查
        if coverCheck then
            local ray = Ray.new(localRoot.Position, (rootPart.Position - localRoot.Position).Unit * distance)
            local hit, pos = workspace:FindPartOnRay(ray, localChar)
            if hit and not hit:IsDescendantOf(char) then
                continue
            end
        end
        
        -- 检查是否在圆圈内
        local screenPos, onScreen = workspace.CurrentCamera:WorldToViewportPoint(rootPart.Position)
        if not onScreen then continue end
        
        local center = Vector2.new(workspace.CurrentCamera.ViewportSize.X/2, workspace.CurrentCamera.ViewportSize.Y/2)
        local screenPoint = Vector2.new(screenPos.X, screenPos.Y)
        local distanceToCenter = (screenPoint - center).Magnitude
        
        if distanceToCenter <= currentRange and distance < shortestDistance then
            closestTarget = char
            shortestDistance = distance
        end
    end
    
    return closestTarget
end

game:GetService("RunService").RenderStepped:Connect(function()
    if not aimEnabled then return end
    
    local targetChar = getClosestTarget()
    if not targetChar then return end
    
    local targetPart = targetChar:FindFirstChild(aimPart)
    if not targetPart then
        -- 如果找不到指定部位，尝试使用躯干
        targetPart = targetChar:FindFirstChild("HumanoidRootPart") or targetChar:FindFirstChild("Head")
        if not targetPart then return end
    end
    
    -- 锁定目标
    workspace.CurrentCamera.CFrame = CFrame.new(workspace.CurrentCamera.CFrame.Position, targetPart.Position)
end)
