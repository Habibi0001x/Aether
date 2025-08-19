local Window = {}
Window.__index = Window

function Window.New(Library)
	local Self = setmetatable({}, Window)

	Self.Library = Library
	Self.Resizable = false
	Self.Body = nil
	Self.Size = UDim2.fromOffset(425, 520)

	return Self
end

function Window:Init(DataEnd)
	local Methods = {}

	local SignalHandler = self.Library.SignalHandler
	local AnimHandler = self.Library.AnimationHandler
	local InstanceHandler = self.Library.InstanceHandler
	local New = InstanceHandler.NewInstance

	assert(SignalHandler, "No signal handler found for 'Init'")
	assert(AnimHandler, "No animation handler found for 'Init'")

	local Window = Instance.new("ImageButton")
	local UICorner_1 = Instance.new("UICorner")
	local UIStroke_1 = Instance.new("UIStroke")
	local TopBar_1 = Instance.new("Frame")
	local Header_1 = Instance.new("Frame")
	local Title_1 = Instance.new("ImageButton")
	local UICorner_2 = Instance.new("UICorner")
	local UIListLayout_1 = Instance.new("UIListLayout")
	local UIPadding_1 = Instance.new("UIPadding")
	local UIStroke_2 = Instance.new("UIStroke")
	local Title_2 = Instance.new("TextLabel")
	local Icon_1 = Instance.new("ImageLabel")
	local UIListLayout_2 = Instance.new("UIListLayout")
	local UIPadding_2 = Instance.new("UIPadding")
	local UIListLayout_3 = Instance.new("UIListLayout")
	local ButtonZones_1 = Instance.new("Frame")
	local Button_1 = Instance.new("ImageButton")
	local UICorner_3 = Instance.new("UICorner")
	local UIListLayout_4 = Instance.new("UIListLayout")
	local UIPadding_3 = Instance.new("UIPadding")
	local UIStroke_3 = Instance.new("UIStroke")
	local Icon_2 = Instance.new("ImageLabel")
	local Button_2 = Instance.new("ImageButton")
	local UICorner_4 = Instance.new("UICorner")
	local UIListLayout_5 = Instance.new("UIListLayout")
	local UIPadding_4 = Instance.new("UIPadding")
	local UIStroke_4 = Instance.new("UIStroke")
	local Icon_3 = Instance.new("ImageLabel")
	local Button_3 = Instance.new("ImageButton")
	local UICorner_5 = Instance.new("UICorner")
	local UIListLayout_6 = Instance.new("UIListLayout")
	local UIPadding_5 = Instance.new("UIPadding")
	local UIStroke_5 = Instance.new("UIStroke")
	local Icon_4 = Instance.new("ImageLabel")
	local UIPadding_6 = Instance.new("UIPadding")
	local UIListLayout_7 = Instance.new("UIListLayout")
	local Container_1 = Instance.new("ScrollingFrame")

	function Methods:NewContext(Iden)
		local Elements = {}

		local ElemContainer_1 = Instance.new("ScrollingFrame")
		local UIListLayout_8 = Instance.new("UIListLayout")
		local SearchBar = Instance.new("ImageButton")
		local UICorner_15 = Instance.new("UICorner")
		local UIListLayout_17 = Instance.new("UIListLayout")
		local UIPadding_10 = Instance.new("UIPadding")
		local UIStroke_9 = Instance.new("UIStroke")
		local Title_4 = Instance.new("TextLabel")
		local Icon_7 = Instance.new("ImageLabel")
		local Display_3 = Instance.new("TextLabel")
		local Dropdown_1 = Instance.new("Frame")
		local Displays_3 = Instance.new("Frame")
		local IconHolder_3 = Instance.new("Frame")
		local Icon_8 = Instance.new("ImageLabel")
		local UICorner_16 = Instance.new("UICorner")
		local Text_3 = Instance.new("Frame")
		local UIListLayout_18 = Instance.new("UIListLayout")
		local Display_4 = Instance.new("TextLabel")
		local Description_4 = Instance.new("TextLabel")
		local UIListLayout_19 = Instance.new("UIListLayout")
		local DropdownHolder_1 = Instance.new("Frame")
		local UIListLayout_20 = Instance.new("UIListLayout")
		local Dropdown_2 = Instance.new("Frame")
		local Title_5 = Instance.new("TextLabel")
		local Icon_9 = Instance.new("ImageLabel")
		local UIListLayout_21 = Instance.new("UIListLayout")
		local UIPadding_11 = Instance.new("UIPadding")
		local UIStroke_10 = Instance.new("UIStroke")
		local UICorner_17 = Instance.new("UICorner")
		local UISizeConstraint_1 = Instance.new("UISizeConstraint")
		local UIStroke_11 = Instance.new("UIStroke")
		local UICorner_18 = Instance.new("UICorner")
		local UIPadding_12 = Instance.new("UIPadding")
		local UIListLayout_22 = Instance.new("UIListLayout")
		local Button_4 = Instance.new("Frame")
		local Displays_4 = Instance.new("Frame")
		local IconHolder_4 = Instance.new("Frame")
		local Icon_10 = Instance.new("ImageLabel")
		local UICorner_19 = Instance.new("UICorner")
		local Text_4 = Instance.new("Frame")
		local UIListLayout_23 = Instance.new("UIListLayout")
		local Display_5 = Instance.new("TextLabel")
		local Description_5 = Instance.new("TextLabel")
		local UIListLayout_24 = Instance.new("UIListLayout")
		local DropdownHolder_2 = Instance.new("Frame")
		local UIListLayout_25 = Instance.new("UIListLayout")
		local Button_5 = Instance.new("ImageButton")
		local UIStroke_12 = Instance.new("UIStroke")
		local UICorner_20 = Instance.new("UICorner")
		local UIPadding_13 = Instance.new("UIPadding")
		local UIListLayout_26 = Instance.new("UIListLayout")
		local UIListLayout_27 = Instance.new("UIListLayout")
		local Paragraph_1 = Instance.new("Frame")
		local Displays_5 = Instance.new("Frame")
		local IconHolder_5 = Instance.new("Frame")
		local Icon_11 = Instance.new("ImageLabel")
		local UICorner_21 = Instance.new("UICorner")
		local Text_5 = Instance.new("Frame")
		local UIListLayout_28 = Instance.new("UIListLayout")
		local Display_6 = Instance.new("TextLabel")
		local Description_6 = Instance.new("TextLabel")
		local UIListLayout_29 = Instance.new("UIListLayout")
		local UIStroke_13 = Instance.new("UIStroke")
		local UICorner_22 = Instance.new("UICorner")
		local UIPadding_14 = Instance.new("UIPadding")
		local UIListLayout_30 = Instance.new("UIListLayout")
		local Buttons_1 = Instance.new("Frame")
		local UIListLayout_31 = Instance.new("UIListLayout")
		local List_1 = Instance.new("ScrollingFrame")
		local UIListLayout_32 = Instance.new("UIListLayout")
		local UIPadding_15 = Instance.new("UIPadding")
		local UIListLayout_33 = Instance.new("UIListLayout")
		local UIListLayout_34 = Instance.new("UIListLayout")

		ElemContainer_1.Name = Iden.Title
		ElemContainer_1.Parent = Container_1
		ElemContainer_1.Active = true
		ElemContainer_1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		ElemContainer_1.BackgroundTransparency = 1
		ElemContainer_1.BorderColor3 = Color3.fromRGB(0, 0, 0)
		ElemContainer_1.BorderSizePixel = 0
		ElemContainer_1.Size = UDim2.new(1, 0, 1, 0)
		ElemContainer_1.ClipsDescendants = true
		ElemContainer_1.AutomaticCanvasSize = Enum.AutomaticSize.Y
		ElemContainer_1.BottomImage = "rbxasset://textures/ui/Scroll/scroll-bottom.png"
		ElemContainer_1.CanvasPosition = Vector2.new(0, 0)
		ElemContainer_1.CanvasSize = UDim2.new(0, 0, 0, 0)
		ElemContainer_1.ElasticBehavior = Enum.ElasticBehavior.WhenScrollable
		ElemContainer_1.HorizontalScrollBarInset = Enum.ScrollBarInset.None
		ElemContainer_1.MidImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
		ElemContainer_1.ScrollBarImageColor3 = Color3.fromRGB(0, 0, 0)
		ElemContainer_1.ScrollBarImageTransparency = 0
		ElemContainer_1.ScrollBarThickness = 0
		ElemContainer_1.ScrollingDirection = Enum.ScrollingDirection.XY
		ElemContainer_1.TopImage = "rbxasset://textures/ui/Scroll/scroll-top.png"
		ElemContainer_1.VerticalScrollBarInset = Enum.ScrollBarInset.None
		ElemContainer_1.VerticalScrollBarPosition = Enum.VerticalScrollBarPosition.Right

		UIListLayout_8.Parent = ElemContainer_1
		UIListLayout_8.Padding = UDim.new(0, 8)
		UIListLayout_8.HorizontalAlignment = Enum.HorizontalAlignment.Center
		UIListLayout_8.SortOrder = Enum.SortOrder.LayoutOrder

		SearchBar.Name = "Title"
		SearchBar.Parent = ElemContainer_1
		SearchBar.Active = true
		SearchBar.AnchorPoint = Vector2.new(0.5, 0.5)
		SearchBar.AutoButtonColor = false
		SearchBar.AutomaticSize = Enum.AutomaticSize.X
		SearchBar.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
		SearchBar.BackgroundTransparency = 0.10000000149011612
		SearchBar.BorderColor3 = Color3.fromRGB(0, 0, 0)
		SearchBar.BorderSizePixel = 0
		SearchBar.LayoutOrder = -1
		SearchBar.Modal = true
		SearchBar.Position = UDim2.new(0.48815167, 0, 0.0359628759, 0)
		SearchBar.Size = UDim2.new(0.939999998, 0, 0, 45)
		SearchBar.Image = "rbxassetid://16255699706"
		SearchBar.ImageTransparency = 0.949999988079071
		SearchBar.ScaleType = Enum.ScaleType.Crop

		UICorner_15.Parent = SearchBar
		UICorner_15.CornerRadius = UDim.new(1, 0)

		UIListLayout_17.Parent = SearchBar
		UIListLayout_17.Padding = UDim.new(0, 7)
		UIListLayout_17.FillDirection = Enum.FillDirection.Horizontal
		UIListLayout_17.SortOrder = Enum.SortOrder.LayoutOrder
		UIListLayout_17.VerticalAlignment = Enum.VerticalAlignment.Center

		UIPadding_10.Parent = SearchBar
		UIPadding_10.PaddingLeft = UDim.new(0, 12)
		UIPadding_10.PaddingRight = UDim.new(0, 12)

		UIStroke_9.Parent = SearchBar
		UIStroke_9.Color = Color3.fromRGB(255, 255, 255)
		UIStroke_9.Thickness = 1

		Title_4.Name = "Title"
		Title_4.Parent = SearchBar
		Title_4.AutomaticSize = Enum.AutomaticSize.X
		Title_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Title_4.BackgroundTransparency = 1.0099999904632568
		Title_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Title_4.BorderSizePixel = 0
		Title_4.LayoutOrder = 1
		Title_4.Size = UDim2.new(0, 0, 1, 0)
		Title_4.Font = Enum.Font.GothamMedium
		Title_4.Text = "Search"
		Title_4.TextColor3 = Color3.fromRGB(220, 220, 220)
		Title_4.TextSize = 15

		Icon_7.Name = "Icon"
		Icon_7.Parent = SearchBar
		Icon_7.AnchorPoint = Vector2.new(0.5, 0.5)
		Icon_7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Icon_7.BackgroundTransparency = 1
		Icon_7.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Icon_7.BorderSizePixel = 0
		Icon_7.Position = UDim2.new(0.5, 0, 0.5, 0)
		Icon_7.Size = UDim2.new(0, 22, 0, 22)
		Icon_7.Image = "rbxassetid://10734943674"
		Icon_7.ImageTransparency = 0.30000001192092896

		Display_3.Name = "Display"
		Display_3.Parent = ElemContainer_1
		Display_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Display_3.BackgroundTransparency = 1
		Display_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Display_3.BorderSizePixel = 0
		Display_3.Position = UDim2.new(0, 0, 0.363013685, 0)
		Display_3.Size = UDim2.new(0.949999988, 0, 0, 17)
		Display_3.FontFace =
			Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal)
		Display_3.RichText = true
		Display_3.Text = "Section"
		Display_3.TextColor3 = Color3.fromRGB(220, 220, 220)
		Display_3.TextSize = 18
		Display_3.TextXAlignment = Enum.TextXAlignment.Left

		Dropdown_1.Name = "Dropdown"
		Dropdown_1.Parent = ElemContainer_1
		Dropdown_1.AutomaticSize = Enum.AutomaticSize.Y
		Dropdown_1.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
		Dropdown_1.BackgroundTransparency = 0.4000000059604645
		Dropdown_1.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Dropdown_1.BorderSizePixel = 0
		Dropdown_1.Position = UDim2.new(0.023151705, 0, 0.290023208, 0)
		Dropdown_1.Size = UDim2.new(0.930000007, 0, 0, 0)

		Displays_3.Name = "Displays"
		Displays_3.Parent = Dropdown_1
		Displays_3.AnchorPoint = Vector2.new(0, 0.5)
		Displays_3.AutomaticSize = Enum.AutomaticSize.Y
		Displays_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Displays_3.BackgroundTransparency = 1
		Displays_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Displays_3.BorderSizePixel = 0
		Displays_3.Position = UDim2.new(0.0125523014, -6, 0.5, 0)
		Displays_3.Size = UDim2.new(0.763000011, 0, 0, 0)

		IconHolder_3.Name = "IconHolder"
		IconHolder_3.Parent = Displays_3
		IconHolder_3.AnchorPoint = Vector2.new(0, 0.5)
		IconHolder_3.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
		IconHolder_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
		IconHolder_3.BorderSizePixel = 0
		IconHolder_3.Position = UDim2.new(0, 0, 0.5, 0)
		IconHolder_3.Size = UDim2.new(0, 50, 0, 50)
		IconHolder_3.Visible = false

		Icon_8.Name = "Icon"
		Icon_8.Parent = IconHolder_3
		Icon_8.AnchorPoint = Vector2.new(0.5, 0.5)
		Icon_8.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Icon_8.BackgroundTransparency = 1
		Icon_8.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Icon_8.BorderSizePixel = 0
		Icon_8.LayoutOrder = -1
		Icon_8.Position = UDim2.new(0.5, 0, 0.5, 0)
		Icon_8.Size = UDim2.new(0, 30, 0, 30)
		Icon_8.Image = "rbxassetid://10723424646"
		Icon_8.ImageColor3 = Color3.fromRGB(220, 220, 220)

		UICorner_16.Parent = IconHolder_3
		UICorner_16.CornerRadius = UDim.new(0, 15)

		Text_3.Name = "Text"
		Text_3.Parent = Displays_3
		Text_3.AutomaticSize = Enum.AutomaticSize.X
		Text_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Text_3.BackgroundTransparency = 1
		Text_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Text_3.BorderSizePixel = 0
		Text_3.LayoutOrder = 2
		Text_3.Position = UDim2.new(0.178094149, -6, 0, 0)
		Text_3.Size = UDim2.new(0.279671192, 0, 1, 0)

		UIListLayout_18.Parent = Text_3
		UIListLayout_18.Padding = UDim.new(0, 5)
		UIListLayout_18.SortOrder = Enum.SortOrder.LayoutOrder
		UIListLayout_18.VerticalAlignment = Enum.VerticalAlignment.Center

		Display_4.Name = "Display"
		Display_4.Parent = Text_3
		Display_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Display_4.BackgroundTransparency = 1
		Display_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Display_4.BorderSizePixel = 0
		Display_4.Position = UDim2.new(0, 0, 0.363013685, 0)
		Display_4.Size = UDim2.new(1, 0, 0, 17)
		Display_4.FontFace =
			Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal)
		Display_4.Text = "Dropdown"
		Display_4.TextColor3 = Color3.fromRGB(220, 220, 220)
		Display_4.TextSize = 18
		Display_4.TextXAlignment = Enum.TextXAlignment.Left

		Description_4.Name = "Description"
		Description_4.Parent = Text_3
		Description_4.AutomaticSize = Enum.AutomaticSize.Y
		Description_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Description_4.BackgroundTransparency = 1
		Description_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Description_4.BorderSizePixel = 0
		Description_4.Position = UDim2.new(0, 0, 0.5, 0)
		Description_4.Size = UDim2.new(1, 0, 0, 0)
		Description_4.Font = Enum.Font.GothamMedium
		Description_4.Text = "Lorem Ipsum Dolor Amet"
		Description_4.TextColor3 = Color3.fromRGB(180, 180, 180)
		Description_4.TextSize = 16
		Description_4.TextWrapped = true
		Description_4.TextXAlignment = Enum.TextXAlignment.Left
		Description_4.TextYAlignment = Enum.TextYAlignment.Top

		UIListLayout_19.Parent = Displays_3
		UIListLayout_19.Padding = UDim.new(0, 10)
		UIListLayout_19.FillDirection = Enum.FillDirection.Horizontal
		UIListLayout_19.SortOrder = Enum.SortOrder.LayoutOrder
		UIListLayout_19.VerticalAlignment = Enum.VerticalAlignment.Center

		DropdownHolder_1.Name = "DropdownHolder"
		DropdownHolder_1.Parent = Dropdown_1
		DropdownHolder_1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		DropdownHolder_1.BackgroundTransparency = 1
		DropdownHolder_1.BorderColor3 = Color3.fromRGB(0, 0, 0)
		DropdownHolder_1.BorderSizePixel = 0
		DropdownHolder_1.LayoutOrder = 1
		DropdownHolder_1.Position = UDim2.new(0.298598409, 0, 0, 0)
		DropdownHolder_1.Size = UDim2.new(0, 254, 0, 54)

		UIListLayout_20.Parent = DropdownHolder_1
		UIListLayout_20.HorizontalAlignment = Enum.HorizontalAlignment.Right
		UIListLayout_20.SortOrder = Enum.SortOrder.LayoutOrder
		UIListLayout_20.VerticalAlignment = Enum.VerticalAlignment.Center

		Dropdown_2.Name = "Dropdown"
		Dropdown_2.Parent = DropdownHolder_1
		Dropdown_2.AutomaticSize = Enum.AutomaticSize.X
		Dropdown_2.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
		Dropdown_2.BackgroundTransparency = 0.6000000238418579
		Dropdown_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Dropdown_2.BorderSizePixel = 0
		Dropdown_2.Position = UDim2.new(0.00302494015, 0, 0.129629627, 0)
		Dropdown_2.Size = UDim2.new(0, 189, 0, 40)

		Title_5.Name = "Title"
		Title_5.Parent = Dropdown_2
		Title_5.AutomaticSize = Enum.AutomaticSize.X
		Title_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Title_5.BackgroundTransparency = 1.0099999904632568
		Title_5.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Title_5.BorderSizePixel = 0
		Title_5.LayoutOrder = 1
		Title_5.Size = UDim2.new(0, 0, 1, 0)
		Title_5.Font = Enum.Font.GothamMedium
		Title_5.Text = "Ancient Seed Pack"
		Title_5.TextColor3 = Color3.fromRGB(220, 220, 220)
		Title_5.TextSize = 15
		Title_5.TextTruncate = Enum.TextTruncate.AtEnd
		Title_5.TextXAlignment = Enum.TextXAlignment.Right

		Icon_9.Name = "Icon"
		Icon_9.Parent = Dropdown_2
		Icon_9.AnchorPoint = Vector2.new(0.5, 0.5)
		Icon_9.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Icon_9.BackgroundTransparency = 1
		Icon_9.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Icon_9.BorderSizePixel = 0
		Icon_9.LayoutOrder = 2
		Icon_9.Position = UDim2.new(0.5, 0, 0.5, 0)
		Icon_9.Size = UDim2.new(0, 20, 0, 20)
		Icon_9.Image = "rbxassetid://10709797508"
		Icon_9.ImageTransparency = 0.30000001192092896

		UIListLayout_21.Parent = Dropdown_2
		UIListLayout_21.Padding = UDim.new(0, 7)
		UIListLayout_21.FillDirection = Enum.FillDirection.Horizontal
		UIListLayout_21.HorizontalAlignment = Enum.HorizontalAlignment.Center
		UIListLayout_21.SortOrder = Enum.SortOrder.LayoutOrder
		UIListLayout_21.VerticalAlignment = Enum.VerticalAlignment.Center

		UIPadding_11.Parent = Dropdown_2
		UIPadding_11.PaddingLeft = UDim.new(0, 12)
		UIPadding_11.PaddingRight = UDim.new(0, 12)

		UIStroke_10.Parent = Dropdown_2
		UIStroke_10.Color = Color3.fromRGB(255, 255, 255)
		UIStroke_10.Thickness = 1

		UICorner_17.Parent = Dropdown_2
		UICorner_17.CornerRadius = UDim.new(1, 0)

		UISizeConstraint_1.Parent = Dropdown_2
		UISizeConstraint_1.MaxSize = Vector2.new(173, math.huge)

		UIStroke_11.Parent = Dropdown_1
		UIStroke_11.Color = Color3.fromRGB(255, 255, 255)
		UIStroke_11.Thickness = 1

		UICorner_18.Parent = Dropdown_1
		UICorner_18.CornerRadius = UDim.new(0, 20)

		UIPadding_12.Parent = Dropdown_1
		UIPadding_12.PaddingBottom = UDim.new(0, 15)
		UIPadding_12.PaddingLeft = UDim.new(0, 15)
		UIPadding_12.PaddingRight = UDim.new(0, 15)
		UIPadding_12.PaddingTop = UDim.new(0, 15)

		UIListLayout_22.Parent = Dropdown_1
		UIListLayout_22.FillDirection = Enum.FillDirection.Horizontal
		UIListLayout_22.SortOrder = Enum.SortOrder.LayoutOrder
		UIListLayout_22.VerticalAlignment = Enum.VerticalAlignment.Center

		Button_4.Name = "Button"
		Button_4.Parent = ElemContainer_1
		Button_4.AutomaticSize = Enum.AutomaticSize.Y
		Button_4.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
		Button_4.BackgroundTransparency = 0.4000000059604645
		Button_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Button_4.BorderSizePixel = 0
		Button_4.Position = UDim2.new(0.0259433966, 0, 0, 0)
		Button_4.Size = UDim2.new(0.930000007, 0, 0, 0)

		Displays_4.Name = "Displays"
		Displays_4.Parent = Button_4
		Displays_4.AnchorPoint = Vector2.new(0, 0.5)
		Displays_4.AutomaticSize = Enum.AutomaticSize.Y
		Displays_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Displays_4.BackgroundTransparency = 1
		Displays_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Displays_4.BorderSizePixel = 0
		Displays_4.Position = UDim2.new(0.0125523014, -6, 0.5, 0)
		Displays_4.Size = UDim2.new(0.763000011, 0, 0, 0)

		IconHolder_4.Name = "IconHolder"
		IconHolder_4.Parent = Displays_4
		IconHolder_4.AnchorPoint = Vector2.new(0, 0.5)
		IconHolder_4.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
		IconHolder_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
		IconHolder_4.BorderSizePixel = 0
		IconHolder_4.Position = UDim2.new(0, 0, 0.5, 0)
		IconHolder_4.Size = UDim2.new(0, 50, 0, 50)

		Icon_10.Name = "Icon"
		Icon_10.Parent = IconHolder_4
		Icon_10.AnchorPoint = Vector2.new(0.5, 0.5)
		Icon_10.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Icon_10.BackgroundTransparency = 1
		Icon_10.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Icon_10.BorderSizePixel = 0
		Icon_10.LayoutOrder = -1
		Icon_10.Position = UDim2.new(0.5, 0, 0.5, 0)
		Icon_10.Size = UDim2.new(0, 30, 0, 30)
		Icon_10.Image = "rbxassetid://10723424646"
		Icon_10.ImageColor3 = Color3.fromRGB(220, 220, 220)

		UICorner_19.Parent = IconHolder_4
		UICorner_19.CornerRadius = UDim.new(0, 15)

		Text_4.Name = "Text"
		Text_4.Parent = Displays_4
		Text_4.AutomaticSize = Enum.AutomaticSize.X
		Text_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Text_4.BackgroundTransparency = 1
		Text_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Text_4.BorderSizePixel = 0
		Text_4.LayoutOrder = 2
		Text_4.Position = UDim2.new(0.178094149, -6, 0, 0)
		Text_4.Size = UDim2.new(0.279671192, 0, 1, 0)

		UIListLayout_23.Parent = Text_4
		UIListLayout_23.Padding = UDim.new(0, 5)
		UIListLayout_23.SortOrder = Enum.SortOrder.LayoutOrder
		UIListLayout_23.VerticalAlignment = Enum.VerticalAlignment.Center

		Display_5.Name = "Display"
		Display_5.Parent = Text_4
		Display_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Display_5.BackgroundTransparency = 1
		Display_5.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Display_5.BorderSizePixel = 0
		Display_5.Position = UDim2.new(0, 0, 0.363013685, 0)
		Display_5.Size = UDim2.new(0, 68, 0, 17)
		Display_5.FontFace =
			Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal)
		Display_5.Text = "Button"
		Display_5.TextColor3 = Color3.fromRGB(220, 220, 220)
		Display_5.TextSize = 18
		Display_5.TextXAlignment = Enum.TextXAlignment.Left

		Description_5.Name = "Description"
		Description_5.Parent = Text_4
		Description_5.AutomaticSize = Enum.AutomaticSize.Y
		Description_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Description_5.BackgroundTransparency = 1
		Description_5.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Description_5.BorderSizePixel = 0
		Description_5.Position = UDim2.new(0, 0, 0.5, 0)
		Description_5.Size = UDim2.new(1, 0, 0, 0)
		Description_5.Font = Enum.Font.GothamMedium
		Description_5.Text = "Lorem Ipsum Dolor Amet"
		Description_5.TextColor3 = Color3.fromRGB(180, 180, 180)
		Description_5.TextSize = 16
		Description_5.TextWrapped = true
		Description_5.TextXAlignment = Enum.TextXAlignment.Left
		Description_5.TextYAlignment = Enum.TextYAlignment.Top

		UIListLayout_24.Parent = Displays_4
		UIListLayout_24.Padding = UDim.new(0, 10)
		UIListLayout_24.FillDirection = Enum.FillDirection.Horizontal
		UIListLayout_24.SortOrder = Enum.SortOrder.LayoutOrder
		UIListLayout_24.VerticalAlignment = Enum.VerticalAlignment.Center

		DropdownHolder_2.Name = "DropdownHolder"
		DropdownHolder_2.Parent = Button_4
		DropdownHolder_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		DropdownHolder_2.BackgroundTransparency = 1
		DropdownHolder_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
		DropdownHolder_2.BorderSizePixel = 0
		DropdownHolder_2.LayoutOrder = 1
		DropdownHolder_2.Position = UDim2.new(0.931026936, 0, 0, 0)
		DropdownHolder_2.Size = UDim2.new(0, 24, 0, 54)

		UIListLayout_25.Parent = DropdownHolder_2
		UIListLayout_25.HorizontalAlignment = Enum.HorizontalAlignment.Right
		UIListLayout_25.SortOrder = Enum.SortOrder.LayoutOrder
		UIListLayout_25.VerticalAlignment = Enum.VerticalAlignment.Center

		Button_5.Name = "Button"
		Button_5.Parent = DropdownHolder_2
		Button_5.Active = true
		Button_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Button_5.BackgroundTransparency = 1
		Button_5.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Button_5.BorderSizePixel = 0
		Button_5.Size = UDim2.new(0, 29, 0, 29)
		Button_5.Image = "rbxassetid://10709791437"
		Button_5.ImageColor3 = Color3.fromRGB(180, 180, 180)

		UIStroke_12.Parent = Button_4
		UIStroke_12.Color = Color3.fromRGB(255, 255, 255)
		UIStroke_12.Thickness = 1

		UICorner_20.Parent = Button_4
		UICorner_20.CornerRadius = UDim.new(0, 20)

		UIPadding_13.Parent = Button_4
		UIPadding_13.PaddingBottom = UDim.new(0, 15)
		UIPadding_13.PaddingLeft = UDim.new(0, 15)
		UIPadding_13.PaddingRight = UDim.new(0, 15)
		UIPadding_13.PaddingTop = UDim.new(0, 15)

		UIListLayout_26.Parent = Button_4
		UIListLayout_26.FillDirection = Enum.FillDirection.Horizontal
		UIListLayout_26.SortOrder = Enum.SortOrder.LayoutOrder
		UIListLayout_26.VerticalAlignment = Enum.VerticalAlignment.Center

		UIListLayout_27.Parent = ElemContainer_1
		UIListLayout_27.SortOrder = Enum.SortOrder.LayoutOrder
		UIListLayout_27.VerticalAlignment = Enum.VerticalAlignment.Center

		Paragraph_1.Name = "Paragraph"
		Paragraph_1.Parent = ElemContainer_1
		Paragraph_1.AutomaticSize = Enum.AutomaticSize.Y
		Paragraph_1.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
		Paragraph_1.BackgroundTransparency = 0.4000000059604645
		Paragraph_1.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Paragraph_1.BorderSizePixel = 0
		Paragraph_1.Position = UDim2.new(0.0259433966, 0, 0, 0)
		Paragraph_1.Size = UDim2.new(0.930000007, 0, 0, 0)

		Displays_5.Name = "Displays"
		Displays_5.Parent = Paragraph_1
		Displays_5.AnchorPoint = Vector2.new(0, 0.5)
		Displays_5.AutomaticSize = Enum.AutomaticSize.Y
		Displays_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Displays_5.BackgroundTransparency = 1
		Displays_5.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Displays_5.BorderSizePixel = 0
		Displays_5.Position = UDim2.new(0.0125523014, -6, 0.5, 0)
		Displays_5.Size = UDim2.new(0.763000011, 0, 0, 0)

		IconHolder_5.Name = "IconHolder"
		IconHolder_5.Parent = Displays_5
		IconHolder_5.AnchorPoint = Vector2.new(0, 0.5)
		IconHolder_5.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
		IconHolder_5.BorderColor3 = Color3.fromRGB(0, 0, 0)
		IconHolder_5.BorderSizePixel = 0
		IconHolder_5.Position = UDim2.new(0, 0, 0.5, 0)
		IconHolder_5.Size = UDim2.new(0, 50, 0, 50)

		Icon_11.Name = "Icon"
		Icon_11.Parent = IconHolder_5
		Icon_11.AnchorPoint = Vector2.new(0.5, 0.5)
		Icon_11.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Icon_11.BackgroundTransparency = 1
		Icon_11.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Icon_11.BorderSizePixel = 0
		Icon_11.LayoutOrder = -1
		Icon_11.Position = UDim2.new(0.5, 0, 0.5, 0)
		Icon_11.Size = UDim2.new(0, 30, 0, 30)
		Icon_11.Image = "rbxassetid://10723424646"
		Icon_11.ImageColor3 = Color3.fromRGB(220, 220, 220)

		UICorner_21.Parent = IconHolder_5
		UICorner_21.CornerRadius = UDim.new(0, 15)

		Text_5.Name = "Text"
		Text_5.Parent = Displays_5
		Text_5.AutomaticSize = Enum.AutomaticSize.X
		Text_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Text_5.BackgroundTransparency = 1
		Text_5.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Text_5.BorderSizePixel = 0
		Text_5.LayoutOrder = 2
		Text_5.Position = UDim2.new(0.178094149, -6, 0, 0)
		Text_5.Size = UDim2.new(0.279671192, 0, 1, 0)

		UIListLayout_28.Parent = Text_5
		UIListLayout_28.Padding = UDim.new(0, 5)
		UIListLayout_28.SortOrder = Enum.SortOrder.LayoutOrder
		UIListLayout_28.VerticalAlignment = Enum.VerticalAlignment.Center

		Display_6.Name = "Display"
		Display_6.Parent = Text_5
		Display_6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Display_6.BackgroundTransparency = 1
		Display_6.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Display_6.BorderSizePixel = 0
		Display_6.Position = UDim2.new(0, 0, 0.363013685, 0)
		Display_6.Size = UDim2.new(1, 0, 0, 17)
		Display_6.FontFace =
			Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal)
		Display_6.Text = "Paragraph"
		Display_6.TextColor3 = Color3.fromRGB(220, 220, 220)
		Display_6.TextSize = 18
		Display_6.TextXAlignment = Enum.TextXAlignment.Left

		Description_6.Name = "Description"
		Description_6.Parent = Text_5
		Description_6.AutomaticSize = Enum.AutomaticSize.Y
		Description_6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Description_6.BackgroundTransparency = 1
		Description_6.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Description_6.BorderSizePixel = 0
		Description_6.Position = UDim2.new(0, 0, 0.5, 0)
		Description_6.Size = UDim2.new(1, 0, 0, 0)
		Description_6.Font = Enum.Font.GothamMedium
		Description_6.Text = "Lorem Ipsum Dolor Amet Lorem Ipsum Dolor AmetLorem Ipsum Dolor AmetLorem Ipsum Dolor Amet"
		Description_6.TextColor3 = Color3.fromRGB(180, 180, 180)
		Description_6.TextSize = 16
		Description_6.TextWrapped = true
		Description_6.TextXAlignment = Enum.TextXAlignment.Left
		Description_6.TextYAlignment = Enum.TextYAlignment.Top

		UIListLayout_29.Parent = Displays_5
		UIListLayout_29.Padding = UDim.new(0, 10)
		UIListLayout_29.FillDirection = Enum.FillDirection.Horizontal
		UIListLayout_29.SortOrder = Enum.SortOrder.LayoutOrder
		UIListLayout_29.VerticalAlignment = Enum.VerticalAlignment.Center

		UIStroke_13.Parent = Paragraph_1
		UIStroke_13.Color = Color3.fromRGB(255, 255, 255)
		UIStroke_13.Thickness = 1

		UICorner_22.Parent = Paragraph_1
		UICorner_22.CornerRadius = UDim.new(0, 20)

		UIPadding_14.Parent = Paragraph_1
		UIPadding_14.PaddingBottom = UDim.new(0, 15)
		UIPadding_14.PaddingLeft = UDim.new(0, 15)
		UIPadding_14.PaddingRight = UDim.new(0, 15)
		UIPadding_14.PaddingTop = UDim.new(0, 15)

		UIListLayout_30.Parent = Paragraph_1
		UIListLayout_30.Padding = UDim.new(0, 10)
		UIListLayout_30.FillDirection = Enum.FillDirection.Horizontal
		UIListLayout_30.SortOrder = Enum.SortOrder.LayoutOrder
		UIListLayout_30.VerticalAlignment = Enum.VerticalAlignment.Center

		Buttons_1.Name = "Buttons"
		Buttons_1.Parent = Paragraph_1
		Buttons_1.AutomaticSize = Enum.AutomaticSize.Y
		Buttons_1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Buttons_1.BackgroundTransparency = 1
		Buttons_1.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Buttons_1.BorderSizePixel = 0
		Buttons_1.LayoutOrder = 1
		Buttons_1.Position = UDim2.new(0, 0, 0.820895493, 0)
		Buttons_1.Size = UDim2.new(0, 372, 0, 28)
		Buttons_1.Visible = false

		UIListLayout_31.Parent = Buttons_1
		UIListLayout_31.FillDirection = Enum.FillDirection.Horizontal
		UIListLayout_31.SortOrder = Enum.SortOrder.LayoutOrder
		UIListLayout_31.VerticalAlignment = Enum.VerticalAlignment.Bottom

		List_1.Name = "List"
		List_1.Parent = Buttons_1
		List_1.Active = true
		List_1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		List_1.BackgroundTransparency = 1
		List_1.BorderColor3 = Color3.fromRGB(0, 0, 0)
		List_1.BorderSizePixel = 0
		List_1.Size = UDim2.new(1, 0, 0, 42)
		List_1.ClipsDescendants = true
		List_1.AutomaticCanvasSize = Enum.AutomaticSize.X
		List_1.BottomImage = "rbxasset://textures/ui/Scroll/scroll-bottom.png"
		List_1.CanvasPosition = Vector2.new(0, 0)
		List_1.CanvasSize = UDim2.new(0, 0, 0, 0)
		List_1.ElasticBehavior = Enum.ElasticBehavior.WhenScrollable
		List_1.HorizontalScrollBarInset = Enum.ScrollBarInset.None
		List_1.MidImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
		List_1.ScrollBarImageColor3 = Color3.fromRGB(0, 0, 0)
		List_1.ScrollBarImageTransparency = 0
		List_1.ScrollBarThickness = 12
		List_1.ScrollingDirection = Enum.ScrollingDirection.XY
		List_1.TopImage = "rbxasset://textures/ui/Scroll/scroll-top.png"
		List_1.VerticalScrollBarInset = Enum.ScrollBarInset.None
		List_1.VerticalScrollBarPosition = Enum.VerticalScrollBarPosition.Right

		UIListLayout_32.Parent = List_1
		UIListLayout_32.Padding = UDim.new(0, 9)
		UIListLayout_32.FillDirection = Enum.FillDirection.Horizontal
		UIListLayout_32.SortOrder = Enum.SortOrder.LayoutOrder
		UIListLayout_32.VerticalAlignment = Enum.VerticalAlignment.Center

		UIPadding_15.Parent = List_1
		UIPadding_15.PaddingLeft = UDim.new(0, 1)

		UIListLayout_33.Parent = Container_1
		UIListLayout_33.FillDirection = Enum.FillDirection.Horizontal
		UIListLayout_33.SortOrder = Enum.SortOrder.LayoutOrder

		UIListLayout_34.Parent = Window
		UIListLayout_34.Padding = UDim.new(0, 5)
		UIListLayout_34.SortOrder = Enum.SortOrder.LayoutOrder

		function Elements:NewToggle(Data)
			local Methods = {}

			local Toggle_1 = Instance.new("Frame")
			local Displays_1 = Instance.new("Frame")
			local IconHolder_1 = Instance.new("Frame")
			local Icon_5 = Instance.new("ImageLabel")
			local UICorner_6 = Instance.new("UICorner")
			local Text_1 = Instance.new("Frame")
			local UIListLayout_9 = Instance.new("UIListLayout")
			local Display_1 = Instance.new("TextLabel")
			local Description_1 = Instance.new("TextLabel")
			local UIListLayout_10 = Instance.new("UIListLayout")
			local ToggleHolder_1 = Instance.new("Frame")
			local Toggle_2 = Instance.new("Frame")
			local UICorner_7 = Instance.new("UICorner")
			local UIStroke_6 = Instance.new("UIStroke")
			local Dot_1 = Instance.new("Frame")
			local UICorner_8 = Instance.new("UICorner")
			local UIGradient_1 = Instance.new("UIGradient")
			local UIListLayout_11 = Instance.new("UIListLayout")
			local UIStroke_7 = Instance.new("UIStroke")
			local UICorner_9 = Instance.new("UICorner")
			local UIPadding_7 = Instance.new("UIPadding")
			local UIListLayout_12 = Instance.new("UIListLayout")
			local UIPadding_8 = Instance.new("UIPadding")

			Toggle_2.Name = "Toggle"
			Toggle_2.Parent = ToggleHolder_1
			Toggle_2.AnchorPoint = Vector2.new(0, 0.5)
			Toggle_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Toggle_2.BackgroundTransparency = 0.8999999761581421
			Toggle_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Toggle_2.BorderSizePixel = 0
			Toggle_2.Position = UDim2.new(0.522000015, 0, 0.5, 0)
			Toggle_2.Size = UDim2.new(0, 55, 0, 30)

			UICorner_7.Parent = Toggle_2
			UICorner_7.CornerRadius = UDim.new(1, 0)

			UIStroke_6.Parent = Toggle_2
			UIStroke_6.Color = Color3.fromRGB(80, 80, 80)
			UIStroke_6.Thickness = 1

			Dot_1.Name = "Dot"
			Dot_1.Parent = Toggle_2
			Dot_1.AnchorPoint = Vector2.new(1, 0.5)
			Dot_1.BackgroundColor3 = Color3.fromRGB(220, 220, 220)
			Dot_1.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Dot_1.BorderSizePixel = 0
			Dot_1.Position = UDim2.new(1, -5, 0.5, 0)
			Dot_1.Size = UDim2.new(0, 20, 0, 20)

			UICorner_8.Parent = Dot_1
			UICorner_8.CornerRadius = UDim.new(1, 0)

			UIGradient_1.Parent = Dot_1
			UIGradient_1.Rotation = 90
			UIGradient_1.Transparency =
				NumberSequence.new({ NumberSequenceKeypoint.new(0, 0), NumberSequenceKeypoint.new(1, 0.26875) })

			UIListLayout_11.Parent = ToggleHolder_1
			UIListLayout_11.HorizontalAlignment = Enum.HorizontalAlignment.Right
			UIListLayout_11.SortOrder = Enum.SortOrder.LayoutOrder
			UIListLayout_11.VerticalAlignment = Enum.VerticalAlignment.Center

			UIStroke_7.Parent = Toggle_1
			UIStroke_7.Color = Color3.fromRGB(255, 255, 255)
			UIStroke_7.Thickness = 1

			UICorner_9.Parent = Toggle_1
			UICorner_9.CornerRadius = UDim.new(0, 20)

			UIPadding_7.Parent = Toggle_1
			UIPadding_7.PaddingBottom = UDim.new(0, 15)
			UIPadding_7.PaddingLeft = UDim.new(0, 15)
			UIPadding_7.PaddingRight = UDim.new(0, 15)
			UIPadding_7.PaddingTop = UDim.new(0, 15)

			UIListLayout_12.Parent = Toggle_1
			UIListLayout_12.FillDirection = Enum.FillDirection.Horizontal
			UIListLayout_12.SortOrder = Enum.SortOrder.LayoutOrder
			UIListLayout_12.VerticalAlignment = Enum.VerticalAlignment.Center
			UIListLayout_12.HorizontalFlex = Enum.UIFlexAlignment.Fill

			UIPadding_8.Parent = ElemContainer_1
			UIPadding_8.PaddingBottom = UDim.new(0, 1)
			UIPadding_8.PaddingLeft = UDim.new(0, 1)
			UIPadding_8.PaddingRight = UDim.new(0, 1)
			UIPadding_8.PaddingTop = UDim.new(0, 1)

			Toggle_1.Name = "Toggle"
			Toggle_1.Parent = ElemContainer_1
			Toggle_1.AutomaticSize = Enum.AutomaticSize.Y
			Toggle_1.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
			Toggle_1.BackgroundTransparency = 0.4000000059604645
			Toggle_1.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Toggle_1.BorderSizePixel = 0
			Toggle_1.Position = UDim2.new(0.0259433966, 0, 0, 0)
			Toggle_1.Size = UDim2.new(0.930000007, 0, 0, 0)

			Displays_1.Name = "Displays"
			Displays_1.Parent = Toggle_1
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

			Icon_5.Name = "Icon"
			Icon_5.Parent = IconHolder_1
			Icon_5.AnchorPoint = Vector2.new(0.5, 0.5)
			Icon_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Icon_5.BackgroundTransparency = 1
			Icon_5.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Icon_5.BorderSizePixel = 0
			Icon_5.LayoutOrder = -1
			Icon_5.Position = UDim2.new(0.5, 0, 0.5, 0)
			Icon_5.Size = UDim2.new(0, 30, 0, 30)
			Icon_5.Image = "rbxassetid://10723424646"
			Icon_5.ImageColor3 = Color3.fromRGB(220, 220, 220)

			SignalHandler:HandleNil(Icon_5)

			UICorner_6.Parent = IconHolder_1
			UICorner_6.CornerRadius = UDim.new(0, 15)

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

			UIListLayout_9.Parent = Text_1
			UIListLayout_9.Padding = UDim.new(0, 5)
			UIListLayout_9.SortOrder = Enum.SortOrder.LayoutOrder
			UIListLayout_9.VerticalAlignment = Enum.VerticalAlignment.Center

			Display_1.Name = "Display"
			Display_1.Parent = Text_1
			Display_1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Display_1.BackgroundTransparency = 1
			Display_1.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Display_1.BorderSizePixel = 0
			Display_1.Position = UDim2.new(0, 0, 0.363013685, 0)
			Display_1.Size = UDim2.new(1, 0, 0, 17)
			Display_1.FontFace =
				Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal)
			Display_1.Text = Data.Title or Data.Name or "Toggle"
			Display_1.TextColor3 = Color3.fromRGB(220, 220, 220)
			Display_1.TextSize = 18
			Display_1.TextXAlignment = Enum.TextXAlignment.Left

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

			UIListLayout_10.Parent = Displays_1
			UIListLayout_10.Padding = UDim.new(0, 10)
			UIListLayout_10.FillDirection = Enum.FillDirection.Horizontal
			UIListLayout_10.SortOrder = Enum.SortOrder.LayoutOrder
			UIListLayout_10.VerticalAlignment = Enum.VerticalAlignment.Center

			ToggleHolder_1.Name = "ToggleHolder"
			ToggleHolder_1.Parent = Toggle_1
			ToggleHolder_1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			ToggleHolder_1.BackgroundTransparency = 1
			ToggleHolder_1.BorderColor3 = Color3.fromRGB(0, 0, 0)
			ToggleHolder_1.BorderSizePixel = 0
			ToggleHolder_1.LayoutOrder = 1
			ToggleHolder_1.Position = UDim2.new(0.735639036, 0, 0, 0)
			ToggleHolder_1.Size = UDim2.new(0, 110, 0, 45)

			if Description_1.Text == "" then
				Description_1.Visible = false

				Description_1:GetPropertyChangedSignal("Text"):Connect(function(Text)
					if Text == "" then
						Description_1.Visible = false
					else
						Description_1.Visible = true
					end
				end)
			end

			--// Methods
			function Methods:SetTitle(Text)
				assert(Text, "No Text For 'SetTitle'")
				Display_1.Text = tostring(Text)
			end

			function Methods:SetDescription(Text)
				assert(Text, "No Text For 'SetDescription'")
				Description_1.Text = tostring(Text)
			end

			return Methods
		end

		function Elements:NewSlider(Data)
			local Slider_1 = Instance.new("Frame")
			local Displays_2 = Instance.new("Frame")
			local IconHolder_2 = Instance.new("Frame")
			local Icon_6 = Instance.new("ImageLabel")
			local UICorner_10 = Instance.new("UICorner")
			local Text_2 = Instance.new("Frame")
			local UIListLayout_13 = Instance.new("UIListLayout")
			local Display_2 = Instance.new("TextLabel")
			local Description_2 = Instance.new("TextLabel")
			local UIListLayout_14 = Instance.new("UIListLayout")
			local SliderHolder_1 = Instance.new("Frame")
			local UIListLayout_15 = Instance.new("UIListLayout")
			local SliderBar_1 = Instance.new("Frame")
			local UICorner_11 = Instance.new("UICorner")
			local ProgressBar_1 = Instance.new("Frame")
			local UICorner_12 = Instance.new("UICorner")
			local Frame_1 = Instance.new("Frame")
			local UICorner_13 = Instance.new("UICorner")
			local Description_3 = Instance.new("TextLabel")
			local UIStroke_8 = Instance.new("UIStroke")
			local UICorner_14 = Instance.new("UICorner")
			local UIPadding_9 = Instance.new("UIPadding")
			local UIListLayout_16 = Instance.new("UIListLayout")

			Slider_1.Name = "Slider"
			Slider_1.Parent = ElemContainer_1
			Slider_1.AutomaticSize = Enum.AutomaticSize.Y
			Slider_1.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
			Slider_1.BackgroundTransparency = 0.4000000059604645
			Slider_1.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Slider_1.BorderSizePixel = 0
			Slider_1.Position = UDim2.new(0.0259433966, 0, 0, 0)
			Slider_1.Size = UDim2.new(0.930000007, 0, 0, 0)

			Displays_2.Name = "Displays"
			Displays_2.Parent = Slider_1
			Displays_2.AnchorPoint = Vector2.new(0, 0.5)
			Displays_2.AutomaticSize = Enum.AutomaticSize.Y
			Displays_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Displays_2.BackgroundTransparency = 1
			Displays_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Displays_2.BorderSizePixel = 0
			Displays_2.Position = UDim2.new(0.0125523014, -6, 0.5, 0)
			Displays_2.Size = UDim2.new(0.763000011, 0, 0, 0)

			IconHolder_2.Name = "IconHolder"
			IconHolder_2.Parent = Displays_2
			IconHolder_2.AnchorPoint = Vector2.new(0, 0.5)
			IconHolder_2.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
			IconHolder_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
			IconHolder_2.BorderSizePixel = 0
			IconHolder_2.Position = UDim2.new(0, 0, 0.5, 0)
			IconHolder_2.Size = UDim2.new(0, 50, 0, 50)
			IconHolder_2.Visible = false

			Icon_6.Name = "Icon"
			Icon_6.Parent = IconHolder_2
			Icon_6.AnchorPoint = Vector2.new(0.5, 0.5)
			Icon_6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Icon_6.BackgroundTransparency = 1
			Icon_6.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Icon_6.BorderSizePixel = 0
			Icon_6.LayoutOrder = -1
			Icon_6.Position = UDim2.new(0.5, 0, 0.5, 0)
			Icon_6.Size = UDim2.new(0, 30, 0, 30)
			Icon_6.Image = "rbxassetid://10723424646"
			Icon_6.ImageColor3 = Color3.fromRGB(220, 220, 220)

			UICorner_10.Parent = IconHolder_2
			UICorner_10.CornerRadius = UDim.new(0, 15)

			Text_2.Name = "Text"
			Text_2.Parent = Displays_2
			Text_2.AutomaticSize = Enum.AutomaticSize.XY
			Text_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Text_2.BackgroundTransparency = 1
			Text_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Text_2.BorderSizePixel = 0
			Text_2.LayoutOrder = 2
			Text_2.Position = UDim2.new(0.178094149, -6, 0, 0)
			Text_2.Size = UDim2.new(0.279671192, 0, 1, 0)

			UIListLayout_13.Parent = Text_2
			UIListLayout_13.Padding = UDim.new(0, 5)
			UIListLayout_13.SortOrder = Enum.SortOrder.LayoutOrder
			UIListLayout_13.VerticalAlignment = Enum.VerticalAlignment.Center
			UIListLayout_13.HorizontalFlex = Enum.UIFlexAlignment.Fill
			UIListLayout_13.VerticalFlex = Enum.UIFlexAlignment.Fill

			Display_2.Name = "Display"
			Display_2.Parent = Text_2
			Display_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Display_2.BackgroundTransparency = 1
			Display_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Display_2.BorderSizePixel = 0
			Display_2.Position = UDim2.new(0, 0, 0.363013685, 0)
			Display_2.Size = UDim2.new(1, 0, 0, 17)
			Display_2.FontFace =
				Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal)
			Display_2.Text = "Slider"
			Display_2.TextColor3 = Color3.fromRGB(220, 220, 220)
			Display_2.TextSize = 18
			Display_2.TextXAlignment = Enum.TextXAlignment.Left

			Description_2.Name = "Description"
			Description_2.Parent = Text_2
			Description_2.AutomaticSize = Enum.AutomaticSize.Y
			Description_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Description_2.BackgroundTransparency = 1
			Description_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Description_2.BorderSizePixel = 0
			Description_2.Position = UDim2.new(0, 0, 0.5, 0)
			Description_2.Size = UDim2.new(1, 0, 0, 0)
			Description_2.Font = Enum.Font.GothamMedium
			Description_2.Text = "Lorem Ipsum Dolor Amet"
			Description_2.TextColor3 = Color3.fromRGB(180, 180, 180)
			Description_2.TextSize = 16
			Description_2.TextWrapped = true
			Description_2.TextXAlignment = Enum.TextXAlignment.Left
			Description_2.TextYAlignment = Enum.TextYAlignment.Top

			UIListLayout_14.Parent = Displays_2
			UIListLayout_14.Padding = UDim.new(0, 10)
			UIListLayout_14.FillDirection = Enum.FillDirection.Horizontal
			UIListLayout_14.SortOrder = Enum.SortOrder.LayoutOrder
			UIListLayout_14.VerticalAlignment = Enum.VerticalAlignment.Center

			SliderHolder_1.Name = "SliderHolder"
			SliderHolder_1.Parent = Slider_1
			SliderHolder_1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			SliderHolder_1.BackgroundTransparency = 1
			SliderHolder_1.BorderColor3 = Color3.fromRGB(0, 0, 0)
			SliderHolder_1.BorderSizePixel = 0
			SliderHolder_1.LayoutOrder = 1
			SliderHolder_1.Position = UDim2.new(0, 0, 0.820895493, 0)
			SliderHolder_1.Size = UDim2.new(0, 372, 0, 28)

			UIListLayout_15.Parent = SliderHolder_1
			UIListLayout_15.FillDirection = Enum.FillDirection.Horizontal
			UIListLayout_15.SortOrder = Enum.SortOrder.LayoutOrder
			UIListLayout_15.VerticalAlignment = Enum.VerticalAlignment.Bottom

			SliderBar_1.Name = "SliderBar"
			SliderBar_1.Parent = SliderHolder_1
			SliderBar_1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			SliderBar_1.BackgroundTransparency = 0.8999999761581421
			SliderBar_1.BorderColor3 = Color3.fromRGB(0, 0, 0)
			SliderBar_1.BorderSizePixel = 0
			SliderBar_1.Position = UDim2.new(0, 0, 0.785714269, 0)
			SliderBar_1.Size = UDim2.new(0, 277, 0, 6)

			UICorner_11.Parent = SliderBar_1
			UICorner_11.CornerRadius = UDim.new(1, 0)

			ProgressBar_1.Name = "ProgressBar"
			ProgressBar_1.Parent = SliderBar_1
			ProgressBar_1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			ProgressBar_1.BorderColor3 = Color3.fromRGB(0, 0, 0)
			ProgressBar_1.BorderSizePixel = 0
			ProgressBar_1.Size = UDim2.new(0.600000024, 0, 1, 0)

			UICorner_12.Parent = ProgressBar_1
			UICorner_12.CornerRadius = UDim.new(1, 0)

			Frame_1.Parent = ProgressBar_1
			Frame_1.Active = true
			Frame_1.AnchorPoint = Vector2.new(1, 0.5)
			Frame_1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Frame_1.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Frame_1.BorderSizePixel = 0
			Frame_1.Position = UDim2.new(1, 0, 0.5, 0)
			Frame_1.Size = UDim2.new(0, 10, 0, 10)

			UICorner_13.Parent = Frame_1
			UICorner_13.CornerRadius = UDim.new(1, 0)

			Description_3.Name = "Description"
			Description_3.Parent = SliderHolder_1
			Description_3.AutomaticSize = Enum.AutomaticSize.XY
			Description_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Description_3.BackgroundTransparency = 1
			Description_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Description_3.BorderSizePixel = 0
			Description_3.Position = UDim2.new(0.744623661, 0, 0.428571433, 0)
			Description_3.Size = UDim2.new(0, 0, 0, 0)
			Description_3.Font = Enum.Font.GothamMedium
			Description_3.Text = "100"
			Description_3.TextColor3 = Color3.fromRGB(180, 180, 180)
			Description_3.TextSize = 16
			Description_3.TextWrapped = true
			Description_3.TextXAlignment = Enum.TextXAlignment.Right
			Description_3.TextYAlignment = Enum.TextYAlignment.Top

			UIStroke_8.Parent = Slider_1
			UIStroke_8.Color = Color3.fromRGB(255, 255, 255)
			UIStroke_8.Thickness = 1

			UICorner_14.Parent = Slider_1
			UICorner_14.CornerRadius = UDim.new(0, 20)

			UIPadding_9.Parent = Slider_1
			UIPadding_9.PaddingBottom = UDim.new(0, 15)
			UIPadding_9.PaddingLeft = UDim.new(0, 15)
			UIPadding_9.PaddingRight = UDim.new(0, 15)
			UIPadding_9.PaddingTop = UDim.new(0, 15)

			UIListLayout_16.Parent = Slider_1
			UIListLayout_16.SortOrder = Enum.SortOrder.LayoutOrder
			UIListLayout_16.VerticalAlignment = Enum.VerticalAlignment.Center
		end

		function Methods:NewDropdown(Data) end

		function Methods:NewParagraph(Data) end

		function Methods:NewButton(Data) end

		for _, Element in pairs(ElemContainer_1:GetChildren()) do
			if Element:FindFirstChild("UIStroke") then
				Element.UIStroke.Transparency = 0.9
			end
		end

		SignalHandler:NewSignal(ElemContainer_1, "ChildAdded", function(Element)
			if Element:FindFirstChild("UIStroke") then
				Element.UIStroke.Transparency = 0.9
			end
		end)

		if not DataEnd.SearchBarEnabled then
			SearchBar.Visible = false
		end

		return Elements
	end

	Window.Name = "Window"
	Window.Parent = self.Library.GUI
	Window.Active = true
	Window.AnchorPoint = Vector2.new(0.5, 0.5)
	Window.AutoButtonColor = false
	Window.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
	Window.BackgroundTransparency = 0.10000000149011612
	Window.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Window.BorderSizePixel = 0
	Window.LayoutOrder = 1
	Window.Modal = true
	Window.Position = UDim2.new(0.5, 0, 0.5, 0)
	Window.Size = UDim2.new(0, 425, 0, 520)
	Window.ClipsDescendants = true
	Window.Image = "rbxassetid://16255699706"
	Window.ImageTransparency = 0.8999999761581421
	Window.ScaleType = Enum.ScaleType.Crop

	UICorner_1.Parent = Window
	UICorner_1.CornerRadius = UDim.new(0, 25)

	UIStroke_1.Parent = Window
	UIStroke_1.Color = Color3.fromRGB(255, 255, 255)
	UIStroke_1.Thickness = 1
	UIStroke_1.Transparency = 0.9

	TopBar_1.Name = "TopBar"
	TopBar_1.Parent = Window
	TopBar_1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TopBar_1.BackgroundTransparency = 1
	TopBar_1.BorderColor3 = Color3.fromRGB(0, 0, 0)
	TopBar_1.BorderSizePixel = 0
	TopBar_1.LayoutOrder = -1
	TopBar_1.Size = UDim2.new(1, 0, 0, 71)

	Header_1.Name = "Header"
	Header_1.Parent = TopBar_1
	Header_1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Header_1.BackgroundTransparency = 1
	Header_1.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Header_1.BorderSizePixel = 0
	Header_1.Size = UDim2.new(0.5, 0, 1, 0)

	Title_1.Name = "Title"
	Title_1.Parent = Header_1
	Title_1.Active = true
	Title_1.AnchorPoint = Vector2.new(0.5, 0.5)
	Title_1.AutoButtonColor = false
	Title_1.AutomaticSize = Enum.AutomaticSize.X
	Title_1.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
	Title_1.BackgroundTransparency = 0.10000000149011612
	Title_1.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Title_1.BorderSizePixel = 0
	Title_1.Modal = true
	Title_1.Position = UDim2.new(0.22639218, 0, 0.447589278, 0)
	Title_1.Size = UDim2.new(0, 45, 0, 45)
	Title_1.Image = "rbxassetid://16255699706"
	Title_1.ImageTransparency = 0.949999988079071
	Title_1.ScaleType = Enum.ScaleType.Crop

	UICorner_2.Parent = Title_1
	UICorner_2.CornerRadius = UDim.new(1, 0)

	UIListLayout_1.Parent = Title_1
	UIListLayout_1.Padding = UDim.new(0, 7)
	UIListLayout_1.FillDirection = Enum.FillDirection.Horizontal
	UIListLayout_1.HorizontalAlignment = Enum.HorizontalAlignment.Center
	UIListLayout_1.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout_1.VerticalAlignment = Enum.VerticalAlignment.Center

	UIPadding_1.Parent = Title_1
	UIPadding_1.PaddingLeft = UDim.new(0, 12)
	UIPadding_1.PaddingRight = UDim.new(0, 12)

	UIStroke_2.Parent = Title_1
	UIStroke_2.Color = Color3.fromRGB(255, 255, 255)
	UIStroke_2.Thickness = 1
	UIStroke_2.Transparency = 0.9

	Title_2.Name = "Title"
	Title_2.Parent = Title_1
	Title_2.AutomaticSize = Enum.AutomaticSize.X
	Title_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Title_2.BackgroundTransparency = 1.0099999904632568
	Title_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Title_2.BorderSizePixel = 0
	Title_2.LayoutOrder = 1
	Title_2.Size = UDim2.new(0, 0, 1, 0)
	Title_2.Font = Enum.Font.GothamMedium
	Title_2.Text = DataEnd.Title
	Title_2.TextColor3 = Color3.fromRGB(220, 220, 220)
	Title_2.TextSize = 15

	Icon_1.Name = "Icon"
	Icon_1.Parent = Title_1
	Icon_1.AnchorPoint = Vector2.new(0.5, 0.5)
	Icon_1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Icon_1.BackgroundTransparency = 1
	Icon_1.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Icon_1.BorderSizePixel = 0
	Icon_1.Position = UDim2.new(0.5, 0, 0.5, 0)
	Icon_1.Size = UDim2.new(0, 22, 0, 22)
	Icon_1.Image = "rbxassetid://10734975692" --// TODO: add logo
	Icon_1.ImageTransparency = 0.30000001192092896

	UIListLayout_2.Parent = Header_1
	UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout_2.VerticalAlignment = Enum.VerticalAlignment.Center

	UIPadding_2.Parent = Header_1
	UIPadding_2.PaddingLeft = UDim.new(0, 10)

	UIListLayout_3.Parent = TopBar_1
	UIListLayout_3.FillDirection = Enum.FillDirection.Horizontal
	UIListLayout_3.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout_3.VerticalAlignment = Enum.VerticalAlignment.Center
	UIListLayout_3.HorizontalFlex = Enum.UIFlexAlignment.Fill

	ButtonZones_1.Name = "Button Zones"
	ButtonZones_1.Parent = TopBar_1
	ButtonZones_1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ButtonZones_1.BackgroundTransparency = 1
	ButtonZones_1.BorderColor3 = Color3.fromRGB(0, 0, 0)
	ButtonZones_1.BorderSizePixel = 0
	ButtonZones_1.Position = UDim2.new(0.643529415, 0, 0, 0)
	ButtonZones_1.Size = UDim2.new(0.356470585, 0, 1, 0)

	Button_1.Name = "Button"
	Button_1.Parent = ButtonZones_1
	Button_1.Active = true
	Button_1.AnchorPoint = Vector2.new(0.5, 0.5)
	Button_1.AutoButtonColor = false
	Button_1.AutomaticSize = Enum.AutomaticSize.X
	Button_1.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
	Button_1.BackgroundTransparency = 0.10000000149011612
	Button_1.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Button_1.BorderSizePixel = 0
	Button_1.Modal = true
	Button_1.Position = UDim2.new(0.22639218, 0, 0.447589278, 0)
	Button_1.Size = UDim2.new(0, 35, 0, 35)
	Button_1.Image = "rbxassetid://16255699706"
	Button_1.ImageTransparency = 0.949999988079071
	Button_1.ScaleType = Enum.ScaleType.Crop

	UICorner_3.Parent = Button_1
	UICorner_3.CornerRadius = UDim.new(1, 0)

	UIListLayout_4.Parent = Button_1
	UIListLayout_4.Padding = UDim.new(0, 7)
	UIListLayout_4.FillDirection = Enum.FillDirection.Horizontal
	UIListLayout_4.HorizontalAlignment = Enum.HorizontalAlignment.Center
	UIListLayout_4.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout_4.VerticalAlignment = Enum.VerticalAlignment.Center

	UIPadding_3.Parent = Button_1
	UIPadding_3.PaddingLeft = UDim.new(0, 7)
	UIPadding_3.PaddingRight = UDim.new(0, 7)

	UIStroke_3.Parent = Button_1
	UIStroke_3.Color = Color3.fromRGB(255, 255, 255)
	UIStroke_3.Thickness = 1

	Icon_2.Name = "Icon"
	Icon_2.Parent = Button_1
	Icon_2.AnchorPoint = Vector2.new(0.5, 0.5)
	Icon_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Icon_2.BackgroundTransparency = 1
	Icon_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Icon_2.BorderSizePixel = 0
	Icon_2.Position = UDim2.new(0.5, 0, 0.5, 0)
	Icon_2.Size = UDim2.new(0, 22, 0, 22)
	Icon_2.Image = "rbxassetid://10709775241"
	Icon_2.ImageTransparency = 0.30000001192092896

	Button_2.Name = "Button"
	Button_2.Parent = ButtonZones_1
	Button_2.Active = true
	Button_2.AnchorPoint = Vector2.new(0.5, 0.5)
	Button_2.AutoButtonColor = false
	Button_2.AutomaticSize = Enum.AutomaticSize.X
	Button_2.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
	Button_2.BackgroundTransparency = 0.10000000149011612
	Button_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Button_2.BorderSizePixel = 0
	Button_2.Modal = true
	Button_2.Position = UDim2.new(0.22639218, 0, 0.447589278, 0)
	Button_2.Size = UDim2.new(0, 35, 0, 35)
	Button_2.Image = "rbxassetid://16255699706"
	Button_2.ImageTransparency = 0.949999988079071
	Button_2.ScaleType = Enum.ScaleType.Crop

	UICorner_4.Parent = Button_2
	UICorner_4.CornerRadius = UDim.new(1, 0)

	UIListLayout_5.Parent = Button_2
	UIListLayout_5.Padding = UDim.new(0, 7)
	UIListLayout_5.FillDirection = Enum.FillDirection.Horizontal
	UIListLayout_5.HorizontalAlignment = Enum.HorizontalAlignment.Center
	UIListLayout_5.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout_5.VerticalAlignment = Enum.VerticalAlignment.Center

	UIPadding_4.Parent = Button_2
	UIPadding_4.PaddingLeft = UDim.new(0, 7)
	UIPadding_4.PaddingRight = UDim.new(0, 7)

	UIStroke_4.Parent = Button_2
	UIStroke_4.Color = Color3.fromRGB(255, 255, 255)
	UIStroke_4.Thickness = 1

	Icon_3.Name = "Icon"
	Icon_3.Parent = Button_2
	Icon_3.AnchorPoint = Vector2.new(0.5, 0.5)
	Icon_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Icon_3.BackgroundTransparency = 1
	Icon_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Icon_3.BorderSizePixel = 0
	Icon_3.Position = UDim2.new(0.5, 0, 0.5, 0)
	Icon_3.Size = UDim2.new(0, 22, 0, 22)
	Icon_3.Image = "rbxassetid://10734896206"
	Icon_3.ImageTransparency = 0.30000001192092896

	Button_3.Name = "Button"
	Button_3.Parent = ButtonZones_1
	Button_3.Active = true
	Button_3.AnchorPoint = Vector2.new(0.5, 0.5)
	Button_3.AutoButtonColor = false
	Button_3.AutomaticSize = Enum.AutomaticSize.X
	Button_3.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
	Button_3.BackgroundTransparency = 0.10000000149011612
	Button_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Button_3.BorderSizePixel = 0
	Button_3.Modal = true
	Button_3.Position = UDim2.new(0.22639218, 0, 0.447589278, 0)
	Button_3.Size = UDim2.new(0, 35, 0, 35)
	Button_3.Image = "rbxassetid://16255699706"
	Button_3.ImageTransparency = 0.949999988079071
	Button_3.ScaleType = Enum.ScaleType.Crop

	UICorner_5.Parent = Button_3
	UICorner_5.CornerRadius = UDim.new(1, 0)

	UIListLayout_6.Parent = Button_3
	UIListLayout_6.Padding = UDim.new(0, 7)
	UIListLayout_6.FillDirection = Enum.FillDirection.Horizontal
	UIListLayout_6.HorizontalAlignment = Enum.HorizontalAlignment.Center
	UIListLayout_6.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout_6.VerticalAlignment = Enum.VerticalAlignment.Center

	UIPadding_5.Parent = Button_3
	UIPadding_5.PaddingLeft = UDim.new(0, 7)
	UIPadding_5.PaddingRight = UDim.new(0, 7)

	UIStroke_5.Parent = Button_3
	UIStroke_5.Color = Color3.fromRGB(255, 255, 255)
	UIStroke_5.Thickness = 1

	Icon_4.Name = "Icon"
	Icon_4.Parent = Button_3
	Icon_4.AnchorPoint = Vector2.new(0.5, 0.5)
	Icon_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Icon_4.BackgroundTransparency = 1
	Icon_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Icon_4.BorderSizePixel = 0
	Icon_4.Position = UDim2.new(0.5, 0, 0.5, 0)
	Icon_4.Size = UDim2.new(0, 22, 0, 22)
	Icon_4.Image = "rbxassetid://10747384394"
	Icon_4.ImageTransparency = 0.30000001192092896

	UIPadding_6.Parent = ButtonZones_1
	UIPadding_6.PaddingRight = UDim.new(0, 15)

	UIListLayout_7.Parent = ButtonZones_1
	UIListLayout_7.Padding = UDim.new(0, 8)
	UIListLayout_7.FillDirection = Enum.FillDirection.Horizontal
	UIListLayout_7.HorizontalAlignment = Enum.HorizontalAlignment.Right
	UIListLayout_7.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout_7.VerticalAlignment = Enum.VerticalAlignment.Center

	Container_1.Name = "Container"
	Container_1.Parent = Window
	Container_1.Active = true
	Container_1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Container_1.BackgroundTransparency = 1
	Container_1.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Container_1.BorderSizePixel = 0
	Container_1.Position = UDim2.new(0, 0, 0.148076922, 0)
	Container_1.Size = UDim2.new(0.997647047, 0, 0.832692325, 0)
	Container_1.ClipsDescendants = true
	Container_1.AutomaticCanvasSize = Enum.AutomaticSize.X
	Container_1.BottomImage = "rbxasset://textures/ui/Scroll/scroll-bottom.png"
	Container_1.CanvasPosition = Vector2.new(0, 0)
	Container_1.CanvasSize = UDim2.new(0, 0, 0, 0)
	Container_1.ElasticBehavior = Enum.ElasticBehavior.WhenScrollable
	Container_1.HorizontalScrollBarInset = Enum.ScrollBarInset.None
	Container_1.MidImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
	Container_1.ScrollBarImageColor3 = Color3.fromRGB(0, 0, 0)
	Container_1.ScrollBarImageTransparency = 0
	Container_1.ScrollBarThickness = 0
	Container_1.ScrollingDirection = Enum.ScrollingDirection.XY
	Container_1.TopImage = "rbxasset://textures/ui/Scroll/scroll-top.png"
	Container_1.VerticalScrollBarInset = Enum.ScrollBarInset.None
	Container_1.VerticalScrollBarPosition = Enum.VerticalScrollBarPosition.Right

	for _, Stroke in pairs(ButtonZones_1:GetDescendants()) do
		if Stroke:IsA("UIStroke") then
			Stroke.Transparency = 0.84 --// My gui2lua didnt save stroke transparency so i had to do it manually :weary:
		end
	end

	function Methods:Enter() end

	function Methods:Exit() end

	self.Body = Window
	return Methods
end

function Window:Remove()
	if self.Body then
		self.Body:Destroy()
	end

	self.Library.SignalHandler:DisconnectAllSignals()
end

return Window
