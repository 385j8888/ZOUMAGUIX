local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")

local player = Players.LocalPlayer
local gui = Instance.new("ScreenGui")
gui.Name = "RainbowTextGui"
gui.ResetOnSpawn = false
gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
gui.Parent = player:WaitForChild("PlayerGui")

local textLabel = Instance.new("TextLabel")
textLabel.Size = UDim2.new(1, 0, 0.05, 0)  
textLabel.Position = UDim2.new(0, 0, 0, 0)
textLabel.BackgroundTransparency = 1  
textLabel.Text = "走马观花X_群号947178829_作者小爱同学"
textLabel.TextSize = 15  
textLabel.Font = Enum.Font.SourceSans
textLabel.TextStrokeTransparency = 0.7  
textLabel.TextStrokeColor3 = Color3.new(0,0,0)
textLabel.Parent = gui

local colors = {
    Color3.fromRGB(255, 100, 100),  
    Color3.fromRGB(255, 150, 50),   
    Color3.fromRGB(255, 255, 100),  
    Color3.fromRGB(100, 255, 100),  
    Color3.fromRGB(100, 200, 255),  
    Color3.fromRGB(150, 100, 255),  
    Color3.fromRGB(255, 100, 200)   
}


local function startColorAnimation()
    local currentIndex = 1
    while true do
        local nextIndex = currentIndex % #colors + 1
        
       
        local tweenInfo = TweenInfo.new(
            4, 
            Enum.EasingStyle.Linear,
            Enum.EasingDirection.InOut
        )
        
        local tween = TweenService:Create(
            textLabel,
            tweenInfo,
            {TextColor3 = colors[nextIndex]}
        )
        
        tween:Play()
        tween.Completed:Wait() 
        
        currentIndex = nextIndex
    end
end

coroutine.wrap(startColorAnimation)()