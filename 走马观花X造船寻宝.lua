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
local window = library:new("走马观花X-造船寻宝","light")

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
local gn = window:Tab("主要")
local gn = gn:section("主要",true)
gn:Textbox("修改存档数量", "修改存档数量", "输入修改的数量", function(value)
--print(value)
_Number = value
end)
local TeleportService = game:GetService("TeleportService")
local Players = game:GetService("Players")
local player = Players.LocalPlayer

local targetPlaceId = 1930863474

local function teleportToPlace()
    local success, result = pcall(function()
        TeleportService:Teleport(targetPlaceId, player)
        -- TeleportService:TeleportAsync(targetPlaceId, player)
    end)
    
end
gn:Button("修改",function()
local slotsyouwant = _Number

for i = 1, slotsyouwant do
    task.spawn(function()
        local args = {
            [1] = 1,
            [2] = tostring(i) .. "\0", 
            [3] = 0,
            [4] = ""
        }

        workspace:WaitForChild("UpdateSlotOrderRE"):FireServer(unpack(args))
    end)
end
end)
gn:Button("传送至复活节地图",function()
teleportToPlace()
end)
local hhk = false

gn:Toggle("刷钱", "", false, function(state)
    hhk = state  -- 同步阀门状态
    
    if state then
        --spawn(function()  -- 使用独立协程
            while hhk do  -- 检测阀门状态
              --   humanoidRootPart.Anchored = true
              local ME = game.Players.LocalPlayer.Character.HumanoidRootPart
local Players = game:GetService("Players")
local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
                 ME.CFrame = CFrame.new(14.77531623840332, 75.91139221191406, 1364.46630859375)
                 wait(0.05)
                 ME.CFrame = CFrame.new(-3.709878444671631, 75.91139221191406, 2138.70654296875)
                 wait(0.05)
                 ME.CFrame = CFrame.new(-23.847915649414062, 75.22637939453125, 2905.48974609375)
                 wait(0.05)
                 ME.CFrame = CFrame.new(-0.3949209451675415, 75.74623489379883, 3682.6328125)
                 wait(0.05)
                 ME.CFrame = CFrame.new(-13.860719680786133, 75.25170135498047, 4450.18603515625)
                 wait(0.05)
                 ME.CFrame = CFrame.new(-7.198073387145996, 75.09455108642578, 5222.0458984375)
                 wait(0.05)
                 ME.CFrame = CFrame.new(-44.74592590332031, 75.0620174407959, 5990.22119140625)
                 wait(0.05)
                 ME.CFrame = CFrame.new(-23.823293685913086, 75.28253936767578, 6759.15625)
                 wait(0.05)
                 ME.CFrame = CFrame.new(-29.56721305847168, 75.552268981933594, 7528.06201171875)
                 wait(0.05)
                 ME.CFrame = CFrame.new(-24.509313583374023, 75.64134216308594, 8303.533203125)
                 wait(0.05)
                 ME.CFrame = CFrame.new(14.77531623840332, 75.18982696533203, 1364.46630859375)
                 wait(0.05)
                 ME.CFrame = CFrame.new(-3.709878444671631, 75.77950096130371, 2138.70654296875)
                 wait(0.05)
                 ME.CFrame = CFrame.new(-23.847915649414062, 75.22637939453125, 2905.48974609375)
                 wait(0.05)
                 ME.CFrame = CFrame.new(-0.3949209451675415, 75.74623489379883, 3682.6328125)
                 wait(0.05)
                 ME.CFrame = CFrame.new(-13.860719680786133, 75.25170135498047, 4450.18603515625)
                 wait(0.05)
                 ME.CFrame = CFrame.new(-7.198073387145996, 75.09455108642578, 5222.0458984375)
                 wait(0.05)
                 ME.CFrame = CFrame.new(-44.74592590332031, 75.0620174407959, 5990.22119140625)
                 wait(0.05)
                 ME.CFrame = CFrame.new(-23.823293685913086, 75.28253936767578, 6759.15625)
                 wait(0.05)
                 ME.CFrame = CFrame.new(-29.56721305847168, 75.552268981933594, 7528.06201171875)
                 wait(0.05)
                 ME.CFrame = CFrame.new(-24.509313583374023, 75.64134216308594, 8303.533203125)
                 wait(0.05)
                 ME.CFrame = CFrame.new(14.77531623840332, 75.18982696533203, 1364.46630859375)
                 wait(0.05)
                 ME.CFrame = CFrame.new(-3.709878444671631, 75.77950096130371, 2138.70654296875)
                 wait(0.05)
                 ME.CFrame = CFrame.new(-23.847915649414062, 75.22637939453125, 2905.48974609375)
                 wait(0.05)
                 ME.CFrame = CFrame.new(-0.3949209451675415, 75.74623489379883, 3682.6328125)
                 wait(0.05)
                 ME.CFrame = CFrame.new(-13.860719680786133, 75.25170135498047, 4450.18603515625)
                 wait(0.05)
                 ME.CFrame = CFrame.new(-7.198073387145996, 75.09455108642578, 5222.0458984375)
                 wait(0.05)
                 ME.CFrame = CFrame.new(-44.74592590332031, 75.0620174407959, 5990.22119140625)
                 wait(0.05)
                 ME.CFrame = CFrame.new(-23.823293685913086, 75.28253936767578, 6759.15625)
                 wait(0.05)
                 ME.CFrame = CFrame.new(-29.56721305847168, 75.552268981933594, 7528.06201171875)
                 wait(0.05)
                 ME.CFrame = CFrame.new(-24.509313583374023, 75.64134216308594, 8303.533203125)
                 wait(0.05)
                 ME.CFrame = CFrame.new(14.77531623840332, 75.18982696533203, 1364.46630859375)
                 wait(0.05)
                 ME.CFrame = CFrame.new(-3.709878444671631, 75.77950096130371, 2138.70654296875)
                 wait(0.05)
                 ME.CFrame = CFrame.new(-23.847915649414062, 75.22637939453125, 2905.48974609375)
                 wait(0.05)
                 ME.CFrame = CFrame.new(-0.3949209451675415, 75.74623489379883, 3682.6328125)
                 wait(0.05)
                 ME.CFrame = CFrame.new(-13.860719680786133, 75.25170135498047, 4450.18603515625)
                 wait(0.05)
                 ME.CFrame = CFrame.new(-7.198073387145996, 75.09455108642578, 5222.0458984375)
                 wait(0.05)
                 ME.CFrame = CFrame.new(-44.74592590332031, 75.0620174407959, 5990.22119140625)
                 wait(0.05)
                 ME.CFrame = CFrame.new(-23.823293685913086, 75.28253936767578, 6759.15625)
                 wait(0.05)
                 ME.CFrame = CFrame.new(-29.56721305847168, 75.552268981933594, 7528.06201171875)
                 wait(0.05)
                 ME.CFrame = CFrame.new(-24.509313583374023, 75.64134216308594, 8303.533203125)
                 wait(0.05)
                 ME.CFrame = CFrame.new(14.77531623840332, 75.18982696533203, 1364.46630859375)
                 wait(0.05)
                 ME.CFrame = CFrame.new(-3.709878444671631, 75.77950096130371, 2138.70654296875)
                 wait(0.05)
                 ME.CFrame = CFrame.new(-23.847915649414062, 75.22637939453125, 2905.48974609375)
                 wait(0.05)
                 ME.CFrame = CFrame.new(-0.3949209451675415, 75.74623489379883, 3682.6328125)
                 wait(0.05)
                 ME.CFrame = CFrame.new(-13.860719680786133, 75.25170135498047, 4450.18603515625)
                 wait(0.05)
                 ME.CFrame = CFrame.new(-7.198073387145996, 75.09455108642578, 5222.0458984375)
                 wait(0.05)
                 ME.CFrame = CFrame.new(-44.74592590332031, 75.0620174407959, 5990.22119140625)
                 wait(0.05)
                 ME.CFrame = CFrame.new(-23.823293685913086, 75.28253936767578, 6759.15625)
                 wait(0.05)
                 ME.CFrame = CFrame.new(-29.56721305847168, 75.552268981933594, 7528.06201171875)
                 wait(0.05)
                 ME.CFrame = CFrame.new(-24.509313583374023, 75.64134216308594, 8303.533203125)
                 wait(0.05)
                 ME.CFrame = CFrame.new(14.77531623840332, 75.18982696533203, 1364.46630859375)
                 wait(0.05)
                 ME.CFrame = CFrame.new(-3.709878444671631, 75.77950096130371, 2138.70654296875)
                 wait(0.05)
                 ME.CFrame = CFrame.new(-23.847915649414062, 40.22637939453125, 2905.48974609375)
                 wait(0.05)
                 ME.CFrame = CFrame.new(-0.3949209451675415, 37.74623489379883, 3682.6328125)
                 wait(0.05)
                 ME.CFrame = CFrame.new(-13.860719680786133, 49.25170135498047, 4450.18603515625)
                 wait(0.05)
                 ME.CFrame = CFrame.new(-7.198073387145996, 46.09455108642578, 5222.0458984375)
                 wait(0.05)
                 ME.CFrame = CFrame.new(-44.74592590332031, 21.0620174407959, 5990.22119140625)
                 wait(0.05)
                 ME.CFrame = CFrame.new(-23.823293685913086, 45.28253936767578, 6759.15625)
                 wait(0.05)
                 ME.CFrame = CFrame.new(-29.56721305847168, 51.552268981933594, 7528.06201171875)
                 wait(0.05)
                 ME.CFrame = CFrame.new(-24.509313583374023, 46.64134216308594, 8303.533203125)
                 wait(0.05)
                 ME.CFrame = CFrame.new(-54.69741439819336, -356.340576171875, 9481.28125)
                 ME.CFrame = CFrame.new(14.77531623840332, 75.91139221191406, 1364.46630859375)
                 wait(0.05)
                 ME.CFrame = CFrame.new(-3.709878444671631, 75.91139221191406, 2138.70654296875)
                 wait(0.05)
                 ME.CFrame = CFrame.new(-23.847915649414062, 75.22637939453125, 2905.48974609375)
                 wait(0.05)
                 ME.CFrame = CFrame.new(-0.3949209451675415, 75.74623489379883, 3682.6328125)
                 wait(0.05)
                 ME.CFrame = CFrame.new(-13.860719680786133, 75.25170135498047, 4450.18603515625)
                 wait(0.05)
                 ME.CFrame = CFrame.new(-7.198073387145996, 75.09455108642578, 5222.0458984375)
                 wait(0.05)
                 ME.CFrame = CFrame.new(-44.74592590332031, 75.0620174407959, 5990.22119140625)
                 wait(0.05)
                 ME.CFrame = CFrame.new(-23.823293685913086, 75.28253936767578, 6759.15625)
                 wait(0.05)
                 ME.CFrame = CFrame.new(-29.56721305847168, 75.552268981933594, 7528.06201171875)
                 wait(0.05)
                 ME.CFrame = CFrame.new(-24.509313583374023, 75.64134216308594, 8303.533203125)
                 wait(0.05)
                 ME.CFrame = CFrame.new(14.77531623840332, 75.91139221191406, 1364.46630859375)
                 wait(0.05)
                 ME.CFrame = CFrame.new(-3.709878444671631, 75.91139221191406, 2138.70654296875)
                 wait(0.05)
                 ME.CFrame = CFrame.new(-23.847915649414062, 75.22637939453125, 2905.48974609375)
                 wait(0.05)
                 ME.CFrame = CFrame.new(-0.3949209451675415, 75.74623489379883, 3682.6328125)
                 wait(0.05)
                 ME.CFrame = CFrame.new(-13.860719680786133, 75.25170135498047, 4450.18603515625)
                 wait(0.05)
                 ME.CFrame = CFrame.new(-7.198073387145996, 75.09455108642578, 5222.0458984375)
                 wait(0.05)
                 ME.CFrame = CFrame.new(-44.74592590332031, 75.0620174407959, 5990.22119140625)
                 wait(0.05)
                 ME.CFrame = CFrame.new(-23.823293685913086, 75.28253936767578, 6759.15625)
                 wait(0.05)
                 ME.CFrame = CFrame.new(-29.56721305847168, 75.552268981933594, 7528.06201171875)
                 wait(0.05)
                 ME.CFrame = CFrame.new(-24.509313583374023, 75.64134216308594, 8303.533203125)
                 wait(0.05)
                 ME.CFrame = CFrame.new(14.77531623840332, 75.91139221191406, 1364.46630859375)
                 wait(0.05)
                 ME.CFrame = CFrame.new(-3.709878444671631, 75.91139221191406, 2138.70654296875)
                 wait(0.05)
                 ME.CFrame = CFrame.new(-23.847915649414062, 75.22637939453125, 2905.48974609375)
                 wait(0.05)
                 ME.CFrame = CFrame.new(-0.3949209451675415, 75.74623489379883, 3682.6328125)
                 wait(0.05)
                 ME.CFrame = CFrame.new(-13.860719680786133, 75.25170135498047, 4450.18603515625)
                 wait(0.05)
                 ME.CFrame = CFrame.new(-7.198073387145996, 75.09455108642578, 5222.0458984375)
                 wait(0.05)
                 ME.CFrame = CFrame.new(-44.74592590332031, 75.0620174407959, 5990.22119140625)
                 wait(0.05)
                 ME.CFrame = CFrame.new(-23.823293685913086, 75.28253936767578, 6759.15625)
                 wait(0.05)
                 ME.CFrame = CFrame.new(-29.56721305847168, 75.552268981933594, 7528.06201171875)
                 wait(0.05)
                 ME.CFrame = CFrame.new(-24.509313583374023, 75.64134216308594, 8303.533203125)
                 wait(0.05)
                 ME.CFrame = CFrame.new(14.77531623840332, 75.91139221191406, 1364.46630859375)
                 wait(0.05)
                 ME.CFrame = CFrame.new(-3.709878444671631, 75.91139221191406, 2138.70654296875)
                 wait(0.05)
                 ME.CFrame = CFrame.new(-23.847915649414062, 75.22637939453125, 2905.48974609375)
                 wait(0.05)
                 ME.CFrame = CFrame.new(-0.3949209451675415, 75.74623489379883, 3682.6328125)
                 wait(0.05)
                 ME.CFrame = CFrame.new(-13.860719680786133, 75.25170135498047, 4450.18603515625)
                 wait(0.05)
                 ME.CFrame = CFrame.new(-7.198073387145996, 75.09455108642578, 5222.0458984375)
                 wait(0.05)
                 ME.CFrame = CFrame.new(-44.74592590332031, 75.0620174407959, 5990.22119140625)
                 wait(0.05)
                 ME.CFrame = CFrame.new(-23.823293685913086, 75.28253936767578, 6759.15625)
                 wait(0.05)
                 ME.CFrame = CFrame.new(-29.56721305847168, 75.552268981933594, 7528.06201171875)
                 wait(0.05)
                 ME.CFrame = CFrame.new(-24.509313583374023, 75.64134216308594, 8303.533203125)
                 wait(0.05)
                 ME.CFrame = CFrame.new(14.77531623840332, 75.91139221191406, 1364.46630859375)
                 wait(0.05)
                 ME.CFrame = CFrame.new(-3.709878444671631, 75.91139221191406, 2138.70654296875)
                 wait(0.05)
                 ME.CFrame = CFrame.new(-23.847915649414062, 75.22637939453125, 2905.48974609375)
                 wait(0.05)
                 ME.CFrame = CFrame.new(-0.3949209451675415, 75.74623489379883, 3682.6328125)
                 wait(0.05)
                 ME.CFrame = CFrame.new(-13.860719680786133, 75.25170135498047, 4450.18603515625)
                 wait(0.05)
                 ME.CFrame = CFrame.new(-7.198073387145996, 75.09455108642578, 5222.0458984375)
                 wait(0.05)
                 ME.CFrame = CFrame.new(-44.74592590332031, 75.0620174407959, 5990.22119140625)
                 wait(0.05)
                 ME.CFrame = CFrame.new(-23.823293685913086, 75.28253936767578, 6759.15625)
                 wait(0.05)
                 ME.CFrame = CFrame.new(-29.56721305847168, 75.552268981933594, 7528.06201171875)
                 wait(0.05)
                 ME.CFrame = CFrame.new(-24.509313583374023, 75.64134216308594, 8303.533203125)
                 wait(0.05)
                 ME.CFrame = CFrame.new(14.77531623840332, 75.91139221191406, 1364.46630859375)
                 wait(0.05)
                 ME.CFrame = CFrame.new(-3.709878444671631, 75.91139221191406, 2138.70654296875)
                 wait(0.05)
                 ME.CFrame = CFrame.new(-23.847915649414062, 75.22637939453125, 2905.48974609375)
                 wait(0.05)
                 ME.CFrame = CFrame.new(-0.3949209451675415, 75.74623489379883, 3682.6328125)
                 wait(0.05)
                 ME.CFrame = CFrame.new(-13.860719680786133, 75.25170135498047, 4450.18603515625)
                 wait(0.05)
                 ME.CFrame = CFrame.new(-7.198073387145996, 75.09455108642578, 5222.0458984375)
                 wait(0.05)
                 ME.CFrame = CFrame.new(-44.74592590332031, 75.0620174407959, 5990.22119140625)
                 wait(0.05)
                 ME.CFrame = CFrame.new(-23.823293685913086, 75.28253936767578, 6759.15625)
                 wait(0.05)
                 ME.CFrame = CFrame.new(-29.56721305847168, 75.552268981933594, 7528.06201171875)
                 wait(0.05)
                 ME.CFrame = CFrame.new(-24.509313583374023, 75.64134216308594, 8303.533203125)
                 wait(0.05)
                 ME.CFrame = CFrame.new(14.77531623840332, 75.91139221191406, 1364.46630859375)
                 wait(0.05)
                 ME.CFrame = CFrame.new(-3.709878444671631, 75.91139221191406, 2138.70654296875)
                 wait(0.05)
                 ME.CFrame = CFrame.new(-23.847915649414062, 75.22637939453125, 2905.48974609375)
                 wait(0.05)
                 ME.CFrame = CFrame.new(-0.3949209451675415, 75.74623489379883, 3682.6328125)
                 wait(0.05)
                 ME.CFrame = CFrame.new(-13.860719680786133, 75.25170135498047, 4450.18603515625)
                 wait(0.05)
                 ME.CFrame = CFrame.new(-7.198073387145996, 75.09455108642578, 5222.0458984375)
                 wait(0.05)
                 ME.CFrame = CFrame.new(-44.74592590332031, 75.0620174407959, 5990.22119140625)
                 wait(0.05)
                 ME.CFrame = CFrame.new(-23.823293685913086, 75.28253936767578, 6759.15625)
                 wait(0.05)
                 ME.CFrame = CFrame.new(-29.56721305847168, 75.552268981933594, 7528.06201171875)
                 wait(0.05)
                 ME.CFrame = CFrame.new(-24.509313583374023, 75.64134216308594, 8303.533203125)
                 wait(0.05)
                 ME.CFrame = CFrame.new(14.77531623840332, 75.91139221191406, 1364.46630859375)
                 wait(0.05)
                 ME.CFrame = CFrame.new(-3.709878444671631, 75.91139221191406, 2138.70654296875)
                 wait(0.05)
                 ME.CFrame = CFrame.new(-23.847915649414062, 75.22637939453125, 2905.48974609375)
                 wait(0.05)
                 ME.CFrame = CFrame.new(-0.3949209451675415, 75.74623489379883, 3682.6328125)
                 wait(0.05)
                 ME.CFrame = CFrame.new(-13.860719680786133, 75.25170135498047, 4450.18603515625)
                 wait(0.05)
                 ME.CFrame = CFrame.new(-7.198073387145996, 75.09455108642578, 5222.0458984375)
                 wait(0.05)
                 ME.CFrame = CFrame.new(-44.74592590332031, 75.0620174407959, 5990.22119140625)
                 wait(0.05)
                 ME.CFrame = CFrame.new(-23.823293685913086, 75.28253936767578, 6759.15625)
                 wait(0.05)
                 ME.CFrame = CFrame.new(-29.56721305847168, 75.552268981933594, 7528.06201171875)
                 wait(0.05)
                 ME.CFrame = CFrame.new(-24.509313583374023, 75.64134216308594, 8303.533203125)
                 wait(0.05)
                 ME.CFrame = CFrame.new(14.77531623840332, 75.91139221191406, 1364.46630859375)
                 wait(0.05)
                 ME.CFrame = CFrame.new(-3.709878444671631, 75.91139221191406, 2138.70654296875)
                 wait(0.05)
                 ME.CFrame = CFrame.new(-23.847915649414062, 75.22637939453125, 2905.48974609375)
                 wait(0.05)
                 ME.CFrame = CFrame.new(-0.3949209451675415, 75.74623489379883, 3682.6328125)
                 wait(0.05)
                 ME.CFrame = CFrame.new(-13.860719680786133, 75.25170135498047, 4450.18603515625)
                 wait(0.05)
                 ME.CFrame = CFrame.new(-7.198073387145996, 75.09455108642578, 5222.0458984375)
                 wait(0.05)
                 ME.CFrame = CFrame.new(-44.74592590332031, 75.0620174407959, 5990.22119140625)
                 wait(0.05)
                 ME.CFrame = CFrame.new(-23.823293685913086, 75.28253936767578, 6759.15625)
                 wait(0.05)
                 ME.CFrame = CFrame.new(-29.56721305847168, 75.552268981933594, 7528.06201171875)
                 wait(0.05)
                 ME.CFrame = CFrame.new(-24.509313583374023, 75.64134216308594, 8303.533203125)
                 wait(0.05)
                 ME.CFrame = CFrame.new(14.77531623840332, 75.91139221191406, 1364.46630859375)
                 wait(0.05)
                 ME.CFrame = CFrame.new(-3.709878444671631, 75.91139221191406, 2138.70654296875)
                 wait(0.05)
                 ME.CFrame = CFrame.new(-23.847915649414062, 75.22637939453125, 2905.48974609375)
                 wait(0.05)
                 ME.CFrame = CFrame.new(-0.3949209451675415, 75.74623489379883, 3682.6328125)
                 wait(0.05)
                 ME.CFrame = CFrame.new(-13.860719680786133, 75.25170135498047, 4450.18603515625)
                 wait(0.05)
                 ME.CFrame = CFrame.new(-7.198073387145996, 75.09455108642578, 5222.0458984375)
                 wait(0.05)
                 ME.CFrame = CFrame.new(-44.74592590332031, 75.0620174407959, 5990.22119140625)
                 wait(0.05)
                 ME.CFrame = CFrame.new(-23.823293685913086, 75.28253936767578, 6759.15625)
                 wait(0.05)
                 ME.CFrame = CFrame.new(-29.56721305847168, 75.552268981933594, 7528.06201171875)
                 wait(0.05)
                 ME.CFrame = CFrame.new(-24.509313583374023, 75.64134216308594, 8303.533203125)
                 wait(0.05)
                 ME.CFrame = CFrame.new(-56.60874938964844, -360.4061584472656, 9481.73046875)
             --    wait(2)
               --  humanoidRootPart.Anchored = false
                 wait(20)
            end
        --end)
    else
        print("1")
    end
end)