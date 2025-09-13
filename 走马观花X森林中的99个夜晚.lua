local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/385j8888/ZOUMAGUIX/refs/heads/main/ProtectUI.lua"))()
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
local window = library:new("走马观花X-森林中的99个夜晚","light")

local creds = window:Tab("基本信息")

local bin = creds:section("信息",true)

    bin:Label("你的注入器:"..identifyexecutor())
    bin:Label("作者:小爱同学")
    bin:Label("走马观花X交流群:947178829")

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
local gn = window:Tab("收集")
local gn = gn:section("带来",true)

gn:Button("带来木头",function()
--  for i = 1, _cishu do
      local Players = game:GetService("Players")
      local ReplicatedStorage = game:GetService("ReplicatedStorage")
      local RequestBagStoreItem = ReplicatedStorage.RemoteEvents.RequestBagStoreItem

      local player = Players.LocalPlayer
      local inventory = player.Inventory

      if inventory then
         for _, item in pairs(inventory:GetChildren()) do
           for _, itemm in ipairs(workspace.Items:GetChildren()) do
             if itemm.Name=="Log" then
                RequestBagStoreItem:InvokeServer(item, itemm)
             end
           end
         end
      end
      
      task.wait(0.1)
  --    if inventory then
         for _, item in pairs(inventory:GetChildren()) do
                local args = {
                	item,
                	workspace:WaitForChild("Items"):WaitForChild("Log"),
                	true
                }
                game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("RequestBagDropItem"):FireServer(unpack(args))

         end
    --  end
 -- end
end)
gn:Button("带来生兔肉",function()
local Players = game:GetService("Players")
      local ReplicatedStorage = game:GetService("ReplicatedStorage")
      local RequestBagStoreItem = ReplicatedStorage.RemoteEvents.RequestBagStoreItem

      local player = Players.LocalPlayer
      local inventory = player.Inventory

      if inventory then
         for _, item in pairs(inventory:GetChildren()) do
           for _, itemm in ipairs(workspace.Items:GetChildren()) do
             if itemm.Name=="Morsel" then
                RequestBagStoreItem:InvokeServer(item, itemm)
             end
           end
         end
      end
      
      task.wait(0.1)
  --    if inventory then
         for _, item in pairs(inventory:GetChildren()) do
                local args = {
                	item,
                	workspace:WaitForChild("Items"):WaitForChild("Morsel"),
                	true
                }
                game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("RequestBagDropItem"):FireServer(unpack(args))

         end
end)
gn:Button("带来风扇",function()
local Players = game:GetService("Players")
      local ReplicatedStorage = game:GetService("ReplicatedStorage")
      local RequestBagStoreItem = ReplicatedStorage.RemoteEvents.RequestBagStoreItem

      local player = Players.LocalPlayer
      local inventory = player.Inventory

      if inventory then
         for _, item in pairs(inventory:GetChildren()) do
           for _, itemm in ipairs(workspace.Items:GetChildren()) do
             if itemm.Name=="Broken Fan" then
                RequestBagStoreItem:InvokeServer(item, itemm)
             end
           end
         end
      end
      
      task.wait(0.1)
  --    if inventory then
         for _, item in pairs(inventory:GetChildren()) do
                local args = {
                	item,
                	workspace:WaitForChild("Items"):WaitForChild("Broken Fan"),
                	true
                }
                game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("RequestBagDropItem"):FireServer(unpack(args))

         end
end)
gn:Button("带来萝卜",function()
local Players = game:GetService("Players")
      local ReplicatedStorage = game:GetService("ReplicatedStorage")
      local RequestBagStoreItem = ReplicatedStorage.RemoteEvents.RequestBagStoreItem

      local player = Players.LocalPlayer
      local inventory = player.Inventory

      if inventory then
         for _, item in pairs(inventory:GetChildren()) do
           for _, itemm in ipairs(workspace.Items:GetChildren()) do
             if itemm.Name=="Carrot" then
                RequestBagStoreItem:InvokeServer(item, itemm)
             end
           end
         end
      end
      
      task.wait(0.1)
  --    if inventory then
         for _, item in pairs(inventory:GetChildren()) do
                local args = {
                	item,
                	workspace:WaitForChild("Items"):WaitForChild("Carrot"),
                	true
                }
                game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("RequestBagDropItem"):FireServer(unpack(args))

         end
end)
gn:Button("带来煤炭",function()
local Players = game:GetService("Players")
      local ReplicatedStorage = game:GetService("ReplicatedStorage")
      local RequestBagStoreItem = ReplicatedStorage.RemoteEvents.RequestBagStoreItem

      local player = Players.LocalPlayer
      local inventory = player.Inventory

      if inventory then
         for _, item in pairs(inventory:GetChildren()) do
           for _, itemm in ipairs(workspace.Items:GetChildren()) do
             if itemm.Name=="Coal" then
                RequestBagStoreItem:InvokeServer(item, itemm)
             end
           end
         end
      end
      
      task.wait(0.1)
   --   if inventory then
         for _, item in pairs(inventory:GetChildren()) do
                local args = {
                	item,
                	workspace:WaitForChild("Items"):WaitForChild("Coal"),
                	true
                }
                game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("RequestBagDropItem"):FireServer(unpack(args))

         end
      --end
end)
gn:Button("带来老收音机",function()
local Players = game:GetService("Players")
      local ReplicatedStorage = game:GetService("ReplicatedStorage")
      local RequestBagStoreItem = ReplicatedStorage.RemoteEvents.RequestBagStoreItem

      local player = Players.LocalPlayer
      local inventory = player.Inventory

      if inventory then
         for _, item in pairs(inventory:GetChildren()) do
           for _, itemm in ipairs(workspace.Items:GetChildren()) do
             if itemm.Name=="Old Radio" then
                RequestBagStoreItem:InvokeServer(item, itemm)
             end
           end
         end
      end
      
      task.wait(0.1)
  --    if inventory then
         for _, item in pairs(inventory:GetChildren()) do
                local args = {
                	item,
                	workspace:WaitForChild("Items"):WaitForChild("Old Radio"),
                	true
                }
                game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("RequestBagDropItem"):FireServer(unpack(args))

         end
end)
gn:Button("带来手枪弹药",function()
local Players = game:GetService("Players")
      local ReplicatedStorage = game:GetService("ReplicatedStorage")
      local RequestBagStoreItem = ReplicatedStorage.RemoteEvents.RequestBagStoreItem

      local player = Players.LocalPlayer
      local inventory = player.Inventory

      if inventory then
         for _, item in pairs(inventory:GetChildren()) do
           for _, itemm in ipairs(workspace.Items:GetChildren()) do
             if itemm.Name=="Revolver Ammo" then
                RequestBagStoreItem:InvokeServer(item, itemm)
             end
           end
         end
      end
      
      task.wait(0.1)
  --    if inventory then
         for _, item in pairs(inventory:GetChildren()) do
                local args = {
                	item,
                	workspace:WaitForChild("Items"):WaitForChild("Revolver Ammo"),
                	true
                }
                game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("RequestBagDropItem"):FireServer(unpack(args))

         end
end)
gn:Button("带来步枪弹药",function()
local Players = game:GetService("Players")
      local ReplicatedStorage = game:GetService("ReplicatedStorage")
      local RequestBagStoreItem = ReplicatedStorage.RemoteEvents.RequestBagStoreItem

      local player = Players.LocalPlayer
      local inventory = player.Inventory

      if inventory then
         for _, item in pairs(inventory:GetChildren()) do
           for _, itemm in ipairs(workspace.Items:GetChildren()) do
             if itemm.Name=="Rifle Ammo" then
                RequestBagStoreItem:InvokeServer(item, itemm)
             end
           end
         end
      end
      
      task.wait(0.1)
  --    if inventory then
         for _, item in pairs(inventory:GetChildren()) do
                local args = {
                	item,
                	workspace:WaitForChild("Items"):WaitForChild("Rifle Ammo"),
                	true
                }
                game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("RequestBagDropItem"):FireServer(unpack(args))

         end
end)

