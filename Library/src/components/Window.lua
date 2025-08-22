local Window = {}
Window.__index = Window

function Window.New(Library)
	local Self = setmetatable({}, Window)

	Self.Library = Library
	Self.Resizable = false
	Self.Body = nil
	Self.BodyCollection = {}
	Self.DefaultSize = UDim2.new(0, 425, 0, 520)

	return Self
end

function Window:Init(DataEnd)
	local Methods = {}

	--// Modules
	local Library = self.Library
	local SignalHandler = Library.SignalHandler
	local AnimHandler = Library.AnimationHandler

	--// Element Modules
	local ToggleModule = Library.Import("src/elements/Toggle")
	local ButtonModule = Library.Import("src/elements/Button")
	local SliderModule = Library.Import("src/elements/Slider")
	local DropdownModule = Library.Import("src/elements/Dropdown")

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
	local UIListLayout_33 = Instance.new("UIListLayout")
	local UIListLayout_34 = Instance.new("UIListLayout")

	self.Body = Window

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
	Window.Size = DataEnd.WindowSize or self.DefaultSize
	Window.ClipsDescendants = true
	Window.Image = "rbxassetid://16255699706"
	Window.ImageTransparency = 0.8999999761581421
	Window.ScaleType = Enum.ScaleType.Crop

	local Size = DataEnd.WindowSize or self.DefaultSize :: UDim2

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

	local Logo = Library:GetIcon(DataEnd.Logo or DataEnd.Icon or "") or ""

	Icon_1.Name = "Icon"
	Icon_1.Parent = Title_1
	Icon_1.AnchorPoint = Vector2.new(0.5, 0.5)
	Icon_1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Icon_1.BackgroundTransparency = 1
	Icon_1.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Icon_1.BorderSizePixel = 0
	Icon_1.Position = UDim2.new(0.5, 0, 0.5, 0)
	Icon_1.Size = UDim2.new(0, 22, 0, 22)
	Icon_1.Image = Logo.Image
	Icon_1.ImageTransparency = 0.30000001192092896
	Icon_1.ImageRectSize = Logo.ImageRectSize
	Icon_1.ImageRectOffset = Logo.ImageRectPosition

	SignalHandler:HandleNil(Icon_1)

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

	UIListLayout_33.Parent = Container_1
	UIListLayout_33.FillDirection = Enum.FillDirection.Horizontal
	UIListLayout_33.SortOrder = Enum.SortOrder.LayoutOrder

	UIListLayout_34.Parent = Window
	UIListLayout_34.Padding = UDim.new(0, 5)
	UIListLayout_34.SortOrder = Enum.SortOrder.LayoutOrder

	for _, Stroke in pairs(ButtonZones_1:GetDescendants()) do
		if Stroke:IsA("UIStroke") then
			Stroke.Transparency = 0.84 --// My gui2lua didnt save stroke transparency so i had to do it manually :weary:
		end
	end

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

		function Elements:NewToggle(Data)
			local Toggle = ToggleModule.New(Library, ElemContainer_1)
			Toggle:Init(Data)
		end

		function Elements:NewSlider(Data)
			local Slider = SliderModule.New(Library, ElemContainer_1)
			Slider:Init(Data)
		end

		function Elements:NewDropdown(Data)
			local Dropdown = DropdownModule.New(Library, ElemContainer_1)
			Dropdown:Init(Data)
		end

		function Elements:NewParagraph(Data) end

		function Elements:NewButton(Data)
			local Button = ButtonModule.New(Library, ElemContainer_1)
			Button:Init(Data)
		end

		if not DataEnd.SearchBarEnabled then
			SearchBar.Visible = false
		end

		for _, Element in pairs(ElemContainer_1:GetChildren()) do
			if Element:FindFirstChild("UICorner") then
				SignalHandler:NewSignal(Element, "MouseEnter", function()
					AnimHandler:Animate(
						Element:FindFirstChild("UICorner"),
						TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{ CornerRadius = UDim.new(0, 15) }
					)
				end)

				SignalHandler:NewSignal(Element, "MouseLeave", function()
					AnimHandler:Animate(
						Element:FindFirstChild("UICorner"),
						TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{ CornerRadius = UDim.new(0, 20) }
					)
				end)
			end
		end

		SignalHandler:NewSignal(ElemContainer_1, "ChildAdded", function(Element)
			SignalHandler:NewSignal(Element, "MouseEnter", function()
				AnimHandler:Animate(
					Element:FindFirstChild("UICorner"),
					TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
					{ CornerRadius = UDim.new(0, 13) }
				)
			end)

			SignalHandler:NewSignal(Element, "MouseLeave", function()
				AnimHandler:Animate(
					Element:FindFirstChild("UICorner"),
					TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
					{ CornerRadius = UDim.new(0, 20) }
				)
			end)
		end)

		for _, Button in pairs(ButtonZones_1:GetChildren()) do
			if Button:IsA("ImageButton") then
				SignalHandler:NewSignal(Button, "MouseEnter", function()
					AnimHandler:Animate(
						Button,
						TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{ BackgroundColor3 = Color3.fromRBG(70, 70, 70) }
					)

					AnimHandler:Animate(
						Button:FindFirstChild("UIStroke"),
						TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{ Transparency = 0.75 }
					)
				end)

				SignalHandler:NewSignal(Button, "MouseLeave", function()
					AnimHandler:Animate(
						Button,
						TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{ BackgroundColor3 = Color3.fromRBG(40, 40, 40) }
					)

					AnimHandler:Animate(
						Button:FindFirstChild("UIStroke"),
						TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{ Transparency = 0.85 }
					)
				end)
			end
		end

		--[[SignalHandler:NewSignal(ButtonZones_1, "ChildAdded", function(Button)
			SignalHandler:NewSignal(Button, "MouseEnter", function()
				AnimHandler:Animate(
					Button:FindFirstChild("UICorner"),
					TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
					{ CornerRadius = UDim.new(0, 13) }
				)
			end)

			SignalHandler:NewSignal(Element, "MouseLeave", function()
				AnimHandler:Animate(
					Element:FindFirstChild("UICorner"),
					TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
					{ CornerRadius = UDim.new(0, 20) }
				)
			end)
		end)]]
		--//TODO: Uncomment when :AddTopbarButton is added

		return Elements
	end

	function Methods:Enter()
		Window.Visible = true

		AnimHandler:Animate(
			Window,
			TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
			{ Size = UDim2.new(0, Size.X.Offset, 0, Size.Y.Offset) }
		)

		print(tostring(Size.X), tostring(Size.Y))
	end

	function Methods:Exit()
		AnimHandler:Animate(
			Window,
			TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
			{ Size = UDim2.fromOffset(Window.AbsoluteSize.X, 0) }
		)

		task.wait(0.4)
		Window.Visible = false
	end

	function Methods:Change(Hash)
		if type(Hash) == "string" then
			for Index, Container in pairs(Container_1:GetChildren()) do
				if Container.Name == Hash then
					AnimHandler:Animate(
						Container_1,
						TweenInfo.new(0.75, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{ CanvasPosition = Vector2.new(Container_1.AbsoluteSize.X * tonumber(Index - 2), 0) } --// i used -2 becouse the index counts all the children like Ui layouts
					)
				end
			end
		end
	end

	return Methods
end

function Window:Remove()
	if self.Body then
		self.Body:Destroy()
	end

	self.Library.SignalHandler:DisconnectAllSignals()
end

return Window
