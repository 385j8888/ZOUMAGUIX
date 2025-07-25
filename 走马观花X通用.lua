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
gn:Button("Spy",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/infyiff/backup/main/SimpleSpyV3/main.lua"))()
end)
gn:Button("IY指令",function()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'),true))()
end)
gn:Button("f3x工具",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/infyiff/backup/refs/heads/main/f3x.lua"))()
end)
local playerr = window:Tab("玩家")
local playerr = playerr:section("玩家功能",true)
playerr:Button("爬墙走",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/infyiff/backup/main/wallwalker.lua"))()
end)
playerr:Button("飞行V3",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/385j8888/ZOUMAGUIX/refs/heads/main/%E9%A3%9E%E8%A1%8C%E8%84%9A%E6%9C%ACV3(%E5%85%A8%E6%B8%B8%E6%88%8F%E9%80%9A%E7%94%A8).txt"))()
end)
gn:Button("绕大部分服务器反作弊",function()
for _, Value in next, getgc(true) do
    if typeof(Value) == "table" then
        if rawget(Value, "indexInstance") or rawget(Value, "newindexInstance") or rawget(Value, "newIndexInstance") then
            Value.tvk = {"kick", function() return task.wait(9e9) end}
        end
    end
end
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local oldIndex, oldNamecall
oldIndex = hookmetamethod(game, "__index", newcclosure(function(t, k)
    if t == LocalPlayer and type(k) == "string" and k:lower() == "kick" then
    return function(...)
    print("__index 拦截kick 成功")
    -- return oldIndex(t, k)(...) 原方法 需要去掉注释
    end
end
    return oldIndex(t, k)
end))
    oldNamecall = hookmetamethod(game, "__namecall", newcclosure(function(self, ...)
    if self == LocalPlayer and getnamecallmethod():lower() == "kick" then print(" __namecall 拦截kick 成功")
    return
end
    return oldNamecall(self, ...)
end))

print("反 kick 已开启")
local getinfo = getinfo or debug.getinfo
local DEBUG = false
local Hooked = {}

local Detected, Kill

setthreadidentity(2)

for i, v in getgc(true) do
    if typeof(v) == "table" then
        local DetectFunc = rawget(v, "Detected")
        local KillFunc = rawget(v, "Kill")
    
        if typeof(DetectFunc) == "function" and not Detected then
            Detected = DetectFunc
            
            local Old; Old = hookfunction(Detected, function(Action, Info, NoCrash)
                if Action ~= "_" then
                    if DEBUG then
                        warn(`Adonis AntiCheat flagged\nMethod: {Action}\nInfo: {Info}`)
                    end
                end
                
                return true
            end)

            table.insert(Hooked, Detected)
        end

        if rawget(v, "Variables") and rawget(v, "Process") and typeof(KillFunc) == "function" and not Kill then
            Kill = KillFunc
            local Old; Old = hookfunction(Kill, function(Info)
                if DEBUG then
                    warn(`Adonis AntiCheat tried to kill (fallback): {Info}`)
                end
            end)

            table.insert(Hooked, Kill)
        end
    end
end

local Old; Old = hookfunction(getrenv().debug.info, newcclosure(function(...)
    local LevelOrFunc, Info = ...

    if Detected and LevelOrFunc == Detected then
        if DEBUG then
            warn(`zins | adonis bypassed`)
        end

        return coroutine.yield(coroutine.running())
    end
    
    return Old(...)
end))
-- setthreadidentity(9)
setthreadidentity(7)
end)
--playerr:Slider("速度", "速度设置", 16, 16, 1000, false, function(value)
--   lp.Character.Humanoid.WalkSpeed = value
--end)
--playerr:Slider("跳高", "跳高设置", 50, 50, 1000, false, function(value)
--    lp.Character.Humanoid.JumpPower = value
--end)
playerr:Textbox("速度", "速度", "请输入速度", function(value)
    lp.Character.Humanoid.WalkSpeed = value
end)
playerr:Textbox("跳跃", "跳跃", "请输入跳跃", function(value)
    lp.Character.Humanoid.JumpPower = value
end)
local hhk = false
playerr:Toggle("触发所有临近显示", "", false, function(state)
    hhk = state  -- 同步阀门状态
    
    if state then
        --spawn(function()  -- 使用独立协程
            while hhk do  -- 检测阀门状态
                  for _, descendant in pairs(workspace:GetDescendants()) do
                    if descendant:IsA("ProximityPrompt") then
                       fireproximityprompt(descendant)
                    end
                  end
                 wait(0.01)
            end
        --end)
    else
        print("1")
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
playerr:Button("解锁第三人称",function()
game:GetService("Players").LocalPlayer.CameraMaxZoomDistance = 99999
game:GetService("Players").LocalPlayer.CameraMode = Enum.CameraMode.Classic
end)
local huanjing = window:Tab("环境")
local huanjing = huanjing:section("环境",true)
huanjing:Button("全图变亮",function()
Lighting = game:GetService("Lighting")
Lighting.Brightness = 2
	Lighting.ClockTime = 14
	Lighting.FogEnd = 100000
	Lighting.GlobalShadows = false
	Lighting.OutdoorAmbient = Color3.fromRGB(128, 128, 128)
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