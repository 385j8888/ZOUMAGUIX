local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/385j8888/ZOUMAGUIX/refs/heads/main/ProtectUI.lua"))()
local replicatedStorage = game:GetService("ReplicatedStorage")
local lp = game.Players.LocalPlayer
--local lp = gs("Players").LocalPlayer
local ME = game.Players.LocalPlayer.Character.HumanoidRootPart
local Players = game:GetService("Players")
local localPlayer = Players.LocalPlayer
local Character = localPlayer.Character
local LocalCharacter = localPlayer.Character
if not shared.AntiBanLoop then
    shared.AntiBanLoop = {running = false, hooked = false}
end
local loopData = shared.AntiBanLoop



NO_HOOKING = false
NO_HOOKING = typeof(hookfunction) ~= "function"
hookfunction = (typeof(hookfunction) == "function" and hookfunction) or function(...) end
hookmetamethod = (typeof(hookmetamethod) == "function" and hookmetamethod) or function(...) end
setthreadidentity = (typeof(setthreadidentity) == "function" and setthreadidentity) or function(...) end



local HumanoidRootPart = LocalCharacter:FindFirstChild("HumanoidRootPart")
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
local window = library:new("走马观花X-鱼")

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
local zhuyao = window:Tab("主要功能")
local fishgn = zhuyao:section("钓鱼",true)
local gn = zhuyao:section("主要功能",true)
gn:Toggle("钓鱼区域显示", "", false, function(state)
  --  abbaaa = state  -- 同步阀门状态
    
    if state then
      for _, fishpool in pairs(workspace.zones.fishing:GetDescendants()) do
        if fishpool.Name=="radar1" then
           fishpool.Enabled = true
        end
        if fishpool.Name=="radar2" then
           fishpool.Enabled = true
        end
      end
    else
        for _, fishpool in pairs(workspace.zones.fishing:GetDescendants()) do
          if fishpool.Name=="radar1" then
             fishpool.Enabled = false
          end
          if fishpool.Name=="radar2" then
             fishpool.Enabled = false
          end
        end
    end
end)
gn:Button("反挂机踢出",function()

local pcall
    = pcall

for _, SkibidiConnection in getconnections(game:GetService("Players").LocalPlayer.Idled) do
    pcall(SkibidiConnection.Disable   , SkibidiConnection)
    pcall(SkibidiConnection.Disconnect, SkibidiConnection)
end
end)
gn:Toggle("禁用氧气和气温", "", false, function(state)
  --  abbaaa = state  -- 同步阀门状态
    
    if state then
      for _, szsz in pairs(workspace:GetDescendants()) do
        if szsz.Name=="temperature" then
           szsz.Disabled = true
        end
        if szsz.Name=="oxygen" then
           szsz.Disabled = true
        end
      end
    else
        for _, szsz in pairs(workspace:GetDescendants()) do
          if szsz.Name=="temperature" then
             szsz.Enabled = true
          end
          if szsz.Name=="oxygen" then
             szsz.Enabled = true
          end
        end
    end
end)
fishgn:Button("创建秒上钩按钮",function()
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "DragButtonGui"
--screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
screenGui.Parent = game:GetService("CoreGui")
local button = Instance.new("TextButton")
button.Name = "DragButton"
button.Size = UDim2.new(0, 75, 0, 75)
button.Position = UDim2.new(0.5, -50, 0.5, -50)
button.BackgroundColor3 = Color3.fromRGB(0, 120, 215)
button.Text = "上钩"
button.TextSize = 20
button.TextColor3 = Color3.new(1, 1, 1)
button.Parent = screenGui


local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0.2, 0)
corner.Parent = button


local isDragging = false
local dragStartPos
local buttonStartPos
local dragThreshold = 5  
local touchStartTime


button.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.Touch or input.UserInputType == Enum.UserInputType.MouseButton1 then
        isDragging = true
        dragStartPos = input.Position
        buttonStartPos = button.Position
        touchStartTime = tick()
        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                isDragging = false
            end
        end)
    end
end)

button.InputChanged:Connect(function(input)
    if isDragging and (input.UserInputType == Enum.UserInputType.Touch or input.UserInputType == Enum.UserInputType.MouseMovement) then
        local delta = input.Position - dragStartPos
        button.Position = UDim2.new(
            buttonStartPos.X.Scale, 
            buttonStartPos.X.Offset + delta.X,
            buttonStartPos.Y.Scale,
            buttonStartPos.Y.Offset + delta.Y
        )
    end
end)