gn:Button("带来螺栓",function()
local Players = game:GetService("Players")
      local ReplicatedStorage = game:GetService("ReplicatedStorage")
      local RequestBagStoreItem = ReplicatedStorage.RemoteEvents.RequestBagStoreItem

      local player = Players.LocalPlayer
      local inventory = player.Inventory

      if inventory then
         for _, item in pairs(inventory:GetChildren()) do
           for _, itemm in ipairs(workspace.Items:GetChildren()) do
             if itemm.Name=="Bolt" then
                RequestBagStoreItem:InvokeServer(item, itemm)
             end
           end
         end
      end
      
      task.wait(0.1)
  --    if inventory then
         for _, item in pairs(inventory:GetChildren()) do
                local args = {
                	item,
                	workspace:WaitForChild("Items"):WaitForChild("Bolt"),
                	true
                }
                game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("RequestBagDropItem"):FireServer(unpack(args))

         end
end)
gn:Button("带来手枪",function()
local Players = game:GetService("Players")
      local ReplicatedStorage = game:GetService("ReplicatedStorage")
      local RequestBagStoreItem = ReplicatedStorage.RemoteEvents.RequestBagStoreItem

      local player = Players.LocalPlayer
      local inventory = player.Inventory

      if inventory then
         for _, item in pairs(inventory:GetChildren()) do
           for _, itemm in ipairs(workspace.Items:GetChildren()) do
             if itemm.Name=="Revolver" then
                RequestBagStoreItem:InvokeServer(item, itemm)
             end
           end
         end
      end
      
      task.wait(0.1)
  --    if inventory then
         for _, item in pairs(inventory:GetChildren()) do
                local args = {
                	item,
                	workspace:WaitForChild("Items"):WaitForChild("Revolver"),
                	true
                }
                game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("RequestBagDropItem"):FireServer(unpack(args))

         end
end)
gn:Button("带来金属板",function()local Players = game:GetService("Players")
      local ReplicatedStorage = game:GetService("ReplicatedStorage")
      local RequestBagStoreItem = ReplicatedStorage.RemoteEvents.RequestBagStoreItem

      local player = Players.LocalPlayer
      local inventory = player.Inventory

      if inventory then
         for _, item in pairs(inventory:GetChildren()) do
           for _, itemm in ipairs(workspace.Items:GetChildren()) do
             if itemm.Name=="Sheet Metal" then
                RequestBagStoreItem:InvokeServer(item, itemm)
             end
           end
         end
      end
      
      task.wait(0.1)
  --    if inventory then
         for _, item in pairs(inventory:GetChildren()) do
                local args = {
                	item,
                	workspace:WaitForChild("Items"):WaitForChild("Sheet Metal"),
                	true
                }
                game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("RequestBagDropItem"):FireServer(unpack(args))

         end
end)
gn:Button("带来老旧手电筒",function()
local Players = game:GetService("Players")
      local ReplicatedStorage = game:GetService("ReplicatedStorage")
      local RequestBagStoreItem = ReplicatedStorage.RemoteEvents.RequestBagStoreItem

      local player = Players.LocalPlayer
      local inventory = player.Inventory

      if inventory then
         for _, item in pairs(inventory:GetChildren()) do
           for _, itemm in ipairs(workspace.Items:GetChildren()) do
             if itemm.Name=="Old Flashlight" then
                RequestBagStoreItem:InvokeServer(item, itemm)
             end
           end
         end
      end
      
      task.wait(0.1)
  --    if inventory then
         for _, item in pairs(inventory:GetChildren()) do
                local args = {
                	item,
                	workspace:WaitForChild("Items"):WaitForChild("Old Flashlight"),
                	true
                }
                game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("RequestBagDropItem"):FireServer(unpack(args))

         end
end)
gn:Button("带来燃料罐",function()
local Players = game:GetService("Players")
      local ReplicatedStorage = game:GetService("ReplicatedStorage")
      local RequestBagStoreItem = ReplicatedStorage.RemoteEvents.RequestBagStoreItem

      local player = Players.LocalPlayer
      local inventory = player.Inventory

      if inventory then
         for _, item in pairs(inventory:GetChildren()) do
           for _, itemm in ipairs(workspace.Items:GetChildren()) do
             if itemm.Name=="Fuel Canister" then
                RequestBagStoreItem:InvokeServer(item, itemm)
             end
           end
         end
      end
      
      task.wait(0.1)
  --    if inventory then
         for _, item in pairs(inventory:GetChildren()) do
                local args = {
                	item,
                	workspace:WaitForChild("Items"):WaitForChild("Fuel Canister"),
                	true
                }
                game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("RequestBagDropItem"):FireServer(unpack(args))

         end
end)

