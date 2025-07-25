local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/385j8888/ZOUMAGUIX/refs/heads/main/ProtectUI.lua"))()
local skip = false
local bott = false
local gg = false
local jump = false
local jumpp = false
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local botsFolder = workspace:FindFirstChild("bots")
local lp = game.Players.LocalPlayer
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")
local Mouse = lp:GetMouse()
--local lp = gs("Players").LocalPlayer
local pos = lp.Character.HumanoidRootPart.CFrame + Vector3.new(0, 5, 0)
local ME = game.Players.LocalPlayer.Character.HumanoidRootPart
local Mouse = game:GetService('Players').LocalPlayer:GetMouse()
--local CurrentSlot = game.Players.LocalPlayer:WaitForChild("CurrentSaveSlot").Value
local ScriptLoadOrSave = false
--local CurrentlySavingOrLoading = game.Players.LocalPlayer:WaitForChild("CurrentlySavingOrLoading")
local mouse = game.Players.LocalPlayer:GetMouse()
local autoskip = false
local tp = function(p)
    lp.Character:PivotTo(p)
end
game:GetService("StarterGui"):SetCore("SendNotification", { 
	Title = "走马观花X";
	Text = "脚本永远免费";
	Icon = "rbxthumb://type=Asset&id=17366451283&w=150&h=150";
Button1 = "明白";
Duration = 15})
game:GetService("StarterGui"):SetCore("SendNotification", { 
	Title = "走马观花X";
	Text = "感谢支持走马观花X";
	Icon = "rbxthumb://type=Asset&id=17366451283&w=150&h=150";
Button1 = "明白";
Duration = 15})
local function getTargetModel()
    local botsFolder = workspace:FindFirstChild("bots")
    if not botsFolder then return nil end
    
    local model = botsFolder:FindFirstChildOfClass("Model")
    if not model then return nil end
    
    if not model.PrimaryPart then
        model:GetPropertyChangedSignal("PrimaryPart"):Wait()
    end
    return model
end
local function teleportPlayer(character, model)
    local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
    if not humanoidRootPart then return end

    local primaryPart = model.PrimaryPart
    local baseCFrame = primaryPart.CFrame
    
    -- 计算前方偏移（5个单位距离，2个单位高度补偿）
    local spawnPosition = baseCFrame.Position + 
        baseCFrame.LookVector * 5 + 
        Vector3.new(0, 2, 0)
    
    -- 创建面向模型的新坐标系
    local spawnCFrame = CFrame.new(spawnPosition, baseCFrame.Position)
    
    humanoidRootPart.CFrame = spawnCFrame
end

local window = library:new("走马观花X-nico's nextbots")

local creds = window:Tab("基本信息")

local bin = creds:section("信息",true)

    bin:Label("你的注入器:"..identifyexecutor())
    bin:Label("作者:小爱同学")
    bin:Label("走马观花X交流群:530634599")

local credits = creds:section("UI设置",true)

    credits:Button("摧毁UI",function()
        game:GetService("CoreGui")["frosty"]:Destroy()
    end)

    credits:Toggle("彩虹UI", "", false, function(state)
        if state then
        game:GetService("CoreGui")["frosty"].Main.Style = "DropShadow"
        else
            game:GetService("CoreGui")["frosty"].Main.Style = "Custom"
        end
    end)
