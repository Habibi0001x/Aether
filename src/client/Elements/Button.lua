local Button = {}
Button.__index = Button

function Button.New(Library, Body)
	local Self = setmetatable({}, Button)

	Self.Library = Library
	Self.Body = Body
	Self.BodyCollection = {}

	return Self
end

function Button:Init(Data)
	local Library = self.Library
	assert(Library, "No library found for '" .. (Data.Title or "Slider") .. ", ended thread")

	local SignalHandler = Library.SignalHandler
	local AnimHandler = Library.AnimationHandler

	local Button = Instance.new("TextButton")
	local Displays = Instance.new("Frame")
	local IconHolder = Instance.new("Frame")
	local Icon = Instance.new("ImageLabel")
	local UICorner = Instance.new("UICorner")
	local Text = Instance.new("Frame")
	local UIListLayout = Instance.new("UIListLayout")
	local Display = Instance.new("TextLabel")
	local Description = Instance.new("TextLabel")
	local UIListLayout_2 = Instance.new("UIListLayout")
	local ButtonHolder = Instance.new("Frame")
	local UIListLayout_3 = Instance.new("UIListLayout")
	local Button_2 = Instance.new("ImageButton")
	local UICorner_2 = Instance.new("UICorner")
	local UIPadding = Instance.new("UIPadding")
	local UIListLayout_4 = Instance.new("UIListLayout")

	Button.Name = "Button"
	Button.Parent = self.Body
	Button.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
	Button.BackgroundTransparency = 0.400
	Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Button.BorderSizePixel = 0
	Button.Position = UDim2.new(0.0259433966, 0, 0, 0)
	Button.Text = ""
	Button.Size = UDim2.new(0.930000007, 0, 0, 0)
	Button.AutomaticSize = Enum.AutomaticSize.Y
	Button.AutoButtonColor = false

	Displays.Name = "Displays"
	Displays.Parent = Button
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

	Icon.Name = "Icon"
	Icon.Parent = IconHolder
	Icon.AnchorPoint = Vector2.new(0.5, 0.5)
	Icon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Icon.BackgroundTransparency = 1.000
	Icon.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Icon.BorderSizePixel = 0
	Icon.LayoutOrder = -1
	Icon.Position = UDim2.new(0.5, 0, 0.5, 0)
	Icon.Size = UDim2.new(0, 30, 0, 30)
	Icon.Image = Data.Icon or ""
	Icon.ImageColor3 = Color3.fromRGB(220, 220, 220)

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
	Display.Size = UDim2.new(0, 68, 0, 17)
	Display.FontFace = Library.Font
	Display.Text = Data.Title or ""
	Display.TextColor3 = Color3.fromRGB(220, 220, 220)
	Display.TextSize = 18.000
	Display.TextXAlignment = Enum.TextXAlignment.Left

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
	Description.Text = Data.Description or ""
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

	ButtonHolder.Name = "ButtonHolder"
	ButtonHolder.Parent = Button
	ButtonHolder.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ButtonHolder.BackgroundTransparency = 1.000
	ButtonHolder.BorderColor3 = Color3.fromRGB(0, 0, 0)
	ButtonHolder.BorderSizePixel = 0
	ButtonHolder.LayoutOrder = 1
	ButtonHolder.Position = UDim2.new(0.931026936, 0, 0, 0)
	ButtonHolder.Size = UDim2.new(0, 24, 0, 54)

	UIListLayout_3.Parent = ButtonHolder
	UIListLayout_3.HorizontalAlignment = Enum.HorizontalAlignment.Right
	UIListLayout_3.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout_3.VerticalAlignment = Enum.VerticalAlignment.Center

	Button_2.Name = "Button"
	Button_2.Parent = ButtonHolder
	Button_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Button_2.BackgroundTransparency = 1.000
	Button_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Button_2.BorderSizePixel = 0
	Button_2.Size = UDim2.new(0, 29, 0, 29)
	Button_2.Image = "rbxassetid://10709791437"
	Button_2.ImageColor3 = Color3.fromRGB(180, 180, 180)

	UICorner_2.CornerRadius = UDim.new(0, 20)
	UICorner_2.Parent = Button

	UIPadding.Parent = Button
	UIPadding.PaddingBottom = UDim.new(0, 15)
	UIPadding.PaddingLeft = UDim.new(0, 15)
	UIPadding.PaddingRight = UDim.new(0, 15)
	UIPadding.PaddingTop = UDim.new(0, 15)

	UIListLayout_4.Parent = Button
	UIListLayout_4.FillDirection = Enum.FillDirection.Horizontal
	UIListLayout_4.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout_4.VerticalAlignment = Enum.VerticalAlignment.Center
	UIListLayout_4.HorizontalFlex = Enum.UIFlexAlignment.Fill

	local ManualStroke = Instance.new("UIStroke")
	ManualStroke.Parent = Button
	ManualStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	ManualStroke.Transparency = 0.9
	ManualStroke.Color = Color3.fromRGB(255, 255, 255)

	local Callback = Data.Callback
	--// assert(Callback, "No callback for '".. Displays.Text .. "', ended thread")

	SignalHandler:HandleChange(Displays, ButtonHolder)

	SignalHandler:NewSignal(Button, "MouseButton1Click", function()
		SignalHandler:SafeCallback(Callback, nil, Data.Title)
	end)

	return {
		SetDescription = function(Text)
			Description.Text = Text
		end,

		SetTitle = function(Text)
			Display.Text = Text
		end,

		Callback = function(Bool)
			SignalHandler:SafeCallback(Callback, nil, Data.Title)
		end,
	}
end

return Button
