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
local character = player.Character or player.CharacterAdded:Wait()
local humanoidRootPart = character:WaitForChild("HumanoidRootPart") 
local lp = game.Players.LocalPlayer
local Mouse = lp:GetMouse()
local Character = player.Character or player.CharacterAdded:Wait()
local pos = lp.Character.HumanoidRootPart.CFrame + Vector3.new(0, 5, 0)
local ME = game.Players.LocalPlayer.Character.HumanoidRootPart
local Mouse = game:GetService('Players').LocalPlayer:GetMouse()
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
local gnj = window:Tab("主要功能",'10723407389')
local gn = gnj:section("主要",true)
local gnpp = gnj:section("自动功能",true)
local gun = gnj:section("枪械功能",true)
local other = gnj:section("其他功能",true)

gn:Button("一键固定周围物品(fix)",function()
local MAX_DISTANCE = 50
local TARGET_PART = workspace:WaitForChild("Train"):WaitForChild("Platform"):WaitForChild("Part")
local REMOTE = ReplicatedStorage:WaitForChild("Shared"):WaitForChild("Remotes"):WaitForChild("RequestWeld")
local function isModelInRange(model)
    if model.PrimaryPart then
        return (model.PrimaryPart.Position - humanoidRootPart.Position).Magnitude <= MAX_DISTANCE
    end
    for _, part in ipairs(model:GetDescendants()) do
        if part:IsA("BasePart") then
            if (part.Position - humanoidRootPart.Position).Magnitude <= MAX_DISTANCE then
                return true
            end
        end
    end
    return false
end
    for _, model in ipairs(workspace.RuntimeItems:GetChildren()) do
        if model:IsA("Model") and isModelInRange(model) then
            local args = {
                [1] = model,
                [2] = TARGET_PART
            }
            REMOTE:FireServer(unpack(args))
        end
    end
end)
gn:Button("一键解除固定周围物品(fix)",function()
local MAX_DISTANCE = 50
local TARGET_PART = workspace:WaitForChild("Train"):WaitForChild("Platform"):WaitForChild("Part")
local REMOTE = ReplicatedStorage:WaitForChild("Shared"):WaitForChild("Remotes"):WaitForChild("RequestUnweld")
local function isModelInRange(model)
    if model.PrimaryPart then
        return (model.PrimaryPart.Position - humanoidRootPart.Position).Magnitude <= MAX_DISTANCE
    end
    for _, part in ipairs(model:GetDescendants()) do
        if part:IsA("BasePart") then
            if (part.Position - humanoidRootPart.Position).Magnitude <= MAX_DISTANCE then
                return true
            end
        end
    end
    return false
end
    for _, model in ipairs(workspace.RuntimeItems:GetChildren()) do
        if model:IsA("Model") and isModelInRange(model) then
            local args = {
                [1] = model,
                [2] = TARGET_PART
            }
            REMOTE:FireServer(unpack(args))
        end
    end
end)
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
    running = state
    if state then
        while running do
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
    else
        print("关闭状态")
    end
end)
gnpp:Toggle("持续检测独角兽", "", false, function(state)
    dujiaoshou = state
if state then
local hasNotified = false 
  local function deepSearch(object)
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
    task.wait(0.1)
    local baseplates = workspace:FindFirstChild("Baseplates")
    if baseplates and not hasNotified then
        if deepSearch(baseplates) then
            game:GetService("StarterGui"):SetCore("SendNotification", {
                Title = "走马观花X",
                Text = "发现独角兽！请留意四周！",
                Icon = "rbxthumb://type=Asset&id=17366451283&w=150&h=150",
                Duration = 10
            })
            hasNotified = true
        end
    end
  end
else
        print("关闭状态")
end
end)
gn:Button("一键丢物品",function()
for _=1,10 do
game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("DropItem"):FireServer()
wait(0.1)
end
end)
gnpp:Toggle("自动丢物品", "", false, function(state)
    autodorp = state
    if state then
           while autodorp do
                             wait(0.00001)
                             game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("DropItem"):FireServer()
           end
    else
        print("关闭")
    end
end)
local Hitbox = 0
local MinHealth = 30
local mainloop = false
local AimLock = false
local aimbotEnabled = false

gn:Toggle("开启自瞄", "", false, function(state)
    aimbotEnabled = state
end)
gn:Toggle("开启强制锁定自瞄2", "", false, function(state)
    mainloop = state
    if mainloop then
        spawn(function()
            while mainloop do wait()
                pcall(function()
                    for i, v in ipairs(workspace:GetDescendants()) do
                        if v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Head") then
                            if v.Name == "TurretOutlaw" or v.Name == "RifleOutlaw" or v.Name == "ShotgunOutlaw" or v.Name == "RevolverOutlaw" or v.Name == "Vampire" or v.Name == "Werewolf" or v.Name == "Wolf" or v.Name == "Runner" or v.Name == "Walker" or v.Name == "Banner" or v.Name == "Captain Prescott" or v.Name == "Banker" then
                                if v.Humanoid.Health > 0 then
                                    local targetPosition = v.HumanoidRootPart.Position
                                    local direction = (targetPosition - workspace.CurrentCamera.CFrame.p).unit
                                    workspace.CurrentCamera.CFrame = CFrame.new(workspace.CurrentCamera.CFrame.p + direction * 30, targetPosition)
                                end
                            end
                        end
                    end
                end)
            end
        end)
    else
        camera.CFrame = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position, game.Players.LocalPlayer.Character.HumanoidRootPart.Position)
    end
end)
gn:Toggle("自动攻击", "", false, function(state)
    mainloop = state
    spawn(function()
        while mainloop do wait()
            pcall(function()
                for _,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                    if v:FindFirstChild("SwingEvent") then
                        game:GetService("Players").LocalPlayer.Character[v.Name].SwingEvent:FireServer(Vector3.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position.X,game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Y,game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Z))
                    end
                end
            end)
        end
    end)
