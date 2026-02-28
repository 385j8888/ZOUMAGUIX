--loadstring(game:HttpGet("https://raw.githubusercontent.com/BS58dL/BS/refs/heads/main/BS保护器-防httpSpy.lua"))()
local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/385j8888/ZOUMAGUIX/refs/heads/main/ProtectUI.lua"))()
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
local replicatedStorage = game:GetService("ReplicatedStorage")
local Players = game:GetService("Players")
local player = Players.LocalPlayer
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
local window = library:new("走马观花X-通用")
local creds = window:Tab("基本信息")
--local creds = window:Tab("基本信息",'3460915131')

local bin = creds:section("信息",true)
    bin:BigLabel("尊贵的走马观花X用户，感谢您的使用！")
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
local gn = window:Tab("开发用具")
local gn = gn:section("开发工具",true)
gn:Button("Dex",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/infyiff/backup/main/dex.lua"))()
end)
gn:Button("Dex++(dex加强版)",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/385j8888/ZOUMAGUIX/refs/heads/main/Dex%2B%2B.lua"))()
end)
gn:Button("Spy",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/infyiff/backup/main/SimpleSpyV3/main.lua"))()
end)
gn:Button("海龟Spy汉化版(更高级)",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/385j8888/ZOUMAGUIX/refs/heads/main/Turtle_SPY_Chinese.lua"))()
end)
gn:Button("IY指令",function()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'),true))()
end)
gn:Button("f3x工具",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/infyiff/backup/refs/heads/main/f3x.lua"))()
end)
local Globals = {
    playernamedied = "", -- 当前选择的目标玩家
    dropdown = {}, -- 玩家列表下拉菜单内容
    LoopTeleport = false, -- 循环传送开关
    message = "",
    sayCount = 1,
    sayFast = false,
    autoSay = false
}

-- 刷新玩家列表函数
function RefreshPlayerList(includeLocal)
    Globals.dropdown = {}
    if includeLocal == true then
        for _, player in pairs(game.Players:GetPlayers()) do
            table.insert(Globals.dropdown, player.Name)
        end
    else
        local localPlayer = game.Players.LocalPlayer
        for _, player in pairs(game.Players:GetPlayers()) do
            if player ~= localPlayer then
                table.insert(Globals.dropdown, player.Name)
            end
        end
    end
end
RefreshPlayerList(true)

local pla= window:Tab("玩家")
local playerr = pla:section("玩家功能",true)
local SectionTeleport = pla:section("传送玩家",true)

local SelectedPlayer = Globals.playernamedied
local Dropdown = SectionTeleport:Dropdown("选择玩家用户名", "Dropdown", Globals.dropdown, function(Value)
    Globals.playernamedied = Value
end)

SectionTeleport:Button("刷新玩家名称", function()
    RefreshPlayerList(true)
    Dropdown:SetOptions(Globals.dropdown)
end)

SectionTeleport:Button("传送到玩家身边", function()
    local target = game.Players:FindFirstChild(Globals.playernamedied)
    if target and target.Character and target.Character:FindFirstChild("HumanoidRootPart") then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = target.Character.HumanoidRootPart.CFrame + Vector3.new(0, 3, 0)
    end
end)

SectionTeleport:Toggle("循环锁定传送", "Loop", false, function(Value)
    Globals.LoopTeleport = Value
    if Value then
        while Globals.LoopTeleport do
             local target = game.Players:FindFirstChild(Globals.playernamedied)
             if target and target.Character then
                 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = target.Character.HumanoidRootPart.CFrame + Vector3.new(0, 3, 0)
             end
             wait()
        end
    end
end)

local SectionSpin = pla:section("旋转功能", true)

local SpinSettings = {speed = 100, active = false, connection = nil}

SectionSpin:Textbox("设置旋转速度", "TextBoxFlag", "输入", function(Value)
    SpinSettings.speed = tonumber(Value) or 100
    if SpinSettings.active then
        local spin = game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Spinbot")
        if spin then spin.AngularVelocity = Vector3.new(0, SpinSettings.speed, 0) end
    end
end)

