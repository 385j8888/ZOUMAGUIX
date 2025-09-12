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

zy:Toggle("老斧头杀戮光环(如果失效就重新打开)", "", false, function(state)
    hhk = state  -- 同步阀门状态
    
    if state then
        --spawn(function()  -- 使用独立协程
            while hhk do  -- 检测阀门状态
                  local characters = workspace:WaitForChild("Characters")
                  --local tool = game:GetService("Players").LocalPlayer:WaitForChild("Inventory"):WaitForChild("Old Axe")
                  local Players = game:GetService("Players")
                  local localPlayer = Players.LocalPlayer

                  
                  local tool = game:GetService("Players").LocalPlayer:WaitForChild("Inventory"):WaitForChild("Old Axe")
                  local remoteEvent = game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("ToolDamageObject")

                  local models = {}
                  for _, child in ipairs(characters:GetChildren()) do
                      if child:IsA("Model") then
                          table.insert(models, child)
                      end
                  end

                  for number = 1, 10000 do
                      local code = tostring(number) .. "_8830937997"
    
                      for _, model in ipairs(models) do
                          local position
                          if model.PrimaryPart then
                              position = model.PrimaryPart.CFrame
                          else
                              local firstPart = model:FindFirstChildWhichIsA("BasePart")
                              if firstPart then
                                  position = firstPart.CFrame
                              else
                                  continue  
                              end
                          end
        
                          local args = {
                              model,  
                              tool,
                              true,
                              position
                          }
        
                          remoteEvent:InvokeServer(unpack(args))
                         
                      end
                  end
                  wait(0.1)
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