button.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.Touch or input.UserInputType == Enum.UserInputType.MouseButton1 then
        isDragging = false
        
      
        local dragDistance = (input.Position - dragStartPos).Magnitude
        
    
        if dragDistance <= dragThreshold and (tick() - touchStartTime) < 0.3 then
                        local args = {
	                        100,
                         	true
                        }
                        game:GetService("ReplicatedStorage"):WaitForChild("events"):WaitForChild("reelfinished"):FireServer(unpack(args))
        end
    end
end)
end)
local abba = false
fishgn:Toggle("秒上钩(完美钓鱼)", "", false, function(state)
    abba = state  -- 同步阀门状态
    
    if state then
      while abba do
         local Players = game:GetService("Players")
         local player = Players.LocalPlayer

         local playerGui = player:WaitForChild("PlayerGui")
         local reel = playerGui:WaitForChild("reel")
         local bar = reel:WaitForChild("bar")
         if bar then
           local args = {
	          100,
        	  true
           }
           game:GetService("ReplicatedStorage"):WaitForChild("events"):WaitForChild("reelfinished"):FireServer(unpack(args))
           wait(2)
         end
         wait(1)
      end
    else
        print("6")
    end
end)

local abbaa = false
fishgn:Toggle("秒上钩(无完美钓鱼)", "", false, function(state)
    abbaa = state  -- 同步阀门状态
    
    if state then
      while abbaa do
        
         local Players = game:GetService("Players")
         local player = Players.LocalPlayer

         local playerGui = player:WaitForChild("PlayerGui")
         local reel = playerGui:WaitForChild("reel")
         local bar = reel:WaitForChild("bar")
         if bar then
           local args = {
	          100,
        	  false
           }
           game:GetService("ReplicatedStorage"):WaitForChild("events"):WaitForChild("reelfinished"):FireServer(unpack(args))
           wait(2)
         end
         wait(1)
      end
    else
        print("6")
    end
end)
local yg = false
gn:Toggle("不知名作用", "", false, function(state)
    yg = state  -- 同步阀门状态
    
    if state then
    
         local part = Instance.new("Part")
         part.Name = "ZOUMApart"
         part.Size = Vector3.new(30, 30, 10)
         part.Anchored = true
         part.CanCollide = true
         part.Material = Enum.Material.Plastic
         part.BrickColor = BrickColor.new("Bright red")
         part.Transparency = 1
         part.Parent = workspace
      while yg do
         local Players = game:GetService("Players")
         local RunService = game:GetService("RunService")

         local localPlayer = Players.LocalPlayer
         local ZOUMApart = workspace:FindFirstChild("ZOUMApart")
             local character = localPlayer.Character
             if character then
                 local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
                 if humanoidRootPart then
                     local playerPosition = humanoidRootPart.Position
                     local playerLookVector = humanoidRootPart.CFrame.LookVector
                     local targetPosition = playerPosition + playerLookVector * 11
            
                     ZOUMApart.Position = targetPosition
            
                     local lookAtCFrame = CFrame.lookAt(targetPosition, playerPosition)
                     ZOUMApart.CFrame = lookAtCFrame
                 end
             end
         wait(0.001)
      end
    else
        local ZOUMApart = workspace:FindFirstChild("ZOUMApart")
        ZOUMApart:Destroy()
    end
end)
local bt = false
fishgn:Toggle("追踪白条", "", false, function(state)
    bt = state  -- 同步阀门状态
    
    if state then
      while bt do
         local Players = game:GetService("Players")
         local player = Players.LocalPlayer

         local playerGui = player:WaitForChild("PlayerGui")
         local reel = playerGui:WaitForChild("reel")
         local bar = reel:WaitForChild("bar")

         local sbfish = bar:WaitForChild("fish")
         local playerbar = bar:WaitForChild("playerbar")

         playerbar.Position = sbfish.Position
         wait(0.001)
      end
    else
        print("6")
    end
end)
local btbt = false
gn:Toggle("逆天白条(仅供观赏)", "", false, function(state)
    btbt = state  -- 同步阀门状态
    
    if state then
      while btbt do
         local player = game.Players.LocalPlayer
         local playerGui = player:WaitForChild("PlayerGui")

         local reel = playerGui:WaitForChild("reel")
         local bar = reel:WaitForChild("bar")
         local playerbar = bar:WaitForChild("playerbar")

         local currentSize = playerbar.Size
         local newSize = UDim2.new(
             currentSize.X.Scale, 
             currentSize.X.Offset + 30, 
             currentSize.Y.Scale, 
             currentSize.Y.Offset
         )
         playerbar.Size = newSize
         wait(0.1)
      end
    else
        print("6")
    end
end)
local nuk = false
gn:Toggle("出核弹立马退出(帮你保住核弹)", "", false, function(state)
    nuk = state  -- 同步阀门状态
    
    if state then
      while nuk do
         local Players = game:GetService("Players")
         local LocalPlayer = Players.LocalPlayer
         local nuke = LocalPlayer.PlayerGui.NukeMinigame
         if nuke.Enabled == true then
             game:shutdown()
             game.Players.LocalPlayer:Kick()
             game.Players.LocalPlayer:Destroy()
         end
         wait(0.05)
      end
    else
        print("6")
    end
end)
local abbaaa = false
fishgn:Toggle("自动抛竿", "", false, function(state)
    abbaaa = state  -- 同步阀门状态
    
    if state then
      while abbaaa do
         
         local Players = game:GetService("Players")
         local player = Players.LocalPlayer
         local character = player.Character or player.CharacterAdded:Wait()
         local humanoid = character:WaitForChild("Humanoid")
         local animation = Instance.new("Animation")
         animation.AnimationId = "rbxassetid://137096064242936"
         local animTrack = humanoid:LoadAnimation(animation)
         animTrack.Priority = Enum.AnimationPriority.Action
       --  animTrack:Play()
       --  wait(0.4)
       --  animTrack:Stop()
         local Players = game:GetService("Players")
         local player = Players.LocalPlayer
         local character = player.Character or player.CharacterAdded:Wait()
         local humanoid = character:WaitForChild("Humanoid")
         local animation = Instance.new("Animation")
         animation.AnimationId = "rbxassetid://83011446255336"
         local animTrack = humanoid:LoadAnimation(animation)
         animTrack.Priority = Enum.AnimationPriority.Action
       --  animTrack:Play()
         local args = {100, 1}
         local player = game:GetService("Players").LocalPlayer
         local character = player.Character

         if character then
             for _, tool in ipairs(character:GetChildren()) do
                 if tool:IsA("Tool") then
                     local events = tool:FindFirstChild("events")
                     if events then
                         local castEvent = events:FindFirstChild("castAsync")
                         if castEvent then
                             castEvent:InvokeServer(100,1)
                         end
                     end
                 end
             end
         end
         
         wait(0.1)
      end
    else
        print("6")
    end
end)
local gdgd = false
gn:Toggle("固定位置", "", false, function(state)
    gdgd = state  -- 同步阀门状态
    
    if state then
      local dangqiangps = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
      while gdgd do
         local ME = game.Players.LocalPlayer.Character.HumanoidRootPart
         ME.CFrame = dangqiangps
         wait(0.03)
      end
    else
      print("6")
    end
end)
-- 脚本由TurtleSpy生成，由Interr#0421制作
        