local esp = window:Tab("透视")
local esp = esp:section("透视",true)
local swesp = false
esp:Toggle("透视所有生物", "", false, function(state)
    swesp = state  -- 同步阀门状态
    
    if state then
        --spawn(function()  -- 使用独立协程
           while swesp do  -- 检测阀门状态
                  local swWorkspace = workspace.Characters

             for _, model in ipairs(swWorkspace:GetChildren()) do
                 if model:IsA("Model") then
                     local existingGui = model:FindFirstChild("ModelNameBillboard")
        
                     if not existingGui and swesp==true then
                         local billboard = Instance.new("BillboardGui")
                         billboard.Name = "ModelNameBillboard"
                         billboard.Adornee = model
                         billboard.Size = UDim2.new(5, 0, 1, 0)
                         billboard.StudsOffset = Vector3.new(0, 3, 0)
                         billboard.AlwaysOnTop = true
                         billboard.LightInfluence = 0
                         billboard.MaxDistance = 10000000
            
                         local textLabel = Instance.new("TextLabel")
                         textLabel.Size = UDim2.new(1, 0, 1, 0)
                         textLabel.BackgroundTransparency = 1
                         textLabel.Text = model.Name
                         textLabel.Font = Enum.Font.SourceSansBold
                         textLabel.TextSize = 20
                         textLabel.TextColor3 = Color3.new(1, 0, 0)
                         textLabel.TextStrokeTransparency = 0.5
            
                         textLabel.Parent = billboard
                         billboard.Parent = model
                     end
                 end
             end
             wait(1)
           end
        --end)
    else
             local swWorkspace = workspace.Characters

             for _, model in ipairs(swWorkspace:GetChildren()) do
                 local billboard = model:FindFirstChild("ModelNameBillboard")
                 if billboard then
                     billboard:Destroy()
                 end
             end
    end
end)