local gn = window:Tab("主要功能")
local gnn = gn:section("玩家设置",true)
--gnn:Slider("速度", "速度设置", 16, 16, 100, false, function(value)
--   lp.Character.Humanoid.WalkSpeed = value
--end)
--gnn:Slider("跳高", "跳高设置", 16, 16, 100, false, function(value)
--    lp.Character.Humanoid.JumpPower = value
--end)
gnn:Slider("视野", "视野设置", 90, 90, 700, false, function(value)
   game:GetService("Players").LocalPlayer.options.Graphics.fov.Value = value
end)
gnn:Slider("最大速度", "最大速度", 150, 150, 2500, false, function(value)
game:GetService("ReplicatedStorage").module.specificsModule.MaxSpeed.Value = value
end)
gnn:Slider("走路速度", "走路速度", 30, 30, 2500, false, function(value)
game:GetService("ReplicatedStorage").module.specificsModule.WalkSpeed.Value = value
end)
gnn:Slider("奔跑速度", "奔跑速度", 30, 30, 2500, false, function(value)
game:GetService("ReplicatedStorage").module.specificsModule.SprintSpeed.Value = value
end)
local gn = gn:section("主要功能",true)
gn:Toggle("透视怪", "", false, function(state)
    bott = state  -- 同步阀门状态
    
    if state then
        spawn(function()  -- 使用独立协程
            while bott do  -- 检测阀门状态
                  wait(1)
                  for _, model in ipairs(workspace.bots:GetChildren()) do
                     if model:IsA("Model") then
        -- 检查是否已存在追踪标签
                        if not model:FindFirstChild("NameTag") and bott==true then
            -- 查找可用的基准部件
                           local adornee = model.PrimaryPart or model:FindFirstChildWhichIsA("BasePart")
            
                           if adornee then
                             local billboard = Instance.new("BillboardGui")
                             billboard.Name = "NameTag"
                             billboard.Adornee = adornee
                             billboard.Size = UDim2.new(0, 50, 0, 20)  -- 标签物理尺寸
                             billboard.StudsOffset = Vector3.new(0, 3, 0) -- 垂直偏移高度
                             billboard.AlwaysOnTop = true
                             billboard.Active = true
                             billboard.Parent = model

                -- 创建文本标签
                             local textLabel = Instance.new("TextLabel")
                             textLabel.Size = UDim2.new(1, 0, 1, 0)      -- 充满整个Billboard
                             textLabel.BackgroundTransparency = 1       -- 透明背景
                             textLabel.BorderSizePixel = 0              -- 无边框
                             textLabel.Text = model.Name                -- 显示模型名称
                             textLabel.TextColor3 = Color3.new(1, 0, 0)  -- 纯红色
                             textLabel.TextScaled = true                 -- 自动缩放文字
                             --textLabel.Font = Enum.Font.SourceSansBold  -- 加粗字体
                             textLabel.Parent = billboard
                           end
                        end
                     end
                  end
            end
        end)
    else
        for _, descendant in ipairs(botsFolder:GetDescendants()) do
        -- 精确匹配BillboardGui类
             if descendant:IsA("BillboardGui") then
               descendant:Destroy()
             end
        end
    end
end)
gn:Button("传送到安全平台",function()
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")

local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")
local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

-- 创建平台参数
local platformOffset = Vector3.new(0, 80, 0)
local platformSize = Vector3.new(10000, 20, 10000)  -- 加厚平台高度到20

-- 创建平台并确保物理加载
local platform = Instance.new("Part")
platform.Size = platformSize
platform.Anchored = true
platform.CanCollide = true
platform.Color = Color3.new(0.8, 0.8, 0.8)
platform.Transparency = 0.75
platform.Position = humanoidRootPart.Position + platformOffset
platform.Parent = workspace

-- 关键修正：等待平台完成物理加载
for _ = 1, 3 do  -- 通过三次心跳循环确保加载
    RunService.Heartbeat:Wait()
end

-- 精确计算平台顶部表面坐标
local platformTopSurfaceY = platform.Position.Y + (platform.Size.Y/2)

-- 新的传送坐标计算系统
local function GetSafeTeleportPosition()
    -- 获取角色物理参数
    local hipHeight = humanoid.HipHeight
    local bodyHeight = 2  -- 角色身体高度补偿
    
    -- 计算最终坐标
    return Vector3.new(
        platform.Position.X,
        platformTopSurfaceY + hipHeight + bodyHeight,  -- 确保在平台上方
        platform.Position.Z
    )
end

-- 强制解除碰撞状态
humanoid:ChangeState(Enum.HumanoidStateType.FallingDown)
task.wait(0.2)

-- 精确传送（直接操作RootPart）
humanoidRootPart.CFrame = CFrame.new(GetSafeTeleportPosition())

-- 二次位置确认（防止物理回弹）
task.wait(0.5)
humanoidRootPart.CFrame = CFrame.new(GetSafeTeleportPosition())
end)
gn:Button("删掉一个安全平台",function()
local pt = workspace.Part
pt:Destroy()
end)
gn:Button("安全重生",function()
game:GetService("ReplicatedStorage"):WaitForChild("events"):WaitForChild("player"):WaitForChild("char"):WaitForChild("respawnchar"):FireServer()
end)
gn:Toggle("自动跳跃", "", false, function(state)
    jump = state  -- 同步阀门状态
    
    if state then
       --  pawn(function()  -- 使用独立协程
           while jump do  -- 检测阀门状态
                     wait(0.01)
                                       local player = game.Players.LocalPlayer
                  
                  local function onCharacterAdded(character)
                      local humanoid = character:WaitForChild("Humanoid")
    
                      -- 持续自动跳跃循环（每秒触发一次）
                      --while humanoid and humanoid.Parent do
                          humanoid.Jump = true
                          --task.wait(1) -- 间隔时间可调（例如 0.5 秒）
                      --end
                  end

-- 监听角色重生事件
                  player.CharacterAdded:Connect(onCharacterAdded)

-- 初始加载（如果角色已存在）
                  if player.Character then
                      onCharacterAdded(player.Character)
                  end
           end
    else
        print("关闭")
    end
end)
gn:Button("传送到每个玩家(一遍)",function()
                      -- 获取游戏服务
              local Players = game:GetService("Players")

-- 获取自身玩家
              local localPlayer = Players.LocalPlayer
              local character = localPlayer.Character or localPlayer.CharacterAdded:Wait()

-- 存储所有其他玩家的列表
              local otherPlayers = {}
              for _, player in pairs(Players:GetPlayers()) do
                  if player ~= localPlayer then
                      table.insert(otherPlayers, player)
                  end
              end

-- 依次传送到每个其他玩家的位置
              for _, targetPlayer in pairs(otherPlayers) do
                  local targetCharacter = targetPlayer.Character or targetPlayer.CharacterAdded:Wait()
                  local targetPosition = targetCharacter.PrimaryPart.Position  -- 假设主部件为PrimaryPart

    -- 传送自身角色到目标位置
                  character:PivotTo(CFrame.new(targetPosition))
                  character:PivotTo(CFrame.new(targetPosition))

    -- 可以在这里添加一些等待时间，以便有时间观察传送效果
                  wait(0.01)
              end
end)
gn:Button("跟踪每个玩家(3秒)",function()
local Players = game:GetService("Players")
local localPlayer = Players.LocalPlayer
local character = localPlayer.Character or localPlayer.CharacterAdded:Wait()


local function trackPlayer(targetPlayer)
    local targetCharacter = targetPlayer.Character or targetPlayer.CharacterAdded:Wait()
    local humanoidRootPart = targetCharacter:FindFirstChild("HumanoidRootPart")
    if humanoidRootPart then
        local startTime = os.time()
        while os.time() - startTime < 3 do
            local newCFrame = humanoidRootPart.CFrame
            character:PivotTo(CFrame.new(newCFrame.Position))
            task.wait()
        end
    end
end


local function loopThroughAllPlayers()
    local allPlayers = Players:GetPlayers()
    for _, otherPlayer in ipairs(allPlayers) do
        if otherPlayer ~= localPlayer then
            trackPlayer(otherPlayer)
        end
    end
end


loopThroughAllPlayers()
end)
while true do
   local botsFolder = workspace:FindFirstChild("bots")

   if botsFolder then
    -- 获取所有后代对象
    local descendants = botsFolder:GetDescendants()
    
    for _, obj in ipairs(descendants) do
        -- 检查对象是否为 ImageLabel
        if obj:IsA("ImageLabel") then
            -- 修改图片属性
            obj.Image = "rbxthumb://type=Asset&id=17366451283&w=150&h=150"
        end
    end
   end
wait(5)
end