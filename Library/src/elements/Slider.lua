local Slider = {}
Slider.__index = Slider

function Slider.New(Library, Body)
	local Self = setmetatable({}, Slider)

	Self.Library = Library
	Self.Body = Body
	Self.BodyCollection = {}

	return Self
end

function Slider:Init(Data)
	local Library = self.Library
	assert(Library, "No library found for '" .. (Data.Title or "Slider") .. ", ended thread")

	local SignalHandler = Library.SignalHandler
	local AnimHandler = Library.AnimationHandler

	local Slider = Instance.new("Frame")
	local Displays = Instance.new("Frame")
	local IconHolder = Instance.new("Frame")
	local Icon = Instance.new("ImageLabel")
	local UICorner = Instance.new("UICorner")
	local Text = Instance.new("Frame")
	local UIListLayout = Instance.new("UIListLayout")
	local Display = Instance.new("TextLabel")
	local Description = Instance.new("TextLabel")
	local UIListLayout_2 = Instance.new("UIListLayout")
	local SliderHolder = Instance.new("Frame")
	local UIListLayout_3 = Instance.new("UIListLayout")
	local SliderBar = Instance.new("TextButton")
	local UICorner_2 = Instance.new("UICorner")
	local ProgressBar = Instance.new("Frame")
	local UICorner_3 = Instance.new("UICorner")
	local Dot = Instance.new("Frame")
	local UICorner_4 = Instance.new("UICorner")
	local Value = Instance.new("TextLabel")
	local UICorner_5 = Instance.new("UICorner")
	local UIPadding = Instance.new("UIPadding")
	local UIListLayout_4 = Instance.new("UIListLayout")

	Slider.Name = "Slider"
	Slider.Parent = self.Body
	Slider.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
	Slider.BackgroundTransparency = 0.400
	Slider.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Slider.BorderSizePixel = 0
	Slider.Position = UDim2.new(0.0259433966, 0, 0, 0)
	Slider.Size = UDim2.new(0.930000007, 0, 0, 0)
	Slider.AutomaticSize = Enum.AutomaticSize.Y

	Displays.Name = "Displays"
	Displays.Parent = Slider
	Displays.AnchorPoint = Vector2.new(0, 0.5)
	Displays.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Displays.BackgroundTransparency = 1.000
	Displays.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Displays.BorderSizePixel = 0
	Displays.Position = UDim2.new(0.0125523014, -6, 0.5, 0)
	Displays.Size = UDim2.new(0.763000011, 0, 0, 0)
	Displays.AutomaticSize = Enum.AutomaticSize.Y

	IconHolder.Name = "IconHolder"
	IconHolder.Parent = Displays
	IconHolder.AnchorPoint = Vector2.new(0, 0.5)
	IconHolder.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
	IconHolder.BorderColor3 = Color3.fromRGB(0, 0, 0)
	IconHolder.BorderSizePixel = 0
	IconHolder.Position = UDim2.new(0, 0, 0.5, 0)
	IconHolder.Size = UDim2.new(0, 50, 0, 50)
	IconHolder.Visible = false

	local Icon2 = Library:GetIcon(Data.Icon) or ""

	Icon.Name = "Icon"
	Icon.Parent = IconHolder
	Icon.AnchorPoint = Vector2.new(0.5, 0.5)
	Icon.BackgroundTransparency = 1
	Icon.Position = UDim2.new(0.5, 0, 0.5, 0)
	Icon.Size = UDim2.new(0, 27, 0, 27)
	Icon.Image = Icon2.Image
	Icon.ImageTransparency = 0.3
	Icon.ImageRectOffset = Icon2.ImageRectPosition
	Icon.ImageRectSize = Icon2.ImageRectSize

	SignalHandler:HandleNil(Icon, IconHolder)

	UICorner.CornerRadius = UDim.new(0, 15)
	UICorner.Parent = IconHolder

	Text.Name = "Text"
	Text.Parent = Displays
	Text.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Text.BackgroundTransparency = 1.000
	Text.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Text.BorderSizePixel = 0
	Text.LayoutOrder = 2
	Text.Position = UDim2.new(0.178094149, -6, 0, 0)
	Text.Size = UDim2.new(0.279671192, 0, 1, 0)
	Text.AutomaticSize = Enum.AutomaticSize.X

	UIListLayout.Parent = Text
	UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center
	UIListLayout.Padding = UDim.new(0, 5)

	Display.Name = "Display"
	Display.Parent = Text
	Display.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Display.BackgroundTransparency = 1.000
	Display.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Display.BorderSizePixel = 0
	Display.Position = UDim2.new(0, 0, 0.363013685, 0)
	Display.Size = UDim2.new(1, 0, 0, 17)
	Display.FontFace = Library.Font
	Display.Text = Data.Title
	Display.TextColor3 = Color3.fromRGB(220, 220, 220)
	Display.TextSize = 18.000
	Display.TextXAlignment = Enum.TextXAlignment.Left
	Display.AutomaticSize = Enum.AutomaticSize.Y

	SignalHandler:HandleNil(Display)

	Description.Name = "Description"
	Description.Parent = Text
	Description.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Description.BackgroundTransparency = 1.000
	Description.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Description.BorderSizePixel = 0
	Description.Position = UDim2.new(0, 0, 0.5, 0)
	Description.Size = UDim2.new(1, 0, 0, 0)
	Description.Font = Enum.Font.GothamMedium
	Description.Text = Data.Description
	Description.TextColor3 = Color3.fromRGB(180, 180, 180)
	Description.TextSize = 16.000
	Description.TextWrapped = true
	Description.TextXAlignment = Enum.TextXAlignment.Left
	Description.TextYAlignment = Enum.TextYAlignment.Top
	Description.AutomaticSize = Enum.AutomaticSize.Y

	SignalHandler:HandleNil(Description)

	UIListLayout_2.Parent = Displays
	UIListLayout_2.FillDirection = Enum.FillDirection.Horizontal
	UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout_2.VerticalAlignment = Enum.VerticalAlignment.Center
	UIListLayout_2.Padding = UDim.new(0, 10)

	SliderHolder.Name = "SliderHolder"
	SliderHolder.Parent = Slider
	SliderHolder.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	SliderHolder.BackgroundTransparency = 1.000
	SliderHolder.BorderColor3 = Color3.fromRGB(0, 0, 0)
	SliderHolder.BorderSizePixel = 0
	SliderHolder.LayoutOrder = 1
	SliderHolder.Position = UDim2.new(0, 0, 0.820895493, 0)
	SliderHolder.Size = UDim2.new(1, 0, 0, 0)
	SliderHolder.AutomaticSize = Enum.AutomaticSize.Y

	local ManualPad2 = Instance.new("UIPadding")
	ManualPad2.Parent = SliderHolder
	ManualPad2.PaddingLeft = UDim.new(0, 10)
	ManualPad2.PaddingRight = UDim.new(0, 10)
	ManualPad2.PaddingTop = UDim.new(0, 10)

	UIListLayout_3.Parent = SliderHolder
	UIListLayout_3.FillDirection = Enum.FillDirection.Horizontal
	UIListLayout_3.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout_3.VerticalAlignment = Enum.VerticalAlignment.Bottom
	UIListLayout_3.HorizontalFlex = Enum.UIFlexAlignment.Fill

	SliderBar.Name = "SliderBar"
	SliderBar.Parent = SliderHolder
	SliderBar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	SliderBar.BackgroundTransparency = 0.900
	SliderBar.BorderColor3 = Color3.fromRGB(0, 0, 0)
	SliderBar.BorderSizePixel = 0
	SliderBar.Position = UDim2.new(0, 0, 0.785714269, 0)
	SliderBar.Text = ""
	SliderBar.Size = UDim2.new(0, 277, 0, 6)

	UICorner_2.CornerRadius = UDim.new(1, 0)
	UICorner_2.Parent = SliderBar

	ProgressBar.Name = "ProgressBar"
	ProgressBar.Parent = SliderBar
	ProgressBar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ProgressBar.BorderColor3 = Color3.fromRGB(0, 0, 0)
	ProgressBar.BorderSizePixel = 0
	ProgressBar.Size = UDim2.new(0.600000024, 0, 1, 0)

	local ManualPad = Instance.new("UIPadding")
	ManualPad.Parent = ProgressBar
	ManualPad.PaddingLeft = UDim.new(0, 10)

	UICorner_3.CornerRadius = UDim.new(1, 0)
	UICorner_3.Parent = ProgressBar

	Dot.Parent = ProgressBar
	Dot.Active = true
	Dot.AnchorPoint = Vector2.new(1, 0.5)
	Dot.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Dot.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Dot.BorderSizePixel = 0
	Dot.Position = UDim2.new(1, 0, 0.5, 0)
	Dot.Size = UDim2.new(0, 10, 0, 10)

	UICorner_4.CornerRadius = UDim.new(1, 0)
	UICorner_4.Parent = Dot

	Value.Name = "Value"
	Value.Parent = SliderHolder
	Value.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Value.BackgroundTransparency = 1.000
	Value.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Value.BorderSizePixel = 0
	Value.Position = UDim2.new(0.744623661, 0, 0.428571433, 0)
	Value.Font = Enum.Font.GothamMedium
	Value.Text = ""
	Value.TextColor3 = Color3.fromRGB(180, 180, 180)
	Value.TextSize = 16.000
	Value.TextWrapped = true
	Value.TextXAlignment = Enum.TextXAlignment.Right
	Value.TextYAlignment = Enum.TextYAlignment.Top
	Value.AutomaticSize = Enum.AutomaticSize.XY

	UICorner_5.CornerRadius = UDim.new(0, 20)
	UICorner_5.Parent = Slider

	UIPadding.Parent = Slider
	UIPadding.PaddingBottom = UDim.new(0, 15)
	UIPadding.PaddingLeft = UDim.new(0, 15)
	UIPadding.PaddingRight = UDim.new(0, 15)
	UIPadding.PaddingTop = UDim.new(0, 15)

	UIListLayout_4.Parent = Slider
	UIListLayout_4.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout_4.VerticalAlignment = Enum.VerticalAlignment.Center

	local ManualStroke = Instance.new("UIStroke")
	ManualStroke.Parent = Slider
	ManualStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	ManualStroke.Transparency = 0.9
	ManualStroke.Color = Color3.fromRGB(255, 255, 255)

	--// SignalHandler:HandleChange(Displays, SliderHolder)

	--// Setup
	SliderBar.AutoButtonColor = false

	local Callback = Data.Callback
	local MinValue = Data.Min or 0
	local MaxValue = Data.Max
	local Step = Data.Step
	local Default = Data.Default or MinValue

	local CurrentValue = Default or MinValue
	local IsDragging = false

	if Default ~= nil then
		local PercentValue = (Default - MinValue) / (MaxValue - MinValue)
		ProgressBar.Size = UDim2.new(PercentValue, 0, 1, 0)
		Value.Text = tostring(Default)

		SignalHandler:SafeCallback(Callback, CurrentValue, Data.Title)
	end

	SignalHandler:NewSignal(SliderBar, "MouseButton1Down", function()
		IsDragging = true
	end)

	SignalHandler:NewSignal(Library.Services.UserInputService, "InputEnded", function(Input)
		if Input.UserInputType == Enum.UserInputType.MouseButton1 then
			IsDragging = false
		end
	end)

	SignalHandler:NewSignal(Library.Services.RunService, "Heartbeat", function(Input)
		if IsDragging then
			local MouseX = Library.Services.UserInputService:GetMouseLocation().X
			local AbsolutePosition = SliderBar.AbsolutePosition.X
			local AbsoluteSize = SliderBar.AbsoluteSize.X
			local PercentValue = math.clamp((MouseX - AbsolutePosition) / AbsoluteSize, 0, 1)

			CurrentValue = math.floor(((MinValue + ((MaxValue - MinValue) * PercentValue)) / Step) + 0.5) * Step

			local Precision = math.max(0, math.floor(math.log10(1 / Step) + 0.5))
			Value.Text = string.format("%." .. tostring(Precision) .. "f", CurrentValue)

			AnimHandler:Animate(
				ProgressBar,
				TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
				{ Size = UDim2.new(PercentValue, 0, 1, 0) }
			)

			SignalHandler:SafeCallback(Callback, CurrentValue, Data.Title)
		end
	end)

	return {
		SetDescription = function(_, Text)
			Description.Text = Text
		end,

		SetTitle = function(_, Text)
			Display.Text = Text
		end,

		SetValue = function(_, NewValue)
			local Clamped = math.clamp(NewValue, MinValue, MaxValue)
			CurrentValue = math.floor((Clamped / Step) + 0.5) * Step

			local PercentValue = (CurrentValue - MinValue) / (MaxValue - MinValue)

			local Precision = math.max(0, math.floor(math.log10(1 / Step) + 0.5))
			Value.Text = string.format("%." .. tostring(Precision) .. "f", CurrentValue)

			AnimHandler:Animate(
				ProgressBar,
				TweenInfo.new(0.1, Enum.EasingStyle.Quint, Enum.EasingDirection.Out),
				{ Size = UDim2.new(PercentValue, 0, 1, 0) }
			)

			SignalHandler:SafeCallback(Callback, CurrentValue, Data.Title)
		end,
	}
end

return Slider
