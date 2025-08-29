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
local window = library:new("走马观花X-恶魔学")
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

local gn = window:Tab("主要功能",'10723407389')
local gn = gn:section("主要",true)
gn:Button("全图无黑暗",function()
Lighting = game:GetService("Lighting")
Lighting.Brightness = 2
	Lighting.ClockTime = 14
	Lighting.FogEnd = 100000
	Lighting.GlobalShadows = false
	Lighting.OutdoorAmbient = Color3.fromRGB(128, 128, 128)
end)
gn:Button("解锁第三人称",function()
game:GetService("Players").LocalPlayer.CameraMaxZoomDistance = 99999
game:GetService("Players").LocalPlayer.CameraMode = Enum.CameraMode.Classic
end)
local xj = false
gn:Toggle("狩猎时自动出去", "", false, function(state)
    xj = state  -- 同步阀门状态
    
    if state then
       --  pawn(function()  -- 使用独立协程
           while xj do  -- 检测阀门状态
               local gs = workspace.Ghost.Hunting
               local out = workspace.Map.Rooms["Base Camp"].Pegboard:GetChildren()[8].CFrame
               if gs==true then
                  ME.CFrame = out
               end
               wait(0.5)
           end
    else
        print("停止")
    end
end)
local xjx = false
gn:Toggle("鬼现身时自动出去(推荐)", "", false, function(state)
    xjx = state  -- 同步阀门状态
    
    if state then
       --  pawn(function()  -- 使用独立协程
           while xjx do  -- 检测阀门状态
               local gss = workspace.Ghost.Head
              
               local out = workspace.Map.Rooms["Base Camp"].Pegboard:GetChildren()[8].CFrame
               if gss.Transparency ~= 1 then
                  ME.CFrame = out
               end
               for _, descendantttt in pairs(workspace.Ghost.VisibleParts:GetDescendants()) do
                   if descendantttt:IsA("MeshPart") and descendantttt.Transparency ~= 1 then
                       ME.CFrame = out
                   end
               end
               wait(1)
           end
    else
        print("停止")
    end
end)
local xjxx = false
gn:Toggle("让鬼显身", "", false, function(state)
    xjxx = state  -- 同步阀门状态
    
    if state then
       --  pawn(function()  -- 使用独立协程
           for _, descendantt in pairs(workspace.Ghost:GetDescendants()) do
             if descendantt:IsA("Part") then
                  descendantt.Transparency=0
             end
           end
           for _, descendanttt in pairs(workspace.Ghost:GetDescendants()) do
             if descendanttt:IsA("MeshPart") then
                  descendanttt.Transparency=0
             end
           end
    else
        for _, descendantt in pairs(workspace.Ghost:GetDescendants()) do
             if descendantt:IsA("Part") then
                  descendantt.Transparency=1
             end
        end
        for _, descendanttt in pairs(workspace.Ghost:GetDescendants()) do
             if descendanttt:IsA("MeshPart") then
                  descendanttt.Transparency=1
             end
        end
    end
end)
local xjj = false
gn:Toggle("透视鬼", "", false, function(state)
    xjj = state  -- 同步阀门状态
    
    if state then
       --  pawn(function()  -- 使用独立协程
           while xjj do  -- 检测阀门状态
               local model = workspace:FindFirstChild("Ghost")
               if not model or not model:IsA("Model") then
                   return
               end

             
               local function hasBillboardGui()
                   for _, child in ipairs(model:GetChildren()) do
                       if child:IsA("BillboardGui") then
                           return true
                       end
                   end
                   return false
               end

               if not hasBillboardGui() then
   
                   local billboard = Instance.new("BillboardGui")
                   billboard.Name = "GhostBillboard"
                   billboard.Size = UDim2.new(0, 200, 0, 50)
                   billboard.StudsOffset = Vector3.new(0, 3, 0) 
                   billboard.AlwaysOnTop = true
                   billboard.Adornee = model:FindFirstChildWhichIsA("BasePart") or model.PrimaryPart
    
   
                   local textLabel = Instance.new("TextLabel")
                   textLabel.Size = UDim2.new(1, 0, 1, 0)
                   textLabel.BackgroundTransparency = 1 
                   textLabel.Text = "鬼在这"
                   textLabel.TextColor3 = Color3.new(1, 0, 0) 
                   textLabel.TextScaled = true
                   textLabel.Font = Enum.Font.SourceSansBold
                   textLabel.Parent = billboard
   
                   billboard.Parent = model
               end
               wait(10)
           end
    else
        for _, descendant in pairs(workspace.Ghost:GetDescendants()) do
            if descendant:IsA("BillboardGui") then
               descendant:Destroy()
            end
        end
    end
end)
local xjjj = false
gn:Toggle("自动跟鬼对话(不用拿对讲机)", "", false, function(state)
    xjjj = state  -- 同步阀门状态
    
    if state then
       --  pawn(function()  -- 使用独立协程
           while xjjj do  -- 检测阀门状态
               local args = {
               	"Are you near?"
               }
               game:WaitForChild("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("AskSpiritBoxFromUI"):FireServer(unpack(args))
               wait(1)
               local args = {
               	"What is your goal?"
               }
               game:WaitForChild("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("AskSpiritBoxFromUI"):FireServer(unpack(args))
               wait(1)
               local args = {
               	"Are you in the room with me?"
               }
               game:WaitForChild("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("AskSpiritBoxFromUI"):FireServer(unpack(args))



           end
    else
        print("停止")
    end
end)