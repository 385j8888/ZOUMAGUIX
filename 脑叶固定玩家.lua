local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")

local player = Players.LocalPlayer
local isAnchored = false  -- 跟踪固定状态

-- 创建GUI
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "AnchorButtonGUI"
screenGui.ResetOnSpawn = false
screenGui.Parent = player.PlayerGui

-- 创建主按钮
local button = Instance.new("TextButton")
button.Name = "AnchorButton"
button.Size = UDim2.new(0, 140, 0, 40)
button.Position = UDim2.new(0.8, 0, 0.7, 0)  -- 初始位置
button.BackgroundColor3 = Color3.new(0, 0, 0)
button.TextColor3 = Color3.new(1, 1, 1)
button.Text = "固定玩家(防魅惑)"
button.TextSize = 14
button.ZIndex = 10
button.Transparency = 0.5
button.Parent = screenGui

-- 添加圆角
local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0.3, 0)
corner.Parent = button

-- 添加发光边框
local stroke = Instance.new("UIStroke")
stroke.Color = Color3.new(1, 1, 1)
stroke.Thickness = 2
stroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
stroke.Transparency = 0.3
stroke.Parent = button

-- 创建发光效果
local glow = Instance.new("Frame")
glow.Size = UDim2.new(1.1, 0, 1.1, 0)
glow.Position = UDim2.new(-0.05, 0, -0.05, 0)
glow.BackgroundTransparency = 1
glow.Parent = button

local glowStroke = Instance.new("UIStroke")
glowStroke.Color = Color3.new(1, 1, 1)
glowStroke.Thickness = 4
glowStroke.Transparency = 0.7
glowStroke.Parent = glow

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

UserInputService.InputChanged:Connect(function(input)
    if dragging and input == dragInput then
        local delta = input.Position - dragStart
        button.Position = UDim2.new(
            startPos.X.Scale, 
            startPos.X.Offset + delta.X,
            startPos.Y.Scale,
            startPos.Y.Offset + delta.Y
        )
    end
end)

-- 固定玩家功能
local function toggleAnchor()
    local character = player.Character
    if not character then return end
    
    local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
    if not humanoidRootPart then return end
    
    isAnchored = not isAnchored
    
    if isAnchored then
        humanoidRootPart.Anchored = true
        button.Text = "解除固定(防魅惑)"
        stroke.Color = Color3.new(0, 1, 0)  -- 绿色边框表示激活
        glowStroke.Color = Color3.new(0, 1, 0)
    else
        humanoidRootPart.Anchored = false
        button.Text = "固定玩家(防魅惑)"
        stroke.Color = Color3.new(1, 1, 1)  -- 恢复白色边框
        glowStroke.Color = Color3.new(1, 1, 1)
    end
end

button.Activated:Connect(toggleAnchor)

-- 角色重生时重置状态
player.CharacterAdded:Connect(function()
    isAnchored = false
    button.Text = "固定玩家(防魅惑)"
    stroke.Color = Color3.new(1, 1, 1)
    glowStroke.Color = Color3.new(1, 1, 1)
end)