local lib = {}

if game.CoreGui:FindFirstChild'Ancestor'then 
    game.CoreGui.Ancestor:Destroy()
end

function lib:Create(type, proprieties)
	local instance = Instance.new(type)

	for i, v in next, proprieties do
		if instance[i] and proprieties ~= "Parent" then
			instance[i] = v
		end
	end

	return instance
end

function lib:Notify(top, bottom)
	local NewUiLib = Instance.new("ScreenGui")
	local notibody = Instance.new("Frame")
	local TopBar = Instance.new("Frame")
	local UIGradient = Instance.new("UIGradient")
	local LogoTextFolder = Instance.new("Folder")
	local LogoText = Instance.new("TextLabel")
	local LogoText_2 = Instance.new("TextLabel")
	local LogoText_3 = Instance.new("TextLabel")
	local LogoText_4 = Instance.new("TextLabel")
	local LogoText_5 = Instance.new("TextLabel")
	local UIGradient_2 = Instance.new("UIGradient")
	local Close = Instance.new("TextButton")
	local UIGradient_3 = Instance.new("UIGradient")
	local InfoText = Instance.new("TextLabel")
	local TextSolid = Instance.new("Frame")

	NewUiLib.Name = "NewUiLib"
	NewUiLib.Parent = game.CoreGui.Ancestor

	notibody.Name = "notibody"
	notibody.Parent = NewUiLib
	notibody.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	notibody.BorderSizePixel = 0
	notibody.Position = UDim2.new(0, 689,0,389)
	notibody.Size = UDim2.new(0, 367, 0, 168)
	notibody.Active = true
	notibody.Draggable = true
	notibody.Selectable = true


	TopBar.Name = "TopBar"
	TopBar.Parent = notibody
	TopBar.BackgroundColor3 = Color3.fromRGB(255, 0, 120)
	TopBar.BorderSizePixel = 0
	TopBar.Position = UDim2.new(0, 0, -0.178571433, 0)
	TopBar.Size = UDim2.new(0, 367, 0, 30)

	UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 0, 0)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 0, 0))}
	UIGradient.Rotation = 90
	UIGradient.Parent = TopBar

	LogoTextFolder.Name = "LogoTextFolder"
	LogoTextFolder.Parent = TopBar

	LogoText.Name = "LogoText"
	LogoText.Parent = LogoTextFolder
	LogoText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	LogoText.BackgroundTransparency = 1.000
	LogoText.BorderSizePixel = 0
	LogoText.Position = UDim2.new(-0.0258602686, 0, -0.00833334029, 0)
	LogoText.Size = UDim2.new(0, 52, 0, 30)
	LogoText.Font = Enum.Font.GothamSemibold
	LogoText.Text = "l"
	LogoText.TextColor3 = Color3.fromRGB(65, 255, 65)
	LogoText.TextSize = 27.000
	LogoText.TextTransparency = 0.200

	LogoText_2.Name = "LogoText"
	LogoText_2.Parent = LogoTextFolder
	LogoText_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	LogoText_2.BackgroundTransparency = 1.000
	LogoText_2.BorderSizePixel = 0
	LogoText_2.Position = UDim2.new(0.00754730683, 0, -0.00833334029, 0)
	LogoText_2.Size = UDim2.new(0, 17, 0, 30)
	LogoText_2.Font = Enum.Font.GothamSemibold
	LogoText_2.Text = ""
	LogoText_2.TextColor3 = Color3.fromRGB(17, 124, 255)
	LogoText_2.TextSize = 27.000
	LogoText_2.TextTransparency = 0.200

	LogoText_3.Name = "LogoText"
	LogoText_3.Parent = LogoTextFolder
	LogoText_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	LogoText_3.BackgroundTransparency = 1.000
	LogoText_3.BorderSizePixel = 0
	LogoText_3.Position = UDim2.new(-0.0258602761, 0, -0.00833334029, 0)
	LogoText_3.Size = UDim2.new(0, 47, 0, 30)
	LogoText_3.Font = Enum.Font.GothamSemibold
	LogoText_3.Text = "_-"
	LogoText_3.TextColor3 = Color3.fromRGB(255, 28, 100)
	LogoText_3.TextSize = 27.000
	LogoText_3.TextTransparency = 0.200

	LogoText_4.Name = "LogoText"
	LogoText_4.Parent = LogoTextFolder
	LogoText_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	LogoText_4.BackgroundTransparency = 1.000
	LogoText_4.BorderSizePixel = 0
	LogoText_4.Position = UDim2.new(0.0520840697, 0, -0.00833334029, 0)
	LogoText_4.Size = UDim2.new(0, 87, 0, 30)
	LogoText_4.Font = Enum.Font.GothamBold
	LogoText_4.Text = " Frosty X"
	LogoText_4.TextColor3 = Color3.fromRGB(255, 255, 255)
	LogoText_4.TextSize = 27.000
	UIGradient_2.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 0, 0)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 0, 0))}
	UIGradient_2.Rotation = 90
	UIGradient_2.Parent = notibody
	LogoText_5.Name = "LogoText"
	LogoText_5.Parent = LogoTextFolder
	LogoText_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	LogoText_5.BackgroundTransparency = 1.000
	LogoText_5.BorderSizePixel = 0
	LogoText_5.Position = UDim2.new(0.193881869,0,0.125, 0)
	LogoText_5.Size = UDim2.new(0, 87, 0, 30)
	LogoText_5.Font = Enum.Font.GothamBold
	LogoText_5.Text = ''
	LogoText_5.TextColor3 = Color3.fromRGB(255, 255, 255)
	LogoText_5.TextSize = 14.000
	UIGradient_3.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(38, 38, 38)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(18, 18, 18))}
	UIGradient_3.Rotation = 90
	UIGradient_3.Parent = notibody

	Close.Name = "Close"
	Close.Parent = notibody
	Close.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Close.BorderColor3 = Color3.fromRGB(139, 139, 139)
	Close.Position = UDim2.new(0.71662128, 0, 0.807142735, 0)
	Close.Size = UDim2.new(0, 93, 0, 26)
	Close.Font = Enum.Font.SourceSans
	Close.Text = "Close"
	Close.TextColor3 = Color3.fromRGB(255, 255, 255)
	Close.TextSize = 18.000

	UIGradient_3.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(33, 55, 167)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(50, 64, 140))}
	UIGradient_3.Rotation = 90
	UIGradient_3.Parent = Close

	InfoText.Name = "InfoText"
	InfoText.Parent = Close
	InfoText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	InfoText.BackgroundTransparency = 1.000
	InfoText.BorderSizePixel = 0
	InfoText.Position = UDim2.new(0.0549293756, 0, -0.00545230508, 0)
	InfoText.Size = UDim2.new(0, 82, 0, 26)
	InfoText.Font = Enum.Font.SourceSans
	InfoText.Text = "Close"
	InfoText.TextColor3 = Color3.fromRGB(255, 255, 255)
	InfoText.TextSize = 16.000
	InfoText.TextWrapped = true

	TextSolid.Name = "TextSolid"
	TextSolid.Parent = notibody
	TextSolid.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextSolid.BackgroundTransparency = 1.000
	TextSolid.Position = UDim2.new(0, 0, 0.0535714291, 0)
	TextSolid.Size = UDim2.new(0, 367, 0, 118)

	local ex = Instance.new("TextLabel")
	local ImageLabel = Instance.new("ImageLabel")

	ex.Name = "ex"
	ex.Parent = TextSolid
	ex.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ex.BackgroundTransparency = 1.000
	ex.BorderSizePixel = 0
	ex.Position = UDim2.new(0.283691734, 0, 0.0427159443, 0)
	ex.Size = UDim2.new(0, 158, 0, 30)
	ex.Font = Enum.Font.GothamSemibold
	ex.Text = "!"
	ex.TextColor3 = Color3.fromRGB(255, 255, 255)
	ex.TextSize = 22.000

	ImageLabel.Parent = TextSolid
	ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ImageLabel.BackgroundTransparency = 1.000
	ImageLabel.Position = UDim2.new(0.463275224, 0, 0.0710476488, 0)
	ImageLabel.Size = UDim2.new(0, 24, 0, 24)
	ImageLabel.Image = "http://www.roblox.com/asset/?id=5465179456"

	local InfoText_2 = Instance.new("TextLabel")
	local main_text = Instance.new("TextLabel")

	InfoText_2.Name = "InfoText"
	InfoText_2.Parent = TextSolid
	InfoText_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	InfoText_2.BackgroundTransparency = 1.000
	InfoText_2.BorderSizePixel = 0
	InfoText_2.Position = UDim2.new(0.0384601317, 0, 0.543926656, 0)
	InfoText_2.Size = UDim2.new(0, 341, 0, 59)
	InfoText_2.Font = Enum.Font.SourceSans
	InfoText_2.Text = bottom
	InfoText_2.TextColor3 = Color3.fromRGB(255, 255, 255)
	InfoText_2.TextSize = 22.000
	InfoText_2.TextWrapped = true

	main_text.Name = "main_text"
	main_text.Parent = TextSolid
	main_text.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	main_text.BackgroundTransparency = 1.000
	main_text.BorderSizePixel = 0
	main_text.Position = UDim2.new(0.346362025, 0, 0.297558546, 0)
	main_text.Size = UDim2.new(0, 114, 0, 30)
	main_text.Font = Enum.Font.GothamSemibold
	main_text.Text = top
	main_text.TextColor3 = Color3.fromRGB(255, 255, 255)
	main_text.TextSize = 22.000

	Close.MouseButton1Click:Connect(function()
		local text = TextSolid
		local topbar = TopBar
		local gui = notibody
		local button = Close
		for i=1,5 do
			text:TweenPosition(text.Position + UDim2.new(0,0,0.05,0), "Out", "Linear", 0.1)
			for i,v in pairs(text:GetChildren()) do
				if v.Name == 'ImageLabel' then v.ImageTransparency = v.ImageTransparency + 0.3 else
					v.TextTransparency = v.TextTransparency + 0.2
				end
			end
			topbar:TweenPosition(topbar.Position - UDim2.new(0,0,0.05,0), "Out", "Linear", 0.1)
			for i,v in pairs(topbar.LogoTextFolder:GetChildren()) do
				v.TextTransparency = v.TextTransparency + 0.2
			end
			topbar.BackgroundTransparency = topbar.BackgroundTransparency + 0.2
			button:TweenPosition(button.Position + UDim2.new(0,0,0.05,0), "Out", "Linear", 0.1)
			button.InfoText.TextTransparency = button.InfoText.TextTransparency + 0.2
			button.BackgroundTransparency = button.BackgroundTransparency + 0.2
			button.TextTransparency = button.TextTransparency + 0.2
			gui.BackgroundTransparency = gui.BackgroundTransparency + 0.2
			wait(0.1)
		end
		gui:Destroy()
	end)