local abbaaaa = false
fishgn:Toggle("自动摇晃", "", false, function(state)
    abbaaaa = state  -- 同步阀门状态
    
    if state then
      while abbaaaa do
        local vim = game:GetService("VirtualInputManager")
        local run_service = game:GetService("RunService")
        local replicated_storage = game:GetService("ReplicatedStorage")
       
        local playergui = game.Players.LocalPlayer.PlayerGui

        local utility = {blacklisted_attachments = {"bob", "bodyweld"}}
        local fishingThread  

        function utility.simulate_click(x, y, mb)
            vim:SendMouseButtonEvent(x, y, (mb - 1), true, game, 1)
            vim:SendMouseButtonEvent(x, y, (mb - 1), false, game, 1)
        end

        function utility.move_fix(bobber)
            for _, value in bobber:GetDescendants() do
                if (value.ClassName == "Attachment" and table.find(utility.blacklisted_attachments, value.Name)) then
                    value:Destroy()
                end
            end
        end

        function autoshake()
            local shake_ui = playergui:FindFirstChild("shakeui")
            if shake_ui then
                local safezone = shake_ui:FindFirstChild("safezone")
                local button = safezone and safezone:FindFirstChild("button")

                if button then
                  --  if config.enableBigButton then
                        button.Size = UDim2.new(1.3, 0, 1.3, 0)
                        button.Position = UDim2.new(0.5, 0, 0.4, 0)
                      --  button.Position = UDim2.new(1, 0, 1, 0)
                   -- else
                     --   button.Size = UDim2.new(1, 0, 1, 0)  
                    --end

                    if button.Visible then
                        utility.simulate_click(
                            button.AbsolutePosition.X + button.AbsoluteSize.X / 2,
                            button.AbsolutePosition.Y + button.AbsoluteSize.Y / 2,
                            1
                        )
                    end
                end
            end
        end
         autoshake()
         wait(0.001)
      end
    else
        print("6")
    end
end)


