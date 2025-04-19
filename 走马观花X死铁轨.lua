local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/385j8888/ZOUMAGUIX/refs/heads/main/ProtectUI.lua"))()
local alwaysnight = false
local noclipEnabled = false
local alwaysunday = false
local autosn = false
local itemESP = false
local autoBond = false
local autoCoal = false
local autoGoldBar = false
local xxgd = false
local bondd = false
local TurretAmmo = false
local Cross = false
local Walker = false
local dujiaoshou = false
local antigd = false
local autodorp = false
local bd = false
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local runtimeItemsFolder = workspace:WaitForChild("RuntimeItems")
local Remotes = ReplicatedStorage:WaitForChild("Remotes")
local StoreItem = Remotes:WaitForChild("StoreItem")
local RuntimeItems = workspace:WaitForChild("RuntimeItems")
local replicatedStorage = game:GetService("ReplicatedStorage")
local Players = game:GetService("Players")
local player = game.Players.LocalPlayer
local pplayer = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait() -- 等待角色加载
local humanoidRootPart = character:WaitForChild("HumanoidRootPart") -- 获取角色基准点
local lp = game.Players.LocalPlayer
local Mouse = lp:GetMouse()
--local lp = gs("Players").LocalPlayer
local pos = lp.Character.HumanoidRootPart.CFrame + Vector3.new(0, 5, 0)
local ME = game.Players.LocalPlayer.Character.HumanoidRootPart
local Mouse = game:GetService('Players').LocalPlayer:GetMouse()
--local CurrentSlot = game.Players.LocalPlayer:WaitForChild("CurrentSaveSlot").Value
local ScriptLoadOrSave = false
--local CurrentlySavingOrLoading = game.Players.LocalPlayer:WaitForChild("CurrentlySavingOrLoading")
local mouse = game.Players.LocalPlayer:GetMouse()
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
local window = library:new("走马观花X-死铁轨")
local creds = window:Tab("基本信息")
--local creds = window:Tab("基本信息",'3460915131')

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
local Players = game:GetService("Players")
local player = Players.LocalPlayer
local runService = game:GetService("RunService")
local camera = workspace.CurrentCamera
local function getClosestNPC()
    local closestNPC = nil
    local closestDistance = math.huge

    for _, object in ipairs(workspace:GetDescendants()) do
        if object:IsA("Model") then
            local humanoid = object:FindFirstChild("Humanoid") or object:FindFirstChildWhichIsA("Humanoid")
            local hrp = object:FindFirstChild("HumanoidRootPart") or object.PrimaryPart
            if humanoid and hrp and humanoid.Health > 0 then
                local isPlayer = false
                for _, pl in ipairs(Players:GetPlayers()) do
                    if pl.Character == object then
                        isPlayer = true
                        break
                    end
                end
                if not isPlayer then
                    local distance = (hrp.Position - player.Character.HumanoidRootPart.Position).Magnitude
                    if distance < closestDistance then
                        closestDistance = distance
                        closestNPC = object
                    end
                end
            end
        end
    end
    return closestNPC
end
local gnj = window:Tab("主要功能")
local gn = gnj:section("主要",true)
local gnpp = gnj:section("自动功能",true)
local abba = false

