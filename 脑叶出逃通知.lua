local Workspace = game:GetService("Workspace")
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")

-- 确保 Units 文件夹存在
local function ensureUnitsFolder()
    if not Workspace:FindFirstChild("Units") then
        local folder = Instance.new("Folder")
        folder.Name = "Units"
        folder.Parent = Workspace
        return folder
    end
    return Workspace.Units
end

local Units = ensureUnitsFolder()

-- 检查 Model 是否是玩家角色
local function isPlayerCharacter(model)
    for _, player in ipairs(Players:GetPlayers()) do
        if player.Character and player.Character == model then
            return true
        end
    end
    return false
end

-- 主检测函数
local function monitorUnits()
    local existingModels = {}
    
    -- 记录初始存在的 Model
    for _, child in ipairs(Units:GetChildren()) do
        if child:IsA("Model") then
            existingModels[child] = true
        end
    end
    
    -- 持续检测新增 Model
    while true do
        RunService.Heartbeat:Wait()  -- 更高效的等待方式
        
        for _, child in ipairs(Units:GetChildren()) do
            -- 检测新增 Model 且未被记录过
            if child:IsA("Model") and not existingModels[child] then
                existingModels[child] = true  -- 标记为已记录
                
                -- 排除玩家和 Clerk
                if not isPlayerCharacter(child) and child.Name ~= "Clerk" then
                    -- 发送通知
                    game:GetService("StarterGui"):SetCore("SendNotification", {
                        Title = "脑叶助理",
                        Text = child.Name .. "已出逃",
                        Icon = "rbxthumb://type=Asset&id=17366451283&w=150&h=150",
                        Duration = 5
                    })
                end
            end
        end
    end
end

-- 启动监控
coroutine.wrap(monitorUnits)()