local oceanwalk = false
gn:Toggle("海上行走", "", false, function(state)
    oceanwalk = state  -- 同步阀门状态
    
    if state then
     -- while oceanwalk do
          for _, ocean in pairs(workspace:GetDescendants()) do
              if ocean.Name=="Ocean" then
                  ocean.CanCollide = true
              end
          end
          for _, docean in pairs(workspace:GetDescendants()) do
              if docean.Name=="Deep Ocean" then
                  docean.CanCollide = true
              end
          end
          for _, fishocean in pairs(workspace.zones.fishing:GetDescendants()) do
              if fishocean:IsA("Part") then
                  fishocean.CanCollide = true
              end
          end
     --    wait(20)
   --   end
    else
          for _, ocean in pairs(workspace:GetDescendants()) do
              if ocean.Name=="Ocean" then
                  ocean.CanCollide = false
              end
          end
          for _, docean in pairs(workspace:GetDescendants()) do
              if docean.Name=="Deep Ocean" then
                  docean.CanCollide = false
              end
          end
          for _, fishocean in pairs(workspace.zones.fishing:GetDescendants()) do
              if fishocean:IsA("Part") then
                  fishocean.CanCollide = false
              end
          end
    end
end)

local buyandsell = window:Tab("购买和出售")
local sel = buyandsell:section("出售",true)
sel:Button("卖手上的鱼",function()
    game:GetService("ReplicatedStorage"):WaitForChild("events"):WaitForChild("Sell"):InvokeServer()
end)
local se = false
sel:Toggle("自动出售手上的鱼", "", false, function(state)
    se = state  -- 同步阀门状态
    
    if state then
      while se do
         game:GetService("ReplicatedStorage"):WaitForChild("events"):WaitForChild("Sell"):InvokeServer()
         wait(0.05)
      end
    else
        print("6")
    end
end)
sel:Button("卖全部鱼",function()
    game:GetService("ReplicatedStorage"):WaitForChild("events"):WaitForChild("SellAll"):InvokeServer()
end)
sel:Button("评估鱼",function()
    workspace:WaitForChild("world"):WaitForChild("npcs"):WaitForChild("Appraiser"):WaitForChild("appraiser"):WaitForChild("appraise"):InvokeServer()
end)

local cuss = window:Tab("传送")
local cus = cuss:section("传送",true)
local FishingSection = cuss:section("特殊传送",true)
FishingSection:Button("波塞冬图腾传送", function()
local localPlayer = Players.LocalPlayer
local Character = localPlayer.Character
local LocalCharacter = localPlayer.Character
local HumanoidRootPart = LocalCharacter:FindFirstChild("HumanoidRootPart")
    HumanoidRootPart.CFrame = CFrame.new(-3955, -555, 855)
end)
FishingSection:Button("极光图腾传送", function()
local localPlayer = Players.LocalPlayer
local Character = localPlayer.Character
local LocalCharacter = localPlayer.Character
local HumanoidRootPart = LocalCharacter:FindFirstChild("HumanoidRootPart")
    HumanoidRootPart.CFrame = CFrame.new(-1811, -137, -3282)
end)

