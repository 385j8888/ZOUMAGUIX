local UserInputService = game:GetService("UserInputService")
local Players = game:GetService("Players")
local player = Players.LocalPlayer

-- 创建UI
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "DragButtonGui"
ScreenGui.ResetOnSpawn = false
ScreenGui.Parent = player:WaitForChild("PlayerGui")

local DragButton = Instance.new("TextButton")
DragButton.Name = "StealButton"
DragButton.Text = "偷别人装备(有伤害)"
DragButton.Size = UDim2.new(0, 150, 0, 50) -- 长方形按钮
DragButton.Position = UDim2.new(0.5, -75, 0.8, -25) -- 底部居中
DragButton.BackgroundColor3 = Color3.fromRGB(220, 60, 60)
DragButton.TextColor3 = Color3.new(1, 1, 1)
DragButton.Font = Enum.Font.SourceSansBold
DragButton.TextSize = 18
DragButton.Parent = ScreenGui

-- 拖动功能
local isDragging = false
local dragOffset = Vector2.new(0, 0)

DragButton.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.Touch then
        isDragging = true
        local touchPosition = input.Position
        local buttonPosition = DragButton.AbsolutePosition
        dragOffset = buttonPosition - touchPosition
        
        -- 提升按钮响应优先级
        DragButton.ZIndex = 10
    end
end)

UserInputService.InputChanged:Connect(function(input)
    if isDragging and input.UserInputType == Enum.UserInputType.Touch then
        DragButton.Position = UDim2.new(
            0, input.Position.X + dragOffset.X,
            0, input.Position.Y + dragOffset.Y
        )
    end
end)

UserInputService.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.Touch then
        isDragging = false
        DragButton.ZIndex = 1
    end
end)

-- 点击功能
DragButton.MouseButton1Click:Connect(function()
    -- 偷取装备脚本
    for _, targetPlayer in ipairs(Players:GetPlayers()) do
        if targetPlayer ~= player and targetPlayer.Character then
            local targetBackpack = targetPlayer:FindFirstChild("Backpack")
            local myBackpack = player:FindFirstChild("Backpack")
            
            if targetBackpack and myBackpack then
                for _, item in ipairs(targetBackpack:GetChildren()) do
                    if item:IsA("Tool") then
                        -- 对原玩家造成伤害
                        if targetPlayer.Character:FindFirstChild("Humanoid") then
                            targetPlayer.Character.Humanoid:TakeDamage(10)
                        end
                        
                        -- 转移装备
                        item.Parent = myBackpack
                        wait(0.1)
                    end
                end
            end
        end
    end
end)