local zy = window:Tab("主要")
local zy = zy:section("主要",true)
zy:Slider("速度", "速度设置", 16, 16, 200, false, function(value)
lp.Character.Humanoid.WalkSpeed = value
end)
local hhk = false
zy:Button("锁血",function()
local args = {
    [1] = -999999999999
}

game:GetService("ReplicatedStorage").RemoteEvents.DamagePlayer:FireServer(unpack(args))
end)
local hhkk = false
zy:Toggle("自动击晕鹿", "", false, function(state)
    hhkk = state  -- 同步阀门状态
    
    if state then
        --spawn(function()  -- 使用独立协程
            while hhkk do  -- 检测阀门状态
                  local args = {
                      [1] = workspace.Characters.Deer
                  }

                  game:GetService("ReplicatedStorage").RemoteEvents.MonsterHitByTorch:InvokeServer(unpack(args))
                  wait(0.5)
            end
        --end)
    else
        print("1")
    end
end)


local hhk = false
zy:Toggle("杀戮光环(先拿斧头再开)", "", false, function(state)
    hhk = state  -- 同步阀门状态
    
    if state then
        --spawn(function()  -- 使用独立协程
            while hhk do  -- 检测阀门状态
                      local Players = game:GetService("Players")
                      local ReplicatedStorage = game:GetService("ReplicatedStorage")
                      local LocalPlayer = Players.LocalPlayer
                      
                      local Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
                      local Humanoid = Character:WaitForChild("Humanoid")
                      local HumanoidRootPart = Character:WaitForChild("HumanoidRootPart")

                      local AttackRange = 100
                      local ValidWeapons = {["Old Axe"]=true, ["Good Axe"]=true, ["Spear"]=true, ["Hatchet"]=true, ["Bone Club"]=true}
                      local AttackRemote = ReplicatedStorage:FindFirstChild("RemoteEvents") and ReplicatedStorage.RemoteEvents:FindFirstChild("ToolDamageObject")

                          if not Character or not HumanoidRootPart or not AttackRemote then return end

   
                          local ToolHandle = Character:FindFirstChild("ToolHandle")
                          if not ToolHandle then return end
                          local CurrentTool = ToolHandle.OriginalItem.Value
                          if not CurrentTool or not ValidWeapons[CurrentTool.Name] then return end

   
                          for _, Enemy in pairs(workspace.Characters:GetChildren()) do
                              if Enemy:IsA("Model") 
                                 and Enemy:FindFirstChild("HumanoidRootPart") 
                                 and Enemy:FindFirstChild("HitRegisters") 
                              then
                                  local Distance = (HumanoidRootPart.Position - Enemy.HumanoidRootPart.Position).Magnitude
                                  if Distance <= AttackRange then
                                      AttackRemote:InvokeServer(Enemy, CurrentTool, true, HumanoidRootPart.CFrame)
                                  end
                              end
                          end
                          wait(0.7)
            end
        --end)
    else
        print("1")
    end
end)
-- 自动砍树（无function/无循环/运行即生效）
-- 功能：运行后自动砍伐100范围内树木，支持指定斧头