FishingSection:Button("日晷图腾传送", function()
local localPlayer = Players.LocalPlayer
local Character = localPlayer.Character
local LocalCharacter = localPlayer.Character
local HumanoidRootPart = LocalCharacter:FindFirstChild("HumanoidRootPart")
    HumanoidRootPart.CFrame = CFrame.new(-1148, 135, -1075)
end)

FishingSection:Button("日食图腾传送", function()
local localPlayer = Players.LocalPlayer
local Character = localPlayer.Character
local LocalCharacter = localPlayer.Character
local HumanoidRootPart = LocalCharacter:FindFirstChild("HumanoidRootPart")
    HumanoidRootPart.CFrame = CFrame.new(5940, 265, 900)
end)

FishingSection:Button("风息图腾传送", function()
local localPlayer = Players.LocalPlayer
local Character = localPlayer.Character
local LocalCharacter = localPlayer.Character
local HumanoidRootPart = LocalCharacter:FindFirstChild("HumanoidRootPart")
    HumanoidRootPart.CFrame = CFrame.new(2849, 178, 2702)
end)

FishingSection:Button("烟幕图腾传送", function()
local localPlayer = Players.LocalPlayer
local Character = localPlayer.Character
local LocalCharacter = localPlayer.Character
local HumanoidRootPart = LocalCharacter:FindFirstChild("HumanoidRootPart")
    HumanoidRootPart.CFrame = CFrame.new(2789, 140, -625)
end)

FishingSection:Button("暴风图腾传送", function()
local localPlayer = Players.LocalPlayer
local Character = localPlayer.Character
local LocalCharacter = localPlayer.Character
local HumanoidRootPart = LocalCharacter:FindFirstChild("HumanoidRootPart")
    HumanoidRootPart.CFrame = CFrame.new(35, 133, 1943)
end)

FishingSection:Button("奇异漩涡传送", function()
    local offset = Vector3.new(25, 135, 25)
    local WorldEvent = game.Workspace.zones.fishing:FindFirstChild("Isonade")
    if not WorldEvent then return end
    HumanoidRootPart.CFrame = CFrame.new(game.Workspace.zones.fishing.Isonade.Position + offset)
end)

FishingSection:Button("锤头双髻鲨传送", function()
    local offset = Vector3.new(0, 135, 0)
    local WorldEvent = game.Workspace.zones.fishing:FindFirstChild("Great Hammerhead Shark")
    if not WorldEvent then return end
    HumanoidRootPart.CFrame = CFrame.new(game.Workspace.zones.fishing["Great Hammerhead Shark"].Position + offset)
end)

FishingSection:Button("大白鲨传送", function()
    local offset = Vector3.new(0, 135, 0)
    local WorldEvent = game.Workspace.zones.fishing:FindFirstChild("Great White Shark")
    if not WorldEvent then return end
    HumanoidRootPart.CFrame = CFrame.new(game.Workspace.zones.fishing["Great White Shark"].Position + offset)
end)

FishingSection:Button("巨齿鲨传送", function()
    local offset = Vector3.new(0, 50, 0)
    local WorldEvent = game.Workspace.zones.fishing:FindFirstChild("Megalodon Default")
    if not WorldEvent then return end
    HumanoidRootPart.CFrame = CFrame.new(game.Workspace.zones.fishing["Megalodon Default"].Position + offset)
end)
FishingSection:Button("鲸鲨传送", function()
    local offset = Vector3.new(0, 135, 0)
    local WorldEvent = game.Workspace.zones.fishing:FindFirstChild("Whale Shark")
    if not WorldEvent then return end
    HumanoidRootPart.CFrame = CFrame.new(game.Workspace.zones.fishing["Whale Shark"].Position + offset)
end)

