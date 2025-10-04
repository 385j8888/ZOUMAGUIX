local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")

local player = Players.LocalPlayer
local gui = Instance.new("ScreenGui")
gui.Name = "NotificationGUI"
gui.Parent = player:WaitForChild("PlayerGui")


local blurBackground = Instance.new("Frame")
blurBackground.Name = "BlurBackground"
blurBackground.Size = UDim2.new(1, 0, 1, 0)
blurBackground.Position = UDim2.new(0, 0, 0, 0)
blurBackground.BackgroundColor3 = Color3.new(0, 0, 0)
blurBackground.BackgroundTransparency = 0.3
blurBackground.ZIndex = 5
blurBackground.Parent = gui

local notificationFrame = Instance.new("Frame")
notificationFrame.Name = "NotificationFrame"
notificationFrame.Size = UDim2.new(0, 300, 0, 200)
notificationFrame.Position = UDim2.new(0.5, -150, 0.5, -100)
notificationFrame.BackgroundColor3 = Color3.new(1, 0, 0) -- 红色背景
notificationFrame.BorderSizePixel = 0
notificationFrame.ZIndex = 10
notificationFrame.Parent = gui


local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 12)
corner.Parent = notificationFrame

local shadow = Instance.new("UIStroke")
shadow.Color = Color3.new(0.2, 0, 0)
shadow.Thickness = 4
shadow.Parent = notificationFrame


local titleLabel = Instance.new("TextLabel")
titleLabel.Name = "TitleLabel"
titleLabel.Size = UDim2.new(1, -20, 0, 40)
titleLabel.Position = UDim2.new(0, 10, 0, 10)
titleLabel.BackgroundTransparency = 1
titleLabel.Text = "⚠警告⚠"
titleLabel.TextColor3 = Color3.new(1, 1, 1)
titleLabel.TextScaled = true
titleLabel.Font = Enum.Font.GothamBold
titleLabel.ZIndex = 11
titleLabel.Parent = notificationFrame

local contentLabel = Instance.new("TextLabel")
contentLabel.Name = "ContentLabel"
contentLabel.Size = UDim2.new(1, -20, 0, 80)
contentLabel.Position = UDim2.new(0, 10, 0, 60)
contentLabel.BackgroundTransparency = 1
contentLabel.Text = "检测到Fisch服务器\n请不要使用忍者(尽量)，他会使封号风险增加\n不要在别人面前开桂钓鱼\n如果你怕封最好用小号测试一下\n封了概不负责(当被踢出4次时直接永封)\n注入器优先选择阿尔宙斯\n加速器最好选好猫加速器\n如果你同意，请按下按钮使用脚本吧"
contentLabel.TextColor3 = Color3.new(1, 1, 1)
contentLabel.TextScaled = true
contentLabel.Font = Enum.Font.Gotham
contentLabel.TextWrapped = true
contentLabel.ZIndex = 11
contentLabel.Parent = notificationFrame

-- 创建关闭按钮
local closeButton = Instance.new("TextButton")
closeButton.Name = "CloseButton"
closeButton.Size = UDim2.new(0, 120, 0, 40)
closeButton.Position = UDim2.new(0.5, -60, 1, -50)
closeButton.BackgroundColor3 = Color3.new(1, 1, 1)
closeButton.Text = "朕已阅"
closeButton.TextColor3 = Color3.new(1, 0, 0)
closeButton.TextScaled = true
closeButton.Font = Enum.Font.GothamBold
closeButton.ZIndex = 11
closeButton.Parent = notificationFrame


local buttonCorner = Instance.new("UICorner")
buttonCorner.CornerRadius = UDim.new(0, 8)
buttonCorner.Parent = closeButton


local isFlashing = true
local flashConnection


local function startFlashing()
	flashConnection = RunService.Heartbeat:Connect(function()
		if isFlashing then
			local time = tick()
			local alpha = math.sin(time * 5) * 0.3 + 0.7 
			notificationFrame.BackgroundColor3 = Color3.new(1, alpha * 0.3, alpha * 0.3)
		else
			flashConnection:Disconnect()
		end
	end)
end

local function closeUI()
	isFlashing = false
	if flashConnection then
		flashConnection:Disconnect()
	end
	gui:Destroy()
end

closeButton.MouseButton1Click:Connect(closeUI)

startFlashing()