-- 1. 初始化基础服务与核心变量





local autow = false
zy:Toggle("范围自动砍树", "", false, function(state)
    autow = state  -- 同步阀门状态
    
    if state then
        --spawn(function()  -- 使用独立协程
            while autow do  -- 检测阀门状态
                      local Players = game:GetService("Players")
                      local ReplicatedStorage = game:GetService("ReplicatedStorage")
                      local RunService = game:GetService("RunService")
                      local LocalPlayer = Players.LocalPlayer


                      local Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
                      local Humanoid = Character:WaitForChild("Humanoid")
                      local HumanoidRootPart = Character:WaitForChild("HumanoidRootPart")


                      local ChopRange = 100  
                      local ChopCooldown = 0.7  
                      local LastChopTime = 0 

                      local ValidAxes = {["Old Axe"]=true, ["Stone Axe"]=true, ["Iron Axe"]=true}

                      local ChopRemote = ReplicatedStorage:FindFirstChild("RemoteEvents") and ReplicatedStorage.RemoteEvents:FindFirstChild("ToolDamageObject")
                          if not Character or not HumanoidRootPart or not ChopRemote then return end

    
                          local CurrentTime = tick()
                          if CurrentTime - LastChopTime < ChopCooldown then return end

   
                          local ToolHandle = Character:FindFirstChild("ToolHandle")
                          if not ToolHandle then return end  -- 未装备工具，跳过
                          local CurrentTool = ToolHandle.OriginalItem.Value
                          if not CurrentTool or not ValidAxes[CurrentTool.Name] then return end 

    
                          local TreePaths = {workspace.Map.Foliage, workspace.Map.Landmarks}
                          for _, Path in pairs(TreePaths) do
    
                              if not Path then continue end

      
                              for _, Tree in pairs(Path:GetChildren()) do
         
                                  local IsValidTree = table.find({"Small Tree", "TreeBig1", "TreeBig2", "TreeBig3"}, Tree.Name) ~= nil
                                  if not (Tree:IsA("Model") and IsValidTree and Tree:FindFirstChild("HitRegisters")) then
                                      continue  
                                  end

         
                                  local TreePart = Tree:FindFirstChild("Trunk") 
                                                 or Tree:FindFirstChild("HumanoidRootPart") 
                                                 or Tree.PrimaryPart
                                  if not TreePart then continue end  

           
                                  local Distance = (HumanoidRootPart.Position - TreePart.Position).Magnitude
                                  if Distance <= ChopRange then
            
                                      ChopRemote:InvokeServer(Tree, CurrentTool, true, HumanoidRootPart.CFrame)
                                      
                                      LastChopTime = CurrentTime  
                                     -- break  
                                  end
                              end
                          end
                         -- wait(0.15)
            end
        --end)
    else
        print("1")
    end
end)

local huanjing = window:Tab("环境")
local huanjing = huanjing:section("环境",true)
huanjing:Button("全图无黑暗",function()
Lighting = game:GetService("Lighting")
Lighting.Brightness = 2
	Lighting.ClockTime = 14
	Lighting.FogEnd = 100000
	Lighting.GlobalShadows = false
	Lighting.OutdoorAmbient = Color3.fromRGB(128, 128, 128)
end)

local plantt = window:Tab("圆圈种树")
local plantt = plantt:section("圆圈种树",true)
plantt:Textbox("半径", "半径", "请输入圆圈半径", function(value)
    _R = value
end)
plantt:Textbox("每个树隔多远", "每个树隔多远", "请输入", function(value)
    _jgg = value
end)
plantt:Button("开种",function()
local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local RequestPlantItem = ReplicatedStorage:WaitForChild("RemoteEvents"):WaitForChild("RequestPlantItem")
local Sapling = workspace:WaitForChild("Items"):WaitForChild("Sapling")

local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local rootPart = character:WaitForChild("HumanoidRootPart")

local radius = _R -- 半径
local angleStep = _jgg  -- 每xxx度种植一个植物
local fixedY = 1.216280221939087  -- Y

local function plantAtAngle(angle)
    local angleRad = math.rad(angle)
    local x = rootPart.Position.X + radius * math.cos(angleRad)
    local z = rootPart.Position.Z + radius * math.sin(angleRad)
    local position = Vector3.new(x, fixedY, z)
    
    RequestPlantItem:InvokeServer(Sapling, position)
end

for angle = 0, 350, angleStep do
    plantAtAngle(angle)
    wait(0.1)
end
end)