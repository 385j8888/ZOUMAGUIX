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
local running = false
gn:Toggle("枪械杀戮光环(鹿)", "", false, function(state)
    running = state  -- 同步阀门状态
    
    if state then
        --spawn(function()  -- 使用独立协程
            while running do  -- 检测阀门状态
                  local animalsFolder = workspace:WaitForChild("animals")
                  local deers = animalsFolder:GetChildren()
                  local ReplicatedStorage = game:GetService("ReplicatedStorage")
                  local shootEvent = ReplicatedStorage:WaitForChild("remotes"):WaitForChild("shoot")
                  
                  for _, deer in ipairs(deers) do
                      if deer.Name == "deer" and deer:IsA("Model") and deer.PrimaryPart then
                              local deerPosition = deer.PrimaryPart.Position
        
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
local runningbear = false
gn:Toggle("枪械杀戮光环(熊)", "", false, function(state)
    runningbear = state  -- 同步阀门状态
    
    if state then
        --spawn(function()  -- 使用独立协程
            while runningbear do  -- 检测阀门状态
                  local animalsFolder = workspace:WaitForChild("animals")
                  local deers = animalsFolder:GetChildren()
                  local ReplicatedStorage = game:GetService("ReplicatedStorage")
                  local shootEvent = ReplicatedStorage:WaitForChild("remotes"):WaitForChild("shoot")
                  
                  for _, bear in ipairs(deers) do
                      if bear.Name == "bear" and bear:IsA("Model") and bear.PrimaryPart then
                              local bearPosition = bear.PrimaryPart.Position
        
        -- 动态替换坐标，保留旋转
                              local args = {
                                  [1] = CFrame.new(
                                      bearPosition.X, bearPosition.Y, bearPosition.Z,  bearPosition.X, bearPosition.Y, bearPosition.Z, bearPosition.X, bearPosition.Y, bearPosition.Z, bearPosition.X, bearPosition.Y, bearPosition.Z
                --unpack(originalRotation1) -- 保留原有旋转参数
                                  ),
                                  [2] = CFrame.new(
                                      bearPosition.X, bearPosition.Y, bearPosition.Z,  bearPosition.X, bearPosition.Y, bearPosition.Z, bearPosition.X, bearPosition.Y, bearPosition.Z, bearPosition.X, bearPosition.Y, bearPosition.Z-- 替换为当前deer的位置
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
local mm = false
gn:Toggle("枪械杀戮光环(猛犸象)", "", false, function(state)
    mm = state  -- 同步阀门状态
    
    if state then
        --spawn(function()  -- 使用独立协程
            while mm do  -- 检测阀门状态
                  local mmFolder = workspace:WaitForChild("animals")
                  local Gmm = mmFolder:GetChildren()
                  local ReplicatedStorage = game:GetService("ReplicatedStorage")
                  local shootEvent = ReplicatedStorage:WaitForChild("remotes"):WaitForChild("shoot")
                  
                  for _, mammoth in ipairs(Gmm) do
                      if mammoth.Name == "mammoth" and mammoth:IsA("Model") and mammoth.PrimaryPart then
                              local mammothPosition = mammoth.PrimaryPart.Position
        
        -- 动态替换坐标，保留旋转
                              local args = {
                                  [1] = CFrame.new(
                                      mammothPosition.X, mammothPosition.Y, mammothPosition.Z,  mammothPosition.X, mammothPosition.Y, mammothPosition.Z, mammothPosition.X, mammothPosition.Y, mammothPosition.Z, mammothPosition.X, mammothPosition.Y, mammothPosition.Z
                --unpack(originalRotation1) -- 保留原有旋转参数
                                  ),
                                  [2] = CFrame.new(
                                      mammothPosition.X, mammothPosition.Y, mammothPosition.Z,  mammothPosition.X, mammothPosition.Y, mammothPosition.Z, mammothPosition.X, mammothPosition.Y, mammothPosition.Z, mammothPosition.X, mammothPosition.Y, mammothPosition.Z-- 替换为当前deer的位置
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
local runningg = false
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

local autocllogggg = false
gn:Toggle("自动砍树", "", false, function(state)
    autocllogggg = state  -- 同步阀门状态
    
    if state then
        --spawn(function()  -- 使用独立协程
            while autocllogggg do  -- 检测阀门状态
              local player = game.Players.LocalPlayer
              local character = player.Character or player.CharacterAdded:Wait()
              local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
              local playerPosition = humanoidRootPart.Position
              local args = {
	            playerPosition
              }
                           game:GetService("ReplicatedStorage"):WaitForChild("remotes"):WaitForChild("swing_axe"):FireServer(unpack(args))
              wait(0.1)
            end
        --end)
    else
        print("1")
    end
end)
local pfish = false
gn:Toggle("自动抛鱼竿", "", false, function(state)
    pfish = state  -- 同步阀门状态
    
    if state then
        --spawn(function()  -- 使用独立协程
            while pfish do  -- 检测阀门状态
              game:GetService("ReplicatedStorage"):WaitForChild("remotes"):WaitForChild("cast"):FireServer()

              wait(0.0000000000000000000001)
            end
        --end)
    else
        print("1")
    end
end)
local autopfish = false
gn:Toggle("自动钓鱼", "", false, function(state)
    autopfish = state  -- 同步阀门状态
    
    if state then
        --spawn(function()  -- 使用独立协程
            while autopfish do  -- 检测阀门状态
              local args = {
                	true
              }
              game:GetService("ReplicatedStorage"):WaitForChild("remotes"):WaitForChild("fish_point"):FireServer(unpack(args))

              wait(0.00000000000000000000001)
            end
        --end)
    else
        print("1")
    end
end)
local autocllog = false
gn:Toggle("自动收集木头", "", false, function(state)
    autocllog = state  -- 同步阀门状态
    
    if state then
        --spawn(function()  -- 使用独立协程
            while autocllog do  -- 检测阀门状态
                 for _, log in pairs(workspace.dropped:GetChildren()) do
                      local log2 = log:FindFirstChild("main")
                      if log2 then
                          local prompt2 = log2:FindFirstChild("ProximityPrompt")
                          if prompt2 then
                              fireproximityprompt(prompt2)
                          end
                      end
                 end
                 wait(0.1)
            end
        --end)
    else
        print("1")
    end
end)
local hhk = false
gn:Toggle("自动捡石头，亚麻，浆果，胡萝卜，浆果", "", false, function(state)
    hhk = state  -- 同步阀门状态
    
    if state then
        --spawn(function()  -- 使用独立协程
            while hhk do  -- 检测阀门状态
                 for _, pebbles in pairs(workspace.harvest:GetChildren()) do
                      local jkg = pebbles:FindFirstChild("main")
                      if jkg then
                          local prompt667 = jkg:FindFirstChild("ProximityPrompt")
                          if prompt667 then
                              fireproximityprompt(prompt667)
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
local hhkj = false
gn:Toggle("自动拾取花", "", false, function(state)
    hhkj = state  -- 同步阀门状态
    
    if state then
        --spawn(function()  -- 使用独立协程
            while hhkj do  -- 检测阀门状态
                 for _, flower in pairs(workspace.harvest:GetChildren()) do
                      local jkg8 = flower:FindFirstChild("Object_0")
                      if jkg8 then
                          local prompt6678 = jkg8:FindFirstChild("ProximityPrompt")
                          if prompt6678 then
                              fireproximityprompt(prompt6678)
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
local lrhh = false
gn:Toggle("自动拾取肉，骨头，皮革", "", false, function(state)
    lrhh = state  -- 同步阀门状态
    
    if state then
        --spawn(function()  -- 使用独立协程
            while lrhh do  -- 检测阀门状态
                 -- 获取workspace.dropped的所有后代对象
                 local dropdescendants = workspace.dropped:GetDescendants()
                 for _, obj in ipairs(dropdescendants) do
                     if obj:IsA("ProximityPrompt") then
                        fireproximityprompt(obj)
                     end
                 end
                 wait(1)
            end
        --end)
    else
        print("1")
    end
end)
local autocllojggg = false
gn:Toggle("自动收集零件", "", false, function(state)
    autocllojggg = state  -- 同步阀门状态
    
    if state then
        --spawn(function()  -- 使用独立协程
            while autocllojggg do  -- 检测阀门状态
                  for _, scrap in pairs(workspace.scraps:GetChildren()) do
                      local materiall = scrap:FindFirstChild("defaultMaterial10")
                      if materiall then
                          local promptt = materiall:FindFirstChild("ProximityPrompt")
                          if promptt then
                              fireproximityprompt(promptt)
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
local hj = window:Tab("环境设置",'10723407389')
local hj = hj:section("环境",true)
local rain = workspace.raining
local rainn = false
hj:Toggle("下雨", "", false, function(state)
    rainn = state  -- 同步阀门状态
    
    if state then
        --spawn(function()  -- 使用独立协程
            while rainn do  -- 检测阀门状态
                 rain.Value = true
                 wait(10)
            end
        --end)
    else
        rain.Value = false
    end
end)
local hjj = window:Tab("传送",'10723407389')
local hjj = hjj:section("传送",true)
hjj:Button("回到小屋",function()
player.Character:PivotTo(CFrame.new(1327.796875, 57.53240966796875, 1322.0035400390625))
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
local esp = window:Tab("绘制功能",'10723407389')
local esp= esp:section("绘制",true)
local espanimal = false
esp:Toggle("绘制动物", "", false, function(state)
    espanimal = state  -- 同步阀门状态
    
    if state then
        --spawn(function()  -- 使用独立协程
            while espanimal do  -- 检测阀门状态
                  local animalsFolder = workspace:WaitForChild("animals")

-- 为单个Model创建悬浮文字的函数
                  local function createBillboard(model)
    -- 检查是否已存在悬浮文字组件
                      if not model:FindFirstChild("ModelNameBillboard") and espanimal==true then
        -- 创建BillboardGui组件
                          local billboard = Instance.new("BillboardGui")
                          billboard.Name = "ModelNameBillboard"
                          billboard.Adornee = model  -- 绑定到模型
                          billboard.AlwaysOnTop = true
                          billboard.Size = UDim2.new(0, 200, 0, 50)  -- 显示区域大小
                          billboard.StudsOffset = Vector3.new(0, 3, 0)  -- 在模型上方3单位处显示
        
        -- 创建文字标签
                          local textLabel = Instance.new("TextLabel")
                          textLabel.Size = UDim2.new(1, 0, 1, 0)  -- 占满整个Billboard区域
                          textLabel.BackgroundTransparency = 1  -- 透明背景
                          textLabel.Text = model.Name  -- 显示模型名称
                          textLabel.Font = Enum.Font.SourceSansBold
                          textLabel.TextSize = 24
                          textLabel.TextColor3 = Color3.new(1, 1, 1)  -- 白色文字
                          textLabel.TextStrokeTransparency = 0  -- 文字描边
                          textLabel.TextStrokeColor3 = Color3.new(0, 0, 0)
                          textLabel.Parent = billboard
        
                          billboard.Parent = model
                      end
                  end

-- 初始化处理现有模型
                  for _, model in ipairs(animalsFolder:GetChildren()) do
                      if model:IsA("Model") then
                          createBillboard(model)
                      end
                  end

-- 监听新加入的模型
                  animalsFolder.ChildAdded:Connect(function(child)
                      if child:IsA("Model") then
                          createBillboard(child)
                      end
                  end)
                  wait(5)
            end
        --end)
    else
                  local animalsFolder = workspace:WaitForChild("animals")

-- 删除所有悬浮文字的函数
                  local function removeBillboards()
                      for _, model in ipairs(animalsFolder:GetChildren()) do
                          if model:IsA("Model") then
                              local billboard = model:FindFirstChild("ModelNameBillboard")
                              if billboard then
                                  billboard:Destroy()
                                  print("已从 " .. model.Name .. " 移除悬浮文字")
                              end
                          end
                      end
                  end

-- 执行删除操作
                  removeBillboards()
    end
end)
local espanimal2 = false
esp:Toggle("绘制怪物", "", false, function(state)
    espanimal2 = state  -- 同步阀门状态
    
    if state then
        --spawn(function()  -- 使用独立协程
            while espanimal2 do  -- 检测阀门状态
                  local animals2Folder = workspace:WaitForChild("scps")

-- 为单个Model创建悬浮文字的函数
                  local function createeBillboard(model)
    -- 检查是否已存在悬浮文字组件
                      if not model:FindFirstChild("ModelNameBillboard") and espanimal2==true then
        -- 创建BillboardGui组件
                          local billboard = Instance.new("BillboardGui")
                          billboard.Name = "ModelNameBillboard"
                          billboard.Adornee = model  -- 绑定到模型
                          billboard.AlwaysOnTop = true
                          billboard.Size = UDim2.new(0, 200, 0, 50)  -- 显示区域大小
                          billboard.StudsOffset = Vector3.new(0, 3, 0)  -- 在模型上方3单位处显示
        
        -- 创建文字标签
                          local textLabel = Instance.new("TextLabel")
                          textLabel.Size = UDim2.new(1, 0, 1, 0)  -- 占满整个Billboard区域
                          textLabel.BackgroundTransparency = 1  -- 透明背景
                          textLabel.Text = model.Name  -- 显示模型名称
                          textLabel.Font = Enum.Font.SourceSansBold
                          textLabel.TextSize = 24
                          textLabel.TextColor3 = Color3.new(1, 0, 0)  -- 白色文字
                          textLabel.TextStrokeTransparency = 0  -- 文字描边
                          textLabel.TextStrokeColor3 = Color3.new(0, 0, 0)
                          textLabel.Parent = billboard
        
                          billboard.Parent = model
                      end
                  end

-- 初始化处理现有模型
                  for _, model in ipairs(animals2Folder:GetChildren()) do
                      if model:IsA("Model") then
                          createeBillboard(model)
                      end
                  end

-- 监听新加入的模型
                  animals2Folder.ChildAdded:Connect(function(child)
                      if child:IsA("Model") then
                          createeBillboard(child)
                      end
                  end)
                  wait(5)
            end
        --end)
    else
                  local animals2Folder = workspace:WaitForChild("scps")

-- 删除所有悬浮文字的函数
                  local function remove2Billboards()
                      for _, model in ipairs(animals2Folder:GetChildren()) do
                          if model:IsA("Model") then
                              local billboard = model:FindFirstChild("ModelNameBillboard")
                              if billboard then
                                  billboard:Destroy()
                                  print("已从 " .. model.Name .. " 移除悬浮文字")
                              end
                          end
                      end
                  end

-- 执行删除操作
                  remove2Billboards()
    end
end)