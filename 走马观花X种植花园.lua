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
local window = library:new("走马观花X-种植花园")
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
gn:Button("收全部果",function()
local localPlayer = game.Players.LocalPlayer
for _, farmFolder in ipairs(workspace.Farm:GetChildren()) do
    if farmFolder.Name == "Farm" and farmFolder:FindFirstChild("Important") then
        local data = farmFolder.Important:FindFirstChild("Data")
        if data and data:FindFirstChild("Owner") and data.Owner.Value == localPlayer.Name then
            for _, prompt in ipairs(farmFolder.Important.Plants_Physical:GetDescendants()) do
                if prompt:IsA("ProximityPrompt") then
                    fireproximityprompt(prompt)
                end
            end
        end
    end
end
end)
gn:Textbox("自动收果间隔(秒)", "间隔", "请输入间隔", function(value)
--print(value)
_time = value
end)

local xj = false
gn:Toggle("自动收果", "", false, function(state)
    xj = state  -- 同步阀门状态
    
    if state then
       --  pawn(function()  -- 使用独立协程
           while xj do  -- 检测阀门状态
               wait(_time)
               local localPlayer = game.Players.LocalPlayer

               for _, farmFolder in ipairs(workspace.Farm:GetChildren()) do
                   if farmFolder.Name == "Farm" and farmFolder:FindFirstChild("Important") then
                       local data = farmFolder.Important:FindFirstChild("Data")
                       if data and data:FindFirstChild("Owner") and data.Owner.Value == localPlayer.Name then
                           for _, prompt in ipairs(farmFolder.Important.Plants_Physical:GetDescendants()) do
                               if prompt:IsA("ProximityPrompt") then
                                   fireproximityprompt(prompt)
                               end
                           end
                       end
                   end
               end
           end
    else
        print("停止")
    end
end)
gn:Button("传送至工具商店",function()
local aa = workspace.NPCS["Gear Stands"]["Shop Stand"].CFrame
ME.CFrame = aa
end)
local xjj = false
gn:Textbox("自动卖库存间隔(秒)", "间隔", "请输入间隔", function(value)
--print(value)
_timee = value
end)
local xjj = false
gn:Toggle("自动卖库存", "", false, function(state)
    xjj = state  -- 同步阀门状态
    
    if state then
       --  pawn(function()  -- 使用独立协程
           while xjj do  -- 检测阀门状态
               wait(_timee)
               local oldpos=lp.Character.HumanoidRootPart.CFrame
               local bb = workspace.NPCS["Sell Stands"]["Shop Stand"].CFrame
               ME.CFrame = bb
               wait(1.5)
               game:GetService("ReplicatedStorage").GameEvents.Sell_Inventory:FireServer()
               wait(1.5)
               tp(oldpos)

           end
    else
        print("停止")
    end
end)

local gm = window:Tab("购买功能",'10723407389')
local gm = gm:section("购买",true)
gm:Label("注意:需要站在种子商店旁边")
gm:Textbox("购买间隔", "间隔", "请输入间隔", function(value)
--print(value)
_buytime = value
end)
local carrrr = false
gm:Toggle("自动买胡萝卜", "", false, function(state)
    carrrr = state  -- 同步阀门状态
    
    if state then
       --  pawn(function()  -- 使用独立协程
           while carrrr do  -- 检测阀门状态
               wait(_buytime)
               local args = {
                   [1] = "Carrot"
               }

               game:GetService("ReplicatedStorage").GameEvents.BuySeedStock:FireServer(unpack(args))

           end
    else
        print("停止")
    end
end)
local st = false
gm:Toggle("自动买草莓", "", false, function(state)
    st = state  -- 同步阀门状态
    
    if state then
       --  pawn(function()  -- 使用独立协程
           while st do  -- 检测阀门状态
               wait(_buytime)
               local args = {
                   [1] = "Strawberry"
               }

               game:GetService("ReplicatedStorage").GameEvents.BuySeedStock:FireServer(unpack(args))

           end
    else
        print("停止")
    end
end)
local bl = false
gm:Toggle("自动买蓝莓", "", false, function(state)
    bl = state  -- 同步阀门状态
    
    if state then
       --  pawn(function()  -- 使用独立协程
           while bl do  -- 检测阀门状态
               wait(_buytime)
               local args = {
                   [1] = "Blueberry"
               }

               game:GetService("ReplicatedStorage").GameEvents.BuySeedStock:FireServer(unpack(args))

           end
    else
        print("停止")
    end
end)
local yujin = false
gm:Toggle("自动买橙色郁金香", "", false, function(state)
    yujin = state  -- 同步阀门状态
    
    if state then
       --  pawn(function()  -- 使用独立协程
           while yujin do  -- 检测阀门状态
               wait(_buytime)
               local args = {
                   [1] = "Orange Tulip"
               }

               game:GetService("ReplicatedStorage").GameEvents.BuySeedStock:FireServer(unpack(args))

           end
    else
        print("停止")
    end
end)
local tm = false
gm:Toggle("自动买西红柿", "", false, function(state)
    tm = state  -- 同步阀门状态
    
    if state then
       --  pawn(function()  -- 使用独立协程
           while tm do  -- 检测阀门状态
               wait(_buytime)
               local args = {
                   [1] = "Tomato"
               }

               game:GetService("ReplicatedStorage").GameEvents.BuySeedStock:FireServer(unpack(args))

           end
    else
        print("停止")
    end
end)

local co = false
gm:Toggle("自动买玉米", "", false, function(state)
    co = state  -- 同步阀门状态
    
    if state then
       --  pawn(function()  -- 使用独立协程
           while co do  -- 检测阀门状态
               wait(_buytime)
               local args = {
                   [1] = "Corn"
               }

               game:GetService("ReplicatedStorage").GameEvents.BuySeedStock:FireServer(unpack(args))

           end
    else
        print("停止")
    end
end)

local sx = false
gm:Toggle("自动买水仙花", "", false, function(state)
    sx = state  -- 同步阀门状态
    
    if state then
       --  pawn(function()  -- 使用独立协程
           while sx do  -- 检测阀门状态
               wait(_buytime)
               local args = {
                   [1] = "Daffodil"
               }

               game:GetService("ReplicatedStorage").GameEvents.BuySeedStock:FireServer(unpack(args))

           end
    else
        print("停止")
    end
end)

local xg = false
gm:Toggle("自动买西瓜", "", false, function(state)
    xg = state  -- 同步阀门状态
    
    if state then
       --  pawn(function()  -- 使用独立协程
           while xg do  -- 检测阀门状态
               wait(_buytime)
               local args = {
                   [1] = "Watermelon"
               }

               game:GetService("ReplicatedStorage").GameEvents.BuySeedStock:FireServer(unpack(args))

           end
    else
        print("停止")
    end
end)

local ng = false
gm:Toggle("自动买南瓜", "", false, function(state)
    ng = state  -- 同步阀门状态
    
    if state then
       --  pawn(function()  -- 使用独立协程
           while ng do  -- 检测阀门状态
               wait(_buytime)
               local args = {
                   [1] = "Pumpkin"
               }

               game:GetService("ReplicatedStorage").GameEvents.BuySeedStock:FireServer(unpack(args))

           end
    else
        print("停止")
    end
end)

local pg = false
gm:Toggle("自动买苹果", "", false, function(state)
    pg = state  -- 同步阀门状态
    
    if state then
       --  pawn(function()  -- 使用独立协程
           while pg do  -- 检测阀门状态
               wait(_buytime)
               local args = {
                   [1] = "Apple"
               }

               game:GetService("ReplicatedStorage").GameEvents.BuySeedStock:FireServer(unpack(args))

           end
    else
        print("停止")
    end
end)

local zz = false
gm:Toggle("自动买竹子", "", false, function(state)
    zz = state  -- 同步阀门状态
    
    if state then
       --  pawn(function()  -- 使用独立协程
           while zz do  -- 检测阀门状态
               wait(_buytime)
               local args = {
                   [1] = "Bamboo"
               }

               game:GetService("ReplicatedStorage").GameEvents.BuySeedStock:FireServer(unpack(args))

           end
    else
        print("停止")
    end
end)

local yz = false
gm:Toggle("自动买椰子", "", false, function(state)
    yz = state  -- 同步阀门状态
    
    if state then
       --  pawn(function()  -- 使用独立协程
           while yz do  -- 检测阀门状态
               wait(_buytime)
               local args = {
                   [1] = "Coconut"
               }

               game:GetService("ReplicatedStorage").GameEvents.BuySeedStock:FireServer(unpack(args))

           end
    else
        print("停止")
    end
end)

local xrz = false
gm:Toggle("自动买仙人掌", "", false, function(state)
    xrz = state  -- 同步阀门状态
    
    if state then
       --  pawn(function()  -- 使用独立协程
           while xrz do  -- 检测阀门状态
               wait(_buytime)
               local args = {
                   [1] = "Cactus"
               }

               game:GetService("ReplicatedStorage").GameEvents.BuySeedStock:FireServer(unpack(args))

           end
    else
        print("停止")
    end
end)

local hlg = false
gm:Toggle("自动买火龙果", "", false, function(state)
    hlg = state  -- 同步阀门状态
    
    if state then
       --  pawn(function()  -- 使用独立协程
           while hlg do  -- 检测阀门状态
               wait(_buytime)
               local args = {
                   [1] = "Dragon Fruit"
               }

               game:GetService("ReplicatedStorage").GameEvents.BuySeedStock:FireServer(unpack(args))

           end
    else
        print("停止")
    end
end)

local mgg = false
gm:Toggle("自动买芒果", "", false, function(state)
    mgg = state  -- 同步阀门状态
    
    if state then
       --  pawn(function()  -- 使用独立协程
           while mgg do  -- 检测阀门状态
               wait(_buytime)
               local args = {
                   [1] = "Mango"
               }

               game:GetService("ReplicatedStorage").GameEvents.BuySeedStock:FireServer(unpack(args))

           end
    else
        print("停止")
    end
end)

local pt = false
gm:Toggle("自动买葡萄", "", false, function(state)
    pt = state  -- 同步阀门状态
    
    if state then
       --  pawn(function()  -- 使用独立协程
           while pt do  -- 检测阀门状态
               wait(_buytime)
               local args = {
                   [1] = "Grape"
               }

               game:GetService("ReplicatedStorage").GameEvents.BuySeedStock:FireServer(unpack(args))

           end
    else
        print("停止")
    end
end)

local mog = false
gm:Toggle("自动买蘑菇", "", false, function(state)
    mog = state  -- 同步阀门状态
    
    if state then
       --  pawn(function()  -- 使用独立协程
           while mog do  -- 检测阀门状态
               wait(_buytime)
               local args = {
                   [1] = "Mushroom"
               }

               game:GetService("ReplicatedStorage").GameEvents.BuySeedStock:FireServer(unpack(args))

           end
    else
        print("停止")
    end
end)

local ljj = false
gm:Toggle("自动买辣椒", "", false, function(state)
    ljj = state  -- 同步阀门状态
    
    if state then
       --  pawn(function()  -- 使用独立协程
           while ljj do  -- 检测阀门状态
               wait(_buytime)
               local args = {
                   [1] = "Pepper"
               }

               game:GetService("ReplicatedStorage").GameEvents.BuySeedStock:FireServer(unpack(args))

           end
    else
        print("停止")
    end
end)

local coco = false
gm:Toggle("自动买可可", "", false, function(state)
    coco = state  -- 同步阀门状态
    
    if state then
       --  pawn(function()  -- 使用独立协程
           while coco do  -- 检测阀门状态
               wait(_buytime)
               local args = {
                   [1] = "cacao"
               }

               game:GetService("ReplicatedStorage").GameEvents.BuySeedStock:FireServer(unpack(args))

           end
    else
        print("停止")
    end
end)

local wd = false
gm:Toggle("自动买豌豆", "", false, function(state)
    wd = state  -- 同步阀门状态
    
    if state then
       --  pawn(function()  -- 使用独立协程
           while wd do  -- 检测阀门状态
               wait(_buytime)
               local args = {
                   [1] = "Beanstalk"
               }

               game:GetService("ReplicatedStorage").GameEvents.BuySeedStock:FireServer(unpack(args))

           end
    else
        print("停止")
    end
end)

local bh = false
gm:Toggle("自动买百合花", "", false, function(state)
    bh = state  -- 同步阀门状态
    
    if state then
       --  pawn(function()  -- 使用独立协程
           while bh do  -- 检测阀门状态
               wait(_buytime)
               local args = {
                   [1] = "Ember Lily"
               }

               game:GetService("ReplicatedStorage").GameEvents.BuySeedStock:FireServer(unpack(args))

           end
    else
        print("停止")
    end
end)

local tpg = false
gm:Toggle("自动买甜苹果", "", false, function(state)
    tpg = state  -- 同步阀门状态
    
    if state then
       --  pawn(function()  -- 使用独立协程
           while tpg do  -- 检测阀门状态
               wait(_buytime)
               local args = {
                   [1] = "Sugar Apple"
               }

               game:GetService("ReplicatedStorage").GameEvents.BuySeedStock:FireServer(unpack(args))

           end
    else
        print("停止")
    end
end)

local hl = false
gm:Toggle("自动买燃烧的花蕾", "", false, function(state)
    hl = state  -- 同步阀门状态
    
    if state then
       --  pawn(function()  -- 使用独立协程
           while hl do  -- 检测阀门状态
               wait(_buytime)
               local args = {
                   [1] = "Burning Bud"
               }

               game:GetService("ReplicatedStorage").GameEvents.BuySeedStock:FireServer(unpack(args))

           end
    else
        print("停止")
    end
end)

local jus = false
gm:Toggle("自动买巨型松果", "", false, function(state)
    jus = state  -- 同步阀门状态
    
    if state then
       --  pawn(function()  -- 使用独立协程
           while jus do  -- 检测阀门状态
               wait(_buytime)
               local args = {
                   [1] = "Giant Pinecone"
               }

               game:GetService("ReplicatedStorage").GameEvents.BuySeedStock:FireServer(unpack(args))

           end
    else
        print("停止")
    end
end)

local ed = false
gm:Toggle("自动买长老草莓", "", false, function(state)
    ed = state  -- 同步阀门状态
    
    if state then
       --  pawn(function()  -- 使用独立协程
           while ed do  -- 检测阀门状态
               wait(_buytime)
               local args = {
                   [1] = "Elder Strawberry"
               }

               game:GetService("ReplicatedStorage").GameEvents.BuySeedStock:FireServer(unpack(args))

           end
    else
        print("停止")
    end
end)

local lmm = false
gm:Toggle("自动买罗马斯科", "", false, function(state)
    lmm = state  -- 同步阀门状态
    
    if state then
       --  pawn(function()  -- 使用独立协程
           while lmm do  -- 检测阀门状态
               wait(_buytime)
               local args = {
                   [1] = "Romanesco"
               }

               game:GetService("ReplicatedStorage").GameEvents.BuySeedStock:FireServer(unpack(args))

           end
    else
        print("停止")
    end
end)