end)
gn:Toggle("穿墙", "", false, function(state)
    for _, part in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
        if part:IsA("BasePart") then
            part.CanCollide = not state
        end
    end
end)
gn:Toggle("强锁NPC", "", false, function(state)
    if state then
        AimLock = state
        spawn(function()
            while AimLock do wait()
                pcall(function()
                    local npc = getClosestNPC()
                    if npc and npc:FindFirstChild("Humanoid") then
                        local npcHumanoid = npc:FindFirstChild("Humanoid")
                        if npcHumanoid.Health > 0 then
                            camera.CameraSubject = npcHumanoid
                            lastTarget = npc
                        end
                    end
                end)
            end
        end)
    else
        game:GetService('Workspace').CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character.Humanoid
    end
end)
gn:Toggle("自动使用绷带", "", false, function(state)
    mainloop = state
    spawn(function()
        while mainloop do wait()
            pcall(function()
                for _,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                    if v.Name == "Bandage" then
                        if game.Players.LocalPlayer.Character.Humanoid.Health <= MinHealth then
                            v.Parent = game:GetService("Players").LocalPlayer.Character
                            game:GetService("Players").LocalPlayer.Character.Bandage.Use:FireServer()
                        end
                    end
                end
            end)
        end
    end)
end)
gn:Slider("使用绷带时的血量", "", 1, 0, 50, false, function(value)
    MinHealth = value
end)
gun:Toggle("枪械快速换弹", "", false, function(state)
    mainloop = state
    spawn(function()
        while mainloop do wait()
            pcall(function()
                for i,v in next,game.Players.LocalPlayer.Backpack:GetChildren() do
                    if v:IsA("Tool") and v:FindFirstChild("WeaponConfiguration") then
                        v.WeaponConfiguration.ReloadDuration.Value = 0
                    end
                end
                for i,v in next,game.Players.LocalPlayer.Character:GetChildren() do
                    if v:IsA("Tool") and v:FindFirstChild("WeaponConfiguration") then
                        v.WeaponConfiguration.ReloadDuration.Value = 0
                    end
                end
            end)
        end
    end)
end)
gun:Toggle("枪械快速射击", "", false, function(state)
    mainloop = state
    spawn(function()
        while mainloop do wait()
            pcall(function()
                for i,v in next,game.Players.LocalPlayer.Backpack:GetChildren() do
                    if v:IsA("Tool") and v:FindFirstChild("WeaponConfiguration") then
                        v.WeaponConfiguration.FireDelay.Value = 0
                    end
                end
                for i,v in next,game.Players.LocalPlayer.Character:GetChildren() do
                    if v:IsA("Tool") and v:FindFirstChild("WeaponConfiguration") then
                        v.WeaponConfiguration.FireDelay.Value = 0
                    end
                end
            end)
        end
    end)
end)
gun:Toggle("枪械光环", "", false, function(state)
    mainloop = state
    spawn(function()
        while mainloop do wait()
            pcall(function()
            end)
        end
    end)
end)
local items = {}
local SelectItem = ""
local function RefreshItem()
    items = {}
    for i,v in ipairs(workspace.RuntimeItems:GetChildren()) do
        items[i] = v.Name
    end
end
local itemSection = window:Tab("物品功能")
local item = itemSection:section("物品功能",true)
local itemDropdown = item:Dropdown("选择物品", "", items, function(value)
    SelectItem = value
end)
spawn(function()
    while true do wait(2)
        pcall(function()
            RefreshItem()
            itemDropdown:SetOptions(items)
        end)
    end
end)
item:Toggle("自动收集钱袋", "", false, function(state)
    mainloop = state
    spawn(function()
        while mainloop do wait()
            pcall(function()
                if workspace.RuntimeItems:FindFirstChild("Moneybag") then
                    fireproximityprompt(workspace.RuntimeItems.Moneybag.MoneyBag.CollectPrompt)
                end
            end)
        end
    end)
end)
item:Toggle("查看物品", "", false, function(state)
    if state then
        workspace.CurrentCamera.CameraSubject = workspace.RuntimeItems[SelectItem]
    else
        game:GetService('Workspace').CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character.Humanoid
    end
end)
item:Toggle("自动收集债券", "", false, function(state)
    mainloop = state
    spawn(function()
        while mainloop do wait()
            pcall(function()
                for i, v in pairs(workspace.RuntimeItems:GetChildren()) do
                    if v.Name == "Bond" then
                        local distance = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Position).Magnitude
                        if distance < 10 then
                            game:GetService("ReplicatedStorage").Packages.ActivateObjectClient:FireServer(v)
                        end
                    end
                end
            end)
        end
    end)
end)
item:Toggle("自动收集物品", "", false, function(state)
    mainloop = state
    spawn(function()
        while mainloop do wait()
            pcall(function()
                for i, v in pairs(workspace.RuntimeItems:GetChildren()) do
                    local distance = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Position).Magnitude
                    if distance < 10 then
                        game:GetService("ReplicatedStorage").Remotes.Tool.PickUpTool:FireServer(v)
                    end
                end
            end)
        end
    end)