gn:Button("一键固定周围物品(fix)",function()
local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

-- 获取玩家角色和基准位置
local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local rootPart = character:WaitForChild("HumanoidRootPart")

-- 配置参数
local MAX_DISTANCE = 50
local TARGET_PART = workspace:WaitForChild("Train"):WaitForChild("Platform"):WaitForChild("Part")
local REMOTE = ReplicatedStorage:WaitForChild("Shared"):WaitForChild("Remotes"):WaitForChild("RequestWeld")
local function isModelInRange(model)
    -- 获取模型的主部件位置（如果有PrimaryPart优先使用）
    if model.PrimaryPart then
        return (model.PrimaryPart.Position - rootPart.Position).Magnitude <= MAX_DISTANCE
    end
    
    -- 如果没有设置PrimaryPart，则遍历所有部件检测
    for _, part in ipairs(model:GetDescendants()) do
        if part:IsA("BasePart") then
            if (part.Position - rootPart.Position).Magnitude <= MAX_DISTANCE then
                return true
            end
        end
    end
    return false
end
    for _, model in ipairs(workspace.RuntimeItems:GetChildren()) do
        if model:IsA("Model") and isModelInRange(model) then
            -- 构建参数并触发远程事件
            local args = {
                [1] = model,
                [2] = TARGET_PART
            }
            REMOTE:FireServer(unpack(args))
        end
    end
end)
gn:Button("一键解除固定周围物品(fix)",function()
local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

-- 获取玩家角色和基准位置
local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local rootPart = character:WaitForChild("HumanoidRootPart")

-- 配置参数
local MAX_DISTANCE = 50
local TARGET_PART = workspace:WaitForChild("Train"):WaitForChild("Platform"):WaitForChild("Part")
local REMOTE = ReplicatedStorage:WaitForChild("Shared"):WaitForChild("Remotes"):WaitForChild("RequestUnweld")
local function isModelInRange(model)
    -- 获取模型的主部件位置（如果有PrimaryPart优先使用）
    if model.PrimaryPart then
        return (model.PrimaryPart.Position - rootPart.Position).Magnitude <= MAX_DISTANCE
    end
    
    -- 如果没有设置PrimaryPart，则遍历所有部件检测
    for _, part in ipairs(model:GetDescendants()) do
        if part:IsA("BasePart") then
            if (part.Position - rootPart.Position).Magnitude <= MAX_DISTANCE then
                return true
            end
        end
    end
    return false
end
    for _, model in ipairs(workspace.RuntimeItems:GetChildren()) do
        if model:IsA("Model") and isModelInRange(model) then
            -- 构建参数并触发远程事件
            local args = {
                [1] = model,
                [2] = TARGET_PART
            }
            REMOTE:FireServer(unpack(args))
        end
    end
end)
--gn:Label("温馨小提示:被固定的物品无法被收纳")
gn:Button("一键收纳周围的物品(袋子拿手上)",function()
 for _, item in ipairs(runtimeItemsFolder:GetChildren()) do
    if item:IsA("Model") then
        local args = {
            [1] = item
        }
        StoreItem:FireServer(unpack(args))
    end
 end
end)
gn:Label("🚫不要在驾驶时使用！🚫")
gn:Button("自由切换视角",function()
game:GetService("Players").LocalPlayer.CameraMaxZoomDistance = 99999
game:GetService("Players").LocalPlayer.CameraMode = Enum.CameraMode.Classic
end)
gnpp:Toggle("自动收物品", "", false, function(state)
    running = state  -- 同步阀门状态
    
    if state then
        --spawn(function()  -- 使用独立协程
            while running do  -- 检测阀门状态
                  wait(0.1)
                  for _, item in ipairs(runtimeItemsFolder:GetChildren()) do
                    if item:IsA("Model") then
                      local args = {
                      [1] = item
                      }
                      StoreItem:FireServer(unpack(args))
                    end
                  end
            end
        --end)
    else
        print("关闭状态")
    end
end)
gnpp:Toggle("自动拾取债券", "", false, function(state)
    autoBond = state  -- 同步阀门状态
    
    if state then
       --  pawn(function()  -- 使用独立协程
           while autoBond do  -- 检测阀门状态
                             wait(0.001)
                             local args = {
                                 [1] = workspace:WaitForChild("RuntimeItems"):WaitForChild("Bond")
                             }

                             game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("ActivateObjectClient"):FireServer(unpack(args))
           end
      --   end)
    else
        print("债券收集关闭")
    end
end)
--gn:Label("温馨小提示:领取债券时没有提示，但是你已经拿到啦！")
gnpp:Toggle("持续检测独角兽", "", false, function(state)
    dujiaoshou = state  -- 同步阀门状态
    
if state then
local hasNotified = false -- 通知状态标记

  local function deepSearch(object)
    -- 深度优先搜索函数
    if object.Name == "Unicorn" and object:IsA("Model") then
        return true
    end
    
    for _, child in ipairs(object:GetChildren()) do
        if deepSearch(child) then
            return true
        end
    end
    return false
  end

  while dujiaoshou do
    task.wait(0.1) -- 每1秒检测一次，优化性能
    
    local baseplates = workspace:FindFirstChild("Baseplates")
    if baseplates and not hasNotified then
        -- 当找到Baseplates且未发送通知时进行检测
        if deepSearch(baseplates) then
            game:GetService("StarterGui"):SetCore("SendNotification", {
                Title = "走马观花X",
                Text = "发现独角兽！请留意四周！",
                Icon = "rbxthumb://type=Asset&id=17366451283&w=150&h=150",
                Duration = 10
            })
            hasNotified = true -- 标记已发送通知
        end
    end
  end
else
        print("关闭状态")
end
end)
gn:Button("一键丢物品",function()
game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("DropItem"):FireServer()
wait(0.1)
game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("DropItem"):FireServer()
wait(0.1)
game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("DropItem"):FireServer()
wait(0.1)
game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("DropItem"):FireServer()
wait(0.1)
game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("DropItem"):FireServer()
wait(0.1)
game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("DropItem"):FireServer()
wait(0.1)
game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("DropItem"):FireServer()
wait(0.1)
game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("DropItem"):FireServer()
wait(0.1)
game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("DropItem"):FireServer()
wait(0.1)
game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("DropItem"):FireServer()
wait(0.1)
end)
gnpp:Toggle("自动丢物品", "", false, function(state)
    autodorp = state  -- 同步阀门状态
    
    if state then
       --  pawn(function()  -- 使用独立协程
           while autodorp do  -- 检测阀门状态
                             wait(0.00001)
                             game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("DropItem"):FireServer()
           end
      --   end)
    else
        print("关闭")
    end
end)

