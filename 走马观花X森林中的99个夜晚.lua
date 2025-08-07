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
gn:Label("从迷雾外带来的东西是拿不起来的，试着升级一下你的篝火！")
gn:Button("带来木头",function()
local player = game:GetService("Players").LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
for _, logModel in ipairs(workspace.Items:GetChildren()) do
    if logModel.Name == "Log" and logModel:IsA("Model") then
        local meshPart = logModel:FindFirstChild("Meshes/log_Cylinder", true)
        if meshPart and meshPart:IsA("MeshPart") then
            meshPart.CFrame = humanoidRootPart.CFrame
        end
    end
end
end)
gn:Button("带来生兔肉",function()
local player = game:GetService("Players").LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
for _, trModel in ipairs(workspace.Items:GetChildren()) do
    if trModel.Name == "Morsel" and trModel:IsA("Model") then
        local trmeshPart = trModel:FindFirstChild("Meat", true)
        if trmeshPart and trmeshPart:IsA("Part") then
            trmeshPart.CFrame = humanoidRootPart.CFrame
        end
    end
end
end)
gn:Button("带来风扇",function()
local player = game:GetService("Players").LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
for _, fanModel in ipairs(workspace.Items:GetChildren()) do
    if fanModel.Name == "Broken Fan" and fanModel:IsA("Model") then
        local fanmeshPart = fanModel:FindFirstChild("Stand", true)
        if fanmeshPart and fanmeshPart:IsA("MeshPart") then
            fanmeshPart.CFrame = humanoidRootPart.CFrame
        end
    end
end
end)
gn:Button("带来萝卜",function()
local player = game:GetService("Players").LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
for _, carrotModel in ipairs(workspace.Items:GetChildren()) do
    if carrotModel.Name == "Carrot" and carrotModel:IsA("Model") then
        local carrotmeshPart = carrotModel:FindFirstChild("Handle", true)
        if carrotmeshPart and carrotmeshPart:IsA("MeshPart") then
            carrotmeshPart.CFrame = humanoidRootPart.CFrame
        end
    end
end
end)
gn:Button("带来煤炭",function()
local player = game:GetService("Players").LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
for _, coalModel in ipairs(workspace.Items:GetChildren()) do
    if coalModel.Name == "Coal" and coalModel:IsA("Model") then
        local coalmeshPart = coalModel:FindFirstChild("Coal", true)
        if coalmeshPart and coalmeshPart:IsA("MeshPart") then
            coalmeshPart.CFrame = humanoidRootPart.CFrame
        end
    end
end
end)
gn:Button("带来老收音机",function()
local player = game:GetService("Players").LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
for _, rdModel in ipairs(workspace.Items:GetChildren()) do
    if rdModel.Name == "Old Radio" and rdModel:IsA("Model") then
        local rdmeshPart = rdModel:FindFirstChild("Main", true)
        if rdmeshPart and rdmeshPart:IsA("Part") then
            rdmeshPart.CFrame = humanoidRootPart.CFrame
        end
    end
end
end)
gn:Button("带来手枪弹药",function()
local player = game:GetService("Players").LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
for _, sqModel in ipairs(workspace.Items:GetChildren()) do
    if sqModel.Name == "Revolver Ammo" and sqModel:IsA("Model") then
        local sqmeshPart = sqModel:FindFirstChild("Main", true)
        if sqmeshPart and sqmeshPart:IsA("Part") then
            sqmeshPart.CFrame = humanoidRootPart.CFrame
        end
    end
end
end)
gn:Button("带来步枪弹药",function()
local player = game:GetService("Players").LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
for _, bqModel in ipairs(workspace.Items:GetChildren()) do
    if bqModel.Name == "Rifle Ammo" and bqModel:IsA("Model") then
        local bqmeshPart = bqModel:FindFirstChild("Main", true)
        if bqmeshPart and bqmeshPart:IsA("Part") then
            bqmeshPart.CFrame = humanoidRootPart.CFrame
        end
    end
end
end)
gn:Button("带来UFO零件",function()
local player = game:GetService("Players").LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
for _, ufoljModel in ipairs(workspace.Items:GetChildren()) do
    if ufoljModel.Name == "UFO Scrap" and ufoljModel:IsA("Model") then
        local ufoljmeshPart = ufoljModel:FindFirstChild("Main", true)
        if ufoljmeshPart and ufoljmeshPart:IsA("Part") then
            ufoljmeshPart.CFrame = humanoidRootPart.CFrame
        end
    end
end
end)
gn:Button("带来UFO垃圾",function()
local player = game:GetService("Players").LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
for _, ufojModel in ipairs(workspace.Items:GetChildren()) do
    if ufojModel.Name == "UFO Junk" and ufojModel:IsA("Model") then
        local ufojmeshPart = ufojModel:FindFirstChild("Main", true)
        if ufojmeshPart and ufojmeshPart:IsA("Part") then
            ufojmeshPart.CFrame = humanoidRootPart.CFrame
        end
    end
end
end)
gn:Button("带来UFO部件",function()
local player = game:GetService("Players").LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
for _, ufobjModel in ipairs(workspace.Items:GetChildren()) do
    if ufobjModel.Name == "UFO Component" and ufobjModel:IsA("Model") then
        local ufobjmeshPart = ufobjModel:FindFirstChild("Main", true)
        if ufobjmeshPart and ufobjmeshPart:IsA("Part") then
            ufobjmeshPart.CFrame = humanoidRootPart.CFrame
        end
    end
end
end)