end)
item:Toggle("自动走向债券","",false,function(state)
    if state then
        mainloop = state
        spawn(function()
            while mainloop do wait()
                pcall(function()
                    for _, item in pairs(workspace.RuntimeItems:GetChildren()) do
                        if item.Name == "Bond" and item:IsA("Model") then
                            game.Players.LocalPlayer.Character.Humanoid.WalkToPoint = Vector3.new(item.Position.X, item.Position.Y, item.Position.Z)
                            break
                        end
                    end
                end)
            end
        end)
    else
        game.Players.LocalPlayer.Character.Humanoid.WalkToPoint = game.Players.LocalPlayer.Character.Humanoid.RootPart.Position
    end
end)
other:Toggle("高光", "", false, function(state)
    if state then
        game.Lighting.Ambient = Color3.new(1, 1, 1)
    else
        game.Lighting.Ambient = Color3.new(0, 0, 0)
    end
end)
other:Button("第三人称", function()
game:GetService("Players").LocalPlayer.CameraMaxZoomDistance = math.huge
game:GetService("Players").LocalPlayer.CameraMode = Enum.CameraMode.Classic
end)
other:Toggle("自动火车鸣声", "", false, function(state)
    mainloop = state
    spawn(function()
        while mainloop do wait()
            pcall(function()
                workspace.Train.TrainControls.Lever.HitBox.ClickDetector.MaxActivationDistance = math.huge
                fireclickdetector(workspace.Train.TrainControls.Lever.HitBox.ClickDetector)
            end)
        end
    end)
end)
other:Toggle("自动拉终点开关", "", false, function(state)
    mainloop = state
    spawn(function()
        while mainloop do wait()
            pcall(function()
                workspace.Baseplates.FinalBasePlate.OutlawBase.Bridge.BridgeControl.Crank.Model.Mid.EndGame.MaxActivationDistance = math.huge
                fireproximityprompt(workspace.Baseplates.FinalBasePlate.OutlawBase.Bridge.BridgeControl.Crank.Model.Mid.EndGame)
            end)
        end
    end)
end)
other:Button("删除杂物", function()
    while true do wait()
        for i, v in ipairs(workspace.Decor:GetChildren()) do
            v:Destroy()
        end
    end
end)
other:Button("删除闪电", function()
    while true do wait()
        for _, v in next,workspace:GetChildren() do
            if v.Name == "LightningModel" then
                v:Destroy()
            end
        end
    end
end)
local olddur, olddis
other:Toggle("秒互动", "", false, function(state)
    for _,v in pairs(workspace:GetDescendants()) do
        if v:IsA("ProximityPrompt") then
            if state then
                olddur = v.HoldDuration
                v.HoldDuration = 0
            else
                v.HoldDuration = olddur
            end
        end
    end
end)
other:Toggle("远程互动", "", false, function(state)
    for _,v in pairs(workspace:GetDescendants()) do
        if v:IsA("ProximityPrompt") then
            if state then
                olddis = v.MaxActivationDistance
                v.MaxActivationDistance = math.huge
            else
                v.MaxActivationDistance = olddis
            end
        end
    end
end)
other:Toggle("无视野互动", "", false, function(state)
    for _,v in pairs(workspace:GetDescendants()) do
        if v:IsA("ProximityPrompt") then
            if state then
                v.RequiresLineOfSight = false
            else
                v.RequiresLineOfSight = true
            end
        end
    end
end)
local Notify = window:Tab("通知功能")
local notifySection = Notify:section("通知功能",true)
notifySection:Toggle("今晚刷新什么怪", "", false, function(state)
    if state then
        local MonsterGui = game.CoreGui:FindFirstChild("MonsterGui")
        if not MonsterGui then
            local MonsterGui = Instance.new("ScreenGui", game.CoreGui)
            local MonsterMessage = Instance.new("TextLabel", MonsterGui)
            local UIGradient = Instance.new("UIGradient")
            MonsterGui.Name = "MonsterGui"
            MonsterGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
            MonsterMessage.Name = "MonsterMessage"
            MonsterMessage.BackgroundColor3 = Color3.new(1, 1, 1)
            MonsterMessage.BackgroundTransparency = 1
            MonsterMessage.BorderColor3 = Color3.new(0, 0, 0)
            MonsterMessage.Position = UDim2.new(0.5, 100, 0.5, -25)
            MonsterMessage.Size = UDim2.new(0, 135, 0, 50)
            MonsterMessage.Font = Enum.Font.GothamSemibold
            MonsterMessage.Text = "今晚的怪物: "
            MonsterMessage.TextColor3 = Color3.new(1, 1, 1)
            MonsterMessage.TextScaled = true
            MonsterMessage.TextSize = 14
            MonsterMessage.TextWrapped = true
            UIGradient.Color = ColorSequence.new{
                ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 0, 0)),
                ColorSequenceKeypoint.new(0.10, Color3.fromRGB(255, 127, 0)),
                ColorSequenceKeypoint.new(0.20, Color3.fromRGB(255, 255, 0)),
                ColorSequenceKeypoint.new(0.30, Color3.fromRGB(0, 255, 0)),
                ColorSequenceKeypoint.new(0.40, Color3.fromRGB(0, 255, 255)),
                ColorSequenceKeypoint.new(0.50, Color3.fromRGB(0, 0, 255)),
                ColorSequenceKeypoint.new(0.60, Color3.fromRGB(139, 0, 255)),
                ColorSequenceKeypoint.new(0.70, Color3.fromRGB(255, 0, 0)),
                ColorSequenceKeypoint.new(0.80, Color3.fromRGB(255, 127, 0)),
                ColorSequenceKeypoint.new(0.90, Color3.fromRGB(255, 255, 0)),
                ColorSequenceKeypoint.new(1.00, Color3.fromRGB(0, 255, 0))
            }
            UIGradient.Rotation = 360
            UIGradient.Parent = MonsterMessage
            local TweenService = game:GetService("TweenService")
            local tweeninfo = TweenInfo.new(7, Enum.EasingStyle.Linear, Enum.EasingDirection.In, -1)
            local tween = TweenService:Create(UIGradient, tweeninfo, {Rotation = 360})
            tween:Play()
            game:GetService("RunService").RenderStepped:Connect(function()
                for i, v in ipairs(workspace.NightEnemies:GetChildren()) do
                    if v:IsA("Model") then
                        if v.Name == "Wolf" then
                            MonsterMessage.Text = "今晚的怪物是狼"
                        elseif v.Name == "Werewolf" then
                            MonsterMessage.Text = "今晚的怪物是狼人"
                        elseif v.Name == "Vampire" then
                            MonsterMessage.Text = "今晚的怪物是吸血鬼"
                        elseif v.Name == "Walker" then
                            MonsterMessage.Text = "今晚的怪物是正常僵尸"
                        elseif v.Name == "Runner" then
                            MonsterMessage.Text = "今晚的怪物是奔跑僵尸"
                        end
                    end
                end
            end)
        end
    else
        if game.CoreGui:FindFirstChild("MonsterGui") then
            game.CoreGui.MonsterGui:Destroy()
        end
    end