FishingSection:Button("深渊-海蛇传送", function()
    local offset = Vector3.new(0, 50, 0)
    local WorldEvent = game.Workspace.zones.fishing:FindFirstChild("The Depths - Serpent")
    if not WorldEvent then return end
    HumanoidRootPart.CFrame = CFrame.new(game.Workspace.zones.fishing["The Depths - Serpent"].Position + offset)
end)
cus:Button("鞋子钓点",function()
local ME = game.Players.LocalPlayer.Character.HumanoidRootPart
ME.CFrame = CFrame.new(41, 133, 760)
end)
cus:Button("马里亚纳海沟第三区",function()
local ME = game.Players.LocalPlayer.Character.HumanoidRootPart
ME.CFrame = CFrame.new(-13508, -11050.2, 128)
end)
cus:Button("神庙一号室",function()
local ME = game.Players.LocalPlayer.Character.HumanoidRootPart
ME.CFrame = CFrame.new(-5247, -1757, -9624)
end)
cus:Button("神庙三号室",function()
local ME = game.Players.LocalPlayer.Character.HumanoidRootPart
ME.CFrame = CFrame.new(-5424, -1756, -10227)
end)
cus:Button("神庙四号室",function()
local ME = game.Players.LocalPlayer.Character.HumanoidRootPart
ME.CFrame = CFrame.new(-5178, -1757, -10361)
end)
cus:Button("神庙五号室",function()
local ME = game.Players.LocalPlayer.Character.HumanoidRootPart
ME.CFrame = CFrame.new(-4852, -1757, -9540)
end)
cus:Button("亚特兰蒂斯(下面)",function()
local ME = game.Players.LocalPlayer.Character.HumanoidRootPart
ME.CFrame = CFrame.new(-4264.7900390625, -603.4039916992188, 1829.273681640625)
end)
cus:Button("宝藏岛",function()
local ME = game.Players.LocalPlayer.Character.HumanoidRootPart
ME.CFrame = CFrame.new(8205.4833984375, 230.37974548339844, -17182.251953125)
end)
cus:Button("荒凉深渊",function()
local ME = game.Players.LocalPlayer.Character.HumanoidRootPart
ME.CFrame = CFrame.new(-1660.6026611328125, -214.1817626953125, -2844.743896484375)
end)
cus:Button("锻造台",function()
local ME = game.Players.LocalPlayer.Character.HumanoidRootPart
ME.CFrame = CFrame.new(-3160.477294921875, -745.4639892578125, 1674.84423828125)
end)
cus:Button("发光洞穴蓝拉杆",function()
local ME = game.Players.LocalPlayer.Character.HumanoidRootPart
ME.CFrame = CFrame.new(-1014.9747924804688, -329.47760009765625, -4428.80859375)
end)
cus:Button("发光洞穴入口",function()
local ME = game.Players.LocalPlayer.Character.HumanoidRootPart
ME.CFrame = CFrame.new(-1068.18115234375, -336.73565673828125, -3293.738525390625)
end)
cus:Button("发光洞穴红拉杆",function()
local ME = game.Players.LocalPlayer.Character.HumanoidRootPart
ME.CFrame = CFrame.new(-1153.662841796875, -316.111083984375, -4962.30078125)
end)
cus:Button("发光洞穴",function()
local ME = game.Players.LocalPlayer.Character.HumanoidRootPart
ME.CFrame = CFrame.new(-1013.4955444335938, -336.7330322265625, -4073.86962890625)
end)
cus:Button("雪冒岛隐藏钓点",function()
local ME = game.Players.LocalPlayer.Character.HumanoidRootPart
ME.CFrame = CFrame.new(2758.907470703125, 97.53933715820312, 2597.747802734375)
end)
cus:Button("出生岛",function()
local ME = game.Players.LocalPlayer.Character.HumanoidRootPart
ME.CFrame = CFrame.new(382.9505920410156, 134.50051879882812, 237.30938720703125)
end)

cus:Button("古老岛屿",function()
local ME = game.Players.LocalPlayer.Character.HumanoidRootPart
ME.CFrame = CFrame.new(6057.5791015625, 208.15245056152344, 292.3509216308594)
end)

cus:Button("雪冒岛",function()
local ME = game.Players.LocalPlayer.Character.HumanoidRootPart
ME.CFrame = CFrame.new(2682.665283203125, 161.4478302001953, 2384.32568359375)
end)

cus:Button("特拉平岛",function()
local ME = game.Players.LocalPlayer.Character.HumanoidRootPart
ME.CFrame = CFrame.new(-208.1078643798828, 155.8275146484375, 1963.3623046875)
end)

cus:Button("雪山山脚",function()
local ME = game.Players.LocalPlayer.Character.HumanoidRootPart
ME.CFrame = CFrame.new(19642.55078125, 135.83665466308594, 5270.9912109375)
end)

