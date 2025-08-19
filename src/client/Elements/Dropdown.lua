local Dropdown = {}
Dropdown.__index = Dropdown

function Dropdown.New(Library, Body)
	local Self = setmetatable({}, Dropdown)

	Self.Library = Library
	Self.Body = Body

	return Self
end

function Dropdown:Init(Data)
	local Library = self.Library
	assert(Library, "No library found for '" .. (Data.Title or "Slider") .. ", ended thread")

	local SignalHandler = Library.SignalHandler
	local AnimHandler = Library.AnimationHandler

	local Dropdown = Instance.new("Frame")
	local Displays_1 = Instance.new("Frame")
	local IconHolder_1 = Instance.new("Frame")
	local Icon_1 = Instance.new("ImageLabel")
	local UICorner_1 = Instance.new("UICorner")
	local Text_1 = Instance.new("Frame")
	local UIListLayout_1 = Instance.new("UIListLayout")
	local Display_1 = Instance.new("TextLabel")
	local Description_1 = Instance.new("TextLabel")
	local UIListLayout_2 = Instance.new("UIListLayout")
	local DropdownHolder_1 = Instance.new("Frame")
	local UIListLayout_3 = Instance.new("UIListLayout")
	local Dropdown_1 = Instance.new("Frame")
	local Title_1 = Instance.new("TextLabel")
	local Icon_2 = Instance.new("ImageLabel")
	local UIListLayout_4 = Instance.new("UIListLayout")
	local UIPadding_1 = Instance.new("UIPadding")
	local UIStroke_1 = Instance.new("UIStroke")
	local UICorner_2 = Instance.new("UICorner")
	local UISizeConstraint_1 = Instance.new("UISizeConstraint")
	local UIStroke_2 = Instance.new("UIStroke")
	local UICorner_3 = Instance.new("UICorner")
	local UIPadding_2 = Instance.new("UIPadding")
	local UIListLayout_5 = Instance.new("UIListLayout")

	Dropdown.Name = "Dropdown"
	Dropdown.Parent = self.Body
	Dropdown.AutomaticSize = Enum.AutomaticSize.Y
	Dropdown.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
	Dropdown.BackgroundTransparency = 0.4000000059604645
	Dropdown.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Dropdown.BorderSizePixel = 0
	Dropdown.Position = UDim2.new(0.023151705, 0, 0.290023208, 0)
	Dropdown.Size = UDim2.new(0.930000007, 0, 0, 0)

	Displays_1.Name = "Displays"
	Displays_1.Parent = Dropdown
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

	Icon_1.Name = "Icon"
	Icon_1.Parent = IconHolder_1
	Icon_1.AnchorPoint = Vector2.new(0.5, 0.5)
	Icon_1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Icon_1.BackgroundTransparency = 1
	Icon_1.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Icon_1.BorderSizePixel = 0
	Icon_1.LayoutOrder = -1
	Icon_1.Position = UDim2.new(0.5, 0, 0.5, 0)
	Icon_1.Size = UDim2.new(0, 30, 0, 30)
	Icon_1.Image = "rbxassetid://10723424646"
	Icon_1.ImageColor3 = Color3.fromRGB(220, 220, 220)

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
	Display_1.Font = Enum.Font.Unknown
	Display_1.Text = "Dropdown"
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
	Description_1.Text = "Lorem Ipsum Dolor Amet"
	Description_1.TextColor3 = Color3.fromRGB(180, 180, 180)
	Description_1.TextSize = 16
	Description_1.TextWrapped = true
	Description_1.TextXAlignment = Enum.TextXAlignment.Left
	Description_1.TextYAlignment = Enum.TextYAlignment.Top

	UIListLayout_2.Parent = Displays_1
	UIListLayout_2.Padding = UDim.new(0, 10)
	UIListLayout_2.FillDirection = Enum.FillDirection.Horizontal
	UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout_2.VerticalAlignment = Enum.VerticalAlignment.Center

	DropdownHolder_1.Name = "DropdownHolder"
	DropdownHolder_1.Parent = Dropdown
	DropdownHolder_1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	DropdownHolder_1.BackgroundTransparency = 1
	DropdownHolder_1.BorderColor3 = Color3.fromRGB(0, 0, 0)
	DropdownHolder_1.BorderSizePixel = 0
	DropdownHolder_1.LayoutOrder = 1
	DropdownHolder_1.Position = UDim2.new(0.298598409, 0, 0, 0)
	DropdownHolder_1.Size = UDim2.new(0, 254, 0, 54)

	UIListLayout_3.Parent = DropdownHolder_1
	UIListLayout_3.HorizontalAlignment = Enum.HorizontalAlignment.Right
	UIListLayout_3.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout_3.VerticalAlignment = Enum.VerticalAlignment.Center

	Dropdown_1.Name = "Dropdown"
	Dropdown_1.Parent = DropdownHolder_1
	Dropdown_1.AutomaticSize = Enum.AutomaticSize.X
	Dropdown_1.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
	Dropdown_1.BackgroundTransparency = 0.6000000238418579
	Dropdown_1.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Dropdown_1.BorderSizePixel = 0
	Dropdown_1.Position = UDim2.new(0.00302494015, 0, 0.129629627, 0)
	Dropdown_1.Size = UDim2.new(0, 189, 0, 40)

	Title_1.Name = "Title"
	Title_1.Parent = Dropdown_1
	Title_1.AutomaticSize = Enum.AutomaticSize.X
	Title_1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Title_1.BackgroundTransparency = 1.0099999904632568
	Title_1.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Title_1.BorderSizePixel = 0
	Title_1.LayoutOrder = 1
	Title_1.Size = UDim2.new(0, 0, 1, 0)
	Title_1.Font = Enum.Font.GothamMedium
	Title_1.Text = "Ancient Seed Pack"
	Title_1.TextColor3 = Color3.fromRGB(220, 220, 220)
	Title_1.TextSize = 15
	Title_1.TextTruncate = Enum.TextTruncate.AtEnd
	Title_1.TextXAlignment = Enum.TextXAlignment.Right

	Icon_2.Name = "Icon"
	Icon_2.Parent = Dropdown_1
	Icon_2.AnchorPoint = Vector2.new(0.5, 0.5)
	Icon_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Icon_2.BackgroundTransparency = 1
	Icon_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Icon_2.BorderSizePixel = 0
	Icon_2.LayoutOrder = 2
	Icon_2.Position = UDim2.new(0.5, 0, 0.5, 0)
	Icon_2.Size = UDim2.new(0, 20, 0, 20)
	Icon_2.Image = "rbxassetid://10709797508"
	Icon_2.ImageTransparency = 0.30000001192092896

	UIListLayout_4.Parent = Dropdown_1
	UIListLayout_4.Padding = UDim.new(0, 7)
	UIListLayout_4.FillDirection = Enum.FillDirection.Horizontal
	UIListLayout_4.HorizontalAlignment = Enum.HorizontalAlignment.Center
	UIListLayout_4.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout_4.VerticalAlignment = Enum.VerticalAlignment.Center

	UIPadding_1.Parent = Dropdown_1
	UIPadding_1.PaddingLeft = UDim.new(0, 12)
	UIPadding_1.PaddingRight = UDim.new(0, 12)

	UIStroke_1.Parent = Dropdown_1
	UIStroke_1.Color = Color3.fromRGB(255, 255, 255)
	UIStroke_1.Thickness = 1

	UICorner_2.Parent = Dropdown_1
	UICorner_2.CornerRadius = UDim.new(1, 0)

	UISizeConstraint_1.Parent = Dropdown_1
	UISizeConstraint_1.MaxSize = Vector2.new(173, math.huge)

	UIStroke_2.Parent = Dropdown
	UIStroke_2.Color = Color3.fromRGB(255, 255, 255)
	UIStroke_2.Thickness = 1

	UICorner_3.Parent = Dropdown
	UICorner_3.CornerRadius = UDim.new(0, 20)

	UIPadding_2.Parent = Dropdown
	UIPadding_2.PaddingBottom = UDim.new(0, 15)
	UIPadding_2.PaddingLeft = UDim.new(0, 15)
	UIPadding_2.PaddingRight = UDim.new(0, 15)
	UIPadding_2.PaddingTop = UDim.new(0, 15)

	UIListLayout_5.Parent = Dropdown
	UIListLayout_5.FillDirection = Enum.FillDirection.Horizontal
	UIListLayout_5.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout_5.VerticalAlignment = Enum.VerticalAlignment.Center
end

return Dropdown