end)
notifySection:Toggle("显示燃油状态", "", false, function(state)
    local FuelGui = game.CoreGui:FindFirstChild("FuelGui")
    if not FuelGui then
        FuelGui = Instance.new("ScreenGui")
        FuelGui.Name = "FuelGui"
        FuelGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
        FuelGui.Parent = game.CoreGui
        local FuelLabel = Instance.new("TextLabel")
        FuelLabel.Name = "FuelLabel"
        FuelLabel.BackgroundColor3 = Color3.new(1, 1, 1)
        FuelLabel.BackgroundTransparency = 1
        FuelLabel.BorderColor3 = Color3.new(0, 0, 0)
        FuelLabel.Position = UDim2.new(0.5, 0, 0.5, -100)
        FuelLabel.Size = UDim2.new(0, 135, 0, 50)
        FuelLabel.Font = Enum.Font.GothamSemibold
        FuelLabel.Text = "燃料: " .. workspace.Train.Fuel.Value .. " / 240"
        FuelLabel.TextColor3 = Color3.new(1, 1, 1)
        FuelLabel.TextScaled = true
        FuelLabel.TextSize = 14
        FuelLabel.TextWrapped = true
        FuelLabel.Parent = FuelGui
    end
    FuelGui.Enabled = state
    FuelGui.FuelLabel.Visible = state
    if state then
        game:GetService("RunService").RenderStepped:Connect(function()
            local fuelValue = workspace.Train.Fuel.Value
            FuelGui.FuelLabel.Text = "Fuel: " .. fuelValue .. " / 240"
            if fuelValue <= 50 then
                FuelGui.FuelLabel.TextColor3 = Color3.new(1, 0, 0)
            elseif fuelValue <= 150 then
                FuelGui.FuelLabel.TextColor3 = Color3.new(1, 165/255, 0)
            elseif fuelValue <= 240 then
                FuelGui.FuelLabel.TextColor3 = Color3.new(0, 1, 0)
            else
                FuelGui.FuelLabel.TextColor3 = Color3.new(1, 1, 1)
            end
        end)
    end
end)
local ESP = window:Tab("透视功能")
local espSection = ESP:section("透视功能",true)
local itemsConnection, OreConnection, EnemyConnection, UnicornConnection, buildConnection, zombieConnection, bankConnection, OutlawConnection, BondConnection
espSection:Toggle("透视物品", "", false, function(state)
    if state then
        for _, v in ipairs(workspace.RuntimeItems:GetChildren()) do
            if v:IsA("Model") and not v:FindFirstChild("BillboardGui") then
                local billboard = Instance.new("BillboardGui")
                billboard.Parent = v
                billboard.Adornee = v
                billboard.Size = UDim2.new(0, 20, 0, 20)
                billboard.StudsOffset = Vector3.new(0, 3, 0)
                billboard.AlwaysOnTop = true
                local nameLabel = Instance.new("TextLabel")
                nameLabel.Parent = billboard
                nameLabel.Size = UDim2.new(1, 0, 1, 0)
                nameLabel.BackgroundTransparency = 1
                nameLabel.Text = v.Name
                nameLabel.TextColor3 = Color3.new(255, 215, 0)
                nameLabel.TextStrokeTransparency = 0.5
                nameLabel.TextScaled = true
            end
        end
        itemsConnection = workspace.RuntimeItems.ChildAdded:Connect(function(v)
            if v:IsA("Model") and not v:FindFirstChild("BillboardGui") and state then
                local billboard = Instance.new("BillboardGui")
                billboard.Parent = v
                billboard.Adornee = v
                billboard.Size = UDim2.new(0, 20, 0, 20)
                billboard.StudsOffset = Vector3.new(0, 3, 0)
                billboard.AlwaysOnTop = true
                local nameLabel = Instance.new("TextLabel")
                nameLabel.Parent = billboard
                nameLabel.Size = UDim2.new(1, 0, 1, 0)
                nameLabel.BackgroundTransparency = 1
                nameLabel.Text = v.Name
                nameLabel.TextColor3 = Color3.new(255, 215, 0)
                nameLabel.TextStrokeTransparency = 0.5
                nameLabel.TextScaled = true
            end
        end)
    else
        if itemsConnection then
            itemsConnection:Disconnect()
            itemsConnection = nil
        end
        for _, v in ipairs(workspace.RuntimeItems:GetChildren()) do
            if v:FindFirstChild("BillboardGui") then
                v.BillboardGui:Destroy()
            end
        end
    end
end)
espSection:Toggle("透视矿石", "", false, function(state)
    if state then
        for _, v in ipairs(workspace.Ore:GetChildren()) do
            if v:IsA("Model") and not v:FindFirstChild("BillboardGui") then
                local billboard = Instance.new("BillboardGui")
                billboard.Parent = v
                billboard.Adornee = v
                billboard.Size = UDim2.new(0, 20, 0, 20)
                billboard.StudsOffset = Vector3.new(0, 3, 0)
                billboard.AlwaysOnTop = true
                local nameLabel = Instance.new("TextLabel")
                nameLabel.Parent = billboard
                nameLabel.Size = UDim2.new(1, 0, 1, 0)
                nameLabel.BackgroundTransparency = 1
                nameLabel.Text = v.Name
                nameLabel.TextColor3 = Color3.new(0, 0, 255)
                nameLabel.TextStrokeTransparency = 0.5
                nameLabel.TextScaled = true
            end
        end
        OreConnection = workspace.Ore.ChildAdded:Connect(function(v)
            if v:IsA("Model") and not v:FindFirstChild("BillboardGui") and state then
                local billboard = Instance.new("BillboardGui")
                billboard.Parent = v
                billboard.Adornee = v
                billboard.Size = UDim2.new(0, 20, 0, 20)
                billboard.StudsOffset = Vector3.new(0, 3, 0)
                billboard.AlwaysOnTop = true
                local nameLabel = Instance.new("TextLabel")
                nameLabel.Parent = billboard
                nameLabel.Size = UDim2.new(1, 0, 1, 0)
                nameLabel.BackgroundTransparency = 1
                nameLabel.Text = v.Name
                nameLabel.TextColor3 = Color3.new(0, 0, 255)
                nameLabel.TextStrokeTransparency = 0.5
                nameLabel.TextScaled = true
            end
        end)
    else
        if OreConnection then
            OreConnection:Disconnect()
            OreConnection = nil
        end
        for _, v in ipairs(workspace.Ore:GetChildren()) do
            if v:FindFirstChild("BillboardGui") then
                v.BillboardGui:Destroy()
            end
        end
    end
end)
espSection:Toggle("夜晚怪物透视", "", false, function(state)
    if state then
        for i, v in ipairs(workspace.NightEnemies:GetChildren()) do
            if v:IsA("Model") and not v:FindFirstChild("BillboardGui") then
                local billboard = Instance.new("BillboardGui")
                billboard.Parent = v
                billboard.Adornee = v
                billboard.Size = UDim2.new(0, 20, 0, 20)
                billboard.StudsOffset = Vector3.new(0, 3, 0)
                billboard.AlwaysOnTop = true
                local nameLabel = Instance.new("TextLabel")
                nameLabel.Parent = billboard
                nameLabel.Size = UDim2.new(1, 0, 1, 0)
                nameLabel.BackgroundTransparency = 1
                nameLabel.Text = v.Name
                nameLabel.TextColor3 = Color3.new(1, 0, 0)
                nameLabel.TextStrokeTransparency = 0.5
                nameLabel.TextScaled = true
            end
        end
        EnemyConnection = workspace.NightEnemies.ChildAdded:Connect(function(v)
            if v:IsA("Model") and not v:FindFirstChild("BillboardGui") and state then
                local billboard = Instance.new("BillboardGui")
                billboard.Parent = v
                billboard.Adornee = v
                billboard.Size = UDim2.new(0, 20, 0, 20)
                billboard.StudsOffset = Vector3.new(0, 3, 0)
                billboard.AlwaysOnTop = true
                local nameLabel = Instance.new("TextLabel")
                nameLabel.Parent = billboard
                nameLabel.Size = UDim2.new(1, 0, 1, 0)
                nameLabel.BackgroundTransparency = 1
                nameLabel.Text = v.Name
                nameLabel.TextColor3 = Color3.new(1, 0, 0)
                nameLabel.TextStrokeTransparency = 0.5
                nameLabel.TextScaled = true
            end
        end)
    else
        if EnemyConnection then
            EnemyConnection:Disconnect()
            EnemyConnection = nil
        end
        for i, v in ipairs(workspace.NightEnemies:GetChildren()) do
            if v:FindFirstChild("BillboardGui") then
                v.BillboardGui:Destroy()
            end
        end
    end
end)
espSection:Toggle("独角兽透视", "", false, function(state)
    if state then
        for i, v in ipairs(workspace:GetDescendants()) do
            if v.Name == "Unicorn" and not v:FindFirstChild("BillboardGui") then
                local billboard = Instance.new("BillboardGui")
                billboard.Parent = v
                billboard.Adornee = v
                billboard.Size = UDim2.new(0, 20, 0, 20)
                billboard.StudsOffset = Vector3.new(0, 3, 0)
                billboard.AlwaysOnTop = true
                local nameLabel = Instance.new("TextLabel")
                nameLabel.Parent = billboard
                nameLabel.Size = UDim2.new(1, 0, 1, 0)
                nameLabel.BackgroundTransparency = 1
                nameLabel.Text = "独角兽"
                nameLabel.TextColor3 = Color3.new(1, 1, 1)
                nameLabel.TextStrokeTransparency = 0.5
                nameLabel.TextScaled = true
            end
        end
        UnicornConnection = workspace.DescendantAdded:Connect(function(v)
            if v.Name == "Unicorn" and not v:FindFirstChild("BillboardGui") and state then
                local billboard = Instance.new("BillboardGui")
                billboard.Parent = v
                billboard.Adornee = v
                billboard.Size = UDim2.new(0, 20, 0, 20)
                billboard.StudsOffset = Vector3.new(0, 3, 0)
                billboard.AlwaysOnTop = true
                local nameLabel = Instance.new("TextLabel")
                nameLabel.Parent = billboard
                nameLabel.Size = UDim2.new(1, 0, 1, 0)
                nameLabel.BackgroundTransparency = 1
                nameLabel.Text = v.Name
                nameLabel.TextColor3 = Color3.new(1, 1, 1)
                nameLabel.TextStrokeTransparency = 0.5
                nameLabel.TextScaled = true
            end
        end)
    else
        if UnicornConnection then
            UnicornConnection:Disconnect()
            UnicornConnection = nil
        end
        for i, v in ipairs(workspace:GetChildren()) do
            if v:FindFirstChild("BillboardGui") and v.BillboardGui.TextLabel.Text == "独角兽" then
                v.BillboardGui:Destroy()
            end
        end
    end
end)
espSection:Toggle("房子透视", "", false, function(state)
    if state then
        for _, v in ipairs(workspace.RandomBuildings:GetChildren()) do
            if v:IsA("Model") and not v:FindFirstChild("BillboardGui") then
                local billboard = Instance.new("BillboardGui")
                billboard.Parent = v
                billboard.Adornee = v
                billboard.Size = UDim2.new(0, 20, 0, 20)
                billboard.StudsOffset = Vector3.new(0, 3, 0)
                billboard.AlwaysOnTop = true
                local nameLabel = Instance.new("TextLabel")
                nameLabel.Parent = billboard
                nameLabel.Size = UDim2.new(1, 0, 1, 0)
                nameLabel.BackgroundTransparency = 1
                nameLabel.Text = v.Name
                nameLabel.TextColor3 = Color3.new(0, 255, 0)
                nameLabel.TextStrokeTransparency = 0.5
                nameLabel.TextScaled = true
            end
        end
        buildConnection = workspace.RandomBuildings.ChildAdded:Connect(function(v)
            if v:IsA("Model") and not v:FindFirstChild("BillboardGui") and state then
                local billboard = Instance.new("BillboardGui")
                billboard.Parent = v
                billboard.Adornee = v
                billboard.Size = UDim2.new(0, 20, 0, 20)
                billboard.StudsOffset = Vector3.new(0, 3, 0)
                billboard.AlwaysOnTop = true
                local nameLabel = Instance.new("TextLabel")
                nameLabel.Parent = billboard
                nameLabel.Size = UDim2.new(1, 0, 1, 0)
                nameLabel.BackgroundTransparency = 1
                nameLabel.Text = v.Name
                nameLabel.TextColor3 = Color3.new(0, 255, 0)
                nameLabel.TextStrokeTransparency = 0.5
                nameLabel.TextScaled = true
            end
        end)
    else
        if buildConnection then
            buildConnection:Disconnect()
            buildConnection = nil
        end
        for _, v in ipairs(workspace.RandomBuildings:GetChildren()) do
            if v:FindFirstChild("BillboardGui") then
                v.BillboardGui:Destroy()
            end
        end
    end
end)
espSection:Toggle("房子中的怪物透视", "", false, function(state)
    if state then
        for _, building in ipairs(workspace.RandomBuildings:GetChildren()) do
            if building:FindFirstChild("StandaloneZombiePart") then
                for _, zombie in ipairs(building.StandaloneZombiePart.Zombies:GetChildren()) do
                    if zombie:IsA("Model") and not zombie:FindFirstChild("BillboardGui") then
                        local billboard = Instance.new("BillboardGui")
                        billboard.Parent = zombie
                        billboard.Adornee = zombie
                        billboard.Size = UDim2.new(0, 20, 0, 20)
                        billboard.StudsOffset = Vector3.new(0, 3, 0)
                        billboard.AlwaysOnTop = true
                        local nameLabel = Instance.new("TextLabel")
                        nameLabel.Parent = billboard
                        nameLabel.Size = UDim2.new(1, 0, 1, 0)
                        nameLabel.BackgroundTransparency = 1
                        nameLabel.Text = zombie.Name
                        nameLabel.TextColor3 = Color3.new(0, 255, 0)
                        nameLabel.TextStrokeTransparency = 0.5
                        nameLabel.TextScaled = true
                    end
                end
            end
        end
        zombieConnection = workspace.RandomBuildings.ChildAdded:Connect(function(building)
            if building:FindFirstChild("StandaloneZombiePart") then
                for _, zombie in ipairs(building.StandaloneZombiePart.Zombies:GetChildren()) do
                    if zombie:IsA("Model") and not zombie:FindFirstChild("BillboardGui") and state then
                        local billboard = Instance.new("BillboardGui")
                        billboard.Parent = zombie
                        billboard.Adornee = zombie
                        billboard.Size = UDim2.new(0, 20, 0, 20)
                        billboard.StudsOffset = Vector3.new(0, 3, 0)
                        billboard.AlwaysOnTop = true
                        local nameLabel = Instance.new("TextLabel")
                        nameLabel.Parent = billboard
                        nameLabel.Size = UDim2.new(1, 0, 1, 0)
                        nameLabel.BackgroundTransparency = 1
                        nameLabel.Text = zombie.Name
                        nameLabel.TextColor3 = Color3.new(0, 255, 0)
                        nameLabel.TextStrokeTransparency = 0.5
                        nameLabel.TextScaled = true
                    end
                end
            end
        end)
    else
        if zombieConnection then
            zombieConnection:Disconnect()
            zombieConnection = nil
        end
        for _, building in ipairs(workspace.RandomBuildings:GetChildren()) do
            if building:FindFirstChild("StandaloneZombiePart") then
                for _, zombie in ipairs(building.StandaloneZombiePart.Zombies:GetChildren()) do
                    if zombie:FindFirstChild("BillboardGui") then
                        zombie.BillboardGui:Destroy()
                    end
                end
            end
        end
    end
end)
espSection:Toggle("银行透视", "", false, function(state)
    if state then
        for i, v in ipairs(workspace:GetDescendants()) do
            if v:IsA("Model") and not v:FindFirstChild("BillboardGui") and v.Name == "Bank" then
                local billboard = Instance.new("BillboardGui")
                billboard.Parent = v
                billboard.Adornee = v
                billboard.Size = UDim2.new(0, 20, 0, 20)
                billboard.StudsOffset = Vector3.new(0, 3, 0)
                billboard.AlwaysOnTop = true
                local nameLabel = Instance.new("TextLabel")
                nameLabel.Parent = billboard
                nameLabel.Size = UDim2.new(1, 0, 1, 0)
                nameLabel.BackgroundTransparency = 1
                nameLabel.Text = v.Name
                nameLabel.TextColor3 = Color3.new(1, 0, 1)
                nameLabel.TextStrokeTransparency = 0.5
                nameLabel.TextScaled = true
            end
        end
        bankConnection = workspace.DescendantAdded:Connect(function(Bank)
            if Bank:IsA("Model") and Bank.Name == "Bank" and state then
                task.wait()
                if not Bank:FindFirstChild("BillboardGui") then
                    local billboard = Instance.new("BillboardGui")
                    billboard.Parent = Bank
                    billboard.Adornee = Bank
                    billboard.Size = UDim2.new(0, 20, 0, 20)
                    billboard.StudsOffset = Vector3.new(0, 3, 0)
                    billboard.AlwaysOnTop = true
                    local nameLabel = Instance.new("TextLabel")
                    nameLabel.Parent = billboard
                    nameLabel.Size = UDim2.new(1, 0, 1, 0)
                    nameLabel.BackgroundTransparency = 1
                    nameLabel.Text = Bank.Name
                    nameLabel.TextColor3 = Color3.new(1, 0, 1)
                    nameLabel.TextStrokeTransparency = 0.5
                    nameLabel.TextScaled = true
                end
            end
        end)
    else
        if bankConnection then
            bankConnection:Disconnect()
            bankConnection = nil
        end
        for i, v in ipairs(workspace:GetDescendants()) do
            if v:FindFirstChild("BillboardGui") and v.Name == "Bank" then
                v.BillboardGui:Destroy()
            end
        end
    end
end)
espSection:Toggle("猎人透视", "", false, function(state)
    if state then
        for i, v in ipairs(workspace:GetDescendants()) do
            if (v.Name == "TurretOutlaw" or v.Name == "RifleOutlaw" or v.Name == "ShotgunOutlaw" or v.Name == "RevolverOutlaw") and not v:FindFirstChild("BillboardGui") then
                local billboard = Instance.new("BillboardGui")
                billboard.Parent = v
                billboard.Adornee = v
                billboard.Size = UDim2.new(0, 20, 0, 20)
                billboard.StudsOffset = Vector3.new(0, 3, 0)
                billboard.AlwaysOnTop = true
                local nameLabel = Instance.new("TextLabel")
                nameLabel.Parent = billboard
                nameLabel.Size = UDim2.new(1, 0, 1, 0)
                nameLabel.BackgroundTransparency = 1
                nameLabel.Text = v.Name
                nameLabel.TextColor3 = Color3.new(1, 1, 1)
                nameLabel.TextStrokeTransparency = 0.5
                nameLabel.TextScaled = true
            end
        end
        OutlawConnection = workspace.DescendantAdded:Connect(function(v)
            if (v.Name == "TurretOutlaw" or v.Name == "RifleOutlaw" or v.Name == "ShotgunOutlaw" or v.Name == "RevolverOutlaw") and not v:FindFirstChild("BillboardGui") and state then
                local billboard = Instance.new("BillboardGui")
                billboard.Parent = v
                billboard.Adornee = v
                billboard.Size = UDim2.new(0, 20, 0, 20)
                billboard.StudsOffset = Vector3.new(0, 3, 0)
                billboard.AlwaysOnTop = true
                local nameLabel = Instance.new("TextLabel")
                nameLabel.Parent = billboard
                nameLabel.Size = UDim2.new(1, 0, 1, 0)
                nameLabel.BackgroundTransparency = 1
                nameLabel.Text = v.Name
                nameLabel.TextColor3 = Color3.new(1, 1, 1)
                nameLabel.TextStrokeTransparency = 0.5
                nameLabel.TextScaled = true
            end
        end)
    else
        if OutlawConnection then
            OutlawConnection:Disconnect()
            OutlawConnection = nil
        end
        for i, v in ipairs(workspace:GetChildren()) do
            if v:FindFirstChild("BillboardGui") and (v.Name == "TurretOutlaw" or v.Name == "RifleOutlaw" or v.Name == "ShotgunOutlaw" or v.Name == "RevolverOutlaw") then
                v.BillboardGui:Destroy()
            end
        end
    end
end)
espSection:Toggle("透视债券","",false,function(state)
    if state then
        for _, v in ipairs(workspace.RuntimeItems:GetChildren()) do
            if v:IsA("Model") and not v:FindFirstChild("BillboardGui") and v.Name == "Bond" then
                local billboard = Instance.new("BillboardGui")
                billboard.Parent = v
                billboard.Adornee = v
                billboard.Size = UDim2.new(0, 20, 0, 20)
                billboard.StudsOffset = Vector3.new(0, 3, 0)
                billboard.AlwaysOnTop = true
                local nameLabel = Instance.new("TextLabel")
                nameLabel.Parent = billboard
                nameLabel.Size = UDim2.new(1, 0, 1, 0)
                nameLabel.BackgroundTransparency = 1
                nameLabel.Text = v.Name
                nameLabel.TextColor3 = Color3.new(255, 215, 0)
                nameLabel.TextStrokeTransparency = 0.5
                nameLabel.TextScaled = true
            end
        end
        BondConnection = workspace.RuntimeItems.ChildAdded:Connect(function(v)
            if v:IsA("Model") and not v:FindFirstChild("BillboardGui") and v.Name == "Bond" and state then
                local billboard = Instance.new("BillboardGui")
                billboard.Parent = v
                billboard.Adornee = v
                billboard.Size = UDim2.new(0, 20, 0, 20)
                billboard.StudsOffset = Vector3.new(0, 3, 0)
                billboard.AlwaysOnTop = true
                local nameLabel = Instance.new("TextLabel")
                nameLabel.Parent = billboard
                nameLabel.Size = UDim2.new(1, 0, 1, 0)
                nameLabel.BackgroundTransparency = 1
                nameLabel.Text = v.Name
                nameLabel.TextColor3 = Color3.new(255, 215, 0)
                nameLabel.TextStrokeTransparency = 0.5
                nameLabel.TextScaled = true
            end
        end)
    else
        if BondConnection then
            BondConnection:Disconnect()
            BondConnection = nil
        end
        for _, v in ipairs(workspace.RuntimeItems:GetChildren()) do
            if v:FindFirstChild("BillboardGui") and v.Name == "Bond" then
                v.BillboardGui:Destroy()
            end
        end
    end
end)