gn:Toggle("显示燃油剩余数量", "", false, function(state)
        if state then
          loadstring(game:HttpGet"https://pastebin.com/raw/2gRkg0sk")()
        else
            local fuel = game:GetService("Players").LocalPlayer.PlayerGui.FuelDisplay
            fuel:Destroy()
        end
    end)
local ESPP = window:Tab("透视功能")
local ESPP = ESPP:section("透视",true)
ESPP:Toggle("透视物品", "", false, function(state)
    itemESP = state  -- 同步阀门状态
    
    if state then
        spawn(function()  -- 使用独立协程
            while itemESP do  -- 检测阀门状态
                wait(0.5)
                for _, child in ipairs(workspace.RuntimeItems:GetChildren()) do
                   if child:IsA("Model") then
          -- 添加高光（如果不存在）
                         

          -- 添加文字标签（如果不存在）
                   if not child:FindFirstChild("NameBillboard") and itemESP==true then
                        local adornee = child.PrimaryPart or child:FindFirstChildWhichIsA("BasePart")
            
                       if adornee then
                -- 创建 BillboardGui
                        local billboard = Instance.new("BillboardGui")
                        billboard.Name = "NameBillboard"
                        billboard.Adornee = adornee
                        billboard.Size = UDim2.new(0, 200, 0, 50)
                        billboard.StudsOffset = Vector3.new(0, 0, 0)  -- 在模型上方3米
                        billboard.AlwaysOnTop = true
                        billboard.Active = true

                -- 创建文本标签
                        local textLabel = Instance.new("TextLabel")
                        textLabel.Size = UDim2.new(1, 0, 1, 0)
                        textLabel.BackgroundTransparency = 1
                        textLabel.Text = child.Name
                        textLabel.TextColor3 = Color3.new(1, 1, 1)  -- 白色文字
                        textLabel.TextSize = 10
                        textLabel.Font = Enum.Font.SourceSansBold
                        textLabel.TextStrokeTransparency = 0  -- 文字描边
                        textLabel.TextStrokeColor3 = Color3.new(0, 0, 0)
                        textLabel.TextTransparency = 0.25
                        textLabel.TextXAlignment = Enum.TextXAlignment.Center
                        textLabel.TextYAlignment = Enum.TextYAlignment.Center
                        textLabel.Parent = billboard
                        billboard.Parent = child
                      end
                   end
               end
           end
       end
      end)
    else
        local runtimeItems = workspace:FindFirstChild("RuntimeItems")

        if runtimeItems then
            for _, model in ipairs(runtimeItems:GetChildren()) do
                if model:IsA("Model") then
                    local billboard = model:FindFirstChild("NameBillboard")
                    if billboard then
                        billboard:Destroy()
                    end
                end
            end
        end
    end
end)
local swww = false
local ESP_CONFIG = {
    Name = "ESPshengwu",
    TextColor = Color3.new(1, 0, 0),    -- 红色
    TextSize = 12,
    Offset = Vector3.new(0, 2.5, 0),     -- 头顶偏移
    MaxDistance = 2000,                 -- 可视距离
    Font = Enum.Font.SourceSansBold,    -- 字体
    StrokeColor = Color3.new(0, 0, 0),  -- 描边颜色
    StrokeTransparency = 0.3
}
local function createIntegratedESP()
    for _, npc in ipairs(workspace:GetDescendants()) do
        if npc:IsA("Model") and npc:FindFirstChildOfClass("Humanoid") and not npc:FindFirstChild(ESP_CONFIG.Name) and swww==true then
            -- 获取锚点部件
            local rootPart = npc:FindFirstChild("HumanoidRootPart") or npc.PrimaryPart
            if not rootPart then continue end

            -- 创建容器
            local espGui = Instance.new("BillboardGui")
            espGui.Name = ESP_CONFIG.Name
            espGui.AlwaysOnTop = true
            espGui.Size = UDim2.new(4, 0, 2, 0)
            espGui.StudsOffset = ESP_CONFIG.Offset
            espGui.Adornee = rootPart
            espGui.MaxDistance = ESP_CONFIG.MaxDistance
            
            -- 创建文本
            local textLabel = Instance.new("TextLabel")
            textLabel.Size = UDim2.new(1, 0, 1, 0)
            textLabel.BackgroundTransparency = 1
            --textLabel.Text = "🔞"..npc.Name
            textLabel.Text = npc.Name
            textLabel.Font = ESP_CONFIG.Font
            textLabel.TextColor3 = ESP_CONFIG.TextColor
            textLabel.TextStrokeColor3 = ESP_CONFIG.StrokeColor
            textLabel.TextStrokeTransparency = ESP_CONFIG.StrokeTransparency
            textLabel.TextSize = ESP_CONFIG.TextSize
            
            -- 组装层级
            textLabel.Parent = espGui
            espGui.Parent = npc
        end
    end