gn:Button("带来螺栓",function()
local player = game:GetService("Players").LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
for _, lsModel in ipairs(workspace.Items:GetChildren()) do
    if lsModel.Name == "Bolt" and lsModel:IsA("Model") then
        local lsmeshPart = lsModel:FindFirstChild("Main", true)
        if lsmeshPart and lsmeshPart:IsA("MeshPart") then
            lsmeshPart.CFrame = humanoidRootPart.CFrame
        end
    end
end
end)
gn:Button("带来手枪",function()
local player = game:GetService("Players").LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
for _, shqModel in ipairs(workspace.Items:GetChildren()) do
    if shqModel.Name == "Revolver" and shqModel:IsA("Model") then
        local shqmeshPart = shqModel:FindFirstChild("Main", true)
        if shqmeshPart and shqmeshPart:IsA("Part") then
            shqmeshPart.CFrame = humanoidRootPart.CFrame
        end
    end
end
end)
gn:Button("带来金属板",function()
local player = game:GetService("Players").LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
for _, jsbModel in ipairs(workspace.Items:GetChildren()) do
    if jsbModel.Name == "Sheet Metal" and jsbModel:IsA("Model") then
        local jsbmeshPart = jsbModel:FindFirstChild("Main", true)
        if jsbmeshPart and jsbmeshPart:IsA("MeshPart") then
            jsbmeshPart.CFrame = humanoidRootPart.CFrame
        end
    end
end
end)
gn:Button("带来老旧手电筒",function()
local player = game:GetService("Players").LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
for _, sdtModel in ipairs(workspace.Items:GetChildren()) do
    if sdtModel.Name == "Old Flashlight" and sdtModel:IsA("Model") then
        local sdtmeshPart = sdtModel:FindFirstChild("Main", true)
        if sdtmeshPart and sdtmeshPart:IsA("Part") then
            sdtmeshPart.CFrame = humanoidRootPart.CFrame
        end
    end
end
end)
gn:Button("带来燃料罐",function()
local player = game:GetService("Players").LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
for _, rlgModel in ipairs(workspace.Items:GetChildren()) do
    if rlgModel.Name == "Fuel Canister" and rlgModel:IsA("Model") then
        local rlgmeshPart = rlgModel:FindFirstChild("Main", true)
        if rlgmeshPart and rlgmeshPart:IsA("MeshPart") then
            rlgmeshPart.CFrame = humanoidRootPart.CFrame
        end
    end
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
zy:Toggle("老斧头杀戮光环(如果失效就重新打开)", "", false, function(state)
    hhk = state  -- 同步阀门状态
    
    if state then
        --spawn(function()  -- 使用独立协程
            while hhk do  -- 检测阀门状态
                  local characters = workspace:WaitForChild("Characters")
                  local tool = game:GetService("Players").LocalPlayer:WaitForChild("Inventory"):WaitForChild("Old Axe")
                  local remoteEvent = game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("ToolDamageObject")

                  local models = {}
                  for _, child in ipairs(characters:GetChildren()) do
                      if child:IsA("Model") then
                          table.insert(models, child)
                      end
                  end

                  for number = 1, 10000000 do
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
                              code,
                              position
                          }
        
                          remoteEvent:InvokeServer(unpack(args))
                          wait(0.1) 
                      end
                  end
                  wait(0.5)
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