cus:Button("雪山山顶",function()
local ME = game.Players.LocalPlayer.Character.HumanoidRootPart
ME.CFrame = CFrame.new(19945, 1142, 5541	)
end)


cus:Button("阳光石岛",function()
local ME = game.Players.LocalPlayer.Character.HumanoidRootPart
ME.CFrame = CFrame.new(-974.8106079101562, 240.30027770996094, -981.3389282226562)
end)

cus:Button("主权雕像",function()
local ME = game.Players.LocalPlayer.Character.HumanoidRootPart
ME.CFrame = CFrame.new(13.016674995422363, 167.170166015625, -1056.0355224609375)
end)


cus:Button("附魔祭坛",function()
local ME = game.Players.LocalPlayer.Character.HumanoidRootPart
ME.CFrame = CFrame.new(1309.8587646484375, -796.2621459960938, -87.50021362304688)
end)

cus:Button("蘑菇岛",function()
local ME = game.Players.LocalPlayer.Character.HumanoidRootPart
ME.CFrame = CFrame.new(2508.368408203125, 138.50160217285156, -773.0167846679688)
end)


cus:Button("扔掉山崖",function()
local ME = game.Players.LocalPlayer.Character.HumanoidRootPart
ME.CFrame = CFrame.new(664.8042602539062, 170.88531494140625, -1836.387939453125)
end)

cus:Button("拱门",function()
local ME = game.Players.LocalPlayer.Character.HumanoidRootPart
ME.CFrame = CFrame.new(1000.2120361328125, 134.92413330078125, -1242.7337646484375)
end)

cus:Button("罗斯利特湾",function()
local ME = game.Players.LocalPlayer.Character.HumanoidRootPart
ME.CFrame = CFrame.new(-1473.056884765625, 139.18624877929688, 686.4512939453125)
end)


cus:Button("被遗弃的海岸",function()
local ME = game.Players.LocalPlayer.Character.HumanoidRootPart
ME.CFrame = CFrame.new(-2497.70361328125, 165.330322265625, 1559.8797607421875)
end)


cus:Button("大珊瑚礁岛",function()
local ME = game.Players.LocalPlayer.Character.HumanoidRootPart
ME.CFrame = CFrame.new(-3594.52001953125, 177.25526428222656, 505.4884338378906)
end)

cus:Button("克拉肯池",function()
local ME = game.Players.LocalPlayer.Character.HumanoidRootPart
ME.CFrame = CFrame.new(-4390.84228515625, -995.4644775390625, 2051.28271484375)
end)
cus:Button("被遗弃者的面纱",function()
local ME = game.Players.LocalPlayer.Character.HumanoidRootPart
ME.CFrame = CFrame.new(-2346.57861328125, -11179.513671875, 7089.8251953125)
end)

cus:Button("收割者尖刺",function()
local ME = game.Players.LocalPlayer.Character.HumanoidRootPart
ME.CFrame = CFrame.new(-1270.127197265625, 182.394287109375, 1551.2906494140625)
end)

cus:Button("宙斯之池",function()
local ME = game.Players.LocalPlayer.Character.HumanoidRootPart
ME.CFrame = CFrame.new(-4297.82275390625, -625.8343505859375, 2680.991943359375)
end)
cus:Button("火山通风口",function()
local ME = game.Players.LocalPlayer.Character.HumanoidRootPart
ME.CFrame = CFrame.new(-3189.4443359375, -2030.4508056640625, 4039.690673828125)
end)
cus:Button("深度",function()
local ME = game.Players.LocalPlayer.Character.HumanoidRootPart
ME.CFrame = CFrame.new(948.22216796875, -697.5197143554688, 1238.4603271484375)
end)
cus:Button("深度钥匙口",function()
local ME = game.Players.LocalPlayer.Character.HumanoidRootPart
ME.CFrame = CFrame.new(-55.2778205871582, -701.5311889648438, 1229.11083984375)
end)
cus:Button("头晕",function()
local ME = game.Players.LocalPlayer.Character.HumanoidRootPart
ME.CFrame = CFrame.new(-112.0014877319336, -491.4021301269531, 1040.3514404296875)
end)

