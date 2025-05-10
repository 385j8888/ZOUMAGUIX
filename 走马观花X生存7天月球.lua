local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/385j8888/ZOUMAGUIX/refs/heads/main/ProtectUI.lua"))()
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local replicatedStorage = game:GetService("ReplicatedStorage")
local Players = game:GetService("Players")
local player = game.Players.LocalPlayer
local pplayer = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoidRootPart = character:WaitForChild("HumanoidRootPart") -- 获取角色基准点
local lp = game.Players.LocalPlayer
local Mouse = lp:GetMouse()
local pos = lp.Character.HumanoidRootPart.CFrame + Vector3.new(0, 5, 0)
local ME = game.Players.LocalPlayer.Character.HumanoidRootPart
local Mouse = game:GetService('Players').LocalPlayer:GetMouse()
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
local window = library:new("走马观花X-生存7天")
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
local animalsFolder = workspace:WaitForChild("animals")
local deers = animalsFolder:GetChildren()

-- 原始CFrame的旋转参数（保留方向）
--local originalRotation1 = {-0.357767, -0.821009, 0.444911, 0.000130, 0.476403, 0.879227, -0.933811, 0.314617, -0

local gnj = window:Tab("主要功能",'10723407389')
local gn = gnj:section("主要",true)
local runningg = false
local running = false
gn:Toggle("枪械杀戮光环(动物)", "", false, function(state)
    running = state  -- 同步阀门状态
    
    if state then
        --spawn(function()  -- 使用独立协程
            while running do  -- 检测阀门状态
                  local animalsFolder = workspace:WaitForChild("animals")
                  local deers = animalsFolder:GetChildren()
                  local ReplicatedStorage = game:GetService("ReplicatedStorage")
                  local shootEvent = ReplicatedStorage:WaitForChild("remotes"):WaitForChild("shoot")
                  
                  for _, reptile in ipairs(deers) do
                      if reptile.Name == "reptile" and reptile:IsA("Model") and reptile.PrimaryPart then
                              local deerPosition = reptile.PrimaryPart.Position
        
        -- 动态替换坐标，保留旋转
                              local args = {
                                  [1] = CFrame.new(
                                      deerPosition.X, deerPosition.Y, deerPosition.Z,  deerPosition.X, deerPosition.Y, deerPosition.Z, deerPosition.X, deerPosition.Y, deerPosition.Z, deerPosition.X, deerPosition.Y, deerPosition.Z
                --unpack(originalRotation1) -- 保留原有旋转参数
                                  ),
                                  [2] = CFrame.new(
                                      deerPosition.X, deerPosition.Y, deerPosition.Z,  deerPosition.X, deerPosition.Y, deerPosition.Z, deerPosition.X, deerPosition.Y, deerPosition.Z, deerPosition.X, deerPosition.Y, deerPosition.Z-- 替换为当前deer的位置
                --unpack(originalRotation2) -- 保留原有旋转参数
                                  )
                              }
        
        -- 触发远程事件
                              shootEvent:FireServer(unpack(args))
                      end
                  end
                  wait(0.1)
            end
        --end)
    else
        print("关闭状态")
    end
end)
gn:Toggle("枪械杀戮光环(怪物)", "", false, function(state)
    runningg = state  -- 同步阀门状态
    
    if state then
        --spawn(function()  -- 使用独立协程
            while runningg do  -- 检测阀门状态
                  local ReplicatedStorage = game:GetService("ReplicatedStorage")
                  local shootEvent = ReplicatedStorage:WaitForChild("remotes"):WaitForChild("shoot")

-- 获取所有目标 Model
                  local scpsFolder = workspace:WaitForChild("scps")
                  local scpModels = scpsFolder:GetChildren()

-- 遍历所有 Model 并触发射击事件
                  for _, scpModel in ipairs(scpModels) do
                      if scpModel:IsA("Model") and scpModel.PrimaryPart then
                          local scpPosition = scpModel.PrimaryPart.Position

        -- 构建动态 CFrame（替换位置，保留旋转）
                          local args = {
                              [1] = CFrame.new(
                                  scpPosition.X, scpPosition.Y, scpPosition.Z, scpPosition.X, scpPosition.Y, scpPosition.Z, scpPosition.X, scpPosition.Y, scpPosition.Z, scpPosition.X, scpPosition.Y, scpPosition.Z
                              ),
                              [2] = CFrame.new(
                                  scpPosition.X, scpPosition.Y, scpPosition.Z, scpPosition.X, scpPosition.Y, scpPosition.Z, scpPosition.X, scpPosition.Y, scpPosition.Z, scpPosition.X, scpPosition.Y, scpPosition.Z
                              )
                          }

        -- 触发远程事件
                          shootEvent:FireServer(unpack(args))
                      end
                  end
                  wait(0.1)
            end
        --end)
    else
        print("关闭状态")
    end
end)
local rjjjj = false

gn:Button("收集零件",function()
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local hrp = character:WaitForChild("HumanoidRootPart")
--local originalCFrame = hrp.CFrame
for _, scrap in pairs(workspace.scraps:GetChildren()) do
    local material = scrap:FindFirstChild("defaultMaterial10")
    if material then
        local prompt = material:FindFirstChild("ProximityPrompt")
        if prompt then
            -- Teleport to scrap, slightly above to avoid getting stuck
            hrp.CFrame = material.CFrame + Vector3.new(0, 3, 0)

            wait(0.1) -- allow time for physics
            fireproximityprompt(prompt)
        end
    end
end
end)
gn:Button("收集阿加里",function()
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local hrp = character:WaitForChild("HumanoidRootPart")
--local originalCFrame = hrp.CFrame
for _, mushroom in pairs(workspace.harvest:GetChildren()) do
    local ljxs = mushroom:FindFirstChild("ProximityPrompt")
    if ljxs then
            hrp.CFrame = mushroom.CFrame + Vector3.new(0, 3, 0)
            wait(0.1) 
            fireproximityprompt(ljxs)
    end
end
end)
gn:Button("收集原始动物肉",function()
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local hrp = character:WaitForChild("HumanoidRootPart")
--local originalCFrame = hrp.CFrame
for _, reptile in pairs(workspace.interact:GetChildren()) do
    local ljxsx = reptile:FindFirstChild("HumanoidRootPart")
    if ljxsx then
            local ljxsxx = ljxsx:FindFirstChild("ProximityPrompt")
            hrp.CFrame = ljxsx.CFrame + Vector3.new(0, 3, 0)
            wait(0.1) 
            fireproximityprompt(ljxsxx)
    end
end
end)
local autocllogggg = false
gn:Toggle("自动挥镐子", "", false, function(state)
    autocllogggg = state  -- 同步阀门状态
    
    if state then
        --spawn(function()  -- 使用独立协程
            while autocllogggg do  -- 检测阀门状态
              game:GetService("ReplicatedStorage"):WaitForChild("remotes"):WaitForChild("swing_pickaxe"):FireServer()

              wait(0.01)
            end
        --end)
    else
        print("1")
    end
end)
local autocllog = false
local sta = false
gn:Toggle("自动捡动物尸体", "", false, function(state)
    sta = state  -- 同步阀门状态
    
    if state then
        --spawn(function()  -- 使用独立协程
            while sta do  -- 检测阀门状态
                 for _, reptile in pairs(workspace.interact:GetChildren()) do
                      local jgll = reptile:FindFirstChild("HumanoidRootPart")
                      if jgll then
                          local  jbttt = jgll:FindFirstChild("ProximityPrompt")
                          if jbttt then
                              fireproximityprompt(jbttt)
                          end
                      end
                 end
                 wait(1)
            end
        --end)
    else
        print("1")
    end
end)
local jgg = false
gn:Toggle("自动捡矿石", "", false, function(state)
    jgg = state  -- 同步阀门状态
    
    if state then
        --spawn(function()  -- 使用独立协程
            while jgg do  -- 检测阀门状态
                 for _, ore in pairs(workspace.minerals:GetChildren()) do
                      local jg = ore:FindFirstChild("main")
                      if jg then
                          local prompt4 = jg:FindFirstChild("ProximityPrompt")
                          if prompt4 then
                              fireproximityprompt(prompt4)
                          end
                      end
                 end
                 wait(1)
            end
        --end)
    else
        print("1")
    end
end)
local ajl = false
gn:Toggle("自动捡阿加里", "", false, function(state)
    ajl = state  -- 同步阀门状态
    
    if state then
        --spawn(function()  -- 使用独立协程
            while ajl do  -- 检测阀门状态
                 for _, mushroom in pairs(workspace.harvest:GetChildren()) do
                      local jgjb = mushroom:FindFirstChild("ProximityPrompt")
                      if jgjb then
                        --  local prompt4 = jg:FindFirstChild("ProximityPrompt")
                        --  if prompt4 then
                              fireproximityprompt(jgjb)
                        --  end
                      end
                 end
                 wait(1)
            end
        --end)
    else
        print("1")
    end
end)
local hjj = window:Tab("传送",'10723407389')
local hjj = hjj:section("传送",true)
hjj:Button("回到出生点",function()
player.Character:PivotTo(CFrame.new(872.1915893554688, 75.8834228515625, -1776.0208740234375))
end)
local playerr = window:Tab("玩家",'10723407389')
local playerr = playerr:section("玩家功能",true)
playerr:Textbox("速度", "速度", "请输入速度", function(value)
    lp.Character.Humanoid.WalkSpeed = value
end)
playerr:Textbox("跳跃", "跳跃", "请输入跳跃", function(value)
    lp.Character.Humanoid.JumpPower = value
end)
playerr:Button("飞行",function()
  loadstring(
        "\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\40\39\104\116\116\112\115\58\47\47\103\105\115\116\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\109\101\111\122\111\110\101\89\84\47\98\102\48\51\55\100\102\102\57\102\48\97\55\48\48\49\55\51\48\52\100\100\100\54\55\102\100\99\100\51\55\48\47\114\97\119\47\101\49\52\101\55\52\102\52\50\53\98\48\54\48\100\102\53\50\51\51\52\51\99\102\51\48\98\55\56\55\48\55\52\101\98\51\99\53\100\50\47\97\114\99\101\117\115\37\50\53\50\48\120\37\50\53\50\48\102\108\121\37\50\53\50\48\50\37\50\53\50\48\111\98\102\108\117\99\97\116\111\114\39\41\44\116\114\117\101\41\41\40\41\10\10")()
end)
playerr:Button("解锁视角(第三人称)",function()
game:GetService("Players").LocalPlayer.CameraMaxZoomDistance = 99999
game:GetService("Players").LocalPlayer.CameraMode = Enum.CameraMode.Classic
end)