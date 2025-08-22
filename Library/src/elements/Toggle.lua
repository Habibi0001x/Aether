local Toggle = {}
Toggle.__index = Toggle

function Toggle.New(Library, Body)
	local Self = setmetatable({}, Toggle)

	Self.Library = Library
	Self.Body = Body
	Self.BodyCollection = {}

	return Self
end

--// Modules
function Toggle:Init(Data)
	local Library = self.Library
	assert(Library, "No library found for '" .. (Data.Title or "Toggle") .. ", ended thread")

	local SignalHandler = Library.SignalHandler
	local AnimHandler = Library.AnimationHandler

	local Toggle = Instance.new("Frame")
	local Displays_1 = Instance.new("Frame")
	local IconHolder_1 = Instance.new("Frame")
	local Icon_1 = Instance.new("ImageLabel")
	local UICorner_1 = Instance.new("UICorner")
	local Text_1 = Instance.new("Frame")
	local UIListLayout_1 = Instance.new("UIListLayout")
	local Display_1 = Instance.new("TextLabel")
	local Description_1 = Instance.new("TextLabel")
	local UIListLayout_2 = Instance.new("UIListLayout")
	local ToggleHolder_1 = Instance.new("Frame")
	local Toggle_1 = Instance.new("Frame")
	local UICorner_2 = Instance.new("UICorner")
	local UIStroke_1 = Instance.new("UIStroke")
	local Dot_1 = Instance.new("Frame")
	local UICorner_3 = Instance.new("UICorner")
	local UIGradient_1 = Instance.new("UIGradient")
	local UIListLayout_3 = Instance.new("UIListLayout")
	local UIStroke_2 = Instance.new("UIStroke")
	local UICorner_4 = Instance.new("UICorner")
	local UIPadding_1 = Instance.new("UIPadding")
	local UIListLayout_4 = Instance.new("UIListLayout")

	Toggle.Name = "Toggle"
	Toggle.Parent = self.Body
	Toggle.AutomaticSize = Enum.AutomaticSize.Y
	Toggle.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
	Toggle.BackgroundTransparency = 0.4000000059604645
	Toggle.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Toggle.BorderSizePixel = 0
	Toggle.Position = UDim2.new(0.0259433966, 0, 0, 0)
	Toggle.Size = UDim2.new(0.930000007, 0, 0, 0)

	Displays_1.Name = "Displays"
	Displays_1.Parent = Toggle
	Displays_1.AnchorPoint = Vector2.new(0, 0.5)
	Displays_1.AutomaticSize = Enum.AutomaticSize.Y
	Displays_1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Displays_1.BackgroundTransparency = 1
	Displays_1.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Displays_1.BorderSizePixel = 0
	Displays_1.Position = UDim2.new(0.0125523014, -6, 0.5, 0)
	Displays_1.Size = UDim2.new(0.763000011, 0, 0, 0)

	IconHolder_1.Name = "IconHolder"
	IconHolder_1.Parent = Displays_1
	IconHolder_1.AnchorPoint = Vector2.new(0, 0.5)
	IconHolder_1.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
	IconHolder_1.BorderColor3 = Color3.fromRGB(0, 0, 0)
	IconHolder_1.BorderSizePixel = 0
	IconHolder_1.Position = UDim2.new(0, 0, 0.5, 0)
	IconHolder_1.Size = UDim2.new(0, 50, 0, 50)
	IconHolder_1.Visible = false

	local Icon = Library:GetIcon(Data.Icon) or ""

	Icon_1.Name = "Icon"
	Icon_1.Parent = IconHolder_1
	Icon_1.AnchorPoint = Vector2.new(0.5, 0.5)
	Icon_1.BackgroundTransparency = 1
	Icon_1.Position = UDim2.new(0.5, 0, 0.5, 0)
	Icon_1.Size = UDim2.new(0, 27, 0, 27)
	Icon_1.Image = Icon.Image
	Icon_1.ImageTransparency = 0.3
	Icon_1.ImageRectOffset = Icon.ImageRectPosition
	Icon_1.ImageRectSize = Icon.ImageRectSize

	SignalHandler:HandleNil(Icon_1, IconHolder_1)

	UICorner_1.Parent = IconHolder_1
	UICorner_1.CornerRadius = UDim.new(0, 15)

	Text_1.Name = "Text"
	Text_1.Parent = Displays_1
	Text_1.AutomaticSize = Enum.AutomaticSize.X
	Text_1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Text_1.BackgroundTransparency = 1
	Text_1.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Text_1.BorderSizePixel = 0
	Text_1.LayoutOrder = 2
	Text_1.Position = UDim2.new(0.178094149, -6, 0, 0)
	Text_1.Size = UDim2.new(0.279671192, 0, 1, 0)

	UIListLayout_1.Parent = Text_1
	UIListLayout_1.Padding = UDim.new(0, 5)
	UIListLayout_1.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout_1.VerticalAlignment = Enum.VerticalAlignment.Center

	Display_1.Name = "Display"
	Display_1.Parent = Text_1
	Display_1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Display_1.BackgroundTransparency = 1
	Display_1.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Display_1.BorderSizePixel = 0
	Display_1.Position = UDim2.new(0, 0, 0.363013685, 0)
	Display_1.Size = UDim2.new(1, 0, 0, 17)
	Display_1.FontFace = Library.Font
	Display_1.Text = Data.Title or ""
	Display_1.TextColor3 = Color3.fromRGB(220, 220, 220)
	Display_1.TextSize = 18
	Display_1.TextXAlignment = Enum.TextXAlignment.Left

	SignalHandler:HandleNil(Display_1)

	Description_1.Name = "Description"
	Description_1.Parent = Text_1
	Description_1.AutomaticSize = Enum.AutomaticSize.Y
	Description_1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Description_1.BackgroundTransparency = 1
	Description_1.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Description_1.BorderSizePixel = 0
	Description_1.Position = UDim2.new(0, 0, 0.5, 0)
	Description_1.Size = UDim2.new(1, 0, 0, 0)
	Description_1.Font = Enum.Font.GothamMedium
	Description_1.Text = Data.Description or ""
	Description_1.TextColor3 = Color3.fromRGB(180, 180, 180)
	Description_1.TextSize = 16
	Description_1.TextWrapped = true
	Description_1.TextXAlignment = Enum.TextXAlignment.Left
	Description_1.TextYAlignment = Enum.TextYAlignment.Top

	SignalHandler:HandleNil(Description_1)

	UIListLayout_2.Parent = Displays_1
	UIListLayout_2.Padding = UDim.new(0, 10)
	UIListLayout_2.FillDirection = Enum.FillDirection.Horizontal
	UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout_2.VerticalAlignment = Enum.VerticalAlignment.Center

	ToggleHolder_1.Name = "ToggleHolder"
	ToggleHolder_1.Parent = Toggle
	ToggleHolder_1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ToggleHolder_1.BackgroundTransparency = 1
	ToggleHolder_1.BorderColor3 = Color3.fromRGB(0, 0, 0)
	ToggleHolder_1.BorderSizePixel = 0
	ToggleHolder_1.LayoutOrder = 1
	ToggleHolder_1.Position = UDim2.new(0.735639036, 0, 0, 0)
	ToggleHolder_1.Size = UDim2.new(0, 110, 0, 45)

	Toggle_1.Name = "Toggle"
	Toggle_1.Parent = ToggleHolder_1
	Toggle_1.AnchorPoint = Vector2.new(0, 0.5)
	Toggle_1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Toggle_1.BackgroundTransparency = 0.8999999761581421
	Toggle_1.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Toggle_1.BorderSizePixel = 0
	Toggle_1.Position = UDim2.new(0.522000015, 0, 0.5, 0)
	Toggle_1.Size = UDim2.new(0, 55, 0, 30)

	UICorner_2.Parent = Toggle_1
	UICorner_2.CornerRadius = UDim.new(1, 0)

	UIStroke_1.Parent = Toggle_1
	UIStroke_1.Color = Color3.fromRGB(255, 255, 255)
	UIStroke_1.Thickness = 1
	UIStroke_1.Transparency = 0.85

	Dot_1.Name = "Dot"
	Dot_1.Parent = Toggle_1
	Dot_1.AnchorPoint = Vector2.new(1, 0.5)
	Dot_1.BackgroundColor3 = Color3.fromRGB(220, 220, 220)
	Dot_1.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Dot_1.BorderSizePixel = 0
	Dot_1.Position = UDim2.new(1, -5, 0.5, 0)
	Dot_1.Size = UDim2.new(0, 20, 0, 20)

	UICorner_3.Parent = Dot_1
	UICorner_3.CornerRadius = UDim.new(1, 0)

	UIGradient_1.Parent = Dot_1
	UIGradient_1.Rotation = 90
	UIGradient_1.Transparency = NumberSequence.new({
		NumberSequenceKeypoint.new(0, 0),
		NumberSequenceKeypoint.new(1, 0.26875),
	})

	UIListLayout_3.Parent = ToggleHolder_1
	UIListLayout_3.HorizontalAlignment = Enum.HorizontalAlignment.Right
	UIListLayout_3.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout_3.VerticalAlignment = Enum.VerticalAlignment.Center

	UIStroke_2.Parent = Toggle
	UIStroke_2.Color = Color3.fromRGB(255, 255, 255)
	UIStroke_2.Thickness = 1
	UIStroke_2.Transparency = 0.9

	UICorner_4.Parent = Toggle
	UICorner_4.CornerRadius = UDim.new(0, 20)

	UIPadding_1.Parent = Toggle
	UIPadding_1.PaddingBottom = UDim.new(0, 15)
	UIPadding_1.PaddingLeft = UDim.new(0, 15)
	UIPadding_1.PaddingRight = UDim.new(0, 15)
	UIPadding_1.PaddingTop = UDim.new(0, 15)

	UIListLayout_4.Parent = Toggle
	UIListLayout_4.FillDirection = Enum.FillDirection.Horizontal
	UIListLayout_4.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout_4.VerticalAlignment = Enum.VerticalAlignment.Center
	UIListLayout_4.HorizontalFlex = Enum.UIFlexAlignment.Fill

	SignalHandler:HandleChange(Displays_1, ToggleHolder_1)

	--// self.Body = Toggle_1
	local function HandleTransition(Bool)
		if Bool then
			AnimHandler:Animate(Toggle_1, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
				BackgroundTransparency = 0.9,
			})

			AnimHandler:Animate(UIStroke_1, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
				Transparency = 0.85,
			})

			AnimHandler:Animate(Dot_1, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
				BackgroundTransparency = 0,
				Position = UDim2.new(1, -5, 0.5, 0),
				AnchorPoint = Vector2.new(1, 0.5),
			})
		else
			AnimHandler:Animate(Toggle_1, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
				BackgroundTransparency = 0.98,
			})

			AnimHandler:Animate(UIStroke_1, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
				Transparency = 0.9,
			})

			AnimHandler:Animate(Dot_1, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
				BackgroundTransparency = 0.45,
				Position = UDim2.new(0, 5, 0.5, 0),
				AnchorPoint = Vector2.new(0, 0.5),
			})
		end
	end

	local Default = Data.Default or false
	local Callback = Data.Callback

	local Bool = Default or false

	--/// assert(Callback, "No callback for" .. Data.Title .. " Stopped Thread")
	HandleTransition(Bool) --// Setup Anim

	SignalHandler:NewClickSignal(Toggle_1, function()
		Bool = not Bool
		HandleTransition(Bool)

		SignalHandler:SafeCallback(Callback, Bool, Data.Title)
	end)

	return {
		SetDescription = function(_, Text)
			Description_1.Text = Text
		end,

		SetTitle = function(_, Text)
			Display_1.Text = Text
		end,

		Set = function(_, Bool)
			HandleTransition(Bool)
			SignalHandler:SafeCallback(Callback, Bool, Data.Title)
		end,
	}
end

return Toggle