end
ESPP:Toggle("透视生物", "", false, function(state)
    swww = state  -- 同步阀门状态
    
    if state then
       --  pawn(function()  -- 使用独立协程
           while swww do  -- 检测阀门状态
                    createIntegratedESP()
                    wait(2)
           end
      --   end)
    else
           -- 删除所有ESPshengwu标签的脚本
             for _, obj in ipairs(workspace:GetDescendants()) do
                     if obj.Name == "ESPshengwu" and obj:IsA("BillboardGui") then
                       obj:Destroy()  -- 安全删除对象
                     end
             end
    end
end)
local sn = window:Tab("自动收纳功能")
local sn = sn:section("自动收纳物品",true)
sn:Button("炮塔(机枪)",function()
local args = {
    [1] = workspace:WaitForChild("RuntimeItems"):WaitForChild("MaximGun")
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("StoreItem"):FireServer(unpack(args))
end)
sn:Toggle("机枪子弹", "", false, function(state)
    TurretAmmo = state  -- 同步阀门状态
    
    if state then
       --  pawn(function()  -- 使用独立协程
           while TurretAmmo do  -- 检测阀门状态
                             wait(0.001)
                             local args = {
                                 [1] = workspace:WaitForChild("RuntimeItems"):WaitForChild("TurretAmmo")
                             }

                             game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("StoreItem"):FireServer(unpack(args))
           end
      --   end)
    else
        print("关闭")
    end
end)
sn:Toggle("绷带", "", false, function(state)
    bd = state
    
    if state then
           while bd do  -- 检测阀门状态
                             wait(0.001)
                             local args = {
                                 [1] = workspace:WaitForChild("RuntimeItems"):WaitForChild("Bandage")
                             }

                             game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("StoreItem"):FireServer(unpack(args))
           end
      --   end)
    else
        print("关闭")
    end
end)
sn:Toggle("煤块", "", false, function(state)
    autoCoal = state  -- 同步阀门状态
    
    if state then
       --  pawn(function()  -- 使用独立协程
           while autoCoal do  -- 检测阀门状态
                             wait(0.001)
                             local args = {
                                 [1] = workspace:WaitForChild("RuntimeItems"):WaitForChild("Coal")
                             }

                             game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("StoreItem"):FireServer(unpack(args))
           end
      --   end)
    else
        print("关闭")
    end
end)
sn:Toggle("金条", "", false, function(state)
    autoGoldBar = state  -- 同步阀门状态
    
    if state then
       --  pawn(function()  -- 使用独立协程
           while autoGoldBar do  -- 检测阀门状态
                             wait(0.001)
                             local args = {
                                 [1] = workspace:WaitForChild("RuntimeItems"):WaitForChild("GoldBar")
                             }

                             game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("StoreItem"):FireServer(unpack(args))
           end
      --   end)
    else
        print("关闭")
    end
end)
sn:Toggle("吸血鬼刀", "", false, function(state)
    xxgd = state  -- 同步阀门状态
    
    if state then
       --  pawn(function()  -- 使用独立协程
           while xxgd do  -- 检测阀门状态
                             wait(0.001)
                             local args = {
                                 [1] = workspace:WaitForChild("RuntimeItems"):WaitForChild("Vampire Knife")
                             }

                             game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("StoreItem"):FireServer(unpack(args))
           end
      --   end)
    else
        print("关闭")
    end
end)
sn:Toggle("十字架", "", false, function(state)
    Cross = state  -- 同步阀门状态
    
    if state then
       --  pawn(function()  -- 使用独立协程
           while Cross do  -- 检测阀门状态
                             wait(0.001)
                             local args = {
                                 [1] = workspace:WaitForChild("RuntimeItems"):WaitForChild("Cross")
                             }

                             game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("StoreItem"):FireServer(unpack(args))
           end
      --   end)
    else
        print("关闭")
    end
end)
sn:Button("雕像",function()
local args = {
    [1] = workspace:WaitForChild("RuntimeItems"):WaitForChild("Statue")
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("StoreItem"):FireServer(unpack(args))
end)
sn:Button("杯",function()
local args = {
    [1] = workspace:WaitForChild("RuntimeItems"):WaitForChild("Cup")
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("StoreItem"):FireServer(unpack(args))
end)
sn:Button("僵尸Runners",function()
local args = {
    [1] = workspace:WaitForChild("RuntimeItems"):WaitForChild("Runner")
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("StoreItem"):FireServer(unpack(args))
end)
sn:Toggle("僵尸Walker", "", false, function(state)
    Walker = state  -- 同步阀门状态
    
    if state then
       --  pawn(function()  -- 使用独立协程
           while Walker do  -- 检测阀门状态
                             wait(0.001)
                             local args = {
                                 [1] = workspace:WaitForChild("RuntimeItems"):WaitForChild("Walker")
                             }

                             game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("StoreItem"):FireServer(unpack(args))
           end
      --   end)
    else
        print("关闭")
    end
end)
sn:Toggle("债券", "", false, function(state)
    bondd = state  -- 同步阀门状态
    
    if state then
       --  pawn(function()  -- 使用独立协程
           while bondd do  -- 检测阀门状态
                             wait(0.001)
                             local args = {
                                 [1] = workspace:WaitForChild("RuntimeItems"):WaitForChild("Bond")
                             }

                             game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("StoreItem"):FireServer(unpack(args))
           end
      --   end)
    else
        print("关闭")
    end
end)
--sn:Slider("视野距离", "fov", 70, 50, 120, false, function(value)
--    print("当前视野:", value)
--end)
--local playerjjj = window:Tab("玩家设置")
--local playerjjj = playerjjj:section("玩家",true)
--player:Slider("速度", "速度设置", 16, 16, 480, false, function(value)
--    lp.Character.Humanoid.WalkSpeed = value
--end)
--player:Slider("跳高", "跳高设置", 16, 16, 480, false, function(value)
--    lp.Character.Humanoid.JumpPower = value
--end)
local hj = window:Tab("世界环境")
local hj = hj:section("环境",true)
hj:Toggle("永远白天", "", false, function(state)
    alwaysunday = state  -- 同步阀门状态
    
    if state then
        spawn(function()  -- 使用独立协程
            while alwaysunday do  -- 检测阀门状态
                  wait(0.1)
                  local sunday = game:GetService("Lighting")
                  sunday.TimeOfDay = 14
            end
        end)
    else
        print("关闭状态")
    end
end)
hj:Toggle("永远黑夜", "", false, function(state)
    alwaysnight = state  -- 同步阀门状态
    
    if state then
        spawn(function()  -- 使用独立协程
            while alwaysnight do  -- 检测阀门状态
                  wait(0.1)
                  local sunday = game:GetService("Lighting")
                  sunday.TimeOfDay = 20
            end
        end)
    else
        print("关闭状态")
    end
end)
local runninggg = false
local endingj = window:Tab("直达终点")
local ending = endingj:section("终点",true)
local time = window:Tab("时间功能")
local time = time:section("时间",true)
local jjjb
ending:Toggle("自动传送pro", "", false, function(state)
    jjjb = state  -- 同步阀门状态
    
    if state then
        --spawn(function()  -- 使用独立协程
            while jjjb do  -- 检测阀门状态
                  
                  --player.Character:PivotTo(CFrame.new(-425,27,-49040))
                  player.Character:PivotTo(CFrame.new(-447.3828125, 26.545448303222656, -48747.69140625))
                  wait(0.00001)
                  player.Character:PivotTo(CFrame.new(-312.17218017578125, 26.546648025512695, -48747.734375))
                  wait(0.00001)
                  player.Character:PivotTo(CFrame.new(-424.44476318359375, 26.517261505126953, -49040.64453125))
                  wait(0.00001)
            end
       -- end)
    else
        print("关闭状态")
    end
end)
ending:Button("传送至终点",function()
player.Character:PivotTo(CFrame.new(-424.44476318359375, 24.517261505126953, -49040.64453125))
wait(1)
player.Character:PivotTo(CFrame.new(-424.44476318359375, 26.517261505126953, -49040.64453125))
wait(1)
player.Character:PivotTo(CFrame.new(-424.44476318359375, 26.517261505126953, -49040.64453125))
wait(1)
player.Character:PivotTo(CFrame.new(-447.3828125, 26.545448303222656, -48747.69140625))
wait(1)
player.Character:PivotTo(CFrame.new(-447.3828125, 26.545448303222656, -48747.69140625))
wait(1)
player.Character:PivotTo(CFrame.new(-447.3828125, 26.545448303222656, -48747.69140625))
wait(1)
player.Character:PivotTo(CFrame.new(-312.17218017578125, 26.546648025512695, -48747.734375))
wait(1)
player.Character:PivotTo(CFrame.new(-312.17218017578125, 26.546648025512695, -48747.734375))
wait(1)
player.Character:PivotTo(CFrame.new(-312.17218017578125, 26.546648025512695, -48747.734375))
--player.Character:PivotTo(CFrame.new(-346, -69, -49060))
end)
ending:Label("建议搭配自由切换视角使用")
ending:Toggle("锁定敌人(视角移到敌人头上)", "", false, function(state)
    abba = state  -- 同步阀门状态
    
    if state then
        --spawn(function()  -- 使用独立协程
            while abba  do-- 检测阀门状态
                  --wait(0.1)
                  local npc = getClosestNPC()
                  if npc and npc:FindFirstChild("Humanoid") then
                      local npcHumanoid = npc:FindFirstChild("Humanoid")
                      if npcHumanoid.Health > 0 then
                        camera.CameraSubject = npcHumanoid
                      end
                  end
                  wait(0.1)
            end
    else
        camera.CameraSubject = player.Character.Humanoid
    end
end)
local runnnninggg = false
ending:Toggle("穿墙", "", false, function(state)
    runnnninggg = state  -- 同步阀门状态
    
    if state then
      --  spawn(function()  -- 使用独立协程
            while runnnninggg do  -- 检测阀门状态
                  
                  --player.Character:PivotTo(CFrame.new(-425,27,-49040))
                  for _, part in pairs(player.Character:GetDescendants()) do
                     if part:IsA("BasePart") then
                        part.CanCollide = false
                     end
                  end
                  wait(0.1)
            end
        --end)
    else
        print("关闭状态")
        for _, part in pairs(player.Character:GetDescendants()) do
                     if part:IsA("BasePart") then
                        part.CanCollide = true
                     end
        end
    end
end)
local jump = false
ending:Toggle("自动跳跃", "", false, function(state)
    jump = state  -- 同步阀门状态
    
    if state then
       --  pawn(function()  -- 使用独立协程
           while jump do  -- 检测阀门状态
                     wait(1)
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
                  if player.Character then
                      onCharacterAdded(player.Character)
                  end
           end
    else
        print("关闭")
    end
end)
time:Button("查看当前服务器运行时间",function()
loadstring(game:HttpGet"https://pastebin.com/raw/b6TDjAzP")()
end)
time:Button("创建10分钟倒计时",function()
-- 创建界面
local player = game.Players.LocalPlayer
local gui = Instance.new("ScreenGui")
gui.Name = "CountdownGui"
gui.ResetOnSpawn = false -- 防止角色重生时重置
gui.Parent = player:WaitForChild("PlayerGui")

local textLabel = Instance.new("TextLabel")
textLabel.Size = UDim2.new(0, 150, 0, 150)
textLabel.Position = UDim2.new(0.5, -200, 0.5, -100) -- 居中显示
textLabel.AnchorPoint = Vector2.new(0.5, 0.5)
textLabel.TextScaled = true
textLabel.BackgroundTransparency = 1
textLabel.TextColor3 = Color3.new(1, 1, 1)
textLabel.Font = Enum.Font.SourceSansBold
textLabel.Text = "10:00"
textLabel.Parent = gui

-- 倒计时逻辑
local function startCountdown()
    local duration = 10 * 60  -- 10 分钟转换为秒
    local startTime = os.time()
    
    while true do
        local elapsed = os.time() - startTime
        local remaining = duration - elapsed
        
        if remaining <= 0 then
            textLabel.Text = "时间到"
            break
        end
        
        -- 格式化时间显示
        local minutes = math.floor(remaining / 60)
        local seconds = remaining % 60
        textLabel.Text = string.format("%02d:%02d", minutes, seconds)
        
        wait(1)  -- 每秒更新一次
    end
end

-- 启动倒计时
startCountdown()
end)
local endingg = endingj:section("方法",true)
endingg:Label("食用方法")
endingg:Label("第一步:买枪")
endingg:Label("第二步:开启穿墙")
endingg:Label("第三步:开启视角锁敌人")
endingg:Label("第四步:把自动传送打开")
endingg:Label("第五步:把头上的劫匪全打掉")
--ending:Label("使用自动传送2，把头上的土匪打掉，然后关闭")
--ending:Label("使用自动传送3，把头上的土匪打掉，然后关闭")
--ending:Label("第四步:把穿墙关掉")
endingg:Label("如果你坐在一个座位上，并且土匪刷新开枪了，就说明你成功了")
endingg:Label("第六步:把传送关掉，然后剩下的自己弄")
local combat = window:Tab("战斗")
local combat = combat:section("战斗",true)
--combat:Label("鸡巴鸡巴鸡巴鸡巴鸡巴鸡巴鸡巴鸡巴")
combat:Label("建议搭配自由切换视角使用")
combat:Toggle("锁定敌人(视角移到敌人头上)", "", false, function(state)
    abba = state  -- 同步阀门状态
    
    if state then
        --spawn(function()  -- 使用独立协程
            while abba  do-- 检测阀门状态
                  wait(0.1)
                  local npc = getClosestNPC()
                  if npc and npc:FindFirstChild("Humanoid") then
                      local npcHumanoid = npc:FindFirstChild("Humanoid")
                      if npcHumanoid.Health > 0 then
                        camera.CameraSubject = npcHumanoid
                      end
                  end
            end
    else
        camera.CameraSubject = player.Character.Humanoid
        wait(0.05)
        camera.CameraSubject = player.Character.Humanoid
    end
end)
local tpplace = window:Tab("地点传送")
local tpplace = tpplace:section("终点",true)
tpplace:Button("传送到最近的椅子",function()
-- 获取玩家服务
local Players = game:GetService("Players")
-- 获取当前玩家
local player = Players.LocalPlayer
-- 获取目标 Chair Model
local chair = workspace.RuntimeItems.Chair

-- 检查 Chair Model 是否存在
if chair then
    -- 获取 Chair Model 内的 Seat 对象
    local seat = chair:FindFirstChild("Seat")
    -- 检查 Seat 对象是否存在
    if seat then
        -- 获取 Seat 的位置和朝向
        local position = seat.Position
        local orientation = seat.Orientation

        -- 获取玩家的 Character
        local character = player.Character or player.CharacterAdded:Wait()

        -- 将玩家的 Character 传送到 Seat 的位置并设置朝向
        character:PivotTo(CFrame.new(position, position + Vector3.new(0, 1, 0)) * CFrame.Angles(math.rad(orientation.X), math.rad(orientation.Y), math.rad(orientation.Z)))
    else
        warn("Seat not found in the Chair Model.")
    end
else
    warn("Chair Model not found in workspace.RuntimeItems")
end
end)
tpplace:Button("狼堡",function()
player.Character:PivotTo(CFrame.new(271.4610595703125, 4.046875953674316, -9172.03515625))
wait(0.5)
-- 获取玩家服务
local Players = game:GetService("Players")
-- 获取当前玩家
local player = Players.LocalPlayer
-- 获取目标 Chair Model
local chair = workspace.RuntimeItems.Chair

-- 检查 Chair Model 是否存在
if chair then
    -- 获取 Chair Model 内的 Seat 对象
    local seat = chair:FindFirstChild("Seat")
    -- 检查 Seat 对象是否存在
    if seat then
        -- 获取 Seat 的位置和朝向
        local position = seat.Position
        local orientation = seat.Orientation

        -- 获取玩家的 Character
        local character = player.Character or player.CharacterAdded:Wait()

        -- 将玩家的 Character 传送到 Seat 的位置并设置朝向
        character:PivotTo(CFrame.new(position, position + Vector3.new(0, 1, 0)) * CFrame.Angles(math.rad(orientation.X), math.rad(orientation.Y), math.rad(orientation.Z)))
    else
        warn("Seat not found in the Chair Model.")
    end
else
    warn("Chair Model not found in workspace.RuntimeItems")
end

end)
-- 获取玩家服务


tpplace:Button("特斯拉实验室",function()
player.Character:PivotTo(CFrame.new(-140.51632690429688, 4.171875, -24185.212890625))
-- 获取玩家服务
wait(0.1)
local Players = game:GetService("Players")
-- 获取当前玩家
local player = Players.LocalPlayer
-- 获取目标 Chair Model
local chair = workspace.RuntimeItems.Chair

-- 检查 Chair Model 是否存在
if chair then
    -- 获取 Chair Model 内的 Seat 对象
    local seat = chair:FindFirstChild("Seat")
    -- 检查 Seat 对象是否存在
    if seat then
        -- 获取 Seat 的位置和朝向
        local position = seat.Position
        local orientation = seat.Orientation

        -- 获取玩家的 Character
        local character = player.Character or player.CharacterAdded:Wait()

        -- 将玩家的 Character 传送到 Seat 的位置并设置朝向
        character:PivotTo(CFrame.new(position, position + Vector3.new(0, 1, 0)) * CFrame.Angles(math.rad(orientation.X), math.rad(orientation.Y), math.rad(orientation.Z)))
    else
        warn("Seat not found in the Chair Model.")
    end
else
    warn("Chair Model not found in workspace.RuntimeItems")
end

end)
tpplace:Button("军营",function()
player.Character:PivotTo(CFrame.new(63.61872863769531, 4.523547649383545, -28357.298828125))
-- 获取玩家服务
wait(0.1)
local Players = game:GetService("Players")
-- 获取当前玩家
local player = Players.LocalPlayer
-- 获取目标 Chair Model
local chair = workspace.RuntimeItems.Chair

-- 检查 Chair Model 是否存在
if chair then
    -- 获取 Chair Model 内的 Seat 对象
    local seat = chair:FindFirstChild("Seat")
    -- 检查 Seat 对象是否存在
    if seat then
        -- 获取 Seat 的位置和朝向
        local position = seat.Position
        local orientation = seat.Orientation

        -- 获取玩家的 Character
        local character = player.Character or player.CharacterAdded:Wait()

        -- 将玩家的 Character 传送到 Seat 的位置并设置朝向
        character:PivotTo(CFrame.new(position, position + Vector3.new(0, 1, 0)) * CFrame.Angles(math.rad(orientation.X), math.rad(orientation.Y), math.rad(orientation.Z)))
    else
        warn("Seat not found in the Chair Model.")
    end
else
    warn("Chair Model not found in workspace.RuntimeItems")
end
end)
tpplace:Button("火车座位(前提是没有移动过火车)",function()
player.Character:PivotTo(CFrame.new(59.67192840576172, 11.969432830810547, 29871.8984375))
-- 获取玩家服务
end)

while true do
  local function EnableAllSeats(parent)
    for _, child in ipairs(parent:GetChildren()) do
        -- 如果是 Seat 或 VehicleSeat 类，则禁用 Disabled 属性
        if child:IsA("Seat") or child:IsA("VehicleSeat") then
            child.Disabled = false
        end
        -- 递归遍历子对象
        EnableAllSeats(child)
    end
  end

-- 从 Workspace 开始遍历
  EnableAllSeats(workspace)
  wait(1)
end