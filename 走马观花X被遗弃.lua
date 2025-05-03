local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/385j8888/ZOUMAGUIX/refs/heads/main/ProtectUI.lua"))()
local jump = false
local jumpp = false
local xj = false
local function removeModelEffects(model)
    local highlight = model:FindFirstChild("ModelHighlight")
    local billboard = model:FindFirstChild("NameBillboard")
    
    if highlight then
        highlight:Destroy()
    end
    
    if billboard then
        billboard:Destroy()
    end
end
local replicatedStorage = game:GetService("ReplicatedStorage")
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
local window = library:new("走马观花X-被遗弃")

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
local gm = window:Tab("主要功能")
local gm = gm:section("主要",true)
gm:Textbox("视野(默认80)", "视野", "请输入视野", function(value)
game:GetService("Players").LocalPlayer.PlayerData.Settings.Game.FieldOfView.Value = value
end)
gm:Toggle("禁用耐力", "", false, function(state)
    jump = state  -- 同步阀门状态
    
    if state then
       --  pawn(function()  -- 使用独立协程
           while jump do  -- 检测阀门状态
                 -- 在游戏启动后或玩家加入时运行此脚本
                          local Players = game:GetService("Players")
                          local player = Players.LocalPlayer

-- 确保角色加载完成
                         -- player.CharacterAdded:Connect(function()
    -- 获取耐力模块
                              local sprintModule = require(game.ReplicatedStorage.Systems.Character.Game.Sprinting)
    
    -- 直接覆盖模块中的关键值
                              sprintModule.StaminaLossDisabled = true
    
    -- 如果模块初始化时重置了该值，可监听初始化完成后再次修改
                           --   if sprintModule.Init then
                                --  local originalInit = sprintModule.Init
                                --  sprintModule.Init = function(...)
                              --        originalInit(...)
                                   --   sprintModule.StaminaLossDisabled = true  -- 确保初始化后仍然生效
                                --  end
                            --  end
                        --  end)
                          wait(0.5)
           end
    else
        local sprintModule = require(game.ReplicatedStorage.Systems.Character.Game.Sprinting)
        sprintModule.StaminaLossDisabled = false
    end
end)
local jjump = false
gm:Toggle("无限耐力2(杀手用这个)", "", false, function(state)
    jjump = state  -- 同步阀门状态
    
    if state then
       --  pawn(function()  -- 使用独立协程
           while jjump do  -- 检测阀门状态
                 -- 在游戏启动后或玩家加入时运行此脚本
                          local Players = game:GetService("Players")
                          local player = Players.LocalPlayer
                              local sprintModule = require(game.ReplicatedStorage.Systems.Character.Game.Sprinting)
                              sprintModule.MinStamina = -100000
                          wait(5)
           end
    else
        local sprintModule = require(game.ReplicatedStorage.Systems.Character.Game.Sprinting)
        sprintModule.MinStamina = 0
    end
end)
gm:Textbox("修机间隔", "速度", "请输入间隔", function(value)
--print(value)
_fixtime = value
end)
gm:Toggle("自动修机(自定义修机间隔)", "", false, function(state)
    xj = state  -- 同步阀门状态
    
    if state then
       --  pawn(function()  -- 使用独立协程
           while xj do  -- 检测阀门状态
                 -- 在游戏启动后或玩家加入时运行此脚本
                                   --  local a = game:GetService("CoreGui").frosty.Main.TabMain:GetChildren()[2].Section.Objs.TextboxModule.TextboxBack.BoxBG.TextBox.Text
                                    -- wait(a)
                                    wait(_fixtime)
                          	         local FartNapFolder = workspace:FindFirstChild("Map")
				                          and workspace.Map:FindFirstChild("Ingame")
				                          and workspace.Map.Ingame:FindFirstChild("Map")
			                         if FartNapFolder then
				                          local closestGenerator, closestDistance = nil, math.huge
				                          local playerPosition = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
				                          for _, g in ipairs(FartNapFolder:GetChildren()) do
					                          if g.Name == "Generator" and g.Progress.Value < 100 then
						                          local distance = (g.Main.Position - playerPosition).Magnitude
						                          if distance < closestDistance then
							                          closestDistance = distance
							                          closestGenerator = g
						                          end
					                          end
				                          end
				                          if closestGenerator then
					                          closestGenerator.Remotes.RE:FireServer()
				                          end
			                         end
			                         --wait(_fixtime)
           end
    else
        print("停止")
    end
end)

local function setupModelEffects(model)
    -- 防止重复添加
    if model:FindFirstChild("ModelHighlight") or model:FindFirstChild("NameBillboard") then
        return
    end

    -- 添加高光效果
    local highlight = Instance.new("Highlight")
    highlight.Name = "ModelHighlight"
    highlight.FillColor = Color3.fromRGB(255, 0, 0)   -- 红色填充
    highlight.OutlineColor = Color3.fromRGB(255, 0, 0) -- 白色边框
    highlight.Parent = model

    -- 添加3D文字
    local billboard = Instance.new("BillboardGui")
    billboard.Name = "NameBillboard"
    billboard.Size = UDim2.new(0, 100, 0, 50)
    billboard.StudsOffset = Vector3.new(0, 2, 0)
    billboard.AlwaysOnTop = true
    billboard.Adornee = model.PrimaryPart or model:FindFirstChildWhichIsA("BasePart")
    billboard.Parent = model

    local textLabel = Instance.new("TextLabel")
    textLabel.Size = UDim2.new(1, 0, 1, 0)
    textLabel.Text = model.Name
    textLabel.Font = Enum.Font.SourceSansBold
    textLabel.TextSize = 11
    textLabel.TextColor3 = Color3.new(255, 0, 0)
    textLabel.BackgroundTransparency = 1
    textLabel.Parent = billboard
end
local function setupSurvivorsModelEffects(model)
    -- 防止重复添加
    if model:FindFirstChild("ModelHighlight") or model:FindFirstChild("NameBillboard") then
        return
    end

    -- 添加高光效果
    local highlight = Instance.new("Highlight")
    highlight.Name = "ModelHighlight"
    highlight.FillColor = Color3.fromRGB(0, 255, 0)   -- 红色填充
    highlight.OutlineColor = Color3.fromRGB(0, 255, 0) -- 白色边框
   -- highlight.Transparency = 0.5
    highlight.Parent = model

    -- 添加3D文字
    local billboard = Instance.new("BillboardGui")
    billboard.Name = "NameBillboard"
    billboard.Size = UDim2.new(0, 100, 0, 50)
    billboard.StudsOffset = Vector3.new(0, 2, 0)
    billboard.AlwaysOnTop = true
    billboard.Adornee = model.PrimaryPart or model:FindFirstChildWhichIsA("BasePart")
    billboard.Parent = model

    local textLabel = Instance.new("TextLabel")
    textLabel.Size = UDim2.new(1, 0, 1, 0)
    textLabel.Text = model.Name
    textLabel.Font = Enum.Font.SourceSansBold
    textLabel.TextSize = 11
    textLabel.TextColor3 = Color3.new(0, 255, 0)
    textLabel.BackgroundTransparency = 1
    textLabel.Parent = billboard
end

-- 主程序

local kill = false
local ts = window:Tab("透视功能")
local ts = ts:section("透视",true)
ts:Toggle("透视杀手", "", false, function(state)
    kill = state  -- 同步阀门状态
    
    if state then
       --  pawn(function()  -- 使用独立协程
           while kill do  -- 检测阀门状态
             local killFolder = workspace:FindFirstChild("Players") and workspace.Players:FindFirstChild("Killers")
               if killFolder then
    -- 处理已存在的Model
                              for _, child in ipairs(killFolder:GetChildren()) do
                                  if child:IsA("Model") then
                                      setupModelEffects(child)
                                  end
                              end
               end
               wait(2)
           end
    else
                         -- local function cleanAllEffects()
                              local killFolder = workspace:FindFirstChild("Players") 
                                  and workspace.Players:FindFirstChild("Killers")
    
                              if killFolder then
                                  for _, child in ipairs(killFolder:GetChildren()) do
                                      if child:IsA("Model") then
                                          removeModelEffects(child)
                                      end
                                  end
                              end
                        --  end

    end
end)
ts:Toggle("透视幸存者", "", false, function(state)
    Survivors = state  -- 同步阀门状态
    
    if state then
       --  pawn(function()  -- 使用独立协程
           while Survivors do  -- 检测阀门状态
             local SurvivorsFolder = workspace:FindFirstChild("Players") and workspace.Players:FindFirstChild("Survivors")
               if SurvivorsFolder and Survivors==true then
    -- 处理已存在的Model
                              for _, child in ipairs(SurvivorsFolder:GetChildren()) do
                                  if child:IsA("Model") then
                                      setupSurvivorsModelEffects(child)
                                  end
                              end
               end
               wait(2)
           end
    else
                         -- local function cleanAllEffects()
                              local SurvivorsFolder = workspace:FindFirstChild("Players") 
                                  and workspace.Players:FindFirstChild("Survivors")
    
                              if SurvivorsFolder then
                                  for _, child in ipairs(SurvivorsFolder:GetChildren()) do
                                      if child:IsA("Model") then
                                          removeModelEffects(child)
                                      end
                                  end
                              end
                        --  end

    end
end)
local item = false
ts:Toggle("透视物品", "", false, function(state)
    item = state  -- 同步阀门状态
    
    if state then
       --  pawn(function()  -- 使用独立协程
           while item do  -- 检测阀门状态
                          local ingame = workspace:WaitForChild("Map"):WaitForChild("Ingame")

                          for _, instance in ipairs(ingame:GetDescendants()) do
                              if instance:IsA("Tool") then
                                  -- 添加高光 (Highlight)
                                  if not instance:FindFirstChildOfClass("Highlight") and item==true then
                                      local highlight = Instance.new("Highlight")
                                      highlight.Name = "Highlight"
                                      highlight.FillColor = Color3.fromRGB(255, 255, 0) -- 黄色填充
                                      highlight.OutlineColor = Color3.fromRGB(255, 165, 0) -- 橙色边框
                                      highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop -- 始终显示在最上层
                                      highlight.Parent = instance
                                  end

        -- 添加 3D 文字 (BillboardGui)
                                  if not instance:FindFirstChild("NameLabel") and item==true then
                                      local billboard = Instance.new("BillboardGui")
                                      billboard.Name = "NameLabel"
                                      billboard.Size = UDim2.new(0, 50, 0, 50) -- 显示区域大小
                                      billboard.StudsOffset = Vector3.new(0, 1, 0) -- 在 Tool 上方 2 单位
                                      billboard.AlwaysOnTop = true -- 始终显示在最上层
            
                                      local textLabel = Instance.new("TextLabel")
                                      textLabel.Size = UDim2.new(1, 0, 1, 0) -- 占满整个 BillboardGui
                                      textLabel.BackgroundTransparency = 1 -- 透明背景
                                      textLabel.Text = instance.Name -- 显示 Tool 的名字
                                      textLabel.Font = Enum.Font.SourceSansBold
                                      textLabel.TextSize = 11
                                      textLabel.TextColor3 = Color3.new(255, 165, 0) -- 白色文字
                                      textLabel.Parent = billboard
            
                                      billboard.Parent = instance
                                  end
                              end
                          end
                          wait(2)
           end
    else
            local ingame = workspace:FindFirstChild("Map") and workspace.Map:FindFirstChild("Ingame")

                          if ingame then
                              for _, tool in ipairs(ingame:GetChildren()) do
                                  if tool:IsA("Tool") then
            -- 删除Highlight对象
                                      local highlight = tool:FindFirstChild("Highlight")
                                      if highlight then
                                          highlight:Destroy()
                                      end
            
            -- 删除NameLabel对象
                                      local nameLabel = tool:FindFirstChild("NameLabel")
                                      if nameLabel then
                                          nameLabel:Destroy()
                                      end
                                  end
                              end
                          end
    end
end)
local djjb = false
ts:Toggle("透视电机", "", false, function(state)
    djjb = state
    if state then
           while djjb do
                    local targetFolder = workspace.Map.Ingame.Map

                    for _, child in ipairs(targetFolder:GetChildren()) do
                        if child:IsA("Model") and child.Name == "Generator" then
                            if not child.PrimaryPart then
                                warn("Generator " .. child.Name .. " 缺少 PrimaryPart，無法附加 3D 文字。")
                            else
            -- 检查并添加 3D 文字
                                local billboard = child:FindFirstChild("GeneratorBillboard")
                                if not billboard and djjb==true then
                -- 创建 BillboardGui
                                    billboard = Instance.new("BillboardGui")
                                    billboard.Name = "GeneratorBillboard"
                                    billboard.Size = UDim2.new(4, 0, 2, 0)
                                    billboard.StudsOffset = Vector3.new(0, 3, 0) -- 在模型上方 3 米
                                    billboard.Adornee = child.PrimaryPart
                                    billboard.AlwaysOnTop = true
                                    billboard.MaxDistance = 1000
                                    billboard.Parent = child

                -- 创建 TextLabel
                                    local textLabel = Instance.new("TextLabel")
                                    textLabel.Text = "电机"
                                    textLabel.Size = UDim2.new(1, 0, 1, 0)
                                  --  textLabel.Font = Enum.Font.SourceHanSansCN
                                    textLabel.TextSize = 13
                                    textLabel.TextColor3 = Color3.new(1, 1, 1)
                                    textLabel.BackgroundTransparency = 1
                                    textLabel.Parent = billboard
                                end

                                local highlight = child:FindFirstChildOfClass("Highlight")
                                if not highlight and djjb==true then
                                    highlight = Instance.new("Highlight")
                                    highlight.Name = "GeneratorHighlight"
                                    highlight.FillColor = Color3.new(1, 0, 0) -- 紅色填充
                                    highlight.OutlineColor = Color3.new(0.5, 0, 0) -- 暗紅色輪廓
                                    highlight.Parent = child
                                end
                            end
                        end
                    end
                    wait(3)
           end
    else
                          local targetFolder = workspace.Map.Ingame.Map

                          for _, model in ipairs(targetFolder:GetChildren()) do
                              if model:IsA("Model") and model.Name == "Generator" then
        -- 删除所有高光特效
                                  for _, obj in ipairs(model:GetChildren()) do
                                      if obj:IsA("Highlight") then
                                          obj:Destroy()
                                      end
                                  end

        -- 删除所有 3D 文字
                                  for _, obj in ipairs(model:GetChildren()) do
                                      if obj:IsA("BillboardGui") then
                                          obj:Destroy()
                                      end
                                  end
                              end
                          end
    end
end)
local john = false
ts:Toggle("透视约翰的大汗脚漩涡", "", false, function(state)
    john = state
    if state then
           while john do
                    local targetParent = workspace:FindFirstChild("Map") and workspace.Map:FindFirstChild("Ingame")

                    for _, obj in ipairs(targetParent:GetDescendants()) do
                        if obj.Name == "Shadow" then
        -- 检查是否已存在 3D 文字
                            local existingGui = obj:FindFirstChild("Shadow3DText")
                            if not existingGui and john==true then
            -- 创建 BillboardGui
                                local billboard = Instance.new("BillboardGui")
                                billboard.Name = "Shadow3DText"
                                billboard.Size = UDim2.new(4, 0, 2, 0)  -- 根据文字大小调整
                                billboard.StudsOffset = Vector3.new(0, 1 , 0)  -- 在部件上方显示
                                billboard.AlwaysOnTop = true
                                billboard.Adornee = obj  -- 绑定到目标部件
                                billboard.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
                                billboard.MaxDistance = 500  -- 最大可见距离
            
            -- 创建文本标签
                                local textLabel = Instance.new("TextLabel")
                                textLabel.Text = "脚气"
                                textLabel.Size = UDim2.new(1, 0, 1 ,0)
                               -- textLabel.Font = Enum.Font.SourceHanSansCN  -- 中文字体
                                textLabel.TextColor3 = Color3.new(240, 0, 0)
                                textLabel.TextStrokeColor3 = Color3.new(1, 1, 1)
                                textLabel.TextStrokeTransparency = 0.5
                                textLabel.TextSize = 11
                              --  textLabel.TextScaled = true  -- 自动缩放文字
                                textLabel.BackgroundTransparency = 1  -- 透明背景
                                textLabel.Parent = billboard
            
                                billboard.Parent = obj
                            end
                        end
                    end
                    wait(5)
           end
    else
                   local targetParent = workspace:FindFirstChild("Map") and workspace.Map:FindFirstChild("Ingame")

-- 删除现有文字
                    for _, obj in ipairs(targetParent:GetDescendants()) do
                        if obj.Name == "Shadow" and obj:IsA("BasePart") then
                            local existingGui = obj:FindFirstChild("Shadow3DText")
                            if existingGui then
                                existingGui:Destroy()
                            end
                        end
                    end
    end
end)
local cool = false

local zdd = window:Tab("自动功能")
local zdd = zdd:section("自动功能",true)
local coin = false
zdd:Toggle("机会自动抛硬币", "", false, function(state)
    coin = state
    
    if state then
           while coin do
                          local args = {
                            [1] = "UseActorAbility",
                            [2] = "CoinFlip"
                          }

                          game:GetService("ReplicatedStorage"):WaitForChild("Modules"):WaitForChild("Network"):WaitForChild("RemoteEvent"):FireServer(unpack(args))
               wait(0.1)
           end
    else
         print("关")
    end
end)
local function monitorSubspaceTripmine()
    local ingameLocation = workspace:WaitForChild("Map"):WaitForChild("Ingame")
    
    ingameLocation.ChildAdded:Connect(function(newChild)
        if newChild.Name == "SubspaceTripmine" then
            game:GetService("StarterGui"):SetCore("SendNotification", { 
            	Title = "走马观花X";
            	Text = "检测到塔夫扔了炸弹！";
            	Icon = "rbxthumb://type=Asset&id=17366451283&w=150&h=150";
            Duration = 3})
        end
    end)
end

monitorSubspaceTripmine()
local function monitorPizzaSpawn()
    local ingameFolder = workspace:WaitForChild("Map"):WaitForChild("Ingame")
    
    ingameFolder.ChildAdded:Connect(function(child)
        if child.Name == "Pizza" then
            game:GetService("StarterGui"):SetCore("SendNotification", { 
            	Title = "走马观花X";
            	Text = "检测到有人扔了披萨！";
            	Icon = "rbxthumb://type=Asset&id=17366451283&w=150&h=150";
            Duration = 3})
        end
    end)
end

monitorPizzaSpawn()
local function PizzaSpawn()
    local ingameFolder = workspace:WaitForChild("Map"):WaitForChild("Ingame")
    
    ingameFolder.ChildAdded:Connect(function(child)
        if child.Name == "PizzaDeliveryRig" then
            game:GetService("StarterGui"):SetCore("SendNotification", { 
            	Title = "走马观花X";
            	Text = "酷小孩召唤了他的小弟！";
            	Icon = "rbxthumb://type=Asset&id=17366451283&w=150&h=150";
            Duration = 3})
        end
    end)
end
PizzaSpawn()

local function deepShadowMonitor()
    -- 安全获取目标容器（带超时机制）
    local map = workspace:WaitForChild("Map", 5)
    if not map then
        warn("未找到 Map 文件夹")
        return
    end
    
    local ingame = map:WaitForChild("Ingame", 5)
    if not ingame then
        warn("未找到 Ingame 文件夹")
        return
    end

    -- 深度检测函数
    local function onDescendantAdded(descendant)
        if descendant.Name == "Shadow" then
            game:GetService("StarterGui"):SetCore("SendNotification", { 
                    	Title = "走马观花X";
                    	Text = "约翰在场上留下了脚气";
                    	Icon = "rbxthumb://type=Asset&id=17366451283&w=150&h=150";
            Duration = 3})
        end
    end

    -- 监听现有及新增对象
    ingame.DescendantAdded:Connect(onDescendantAdded)
    
end

deepShadowMonitor()