cus:Button("深度钥匙钓鱼点",function()
local ME = game.Players.LocalPlayer.Character.HumanoidRootPart
ME.CFrame = CFrame.new(-26.641450881958008, 142.48489379882812, 710.8816528320312)
end)
cus:Button("神秘钓鱼地点",function()
local ME = game.Players.LocalPlayer.Character.HumanoidRootPart
ME.CFrame = CFrame.new(993.1201782226562, 123.99878692626953, 9930.18359375)
end)
cus:Button("虚空深渊",function()
local ME = game.Players.LocalPlayer.Character.HumanoidRootPart
ME.CFrame = CFrame.new(-3802.828857421875, -557.940673828125, 1834.17919921875)
end)

cus:Button("水晶湾",function()
local ME = game.Players.LocalPlayer.Character.HumanoidRootPart
ME.CFrame = CFrame.new(1373.1517333984375, -597.0322265625, 2339.449951171875)
end)

cus:Button("挑战者之深",function()
local ME = game.Players.LocalPlayer.Character.HumanoidRootPart
ME.CFrame = CFrame.new(813.7798461914062, -3343.830810546875, -1519.661865234375)
end)

cus:Button("胡萝卜池",function()
local ME = game.Players.LocalPlayer.Character.HumanoidRootPart
ME.CFrame = CFrame.new(3730.94287109375, -1120.4844970703125, -1094.8516845703125)
end)
cus:Button("棱镜区",function()
local ME = game.Players.LocalPlayer.Character.HumanoidRootPart
ME.CFrame = CFrame.new(-4334.701171875, -11165.6005859375, 3699.466796875)
end)

cus:Button("酸池",function()
local ME = game.Players.LocalPlayer.Character.HumanoidRootPart
ME.CFrame = CFrame.new(-1795.1666259765625, -130.32418823242188, -3402.124755859375)
end)
cus:Button("蓝月，第一海",function()
local ME = game.Players.LocalPlayer.Character.HumanoidRootPart
ME.CFrame = CFrame.new(2699.353271484375, 132.0272674560547, 2584.4931640625)
end)

local cscs = window:Tab("鱼竿传送")
local ccs = cscs:section("鱼竿",true)
ccs:Button("鱼雷杆",function()
local ME = game.Players.LocalPlayer.Character.HumanoidRootPart
ME.CFrame = CFrame.new(-1299.6856689453125, -902.9139404296875, -3478.581787109375)
end)
ccs:Button("深渊杆",function()
local ME = game.Players.LocalPlayer.Character.HumanoidRootPart
ME.CFrame = CFrame.new(1705.9149169921875, -902.5270385742188, 1443.0037841796875)
end)
ccs:Button("荒凉深渊三叉戟",function()
local ME = game.Players.LocalPlayer.Character.HumanoidRootPart
ME.CFrame = CFrame.new(-1483.62890625, -223.5110321044922, -2197.00439453125)
end)
ccs:Button("砖头杆",function()
local ME = game.Players.LocalPlayer.Character.HumanoidRootPart
ME.CFrame = CFrame.new(-32090, 10000, -23308)
end)
ccs:Button("天堂杆",function()
local ME = game.Players.LocalPlayer.Character.HumanoidRootPart
ME.CFrame = CFrame.new(20026.876953125, -467.622314453125, 7143.57470703125)
end)
local zb = window:Tab("坐标传送")
local zzb = zb:section("坐标",true)
zzb:Textbox("X坐标", "X坐标", "请输入坐标", function(value)
--print(value)
_X = value
end)
zzb:Textbox("Y坐标", "Y坐标", "请输入坐标", function(value)
--print(value)
_Y = value
end)
zzb:Textbox("Z坐标", "Z坐标", "请输入坐标", function(value)
--print(value)
_Z = value
end)
zzb:Button("传送到坐标",function()
local ME = game.Players.LocalPlayer.Character.HumanoidRootPart
ME.CFrame = CFrame.new(_X, _Y, _Z)
end)






for _, Value in next, getgc(true) do
    if typeof(Value) == "table" then
        if rawget(Value, "indexInstance") or rawget(Value, "newindexInstance") or rawget(Value, "newIndexInstance") then
            Value.tvk = {"kick", function() return task.wait(9e9) end}
        end
    end
end
--loadstring(game:HttpGet("https://raw.githubusercontent.com/385j8888/ZOUMAGUIX/refs/heads/main/Anti%20Kick.txt"))()