end


local CoreGui = game:GetService("CoreGui")
local TweenService = game:GetService("TweenService")
local Mouse = game:GetService("Players").LocalPlayer:GetMouse()
local UIS = game:GetService("UserInputService")

function lib:Main()
	local main = {}
	local firstC = true

	main.ScreenGui = lib:Create("ScreenGui", {
		Name = "Ancestor",
		ResetOnSpawn = false,
	})

	main.MainBody = lib:Create("Frame", {
		Name = "MainBody",
		BackgroundColor3 = Color3.fromRGB(25, 25, 25),
		BorderSizePixel = 0,
		Position = UDim2.new(0.355343342, 0, 0.358804077, 0),
		Size = UDim2.new(0, 554, 0, 304),
	})

	local dragInput
	local dragStart
	local startPos

	local function update(input)
		local delta = input.Position - dragStart
		main.MainBody:TweenPosition(UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y),'Out','Linear',0.01,true)
	end

	main.MainBody.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			dragging = true
			dragStart = input.Position
			startPos = main.MainBody.Position
			repeat wait() until input.UserInputState == Enum.UserInputState.End
			dragging = false
		end
	end)

	main.MainBody.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement then
			dragInput = input
		end
	end)

	game:GetService("UserInputService").InputChanged:Connect(function(input)
		if input == dragInput and dragging then
			update(input)
		end
	end)

	main.TopBar = lib:Create("Frame", {
		Name = "TopBar",
		BackgroundColor3 = Color3.fromRGB(255, 0, 120),
		BorderSizePixel = 0,
		Size = UDim2.new(0, 554, 0, 40),
	})

	main.TopBarGradient = lib:Create("UIGradient", {
		Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(33, 55, 167)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(50, 64, 140))},
		Rotation = 90,
	})

	main.LogoTextFolder = lib:Create("Folder", {
		Name = "LogoTextFolder",
	})

	main.LogoText1 = lib:Create("TextLabel", {
		BackgroundColor3 = Color3.fromRGB(255, 255, 255),
		BackgroundTransparency = 1.000,
		BorderSizePixel = 0,
		Position = UDim2.new(-0.0204402134, 0, 0.125, 0),
		Size = UDim2.new(0, 52, 0, 30),
		Font = Enum.Font.GothamSemibold,
		Text = "l",
		TextColor3 = Color3.fromRGB(65, 255, 65),
		TextSize = 27.000,
		TextTransparency = 0.200,
	})

	main.LogoText2 = lib:Create("TextLabel", {
		BackgroundColor3 = Color3.fromRGB(255, 255, 255),
		BackgroundTransparency = 1.000,
		BorderSizePixel = 0,
		Position = UDim2.new(0.0129673611, 0, 0.125, 0),
		Size = UDim2.new(0, 17, 0, 30),
		Font = Enum.Font.GothamSemibold,
		Text = "�",
		TextColor3 = Color3.fromRGB(17, 124, 255),
		TextSize = 27.000,
		TextTransparency = 0.200,
	})

	main.LogoText3 = lib:Create("TextLabel", {
		BackgroundColor3 = Color3.fromRGB(255, 255, 255),
		BackgroundTransparency = 1.000,
		BorderSizePixel = 0,
		Position = UDim2.new(-0.0204402227, 0, 0.125, 0),
		Size = UDim2.new(0, 47, 0, 30),
		Font = Enum.Font.GothamSemibold,
		Text = "k",
		TextColor3 = Color3.fromRGB(255, 28, 100),
		TextSize = 27.000,
		TextTransparency = 0.200,
	})


	main.LogoText4 = lib:Create("TextLabel", {
		BackgroundColor3 = Color3.fromRGB(255, 255, 255),
		BackgroundTransparency = 1.000,
		BorderSizePixel = 0,
		Position = UDim2.new(0.0331138819, 0, 0.125, 0),
		Size = UDim2.new(0, 87, 0, 30),
		Font = Enum.Font.GothamBold,
		Text = "Ancestor",
		TextColor3 = Color3.fromRGB(255, 255, 255),
		TextSize = 27.000,
	})

	main.LogoText5 = lib:Create("TextLabel", {
		BackgroundColor3 = Color3.fromRGB(255, 255, 255),
		BackgroundTransparency = 1.000,
		BorderSizePixel = 0,
		Position = UDim2.new(0.19138819, 0, 0.105, 0),
		Size = UDim2.new(0, 87, 0, 30),
		Font = Enum.Font.GothamBold,
		Text = '',
		TextColor3 = Color3.fromRGB(255, 255, 255),
		TextSize = 20.000,
		TextXAlignment = Enum.TextXAlignment.Left
	})

	main.CloseFrame = lib:Create("ImageLabel", {
		Name = "CloseFrame",
		BackgroundColor3 = Color3.fromRGB(255, 255, 255),
		BackgroundTransparency = 1.000,
		Position = UDim2.new(0.958662987, 0, 0.250000001, 0),
		Size = UDim2.new(0, 15, 0, 15),
		Image = "rbxassetid://3570695787",
		ImageColor3 = Color3.fromRGB(255, 0, 4),
		ScaleType = Enum.ScaleType.Slice,
		SliceCenter = Rect.new(100, 100, 100, 100),
		SliceScale = 0.120,
		ImageTransparency = 1,
	})

	main.Close = lib:Create("TextButton", {
		Name = "Close",
		BackgroundColor3 = Color3.fromRGB(255, 255, 255),
		BackgroundTransparency = 1.000,
		BorderSizePixel = 0,
		Position = UDim2.new(0, 0, -0.466666669, 0),
		Size = UDim2.new(0, 15, 0, 25),
		Font = Enum.Font.SourceSans,
		Text = "x",
		TextColor3 = Color3.fromRGB(255, 255, 255),
		TextSize = 18.000,
	})

	main.Close.MouseEnter:Connect(function()
		TweenService:Create(main.CloseFrame, TweenInfo.new(0.1), {ImageTransparency = 0}):Play()
	end)

	main.Close.MouseLeave:Connect(function()
		TweenService:Create(main.CloseFrame, TweenInfo.new(0.1), {ImageTransparency = 1}):Play()
	end)

	main.CategoryContainer = lib:Create("ScrollingFrame", {
		Name = "CategoryContainer",
		Active = true,
		BackgroundColor3 = Color3.fromRGB(47, 47, 47),
		BorderSizePixel = 0,
		Position = UDim2.new(0, 0, 0.131578952, 0),
		Size = UDim2.new(0, 50, 0, 264),
		CanvasSize = UDim2.new(0, 0, 0, 1),
		ScrollBarThickness = 0,
		ScrollBarImageColor3=Color3.fromRGB(75,75,75)
	})

	main.CategoryPadding = lib:Create("UIPadding", {
		PaddingTop = UDim.new(0, 2),
		PaddingBottom = UDim.new(0, 2),
	})

	main.CategoryLayout = lib:Create("UIListLayout", {
		SortOrder = Enum.SortOrder.LayoutOrder,
		Padding = UDim.new(0, 3),
	})

	function main:Category(ImageId)
		local categories = {}

		categories.Button = lib:Create("ImageButton", {
			Active = false,
			BackgroundColor3 = Color3.fromRGB(65, 65, 65),
			BorderSizePixel = 0,
			Selectable = false,
			Size = UDim2.new(1, 0, 0, 50),
			AutoButtonColor = false,
			Image = "http://www.roblox.com/asset/?id="..ImageId,
		})

		categories.Container = lib:Create("ScrollingFrame", {
			BackgroundColor3 = Color3.fromRGB(17, 17, 17),
			BorderSizePixel = 0,
			Position = UDim2.new(0.091575101, 0, 0.138557434, 0),
			Selectable = false,
			Size = UDim2.new(0, 503, 0, 262),
			ScrollBarThickness = 7,
			ScrollBarImageColor3=Color3.fromRGB(75,75,75),
			CanvasSize = UDim2.new(0,0,.2,1.3),
			Visible = false,
		})

		if firstC then 
			categories.Container.Visible = true 
		end 

		categories.ContainerLayout = lib:Create("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder,
			Padding = UDim.new(0, 5),
		})

		categories.ContainerPadding = lib:Create("UIPadding", {
			PaddingLeft = UDim.new(0, 5),
			PaddingBottom = UDim.new(0,5),
		})

		categories.Button.MouseButton1Click:Connect(function()
			for i,v in pairs(main.MainBody:GetChildren()) do 
				if v.Name == "ScrollingFrame" then 
					v.Visible = false 
				end
			end

			categories.Container.Visible = true
		end)

		function categories:Section(Name)
			local sections = {}

			sections.sectionname = lib:Create("TextLabel", {
				Name = Name.."Section",
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				BackgroundTransparency = 1.000,
				BorderSizePixel = 0,
				Position = UDim2.new(0.00994035788, 0, 0, 0),
				Size = UDim2.new(0, 105, 0, 30),
				Font = Enum.Font.SourceSansLight,
				Text = Name,
				TextColor3 = Color3.fromRGB(255, 255, 255),
				TextSize = 27.000,
				TextXAlignment = Enum.TextXAlignment.Left,
			})

			categories.Container.CanvasSize = categories.Container.CanvasSize + UDim2.new(0,0,0,40)

			function sections:Button(Name, CallBack, Animated)
				local buttons = {}

				buttons.buttonb = lib:Create("ImageLabel", {
					Name = Name.."Button",
					BackgroundColor3 = Color3.fromRGB(255, 255, 255),
					BackgroundTransparency = 1.000,
					Position = UDim2.new(0.00415800419, 0, 0.86175108, 0),
					Size = UDim2.new(0, 484, 0, 35),
					Image = "rbxassetid://3570695787",
					ImageColor3 = Color3.fromRGB(65, 65, 65),
					ScaleType = Enum.ScaleType.Slice,
					SliceCenter = Rect.new(100, 100, 100, 100),
					SliceScale = 0.040,
				})

				buttons.buttonframe = lib:Create("ImageLabel", {
					BackgroundColor3 = Color3.fromRGB(255, 255, 255),
					BackgroundTransparency = 1.000,
					Position = UDim2.new(0.009999929, 0, 0.0857142881, 0),
					Size = UDim2.new(0, 476, 0, 29),
					Image = "rbxassetid://3570695787",
					ImageColor3 = Color3.fromRGB(55, 55, 55),
					ScaleType = Enum.ScaleType.Slice,
					SliceCenter = Rect.new(100, 100, 100, 100),
					SliceScale = 0.040,
				})

				buttons.button = lib:Create("TextButton", {
					BackgroundColor3 = Color3.fromRGB(55, 55, 55),
					BackgroundTransparency = 1.000,
					BorderSizePixel = 0,
					Size = UDim2.new(0, 476, 0, 29),
					AutoButtonColor = false,
					Text = Name,
					Font = Enum.Font.GothamSemibold,
					TextColor3 = Color3.fromRGB(255, 255, 255),
					TextSize = 16.000,
				})

				buttons.button.MouseButton1Click:Connect(function()
					if CallBack then 
						CallBack()
					end

					if Animated then 
						TweenService:Create(buttons.buttonframe, TweenInfo.new(0.1), {Size = UDim2.new(0, 440,0, 25),  Position = UDim2.new(0.047, 0,0.143, 0)}):Play()
						TweenService:Create(buttons.button, TweenInfo.new(0.1), {Size = UDim2.new(0, 437,0, 25), Position = UDim2.new(0,0,0,0)}):Play()
						wait(0.05)
						TweenService:Create(buttons.buttonframe, TweenInfo.new(0.1), {Size = UDim2.new(0, 476,0, 29), Position = UDim2.new(0.01, 0,0.086, 0)}):Play()
						TweenService:Create(buttons.button, TweenInfo.new(0.1), {Size = UDim2.new(0, 476,0, 29), Position = UDim2.new(0, 0,0, 0)}):Play()
					end
				end)

				buttons.buttonb.Parent = categories.Container
				buttons.buttonframe.Parent = buttons.buttonb
				buttons.button.Parent = buttons.buttonframe

				categories.Container.CanvasSize = categories.Container.CanvasSize + UDim2.new(0,0,0,45)

				return buttons 
			end

			function sections:Toggle(Name, CallBack, Default)
				local toggles = {}
				local toggled = false

				toggles.toggle = lib:Create("ImageButton", {
					Name = Name.."Toggle",
					Active = false,
					BackgroundColor3 = Color3.fromRGB(248, 248, 248),
					BackgroundTransparency = 1.000,
					Position = UDim2.new(0.00415800419, 0, 0.86175108, 0),
					Selectable = false,
					Size = UDim2.new(0, 484, 0, 35),
					Image = "rbxassetid://3570695787",
					ImageColor3 = Color3.fromRGB(65, 65, 65),
					ScaleType = Enum.ScaleType.Slice,
					SliceCenter = Rect.new(100, 100, 100, 100),
					SliceScale = 0.040,
				}) 

				toggles.togglename = lib:Create("TextLabel", {
					BackgroundColor3 = Color3.fromRGB(255, 255, 255),
					BackgroundTransparency = 1.000,
					BorderSizePixel = 0,
					Size = UDim2.new(0, 79, 0, 35),
					Font = Enum.Font.GothamSemibold,
					Position = UDim2.new(0,5,0,0),
					TextXAlignment = Enum.TextXAlignment.Left,
					Text = Name,
					TextColor3 = Color3.fromRGB(255, 255, 255),
					TextSize = 16.000,
					TextScaled = true,
					TextWrapped = true,
				})

				toggles.t1 = lib:Create("ImageLabel", {
					Name = "ToggleFrame",
					BackgroundColor3 = Color3.fromRGB(255, 255, 255),
					BackgroundTransparency = 1.000,
					Position = UDim2.new(1, -58, 0.0857142881, 0),
					Size = UDim2.new(0, 55, 0, 29), -- THE ONE I WANT TO CHANGE
					Image = "rbxassetid://3570695787",
					ImageColor3 = Color3.fromRGB(55, 55, 55),
					ScaleType = Enum.ScaleType.Slice,
					SliceCenter = Rect.new(100, 100, 100, 100),
					SliceScale = 0.040,
				})

				toggles.t2 = lib:Create("ImageLabel", {
					Name = "ToggleFrame",
					BackgroundColor3 = Color3.fromRGB(255, 255, 255),
					BackgroundTransparency = 1.000,
					AnchorPoint = Vector2.new(0.5,0.5),
					Position = UDim2.new(0.5,0, 0.5,0),
					Size = UDim2.new(0, 43, 0, 21),
					Image = "rbxassetid://3570695787",
					ImageColor3 = Color3.fromRGB(45, 45, 45),
					ScaleType = Enum.ScaleType.Slice,
					SliceCenter = Rect.new(100, 100, 100, 100),
					SliceScale = 0.040
				})

				toggles.t3 = lib:Create("ImageLabel", {
					Name = "ToggleFrame",
					BackgroundColor3 = Color3.fromRGB(255, 255, 255),
					BackgroundTransparency = 1.000,
					Position = UDim2.new(0, 0, 0, 0),
					Size = UDim2.new(0, 12, 0, 21),
					Image = "rbxassetid://3570695787",
					ScaleType = Enum.ScaleType.Slice,
					SliceCenter = Rect.new(100, 100, 100, 100),
					SliceScale = 0.040,
				})

				if Default then 
					toggled = true

					TweenService:Create(toggles.t3, TweenInfo.new(0.1), {Position = UDim2.new(0.700523198, 0, 0, 0)}):Play()

					if CallBack then 
						CallBack(toggled)
					end 
				end

				toggles.toggle.Parent = categories.Container
				toggles.togglename.Parent = toggles.toggle
				toggles.t1.Parent = toggles.toggle 
				toggles.t2.Parent = toggles.t1 
				toggles.t3.Parent = toggles.t2

				toggles.toggle.MouseButton1Click:Connect(function()
					toggled = not toggled

					if toggled then 
						TweenService:Create(toggles.t3, TweenInfo.new(0.1), {Position = UDim2.new(0.700523198, 0, 0, 0)}):Play()
					else 
						TweenService:Create(toggles.t3, TweenInfo.new(0.1), {Position = UDim2.new(0, 0, 0, 0)}):Play()
					end

					if CallBack then 
						CallBack(toggled)
					end 
				end)

				categories.Container.CanvasSize = categories.Container.CanvasSize + UDim2.new(0,0,0,40)

				return toggles
			end

			function sections:TextLabel(Text)
				local textlabels = {}

				textlabels.textlabelframe = lib:Create("ImageLabel", {
					Name = "TextLabel",
					BackgroundColor3 = Color3.fromRGB(255, 255, 255),
					BackgroundTransparency = 1.000,
					Position = UDim2.new(0.00415800419, 0, 0.86175108, 0),
					Size = UDim2.new(0, 484, 0, 35),
					Image = "rbxassetid://3570695787",
					ImageColor3 = Color3.fromRGB(65, 65, 65),
					ScaleType = Enum.ScaleType.Slice,
					SliceCenter = Rect.new(100, 100, 100, 100),
					SliceScale = 0.040,
				})

				textlabels.textlabelframe2 = lib:Create("ImageLabel", {
					Name = "TextLabelFrame",
					BackgroundColor3 = Color3.fromRGB(255, 255, 255),
					BackgroundTransparency = 1.000,
					Position = UDim2.new(0.009999929, 0, 0.0857142881, 0),
					Size = UDim2.new(0, 476, 0, 29),
					Image = "rbxassetid://3570695787",
					ImageColor3 = Color3.fromRGB(55, 55, 55),
					ScaleType = Enum.ScaleType.Slice,
					SliceCenter = Rect.new(100, 100, 100, 100),
					SliceScale = 0.04,
				})

				textlabels.textlabel = lib:Create("TextLabel", {          
					BackgroundColor3 = Color3.fromRGB(255, 255, 255),
					BackgroundTransparency = 1.000,
					BorderSizePixel = 0,
					Position = UDim2.new(0, 0, -0.103448279, 0),
					Size = UDim2.new(0, 476, 0, 35),
					Font = Enum.Font.GothamSemibold,
					Text = Text,
					TextColor3 = Color3.fromRGB(255, 255, 255),
					TextSize = 16.000,
					TextWrapped = true,
				})

				categories.Container.CanvasSize = categories.Container.CanvasSize + UDim2.new(0,0,0,40)

				textlabels.textlabelframe.Parent = categories.Container
				textlabels.textlabelframe2.Parent = textlabels.textlabelframe
				textlabels.textlabel.Parent = textlabels.textlabelframe2

				return textlabels
			end

			function sections:Slider(Name, CallBack, Min, Max)
				local sliders = {}
				local slidervalue = 0

				sliders.sliderb = lib:Create("ImageLabel", {
					Name = Name.."Slider",
					BackgroundColor3 = Color3.fromRGB(255, 255, 255),
					BackgroundTransparency = 1.000,
					Position = UDim2.new(0.00415800419, 0, 0.86175108, 0),
					Size = UDim2.new(0, 484, 0, 35),
					Image = "rbxassetid://3570695787",
					ImageColor3 = Color3.fromRGB(65, 65, 65),
					ScaleType = Enum.ScaleType.Slice,
					SliceCenter = Rect.new(100, 100, 100, 100),
					SliceScale = 0.040,
				})

				sliders.slidertext = lib:Create("TextLabel", {
					BackgroundColor3 = Color3.fromRGB(255, 255, 255),
					BackgroundTransparency = 1.000,
					BorderSizePixel = 0,
					Size = UDim2.new(0, 79, 0, 35),
					TextXAlignment = Enum.TextXAlignment.Left,
					Position = UDim2.new(0, 5, 0, 0),
					Font = Enum.Font.GothamSemibold,
					Text = Name,
					TextColor3 = Color3.fromRGB(255, 255, 255),
					TextSize = 16.000,
					TextScaled = true,
					TextWrapped = true,
				})

				sliders.darkoutline = lib:Create("ImageLabel", {
					Name = "SliderDarkOutline",
					BackgroundColor3 = Color3.fromRGB(255, 255, 255),
					BackgroundTransparency = 1.000,
					Position = UDim2.new(1, -303, 0.0857142881, 0),
					Size = UDim2.new(0, 300, 0, 29),
					Image = "rbxassetid://3570695787",
					ImageColor3 = Color3.fromRGB(55, 55, 55),
					ScaleType = Enum.ScaleType.Slice,
					SliceCenter = Rect.new(100, 100, 100, 100),
					SliceScale = 0.040,
				})

				sliders.sliderinnerback = lib:Create("ImageLabel", {
					Name = "SliderInner",
					AnchorPoint = Vector2.new(0,0.5),
					BackgroundColor3 = Color3.fromRGB(255, 255, 255),
					BackgroundTransparency = 1.000,
					Position = UDim2.new(0, 4, 0.5, 0),
					Size = UDim2.new(0, 256, 0, 12),
					Image = "rbxassetid://3570695787",
					ImageColor3 = Color3.fromRGB(45, 45, 45),
					ScaleType = Enum.ScaleType.Slice,
					SliceCenter = Rect.new(100, 100, 100, 100),
					SliceScale = 0.040,
				})

				sliders.slider = lib:Create("TextButton", {
					Name = "SliderButton",
					BackgroundColor3 = Color3.fromRGB(55, 55, 55),
					BackgroundTransparency = 1.000,
					BorderSizePixel = 0,
					Position = UDim2.new(0, 0, 0, 0),
					Size = UDim2.new(1, 0, 0, 12),
					AutoButtonColor = false,
					Font = Enum.Font.SourceSans,
					Text = "",
					TextColor3 = Color3.fromRGB(0, 0, 0),
					TextSize = 14.000,
				})

				sliders.sliderinner = lib:Create("ImageLabel", {
					Name = "SliderInner",
					BackgroundColor3 = Color3.fromRGB(255, 255, 255),
					BackgroundTransparency = 1.000,
					Size = UDim2.new(0, 0, 0, 12),
					Image = "rbxassetid://3570695787",
					ImageColor3 = Color3.fromRGB(24, 116, 255),
					ScaleType = Enum.ScaleType.Slice,
					SliceCenter = Rect.new(100, 100, 100, 100),
					SliceScale = 0.040,
				})

				sliders.slidervalue = lib:Create("TextLabel", {
					Name = "SliderValue",
					BackgroundColor3 = Color3.fromRGB(255, 255, 255),
					BackgroundTransparency = 1.000,
					BorderSizePixel = 0,
					Position = UDim2.new(1, -204, 0, 0),
					Size = UDim2.new(0, 199, 0, 28),
					Font = Enum.Font.Gotham,
					Text = Min,
					TextColor3 = Color3.fromRGB(255, 255, 255),
					TextSize = 16.000,
					TextWrapped = true,
					TextXAlignment = Enum.TextXAlignment.Right,
				})

				sliders.slider.MouseButton1Down:Connect(function()
					local connection = game:GetService("RunService").Heartbeat:Connect(function()
						local Scale = math.clamp(Mouse.X - sliders.slider.AbsolutePosition.X,0,sliders.slider.AbsoluteSize.X) / sliders.slider.AbsoluteSize.X
						slidervalue = math.floor(Min + ((Max-Min) * Scale))
						sliders.slidervalue.Text = tostring(slidervalue)

						if CallBack then
							CallBack(slidervalue)
						end

						TweenService:Create(sliders.sliderinner, TweenInfo.new(0.04), {Size = UDim2.new(Scale, 0, 1, -2)}):Play()
					end)
					UIS.InputEnded:Connect(function(i)
						if i.UserInputType == Enum.UserInputType.MouseButton1 then
							if connection then
								connection:Disconnect()
								connection = nil
							end
						end
					end)
				end)

				categories.Container.CanvasSize = categories.Container.CanvasSize + UDim2.new(0,0,0,40)

				sliders.sliderb.Parent = categories.Container
				sliders.slidertext.Parent = sliders.sliderb
				sliders.darkoutline.Parent = sliders.sliderb
				sliders.sliderinnerback.Parent = sliders.darkoutline
				sliders.slider.Parent = sliders.sliderinnerback
				sliders.sliderinner.Parent = sliders.slider
				sliders.slidervalue.Parent = sliders.darkoutline

				return sliders
			end 

			function sections:TextBox(Name, CallBack, PlaceholderText, AutoName)
				local tb = {}
				local text

				tb.textboxback = lib:Create("ImageLabel", {
					Name = Name.."TextBox",
					BackgroundColor3 = Color3.fromRGB(255, 255, 255),
					BackgroundTransparency = 1.000,
					Position = UDim2.new(0.00214187521, 0, 0.886178553, 0),
					Size = UDim2.new(0, 484, 0, 35),
					Image = "rbxassetid://3570695787",
					ImageColor3 = Color3.fromRGB(65, 65, 65),
					ScaleType = Enum.ScaleType.Slice,
					SliceCenter = Rect.new(100, 100, 100, 100),
					SliceScale = 0.040,
				})

				tb.text = lib:Create("TextLabel", {
					BackgroundColor3 = Color3.fromRGB(255, 255, 255),
					BackgroundTransparency = 1.000,
					BorderSizePixel = 0,
					Size = UDim2.new(0, 79, 0, 35),
					Font = Enum.Font.GothamSemibold,
					Text = Name,
					Position = UDim2.new(0,5,0,0),
					TextXAlignment = Enum.TextXAlignment.Left,
					TextColor3 = Color3.fromRGB(255, 255, 255),
					TextSize = 16.000,
					TextScaled = true,
					TextWrapped = true,
				})

				tb.darkoutline = lib:Create("ImageLabel", {
					Name = "TextBoxFrame",
					BackgroundColor3 = Color3.fromRGB(255, 255, 255),
					BackgroundTransparency = 1.000,
					Position = UDim2.new(1, -354, 0.0857142881, 0),
					Size = UDim2.new(0, 350, 0, 29),
					Image = "rbxassetid://3570695787",
					ImageColor3 = Color3.fromRGB(55, 55, 55),
					ScaleType = Enum.ScaleType.Slice,
					SliceCenter = Rect.new(100, 100, 100, 100),
					SliceScale = 0.040,
				})

				tb.textbox = lib:Create("TextBox", {
					BackgroundColor3 = Color3.fromRGB(255, 255, 255),
					BackgroundTransparency = 1.000,
					BorderSizePixel = 0,
					Size = UDim2.new(0, 350, 0, 29),
					Font = Enum.Font.GothamSemibold,
					PlaceholderColor3 = Color3.fromRGB(178, 178, 178),
					PlaceholderText = PlaceholderText,
					Text = "",
					TextColor3 = Color3.fromRGB(255, 255, 255),
					TextSize = 16.000,
				})

				tb.textbox.FocusLost:Connect(function()
					if not AutoName and CallBack then
						CallBack(tb.textbox.Text)
					elseif AutoName then 
						for i,v in pairs(game.Players:GetChildren()) do
							if string.match(v.Name:lower(),tb.textbox.Text:lower()) then
								tb.textbox.Text = v.Name
							end
						end
						CallBack(tb.textbox.Text)
					end
				end)

				categories.Container.CanvasSize = categories.Container.CanvasSize + UDim2.new(0,0,0,40)

				tb.textboxback.Parent = categories.Container
				tb.text.Parent = tb.textboxback
				tb.darkoutline.Parent = tb.textboxback
				tb.textbox.Parent = tb.darkoutline

				return tb
			end 

			function sections:KeyBind(Name, CallBack, Default)
				local kb = {}
				local kbind

				kb.kbback = lib:Create("ImageLabel", {
					Name = Name.."KeyBind",
					BackgroundColor3 = Color3.fromRGB(255, 255, 255),
					BackgroundTransparency = 1.000,
					Position = UDim2.new(0.00214187521, 0, 0.886178553, 0),
					Size = UDim2.new(0, 484, 0, 35),
					Image = "rbxassetid://3570695787",
					ImageColor3 = Color3.fromRGB(65, 65, 65),
					ScaleType = Enum.ScaleType.Slice,
					SliceCenter = Rect.new(100, 100, 100, 100),
					SliceScale = 0.040,
				})

				kb.kbtext = lib:Create("TextLabel", {
					BackgroundColor3 = Color3.fromRGB(255, 255, 255),
					BackgroundTransparency = 1.000,
					BorderSizePixel = 0,
					Size = UDim2.new(0, 79, 0, 35),
					Font = Enum.Font.GothamSemibold,
					Position = UDim2.new(0,5,0,0),
					TextXAlignment = Enum.TextXAlignment.Left,
					Text = Name,
					TextColor3 = Color3.fromRGB(255, 255, 255),
					TextSize = 16.000,
				})

				kb.darkoutline = lib:Create("ImageLabel", {
					Name = "SelectKeyBindFrame",
					BackgroundColor3 = Color3.fromRGB(255, 255, 255),
					BackgroundTransparency = 1.000,
					Position = UDim2.new(1, -153, 0.0857142881, 0),
					Size = UDim2.new(0, 150, 0, 29),
					Image = "rbxassetid://3570695787",
					ImageColor3 = Color3.fromRGB(55, 55, 55),
					ScaleType = Enum.ScaleType.Slice,
					SliceCenter = Rect.new(100, 100, 100, 100),
					SliceScale = 0.040,
				})

				kb.kb = lib:Create("TextButton", {
					BackgroundColor3 = Color3.fromRGB(255, 255, 255),
					BackgroundTransparency = 1.000,
					BorderColor3 = Color3.fromRGB(27, 42, 53),
					BorderSizePixel = 0,
					AnchorPoint = Vector2.new(0,0.5),
					Position = UDim2.new(0, 0, 0.5, 0),
					Size = UDim2.new(1, 0, 0.758620679, 0),
					Font = Enum.Font.Gotham,
					Text = "None",
					TextColor3 = Color3.fromRGB(255, 255, 255),
					TextScaled = true,
					TextSize = 16.000,
					TextWrapped = true,
				})

				local c

				if Default then 
					kbind = Default
					kb.kb.Text = kbind.Name
				end
				local debounce = false
				kb.kb.MouseButton1Click:Connect(function()
					if debounce then 
						return
					end
					debounce = true
					kb.kb.Text = "..."
					c = UIS.InputBegan:Connect(function(i)
						if i.UserInputType.Name == "Keyboard" and i.KeyCode ~= Enum.KeyCode.Backspace then
							kb.kb.Text = i.KeyCode.Name
							kbind = i.KeyCode
							debounce = false
							if c then
								c:Disconnect()
								c = nil
							end
						elseif i.KeyCode == Enum.KeyCode.Backspace then
							kb.kb.Text = "None"
							kbind = nil
							if c then
								c:Disconnect()
								c = nil
								debounce = false
							end
						end
					end)
				end)

				game:GetService("UserInputService").InputBegan:Connect(function(i, GPE)
					if kbind and i.KeyCode == kbind and not GPE then
						if CallBack then
							CallBack(i.KeyCode)
						end
					end
				end)

				categories.Container.CanvasSize = categories.Container.CanvasSize + UDim2.new(0,0,0,40)

				kb.kbback.Parent = categories.Container
				kb.kbtext.Parent = kb.kbback
				kb.darkoutline.Parent = kb.kbback
				kb.kb.Parent = kb.darkoutline

				return kb
			end

			function sections:DropDown(Name, CallBack, Options, Playerlist)
				local dd = {}
				local toggled = false
				local dvalue 
				local optionstable = {}

				if Options and Options.options and not Playerlist then
					optionstable = Options.options
				elseif Options and Options.options and Playerlist then
					optionstable = {}
					for g,f in pairs(Options.options) do
                        if i==1 then 
                            i=5
                        end
						table.insert(optionstable, f)
					end
					local list = game:GetService("Players"):GetChildren()
					for i,v in pairs(list) do
						if v:IsA("Player") then
							table.insert(optionstable, v.Name);
						end
					end
				elseif Options and not Options.options and Playerlist then
					optionstable = {}
					local list = game:GetService("Players"):GetChildren()
					for i,v in pairs(list) do
						if v:IsA("Player")then
							table.insert(optionstable, v.Name);
						end
					end                                 
				end

				dd.ddback = lib:Create("ImageLabel", {
					Name = Name.."DropDown",
					BackgroundColor3 = Color3.fromRGB(255, 255, 255),
					BackgroundTransparency = 1.000,
					Position = UDim2.new(0.00415800419, 0, 0.86175108, 0),
					Size = UDim2.new(0, 484, 0, 35),
					Image = "rbxassetid://3570695787",
					ImageColor3 = Color3.fromRGB(65, 65, 65),
					ScaleType = Enum.ScaleType.Slice,
					SliceCenter = Rect.new(100, 100, 100, 100),
					SliceScale = 0.040,
				})

				dd.dddarkoutline = lib:Create("ImageLabel", {
					Name = "DropDownButtonFrame",
					BackgroundColor3 = Color3.fromRGB(255, 255, 255),
					BackgroundTransparency = 1.000,
					Position = UDim2.new(0.009999929, 0, 0.0857142881, 0),
					Size = UDim2.new(0, 476, 0, 29),
					Image = "rbxassetid://3570695787",
					ImageColor3 = Color3.fromRGB(55, 55, 55),
					ScaleType = Enum.ScaleType.Slice,
					SliceCenter = Rect.new(100, 100, 100, 100),
					SliceScale = 0.040,
				})

				dd.ddbutton = lib:Create("TextBox", {
					Name = "DropDownButton",
					BackgroundColor3 = Color3.fromRGB(255, 255, 255),
					BackgroundTransparency = 1.000,
					BorderSizePixel = 0,
					Size = UDim2.new(0, 350, 0, 29),
					Font = Enum.Font.GothamSemibold,
					PlaceholderColor3 = Color3.fromRGB(178, 178, 178),
					PlaceholderText = "Search...",
					Position = UDim2.new(0.5,0,0.5,0),
					Text = tostring(optionstable[1]),
					TextColor3 = Color3.fromRGB(255, 255, 255),
					TextSize = 16.000,
					AnchorPoint = Vector2.new(0.5,0.5)
				})

				dd.ddmp = lib:Create("TextButton", {
					Name = "AnotherDopDownButton",
					BackgroundColor3 = Color3.fromRGB(55, 55, 55),
					BackgroundTransparency = 1.000,
					BorderSizePixel = 0,
					Position = UDim2.new(0.938519001, 0, 0, 0),
					Size = UDim2.new(0, 28, 0, 29),
					AutoButtonColor = false,
					Font = Enum.Font.Gotham,
					Text = "+",
					TextColor3 = Color3.fromRGB(255, 255, 255),
					TextSize = 20.000,
				})

				dd.dd = lib:Create("ImageLabel", {
					Name = "DropDown",
					BackgroundColor3 = Color3.fromRGB(255, 255, 255),
					BackgroundTransparency = 1.000,
					Position = UDim2.new(-0.0105477981, 0, 1.37899256, 0),
					Size = UDim2.new(0, 484, 0, 66),
					ZIndex = 5,
					Visible = false,
					Image = "rbxassetid://3570695787",
					ImageColor3 = Color3.fromRGB(65, 65, 65),
					ScaleType = Enum.ScaleType.Slice,
					SliceCenter = Rect.new(100, 100, 100, 100),
					SliceScale = 0.040,
				})

				dd.ddscrolling = lib:Create("ScrollingFrame", {
					Name = "SectionConatiner",
					Active = true,
					BackgroundColor3 = Color3.fromRGB(255, 255, 255),
					BackgroundTransparency = 1.000,
					BorderSizePixel = 0,
					Position = UDim2.new(0.00206611562, 0, 0.0606060624, 0),
					Size = UDim2.new(0, 478, 0, 62),
					ZIndex = 5,
					CanvasSize = UDim2.new(0, 0, 0, 0),
					ScrollBarThickness = 7,
				})

				dd.ddscrollinglayout = lib:Create("UIListLayout", {
					SortOrder = Enum.SortOrder.LayoutOrder,
					Padding = UDim.new(0, 5),
				})

				local function refreshlist()
					if Playerlist then 
						optionstable = {}
						local list = game.Players:GetChildren()
						for i,v in pairs(list) do
							if v:IsA("Player") then
								table.insert(optionstable, v.Name)
							end
						end
					end

					for i,v in next, dd.ddscrolling:GetChildren() do
						if v:IsA("ImageLabel") then
							v:Destroy()
						end
					end

					for i,v in next, optionstable do
						local buttonback = lib:Create("ImageLabel", {
							Name = string.lower(v),
							BackgroundColor3 = Color3.fromRGB(255, 255, 255),
							BackgroundTransparency = 1.000,
							Position = UDim2.new(0.009999929, 0, 0.0857142881, 0),
							Size = UDim2.new(0, 476, 0, 29),
							ZIndex = 5,
							Image = "rbxassetid://3570695787",
							ImageColor3 = Color3.fromRGB(55, 55, 55),
							ScaleType = Enum.ScaleType.Slice,
							SliceCenter = Rect.new(100, 100, 100, 100),
							SliceScale = 0.040,
						})

						local button = lib:Create("TextButton", {
							Name = "Button",
							BackgroundColor3 = Color3.fromRGB(55, 55, 55),
							BackgroundTransparency = 1.000,
							BorderSizePixel = 0,
							Position = UDim2.new(0, 0, 0, 0),
							Size = UDim2.new(0, 475, 0, 29),
							ZIndex = 5,
							AutoButtonColor = false,
							Font = Enum.Font.GothamSemibold,
							Text = v,
							TextColor3 = Color3.fromRGB(255, 255, 255),
							TextSize = 16.000,
						})

						buttonback.Parent = dd.ddscrolling
						button.Parent = buttonback

						button.MouseButton1Click:Connect(function()
							if toggled then

								toggled = not toggled
								dd.ddbutton.Text = v
								dvalue = v

								if toggled then 
									dd.ddmp.Text = "-"
									dd.dd.Visible = true
									TweenService:Create(dd.ddscrolling, TweenInfo.new(0.1), {CanvasSize = UDim2.new(0, 0, 0, dd.ddscrolling["UIListLayout"].AbsoluteContentSize.Y) + UDim2.new(0,0,0,5)}):Play()
								else 
									dd.ddmp.Text = "+"
									dd.dd.Visible = false
									TweenService:Create(dd.ddscrolling, TweenInfo.new(0.1), {CanvasSize = UDim2.new(0, 0, 0, dd.ddscrolling["UIListLayout"].AbsoluteContentSize.Y) + UDim2.new(0,0,0,5)}):Play()
								end

								if CallBack then
									CallBack(dvalue)
								end
							end
						end)
					end
				end

				refreshlist()

				dd.ddbutton.Text = optionstable and optionstable[1] or "None"

				dd.ddbutton.Focused:Connect(function()
					toggled = true
					if Options and Options.CallBack then
						optionstable = Options.CallBack()
					end
					refreshlist()
					dd.ddmp.Text = "-"
					dd.dd.Visible = true
					TweenService:Create(dd.ddscrolling, TweenInfo.new(0.1), {CanvasSize = UDim2.new(0, 0, 0, dd.ddscrolling["UIListLayout"].AbsoluteContentSize.Y) + UDim2.new(0,0,0,5)}):Play()
				end)

				dd.ddmp.MouseButton1Click:Connect(function()
					toggled = not toggled
					if Options and Options.CallBack then
						optionstable = Options.CallBack()
					end
					if toggled then 
						refreshlist()
						dd.ddmp.Text = "-"
						dd.dd.Visible = true
						TweenService:Create(dd.ddscrolling, TweenInfo.new(0.1), {CanvasSize = UDim2.new(0, 0, 0, dd.ddscrolling["UIListLayout"].AbsoluteContentSize.Y) + UDim2.new(0,0,0,5)}):Play()
					else 
						refreshlist()
						dd.ddmp.Text = "+"
						dd.dd.Visible = false
						TweenService:Create(dd.ddscrolling, TweenInfo.new(0.1), {CanvasSize = UDim2.new(0, 0, 0, dd.ddscrolling["UIListLayout"].AbsoluteContentSize.Y) + UDim2.new(0,0,0,5)}):Play()
					end
				end)

				dd.ddbutton:GetPropertyChangedSignal("Text"):Connect(function()
					local tosearch,count = dd.ddbutton.Text,0
					for i,v in next, dd.ddscrolling:GetChildren() do 
						if v:IsA("ImageLabel") then
							if v.Name:find(tosearch:lower()) then
								v.Visible = true 
								count=count+1
							else 
								v.Visible = false
							end
						end
					end
					TweenService:Create(dd.ddscrolling, TweenInfo.new(0.1), {CanvasSize = UDim2.new(0, 0, 0, count*34)}):Play()
				end)

				dd.ddback.Parent = categories.Container
				dd.dddarkoutline.Parent = dd.ddback
				dd.ddbutton.Parent = dd.dddarkoutline
				dd.ddmp.Parent = dd.dddarkoutline
				dd.dd.Parent = dd.dddarkoutline
				dd.ddscrolling.Parent = dd.dd
				dd.ddscrollinglayout.Parent = dd.ddscrolling

				categories.Container.CanvasSize = categories.Container.CanvasSize + UDim2.new(0,0,0,40)

				return dd   
			end 

			function sections:ColorPicker(Name, CallBack, Default)
				local colorstuff = {}
				local colorpickeropend = false
				local colorvalue

				colorstuff.colorpickerb = lib:Create("ImageButton", {
					BackgroundColor3 = Color3.fromRGB(55,55,55),
					BackgroundTransparency = 1.000,
					BorderColor3 = Color3.fromRGB(27, 42, 53),
					Position = UDim2.new(0, 11, 0, 125),
					Size = UDim2.new(0, 484, 0, 35),
					Image = "rbxassetid://3570695787",
					ImageColor3 = Color3.fromRGB(65, 65, 65),
					ScaleType = Enum.ScaleType.Slice,
					SliceCenter = Rect.new(100, 100, 100, 100),
					SliceScale = 0.040,
				})

				colorstuff.colorpickerbgray = lib:Create("ImageLabel", {
					Name = "ColorpickDarkframe",
					BackgroundColor3 = Color3.fromRGB(255, 255, 255),
					BackgroundTransparency = 1.000,
					Position = UDim2.new(0.309917361, 0, 0.0857142881, 0),
					Size = UDim2.new(0, 330, 0, 29),
					Image = "rbxassetid://3570695787",
					ImageColor3 = Color3.fromRGB(55, 55, 55),
					ScaleType = Enum.ScaleType.Slice,
					SliceCenter = Rect.new(100, 100, 100, 100),
					SliceScale = 0.040,
				})

				colorstuff.colorpickertext = lib:Create("TextLabel", {
					BackgroundColor3 = Color3.fromRGB(255, 255, 255),
					BackgroundTransparency = 1.000,
					BorderSizePixel = 0,
					Position = UDim2.new(0, 4, 0, 2),
					Size = UDim2.new(0, 200, 0, 30),
					Font = Enum.Font.GothamSemibold,
					Text = Name,
					TextColor3 = Color3.fromRGB(255, 255, 255),
					TextSize = 16.000,
					TextXAlignment = Enum.TextXAlignment.Left,
				})

				colorstuff.colorpickerbutton = lib:Create("ImageLabel", {
					Active = true,
					BackgroundColor3 = Color3.fromRGB(248, 248, 248),
					BackgroundTransparency = 1.000,
					BorderSizePixel = 0,
					Position = UDim2.new(0.0185848344, 0, 0.137931034, 0),
					Selectable = true,
					Size = UDim2.new(0, 318, 0, 21),
					Image = "rbxassetid://3570695787",
					ImageColor3 = Color3.fromRGB(255, 0, 4),
					ScaleType = Enum.ScaleType.Slice,
					SliceCenter = Rect.new(100, 100, 100, 100),
					SliceScale = 0.040,
				})

				colorstuff.colorpickerframeb = lib:Create("Frame", {
					Name = "colorframe",
					BackgroundColor3 = Color3.fromRGB(46, 46, 54),
					BorderSizePixel = 0,
					Position = UDim2.new(0, 560, 0, 0),
					Size = UDim2.new(0, 0, 0, 180),
					BackgroundTransparency = 1,
				})
				colorstuff.colorpickerframeb.ClipsDescendants = true

				colorstuff.colorpickerframe = lib:Create("Frame", {
					BackgroundColor3 = Color3.fromRGB(46, 46, 54),
					BorderSizePixel = 0,
					Position = UDim2.new(0, 0, 0, 0),
					Size = UDim2.new(0, 190, 0, 180),                            
				})
				colorstuff.colorpickerframe.ClipsDescendants = true

				colorstuff.rback = lib:Create("ImageLabel", {
					Active = true,
					AnchorPoint = Vector2.new(0.5, 0.5),
					BackgroundColor3 = Color3.fromRGB(255, 255, 255),
					BackgroundTransparency = 1.000,
					Position = UDim2.new(0, 35, 0, 165),
					Selectable = true,
					Size = UDim2.new(0, 50, 0, 20),
					ZIndex = 2,
					Image = "rbxassetid://3570695787",
					ImageColor3 = Color3.fromRGB(40,40,40),
					ScaleType = Enum.ScaleType.Slice,
					SliceCenter = Rect.new(100, 100, 100, 100),
					SliceScale = 0.040,
				})

				colorstuff.rvalue = lib:Create("TextLabel", {
					BackgroundColor3 = Color3.fromRGB(255, 255, 255),
					BackgroundTransparency = 1.000,
					Position = UDim2.new(0, 18, 0, 3),
					Size = UDim2.new(0, 25, 0, 15),
					ZIndex = 2,
					Font = Enum.Font.GothamBold,
					Text = "255",
					TextColor3 = Color3.fromRGB(255, 255, 255),
					TextSize = 11.000,
				})

				colorstuff.rtext = lib:Create("TextLabel", {
					BackgroundColor3 = Color3.fromRGB(255, 255, 255),
					BackgroundTransparency = 1.000,
					Position = UDim2.new(0, 4, 0, 3),
					Size = UDim2.new(0, 15, 0, 15),
					ZIndex = 2,
					Font = Enum.Font.GothamBold,
					Text = "R:",
					TextColor3 = Color3.fromRGB(255, 255, 255),
					TextSize = 14.000,
				})

				colorstuff.gback = lib:Create("ImageLabel", {
					Active = true,
					AnchorPoint = Vector2.new(0.5, 0.5),
					BackgroundColor3 = Color3.fromRGB(255, 255, 255),
					BackgroundTransparency = 1.000,
					BorderSizePixel = 0,
					Position = UDim2.new(0.5, 0, 0, 165),
					Selectable = true,
					Size = UDim2.new(0, 50, 0, 20),
					ZIndex = 2,
					Image = "rbxassetid://3570695787",
					ImageColor3 = Color3.fromRGB(40,40,40),
					ScaleType = Enum.ScaleType.Slice,
					SliceCenter = Rect.new(100, 100, 100, 100),
					SliceScale = 0.040,
				})

				colorstuff.gvalue = lib:Create("TextLabel", {
					BackgroundColor3 = Color3.fromRGB(255, 255, 255),
					BackgroundTransparency = 1.000,
					Position = UDim2.new(0, 18, 0, 3),
					Size = UDim2.new(0, 25, 0, 15),
					ZIndex = 2,
					Font = Enum.Font.GothamBold,
					Text = "255",
					TextColor3 = Color3.fromRGB(255, 255, 255),
					TextSize = 11.000,
				})

				colorstuff.gtext = lib:Create("TextLabel", {
					BackgroundColor3 = Color3.fromRGB(255, 255, 255),
					BackgroundTransparency = 1.000,
					Position = UDim2.new(0, 4, 0, 3),
					Size = UDim2.new(0, 15, 0, 15),
					ZIndex = 2,
					Font = Enum.Font.GothamBold,
					Text = "G:",
					TextColor3 = Color3.fromRGB(255, 255, 255),
					TextSize = 14.000,
					TextWrapped = true,
				})

				colorstuff.bback = lib:Create("ImageLabel", {
					Active = true,
					AnchorPoint = Vector2.new(0.5, 0.5),
					BackgroundColor3 = Color3.fromRGB(255, 255, 255),
					BackgroundTransparency = 1.000,
					Position = UDim2.new(0, 155, 0, 165),
					Selectable = true,
					Size = UDim2.new(0, 50, 0, 20),
					Image = "rbxassetid://3570695787",
					ImageColor3 = Color3.fromRGB(40,40,40),
					ScaleType = Enum.ScaleType.Slice,
					SliceCenter = Rect.new(100, 100, 100, 100),
					SliceScale = 0.040,
				})

				colorstuff.bvalue = lib:Create("TextLabel", {
					BackgroundColor3 = Color3.fromRGB(255, 255, 255),
					BackgroundTransparency = 1.000,
					Position = UDim2.new(0, 18, 0, 3),
					Size = UDim2.new(0, 25, 0, 15),
					ZIndex = 2,
					Font = Enum.Font.GothamBold,
					Text = "255",
					TextColor3 = Color3.fromRGB(255, 255, 255),
					TextSize = 11.000,
				})

				colorstuff.btext = lib:Create("TextLabel", {
					BackgroundColor3 = Color3.fromRGB(255, 255, 255),
					BackgroundTransparency = 1.000,
					Position = UDim2.new(0, 4, 0, 3),
					Size = UDim2.new(0, 15, 0, 15),
					ZIndex = 2,
					Font = Enum.Font.GothamBold,
					Text = "B:",
					TextColor3 = Color3.fromRGB(255, 255, 255),
					TextSize = 14.000,
				})

				colorstuff.sback = lib:Create("ImageLabel", {
					BackgroundColor3 = Color3.fromRGB(46, 46, 54),
					BackgroundTransparency = 1.000,
					BorderSizePixel = 0,
					Position = UDim2.new(0.0469999984, 0, 0, 10),
					Size = UDim2.new(0, 140, 0, 140),
					ZIndex = 2,
					Image = "rbxassetid://4695575676",
					ImageColor3 = Color3.fromRGB(46, 46, 54),
					ScaleType = Enum.ScaleType.Slice,
					SliceCenter = Rect.new(128, 128, 128, 128),
					SliceScale = 0.040,
				})

				colorstuff.sat = lib:Create("ImageButton", {
					BackgroundColor3 = Color3.fromRGB(255, 255, 255),
					BorderColor3 = Color3.fromRGB(221, 221, 221),
					BorderSizePixel = 0,
					Size = UDim2.new(0, 140, 0, 140),
					AutoButtonColor = false,
					Image = "http://www.roblox.com/asset/?id=5113592272",
					ImageColor3 = Color3.fromRGB(255, 0, 0),
				})

				colorstuff.light = lib:Create("ImageLabel", {
					BackgroundTransparency = 1.000,
					BorderSizePixel = 0,
					Size = UDim2.new(1, 0, 1, 0),
					Image = "http://www.roblox.com/asset/?id=5113600420",
				})

				colorstuff.ring = lib:Create("ImageLabel", {
					AnchorPoint = Vector2.new(0.5, 0.5),
					BackgroundColor3 = Color3.fromRGB(255, 255, 255),
					BackgroundTransparency = 1.000,
					Position = UDim2.new(0, 140, 0, 0),
					Size = UDim2.new(0, 10, 0, 10),
					SizeConstraint = Enum.SizeConstraint.RelativeYY,
					ZIndex = 5,
					Image = "rbxassetid://244221613",
					ImageColor3 = Color3.fromRGB(0, 0, 0),
				})

				colorstuff.rainbowback = lib:Create("ImageLabel", {
					BackgroundColor3 = Color3.fromRGB(46, 46, 54),
					BackgroundTransparency = 1.000,
					BorderSizePixel = 0,
					Position = UDim2.new(0, 160, 0, 10),
					Size = UDim2.new(0, 20, 0, 140),
					ZIndex = 2,
					Image = "rbxassetid://4695575676",
					ImageColor3 = Color3.fromRGB(46, 46, 54),
					ScaleType = Enum.ScaleType.Slice,
					SliceCenter = Rect.new(128, 128, 128, 128),
					SliceScale = 0.040,
				})

				colorstuff.rainbow = lib:Create("ImageButton", {
					BackgroundColor3 = Color3.fromRGB(255, 255, 255),
					BackgroundTransparency = 1.000,
					BorderSizePixel = 0,
					Size = UDim2.new(0, 20, 0, 140),
					Image = "http://www.roblox.com/asset/?id=5118428654",
				})

				colorstuff.rainbowlocation = lib:Create("Frame", {
					BackgroundColor3 = Color3.fromRGB(23, 23, 23),
					BorderSizePixel = 0,
					Size = UDim2.new(0, 20, 0, 2),
				})

				colorstuff.colorpickerframeb.Parent = main.MainBody
				colorstuff.colorpickerframe.Parent = colorstuff.colorpickerframeb
				colorstuff.rback.Parent = colorstuff.colorpickerframe
				colorstuff.rtext.Parent = colorstuff.rback
				colorstuff.rvalue.Parent = colorstuff.rback
				colorstuff.gback.Parent = colorstuff.colorpickerframe
				colorstuff.gtext.Parent = colorstuff.gback
				colorstuff.gvalue.Parent = colorstuff.gback
				colorstuff.bback.Parent = colorstuff.colorpickerframe
				colorstuff.btext.Parent = colorstuff.bback
				colorstuff.bvalue.Parent = colorstuff.bback
				colorstuff.sback.Parent = colorstuff.colorpickerframe
				colorstuff.sat.Parent = colorstuff.sback
				colorstuff.light.Parent = colorstuff.sat
				colorstuff.ring.Parent = colorstuff.sat
				colorstuff.rainbowback.Parent = colorstuff.colorpickerframe
				colorstuff.rainbow.Parent = colorstuff.rainbowback
				colorstuff.rainbowlocation.Parent = colorstuff.rainbow

				categories.Container.CanvasSize = categories.Container.CanvasSize + UDim2.new(0,0,0,40)

				colorstuff.colorpickerb.Parent = categories.Container
				colorstuff.colorpickerbgray.Parent = colorstuff.colorpickerb
				colorstuff.colorpickertext.Parent = colorstuff.colorpickerb
				colorstuff.colorpickerbutton.Parent = colorstuff.colorpickerbgray

				colorstuff.colorpickerb.MouseButton1Click:Connect(function()
					colorpickeropend = not colorpickeropend

					for i,v in pairs(main.MainBody:GetChildren()) do
						if v.Name == "colorframe" then
							game:GetService("TweenService"):Create(v, TweenInfo.new(0.3), {Size = UDim2.new(0, 0, 0, 205)}):Play()
						end
					end

					if colorpickeropend then 
						game:GetService("TweenService"):Create(colorstuff.colorpickerframeb, TweenInfo.new(0.3), {Size = UDim2.new(0, 190, 0, 205)}):Play()
					end
				end)


				local colorbase = Color3.new(1,0,0)
				colorvalue = colorbase
				local Saturation = 1
				local Darkness = 0
				local colourPickColour = colorbase

				local function UpdateColorPicker()

					colourPickColour = colorbase

					if Darkness == 1 then
						colourPickColour = Color3.new(0,0,0)
						return
					end

					if Saturation < 1 then
						local r = math.clamp(1 + (colourPickColour.r - 1) * Saturation, 0, 1)
						local g = math.clamp(1 + (colourPickColour.g - 1) * Saturation, 0, 1)
						local b = math.clamp(1 + (colourPickColour.b - 1) * Saturation, 0, 1)
						colourPickColour = Color3.new( r, g, b )
					end

					if Darkness > 0 then 
						local r = math.clamp(colourPickColour.r * (1 - Darkness ), 0, 1)
						local g = math.clamp(colourPickColour.g * (1 - Darkness ), 0, 1)
						local b = math.clamp(colourPickColour.b * (1 - Darkness ), 0, 1)
						colourPickColour = Color3.new(r,g,b)
					end

					colorstuff.rvalue.Text = tostring(math.floor(colourPickColour.r * 255))
					colorstuff.gvalue.Text = tostring(math.floor(colourPickColour.g * 255))
					colorstuff.bvalue.Text = tostring(math.floor(colourPickColour.b * 255))

					local rv = tonumber(colorstuff.rvalue.Text)
					local gv = tonumber(colorstuff.gvalue.Text)
					local bv = tonumber(colorstuff.bvalue.Text)

					colorvalue = Color3.new(rv,gv,bv)

					colorstuff.colorpickerbutton.ImageColor3 = colourPickColour

					if CallBack then
						CallBack(colorvalue)
					end
				end

				if Default then
					local r,g,b = math.floor(Default.r * 255),math.floor(Default.g * 255),math.floor(Default.b * 255)
					colorbase = Color3.fromRGB(r,g,b)
					colorstuff.sat.ImageColor3 = colorbase
					wait(.2)
					UpdateColorPicker()
				end

				local function setPickerColor(y)
					local rY = y - colorstuff.rainbow.AbsolutePosition.Y;
					local cY = math.clamp(rY, 0, colorstuff.rainbow.AbsoluteSize.Y - colorstuff.rainbowlocation.AbsoluteSize.Y);
					local offset = (y - colorstuff.rainbow.AbsolutePosition.Y) - colorstuff.rainbowlocation.AbsoluteSize.Y
					local scale = offset / colorstuff.rainbow.AbsoluteSize.Y
					TweenService:Create(colorstuff.rainbowlocation, TweenInfo.new(0.1), {Position = UDim2.new(0, 0, 0, cY)}):Play()
					local color = Color3.fromHSV(math.clamp(scale, 0, 1), 1, 1)
					local r,g,b = math.floor(color.r * 255), math.floor(color.g * 255), math.floor(color.b * 255)
					colorbase = Color3.fromRGB(r,g,b)

					colorstuff.sat.ImageColor3 = colorbase
					UpdateColorPicker()
				end

				local function setPickerLight(x,y)
					Saturation = x / 140
					Darkness = y / 140

					TweenService:Create(colorstuff.ring, TweenInfo.new(0.1), {Position = UDim2.new(0, x, 0, y)}):Play()

					UpdateColorPicker()
				end

				local rc
				local cc

				UIS.InputEnded:Connect(function(Mouse)
					if Mouse.UserInputType == Enum.UserInputType.MouseButton1 then
						if(cc) then
							cc:Disconnect()
							cc = nil
						end
						if(rc) then 
							rc:Disconnect()
							rc = nil
						end
					end
				end)

				local rainbow = false

				colorstuff.rainbow.MouseButton1Down:Connect(function()
					if not rainbow then 
						rc = game:GetService("RunService").Heartbeat:Connect(function()
							setPickerColor(Mouse.Y)
						end)
					end
				end)

				colorstuff.sat.MouseButton1Down:Connect(function()
					cc = game:GetService("RunService").Heartbeat:Connect(function()
						local v = game:GetService("GuiService"):GetGuiInset()
						local y = math.clamp(Mouse.Y - colorstuff.sat.AbsolutePosition.Y - v.y + 34, 0, 140 )
						local x = math.clamp(Mouse.X - colorstuff.sat.AbsolutePosition.X - v.x, 0, 140 )
						setPickerLight(x,y)
					end)
				end)


				return colorstuff
			end

			sections.sectionname.Parent = categories.Container

			return sections
		end

		main.CategoryContainer.CanvasSize = main.CategoryContainer.CanvasSize + UDim2.new(0,0,0,53)

		categories.Button.Parent = main.CategoryContainer
		categories.Container.Parent = main.MainBody
		categories.ContainerLayout.Parent = categories.Container
		categories.ContainerPadding.Parent = categories.Container

		firstC = false

		return categories
	end

	main.Close.MouseButton1Click:Connect(function()
		game.CoreGui.Ancestor:Destroy()
	end)

	main.ScreenGui.Parent = CoreGui
	main.MainBody.Parent = main.ScreenGui
	main.TopBar.Parent = main.MainBody
	main.TopBarGradient.Parent = main.TopBar
	main.LogoTextFolder.Parent = main.TopBar
	main.LogoText1.Parent = main.LogoTextFolder
	main.LogoText2.Parent = main.LogoTextFolder
	main.LogoText3.Parent = main.LogoTextFolder
	main.LogoText4.Parent = main.LogoTextFolder
	main.LogoText5.Parent = main.LogoTextFolder
	main.CloseFrame.Parent = main.TopBar
	main.Close.Parent = main.CloseFrame
	main.CategoryContainer.Parent = main.MainBody
	main.CategoryPadding.Parent = main.CategoryContainer
	main.CategoryLayout.Parent = main.CategoryContainer

	return main
end

return lib