SectionSpin:Toggle("开启/关闭旋转", "Spinbot", false, function(Value)
    SpinSettings.active = Value
    local char = game.Players.LocalPlayer.Character
    local root = char:WaitForChild("HumanoidRootPart")
    char.Humanoid.AutoRotate = not Value
    
    if Value then
        local av = Instance.new("AngularVelocity")
        av.Name = "Spinbot"
        av.Attachment0 = root:WaitForChild("RootAttachment")
        av.MaxTorque = math.huge
        av.AngularVelocity = Vector3.new(0, SpinSettings.speed, 0)
        av.Parent = root
    else
        if root:FindFirstChild("Spinbot") then root.Spinbot:Destroy() end
    end
end)



playerr:Toggle("通用移除摔落伤害", "state", false, function(Value)
    _G.AutoSelfDamage = Value
    if _G.AutoSelfDamage then
        spawn(function()
            while _G.AutoSelfDamage do
                if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Health") then
                    game.Players.LocalPlayer.Character.Health.ForceSelfDamage:FireServer(0)
                end
                wait()
            end
        end)
    end
end)

playerr:Button("爬墙走",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/infyiff/backup/main/wallwalker.lua"))()
end)
playerr:Button("飞行V3",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/385j8888/ZOUMAGUIX/refs/heads/main/%E9%A3%9E%E8%A1%8C%E8%84%9A%E6%9C%ACV3(%E5%85%A8%E6%B8%B8%E6%88%8F%E9%80%9A%E7%94%A8).txt"))()
end)

