local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/385j8888/ZOUMAGUIX/refs/heads/main/ProtectUI.lua"))()
local replicatedStorage = game:GetService("ReplicatedStorage")
local lp = game.Players.LocalPlayer
--local lp = gs("Players").LocalPlayer
local ME = game.Players.LocalPlayer.Character.HumanoidRootPart
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
local gn = window:Tab("主要功能")
local gn = gn:section("主要功能",true)
gn:Button("卖手上的鱼",function()
    game:GetService("ReplicatedStorage"):WaitForChild("events"):WaitForChild("Sell"):InvokeServer()
end)
gn:Button("卖全部鱼",function()
    game:GetService("ReplicatedStorage"):WaitForChild("events"):WaitForChild("SellAll"):InvokeServer()
end)
gn:Button("评估鱼",function()
    workspace:WaitForChild("world"):WaitForChild("npcs"):WaitForChild("Appraiser"):WaitForChild("appraiser"):WaitForChild("appraise"):InvokeServer()
end)
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
local abba = false
gn:Toggle("秒上钩(完美钓鱼)", "", false, function(state)
    abba = state  -- 同步阀门状态
    
    if state then
      while abba do
         local args = {
	        100,
        	true
         }
         game:GetService("ReplicatedStorage"):WaitForChild("events"):WaitForChild("reelfinished"):FireServer(unpack(args))
         wait(0.5)
      end
    else
        print("6")
    end
end)

local abbaa = false
gn:Toggle("秒上钩(无完美钓鱼)", "", false, function(state)
    abbaa = state  -- 同步阀门状态
    
    if state then
      while abbaa do
         local args = {
	        100,
        	false
         }
         game:GetService("ReplicatedStorage"):WaitForChild("events"):WaitForChild("reelfinished"):FireServer(unpack(args))
         wait(0.5)
      end
    else
        print("6")
    end
end)
local yg = false
gn:Toggle("鱼钩快速下水", "", false, function(state)
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
gn:Toggle("追踪白条", "", false, function(state)
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
         wait(0.000000001)
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
gn:Toggle("自动抛竿", "", false, function(state)
    abbaaa = state  -- 同步阀门状态
    
    if state then
      while abbaaa do
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
         wait(0.05)
      end
    else
        print("6")
    end
end)
local gdgd = false
gn:Toggle("固定位置", "", false, function(state)
    gdgd = state  -- 同步阀门状态
    
    if state then
      while gdgd do
         local Players = game:GetService("Players")
         local player = Players.LocalPlayer
         local character = player.Character
         if not character then return end
    
         local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
         if not humanoidRootPart then return end
         humanoidRootPart.Anchored = true
         wait(15)
      end
    else
        
         local Players = game:GetService("Players")
         local player = Players.LocalPlayer
         local character = player.Character
         if not character then return end
    
         local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
         if not humanoidRootPart then return end
         humanoidRootPart.Anchored = false
    end
end)
-- 脚本由TurtleSpy生成，由Interr#0421制作
        
local abbaaaa = false
gn:Toggle("自动摇晃", "", false, function(state)
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
     --    wait(20)
   --   end
    else
          for _, ocean in pairs(workspace:GetDescendants()) do
              if ocean.Name=="Ocean" then
                  ocean.CanCollide = false
              end
          end
    end
end)

local gm = window:Tab("购买")
local gm = gm:section("购买",true)
gm:Button("买一块力量石11000CS",function()
workspace:WaitForChild("world"):WaitForChild("npcs"):WaitForChild("Merlin"):WaitForChild("Merlin"):WaitForChild("power"):InvokeServer()
end)
local pl = window:Tab("玩家功能")
local pl = pl:section("功能",true)


local cus = window:Tab("传送")
local cus = cus:section("传送",true)
cus:Button("如果传送失效就点一下这个按钮",function()
local ME = game.Players.LocalPlayer.Character.HumanoidRootPart
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
loadstring(game:HttpGet("https://raw.githubusercontent.com/385j8888/ZOUMAGUIX/refs/heads/main/Anti%20Kick.txt"))()