local bondddd = false
--gnpp:Toggle("自动领债券", "", false, function(state)
--    bondddd = state  -- 同步阀门状态
    
--    if state then
        --spawn(function()  -- 使用独立协程
--            while bondddd do  -- 检测阀门状态
                  
--                  local args = {
--                         [1] = workspace:WaitForChild("RuntimeItems"):WaitForChild("Bond")
--                  }
                 --game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("RemotePromise"):WaitForChild("Remotes"):WaitForChild("C_ActivateObject"):FireServer(unpack(args))
--                 wait(0.001)
--            end
        --end)
--    else
--        print("关闭状态")
--    end

gn:Button("一键固定周围物品(fix)",function()
local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

-- 获取玩家角色和基准位置
local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local rootPart = character:WaitForChild("HumanoidRootPart")

local MAX_DISTANCE = 50
local TARGET_PART = workspace:WaitForChild("Train"):WaitForChild("Platform"):WaitForChild("Part")
local REMOTE = ReplicatedStorage:WaitForChild("Shared"):WaitForChild("Remotes"):WaitForChild("RequestWeld")
local function isModelInRange(model)
  
    if model.PrimaryPart then
        return (model.PrimaryPart.Position - rootPart.Position).Magnitude <= MAX_DISTANCE
    end
    
   
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
          
            local args = {
                [1] = model,
                [2] = TARGET_PART
            }
            REMOTE:FireServer(unpack(args))
        end
    end
end)
gn:Button("测试",function()
local Players = game:GetService("Players")
local speaker = Players.LocalPlayer
CFspeed = 50
speaker.Character:FindFirstChildOfClass('Humanoid').PlatformStand = true
	local Head = speaker.Character:WaitForChild("Head")
	Head.Anchored = true
	--if CFloop then CFloop:Disconnect() end
	CFloop = RunService.Heartbeat:Connect(function(deltaTime)
		local moveDirection = speaker.Character:FindFirstChildOfClass('Humanoid').MoveDirection * (CFspeed * deltaTime)
		local headCFrame = Head.CFrame
		local cameraCFrame = workspace.CurrentCamera.CFrame
		local cameraOffset = headCFrame:ToObjectSpace(cameraCFrame).Position
		cameraCFrame = cameraCFrame * CFrame.new(-cameraOffset.X, -cameraOffset.Y, -cameraOffset.Z + 1)
		local cameraPosition = cameraCFrame.Position
		local headPosition = headCFrame.Position

		local objectSpaceVelocity = CFrame.new(cameraPosition, Vector3.new(headPosition.X, cameraPosition.Y, headPosition.Z)):VectorToObjectSpace(moveDirection)
		Head.CFrame = CFrame.new(headPosition) * (cameraCFrame - cameraPosition) * CFrame.new(objectSpaceVelocity)
	end)
end)
gn:Button("一键解除固定周围物品(fix)",function()
local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local rootPart = character:WaitForChild("HumanoidRootPart")

local MAX_DISTANCE = 50
local TARGET_PART = workspace:WaitForChild("Train"):WaitForChild("Platform"):WaitForChild("Part")
local REMOTE = ReplicatedStorage:WaitForChild("Shared"):WaitForChild("Remotes"):WaitForChild("RequestUnweld")
local function isModelInRange(model)
   
    if model.PrimaryPart then
        return (model.PrimaryPart.Position - rootPart.Position).Magnitude <= MAX_DISTANCE
    end
    
 
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
local hasNotified = false 

  local function deepSearch(object)
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
    task.wait(0.1) 
    
    local baseplates = workspace:FindFirstChild("Baseplates")
    if baseplates and not hasNotified then
     
        if deepSearch(baseplates) then
            game:GetService("StarterGui"):SetCore("SendNotification", {
                Title = "走马观花X",
                Text = "发现独角兽！请留意四周！",
                Icon = "rbxthumb://type=Asset&id=17366451283&w=150&h=150",
                Duration = 10
            })
            hasNotified = true 
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
       
                         

        
                   if not child:FindFirstChild("NameBillboard") and itemESP==true then
                        local adornee = child.PrimaryPart or child:FindFirstChildWhichIsA("BasePart")
            
                       if adornee then
             
                        local billboard = Instance.new("BillboardGui")
                        billboard.Name = "NameBillboard"
                        billboard.Adornee = adornee
                        billboard.Size = UDim2.new(0, 200, 0, 50)
                        billboard.StudsOffset = Vector3.new(0, 0, 0) 
                        billboard.AlwaysOnTop = true
                        billboard.Active = true

              
                        local textLabel = Instance.new("TextLabel")
                        textLabel.Size = UDim2.new(1, 0, 1, 0)
                        textLabel.BackgroundTransparency = 1
                        textLabel.Text = child.Name
                        textLabel.TextColor3 = Color3.new(1, 1, 1)  
                        textLabel.TextSize = 10
                        textLabel.Font = Enum.Font.SourceSansBold
                        textLabel.TextStrokeTransparency = 0  
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
    TextColor = Color3.new(1, 0, 0),    
    TextSize = 12,
    Offset = Vector3.new(0, 2.5, 0),     
    MaxDistance = 2000,                
    Font = Enum.Font.SourceSansBold,    
    StrokeColor = Color3.new(0, 0, 0),  
    StrokeTransparency = 0.3
}
local function createIntegratedESP()
    for _, npc in ipairs(workspace:GetDescendants()) do
        if npc:IsA("Model") and npc:FindFirstChildOfClass("Humanoid") and not npc:FindFirstChild(ESP_CONFIG.Name) and swww==true then
            local rootPart = npc:FindFirstChild("HumanoidRootPart") or npc.PrimaryPart
            if not rootPart then continue end

            local espGui = Instance.new("BillboardGui")
            espGui.Name = ESP_CONFIG.Name
            espGui.AlwaysOnTop = true
            espGui.Size = UDim2.new(4, 0, 2, 0)
            espGui.StudsOffset = ESP_CONFIG.Offset
            espGui.Adornee = rootPart
            espGui.MaxDistance = ESP_CONFIG.MaxDistance
            
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
        
             for _, obj in ipairs(workspace:GetDescendants()) do
                     if obj.Name == "ESPshengwu" and obj:IsA("BillboardGui") then
                       obj:Destroy()  
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
time:Button("查看当前服务器运行时间",function()
loadstring(game:HttpGet"https://pastebin.com/raw/b6TDjAzP")()
end)
time:Button("创建10分钟倒计时",function()
local player = game.Players.LocalPlayer
local gui = Instance.new("ScreenGui")
gui.Name = "CountdownGui"
gui.ResetOnSpawn = false 
gui.Parent = player:WaitForChild("PlayerGui")

local textLabel = Instance.new("TextLabel")
textLabel.Size = UDim2.new(0, 150, 0, 150)
textLabel.Position = UDim2.new(0.5, -200, 0.5, -100) 
textLabel.AnchorPoint = Vector2.new(0.5, 0.5)
textLabel.TextScaled = true
textLabel.BackgroundTransparency = 1
textLabel.TextColor3 = Color3.new(1, 1, 1)
textLabel.Font = Enum.Font.SourceSansBold
textLabel.Text = "10:00"
textLabel.Parent = gui

local function startCountdown()
    local duration = 10 * 60  
    local startTime = os.time()
    
    while true do
        local elapsed = os.time() - startTime
        local remaining = duration - elapsed
        
        if remaining <= 0 then
            textLabel.Text = "时间到"
            break
        end
        
        local minutes = math.floor(remaining / 60)
        local seconds = remaining % 60
        textLabel.Text = string.format("%02d:%02d", minutes, seconds)
        
        wait(1) 
    end
end

startCountdown()
end)
local endingg = endingj:section("方法",true)
endingg:Label("食用方法")
endingg:Label("第一步:买枪")
endingg:Label("第二步:开启穿墙")
endingg:Label("第三步:开启视角锁敌人")
endingg:Label("第四步:把自动传送打开")
endingg:Label("第五步:把头上的劫匪全打掉")
endingg:Label("如果你坐在一个座位上，并且土匪刷新开枪了，就说明你成功了")
endingg:Label("第六步:把传送关掉，然后剩下的自己弄")
local combat = window:Tab("战斗")
local combat = combat:section("战斗",true)
combat:Label("建议搭配自由切换视角使用")
combat:Toggle("锁定敌人(视角移到敌人头上)", "", false, function(state)
    abba = state  -- 同步阀门状态
    
    if state then
        --spawn(function()  -- 使用独立协程
            while abba  do
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

local Players = game:GetService("Players")

local player = Players.LocalPlayer

local chair = workspace.RuntimeItems.Chair


if chair then
   
    local seat = chair:FindFirstChild("Seat")
  
    if seat then
        
        local position = seat.Position
        local orientation = seat.Orientation

      
        local character = player.Character or player.CharacterAdded:Wait()

      
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

local Players = game:GetService("Players")
local player = Players.LocalPlayer
local chair = workspace.RuntimeItems.Chair

if chair then
  
    local seat = chair:FindFirstChild("Seat")
   
    if seat then
      
        local position = seat.Position
        local orientation = seat.Orientation

        
        local character = player.Character or player.CharacterAdded:Wait()

      
        character:PivotTo(CFrame.new(position, position + Vector3.new(0, 1, 0)) * CFrame.Angles(math.rad(orientation.X), math.rad(orientation.Y), math.rad(orientation.Z)))
    else
        warn("Seat not found in the Chair Model.")
    end
else
    warn("Chair Model not found in workspace.RuntimeItems")
end

end)
tpplace:Button("特斯拉实验室",function()
player.Character:PivotTo(CFrame.new(-140.51632690429688, 4.171875, -24185.212890625))
wait(0.1)
local Players = game:GetService("Players")

local player = Players.LocalPlayer

local chair = workspace.RuntimeItems.Chair

if chair then
    
    local seat = chair:FindFirstChild("Seat")
   
    if seat then
      
        local position = seat.Position
        local orientation = seat.Orientation

       
        local character = player.Character or player.CharacterAdded:Wait()

    
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
wait(0.1)
local Players = game:GetService("Players")
local player = Players.LocalPlayer
local chair = workspace.RuntimeItems.Chair


if chair then
    local seat = chair:FindFirstChild("Seat")
    if seat then
        local position = seat.Position
        local orientation = seat.Orientation

        local character = player.Character or player.CharacterAdded:Wait()

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
end)

while true do
  local function EnableAllSeats(parent)
    for _, child in ipairs(parent:GetChildren()) do
        if child:IsA("Seat") or child:IsA("VehicleSeat") then
            child.Disabled = false
        end
        EnableAllSeats(child)
    end
  end

  EnableAllSeats(workspace)
  wait(1)
end