playerr:Toggle("穿墙", "", false, function(state)
    for _, part in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
        if part:IsA("BasePart") then
            part.CanCollide = not state
        end
    end
end)
playerr:Textbox("速度", "速度", "请输入速度", function(value)
    lp.Character.Humanoid.WalkSpeed = value
end)
playerr:Textbox("跳跃", "跳跃", "请输入跳跃", function(value)
    lp.Character.Humanoid.JumpPower = value
end)
local hhk = false
playerr:Textbox("互动间隔", "互动间隔", "请输入间隔", function(value)
    _Dhudong = value
end)
playerr:Toggle("触发所有互动", "", false, function(state)
    hhk = state  -- 同步阀门状态
    
    if state then
        --spawn(function()  -- 使用独立协程
            while hhk do  -- 检测阀门状态
                  for _, descendant in pairs(workspace:GetDescendants()) do
                    if descendant:IsA("ProximityPrompt") then
                       fireproximityprompt(descendant)
                    end
                  end
                 wait(_Dhudong)
            end
        --end)
    else
        print("1")
    end
end)
playerr:Button("触发所有互动(一次)",function()
for _, descendant in pairs(workspace:GetDescendants()) do
                    if descendant:IsA("ProximityPrompt") then
                       fireproximityprompt(descendant)
                    end
end
end)
local playeresp = false
playerr:Toggle("透视玩家", "", false, function(state)
    playeresp = state  -- 同步阀门状态
    
    if state then
        --spawn(function()  -- 使用独立协程
            while playeresp do
                 local Players = game:GetService("Players")
                 local RunService = game:GetService("RunService")
                 local LocalPlayer = Players.LocalPlayer


                 local trackedPlayers = {}

                 while playeresp do
                     for _, player in ipairs(Players:GetPlayers()) do
                         if player ~= LocalPlayer and player.Character and not trackedPlayers[player] then
                             local humanoid = player.Character:FindFirstChild("Humanoid")
                             local head = player.Character:FindFirstChild("Head")
            
                             if humanoid and head then
               
                                 local billboard = Instance.new("BillboardGui")
                                 billboard.Adornee = head
                                 billboard.Size = UDim2.new(0, 200, 0, 50)
                                 billboard.StudsOffset = Vector3.new(0, 2, 0) -- 头顶位置
                                 billboard.AlwaysOnTop = true
                
                                 local textLabel = Instance.new("TextLabel")
                                 textLabel.Size = UDim2.new(1, 0, 1, 0)
                                 textLabel.BackgroundTransparency = 1
                                 textLabel.TextScaled = true
                                 textLabel.Font = Enum.Font.SciFi
                                 textLabel.Text = ""
                
                                 textLabel.TextColor3 = Color3.new(1, 0, 0) -- 默认红色
                                 textLabel.Parent = billboard
                                 billboard.Parent = player.Character
                                 trackedPlayers[player] = billboard
                             end
                         end
        
                         if trackedPlayers[player] and player.Character then
                             local humanoid = player.Character:FindFirstChild("Humanoid")
                             local head = player.Character:FindFirstChild("Head")
                             local billboard = trackedPlayers[player]
                             local textLabel = billboard:FindFirstChild("TextLabel")
            
                             if humanoid and head and textLabel then
              
                                 local distance = math.floor((LocalPlayer.Character.Head.Position - head.Position).Magnitude)
              
                                 textLabel.Text = string.format("%s\n血量: %d\n距离: %d", player.Name, humanoid.Health, distance)
                
             
                                 if LocalPlayer.Team == player.Team then
                                     textLabel.TextColor3 = Color3.new(0, 1, 0) -- 同队绿色
                                 else
                                     textLabel.TextColor3 = Color3.new(1, 0, 0) -- 敌方红色
                                 end
                             end
                         end
                     end
    
   
                     for player, billboard in pairs(trackedPlayers) do
                         if not Players:FindFirstChild(player.Name) then
                             billboard:Destroy()
                             trackedPlayers[player] = nil
                         end
                     end
    
                     RunService.Heartbeat:Wait()
                     
                 end
                 wait(0.5)

            end
        --end)
    else
                 local Players = game:GetService("Players")
                 for _, player in ipairs(Players:GetPlayers()) do
                     if player.Character then
                         local gui = player.Character:FindFirstChild("BillboardGui")
                         if gui then gui:Destroy() end
                     end
                 end

                 trackedPlayers = {}

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
playerr:Toggle("透视所有生物", "", false, function(state)
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
playerr:Button("撸管工具R6",function()
loadstring(game:HttpGet("https://pastefy.app/wa3v2Vgm/raw"))()
end)
playerr:Button("撸管工具R15",function()
loadstring(game:HttpGet("https://pastefy.app/YZoglOyJ/raw"))()
end)
playerr:Button("解锁第三人称+视野无限大",function()
game:GetService("Players").LocalPlayer.CameraMaxZoomDistance = 99999
game:GetService("Players").LocalPlayer.CameraMode = Enum.CameraMode.Classic
end)

local gaoj = window:Tab("高级功能")
local gaoj = gaoj:section("高级功能",true)
gaoj:Button("防客户端踢出",function()
for _, Value in next, getgc(true) do
    if typeof(Value) == "table" then
        if rawget(Value, "indexInstance") or rawget(Value, "newindexInstance") or rawget(Value, "newIndexInstance") then
            Value.tvk = {"kick", function() return task.wait(9e9) end}
        end
    end
end
end)
gaoj:Button("关闭所有LocalScript",function()
for _, a in pairs(game:GetDescendants()) do
    if a:IsA("LocalScript") then
        a.Disabled = true
    end
end
end)
gaoj:Button("展开聊天框",function()
local chat = game:GetService("TextChatService").ChatWindowConfiguration
chat.Enabled = true
end)






local UserInputService = game:GetService("UserInputService")
local Players = game:GetService("Players")
local player = Players.LocalPlayer

local infJumpConnection = nil
local infJumpDebounce = false

-- 开连跳
local function enableInfJump()
    if infJumpConnection then
        infJumpConnection:Disconnect()
    end
    
    infJumpDebounce = false
    infJumpConnection = UserInputService.JumpRequest:Connect(function()
        if not infJumpDebounce then
            infJumpDebounce = true
            
            local character = player.Character
            if character then
                local humanoid = character:FindFirstChildWhichIsA("Humanoid")
                if humanoid then
                    humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
                end
            end
            
            task.wait()
            infJumpDebounce = false
        end
    end)
    
    print("无限连跳已启用")
end

-- 关连跳
local function disableInfJump()
    if infJumpConnection then
        infJumpConnection:Disconnect()
        infJumpConnection = nil
    end
    infJumpDebounce = false
end

local infjumppp = false
playerr:Toggle("无限跳", "", false, function(state)
    infjumppp = state  -- 同步阀门状态
    
    if state then
        enableInfJump()
    else
        disableInfJump()
    end
end)










--子弹追踪功能区
local Workspace = game:GetService("Workspace")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local Camera = Workspace.CurrentCamera
local old
local main = {
    enable = false,
    teamcheck = false,
    friendcheck = false,
    enablenpc = false
}

local function getClosestHead()
    local closestHead
    local closestDistance = math.huge
    
    if not LocalPlayer.Character then return end
    if not LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then return end
    
    for _, player in ipairs(Players:GetPlayers()) do
        if player ~= LocalPlayer and player.Character then
            local skip = false
            
       --     if main.teamcheck and player.Team == LocalPlayer.Team then
            --    skip = true
          --  end
            
         --   if not skip and main.friendcheck and LocalPlayer:IsFriendsWith(player.UserId) then
             --   skip = true
          --  end
            
            if not skip then
                local character = player.Character
                local root = character:FindFirstChild("HumanoidRootPart")
                local head = character:FindFirstChild("Head")
                local humanoid = character:FindFirstChildOfClass("Humanoid")
                
                if root and head and humanoid and humanoid.Health > 0 then
                    local distance = (root.Position - LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                    if distance < closestDistance then
                        closestHead = head
                        closestDistance = distance
                    end
                end
            end
        end
    end
    return closestHead
end

local function getClosestNpcHead()
    local closestHead
    local closestDistance = math.huge
    
    if not LocalPlayer.Character or not LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then return end
    local localHrp = LocalPlayer.Character.HumanoidRootPart
    
    for _, object in ipairs(Workspace:GetDescendants()) do
        if object:IsA("Model") then
            local humanoid = object:FindFirstChildOfClass("Humanoid")
            local hrp = object:FindFirstChild("HumanoidRootPart") or object.PrimaryPart
            local head = object:FindFirstChild("Head")
            
            if humanoid and hrp and humanoid.Health > 0 then
                local isPlayer = false
                for _, pl in ipairs(Players:GetPlayers()) do
                    if pl.Character == object then
                        isPlayer = true
                        break
                    end
                end
                
                if not isPlayer and head then
                    local distance = (hrp.Position - localHrp.Position).Magnitude
                    if distance < closestDistance then
                        closestHead = head
                        closestDistance = distance
                    end
                end
            end
        end
    end
    return closestHead
end

old = hookmetamethod(game, "__namecall", newcclosure(function(self, ...)
    local method = getnamecallmethod()
    local args = {...}
    
    if method == "Raycast" and not checkcaller() then
        local origin = args[1] or Camera.CFrame.Position
        
        if main.enable then
            local closestHead = getClosestHead()
            if closestHead then
                return {
                    Instance = closestHead,
                    Position = closestHead.Position,
                    Normal = (origin - closestHead.Position).Unit,
                    Material = Enum.Material.Plastic,
                    Distance = (closestHead.Position - origin).Magnitude
                }
            end
        end
        
        if main.enablenpc then
            local closestNpcHead = getClosestNpcHead()
            if closestNpcHead then
                return {
                    Instance = closestNpcHead,
                    Position = closestNpcHead.Position,
                    Normal = (origin - closestNpcHead.Position).Unit,
                    Material = Enum.Material.Plastic,
                    Distance = (closestNpcHead.Position - origin).Magnitude
                }
            end
        end
    end
    return old(self, ...)
end))












local ammo = window:Tab("子弹追踪")
local ammo = ammo:section("子弹追踪",true)
ammo:Toggle("开启/关闭子追", "", false, function(state)
    main.enable = state
end)
ammo:Toggle("区分队伍", "", false, function(state)
    main.teamcheck = state
end)
ammo:Toggle("区分好友", "", false, function(state)
    main.friendcheck = state
end)
ammo:Toggle("npc子追", "", false, function(state)
    main.enablenpc = state
end)




local aim = window:Tab("自瞄")
local aim = aim:section("自瞄",true)
aim:Button("走马观花X自瞄UI",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/385j8888/ZOUMAGUIX/refs/heads/main/%E8%B5%B0%E9%A9%AC%E8%A7%82%E8%8A%B1X%E8%87%AA%E7%9E%84.lua"))()
end)
aim:BigLabel("对于忍者注入器或者一些unc低的注入器没用，会有bug")






local world = window:Tab("世界")
local world = world:section("世界",true)
world:Button("全图高光",function()

local cloneref = cloneref or function(o) return o end
Lighting = cloneref(game:GetService("Lighting"))
Lighting.Brightness = 2
	Lighting.ClockTime = 14
	Lighting.FogEnd = 100000
	Lighting.GlobalShadows = false
	Lighting.OutdoorAmbient = Color3.fromRGB(128, 128, 128)
end)