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
	local DropdownHolder_1 = Instance.new("TextButton")
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
	Display_1.Text = Data.Title
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
	Description_1.Text = Data.Description
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

	DropdownHolder_1.Name = "DropdownHolder"
	DropdownHolder_1.Parent = Dropdown
	DropdownHolder_1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	DropdownHolder_1.BackgroundTransparency = 1
	DropdownHolder_1.BorderColor3 = Color3.fromRGB(0, 0, 0)
	DropdownHolder_1.BorderSizePixel = 0
	DropdownHolder_1.LayoutOrder = 1
	DropdownHolder_1.Position = UDim2.new(0.298598409, 0, 0, 0)
	DropdownHolder_1.Size = UDim2.new(0, 254, 0, 54)
	DropdownHolder_1.Text = ""

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
	Dropdown_1.Size = UDim2.new(0, 0, 0, 40)

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
	Title_1.Text = "None..."
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
	UIStroke_1.Transparency = 0.9

	UICorner_2.Parent = Dropdown_1
	UICorner_2.CornerRadius = UDim.new(1, 0)

	UISizeConstraint_1.Parent = Dropdown_1
	UISizeConstraint_1.MaxSize = Vector2.new(173, math.huge)

	UIStroke_2.Parent = Dropdown
	UIStroke_2.Color = Color3.fromRGB(255, 255, 255)
	UIStroke_2.Thickness = 1
	UIStroke_2.Transparency = 0.9

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
	UIListLayout_5.HorizontalFlex = Enum.UIFlexAlignment.Fill

	--// Setup
	local Callback = Data.Callback
	local Value = Data.Value
	local AllowNone = Data.AllowNone
	local Values = Data.Values or {}
	local Selected = {}

	local Multi = Data.Multi and Data.Multi.Enabled
	local Shadow = Data.Multi and Data.Multi.ShadowSelected

	local NewSignal = nil
	local ActiveList = nil

	if Value then
		if Multi then
			assert(type(Value) == "table", "When using multi, make sure the value is also a table")

			for _, Item in pairs(Value) do
				if table.find(Values, Item) then
					table.insert(Selected, Item)
				end
			end
		else
			if table.find(Values, Value) then
				table.insert(Selected, Value)
			end
		end
	end

	local function HandleTitle()
		if #Selected == 0 then
			Title_1.Text = "None..."
		elseif Multi then
			if Shadow then
				Title_1.Text = "Selected " .. tostring(#Selected) .. " Items"
			else
				Title_1.Text = table.concat(Selected, ", ")
			end
		else
			Title_1.Text = Selected[1] or "None..."
		end
	end

	HandleTitle()
	SignalHandler:SafeCallback(Callback, Selected, Data.Title)

	local function HandleList(List)
		Values = Data.Values
		if Library.DropdownUI:FindFirstChild("ValueList") then
			Library.DropdownUI.ValueList:Destroy()
		end

		local MousePos = Library.Services.UserInputService:GetMouseLocation()

		local ValueList = Instance.new("ImageButton")
		local Stroke = Instance.new("UIStroke")
		local Constraint = Instance.new("UISizeConstraint")
		local Corner2 = Instance.new("UICorner")
		local ValueHolder_1 = Instance.new("ScrollingFrame")
		local Layout3 = Instance.new("UIListLayout")

		ValueList.Name = "ValueList"
		ValueList.Parent = Library.DropdownUI
		ValueList.Active = true
		ValueList.AnchorPoint = Vector2.new(0.5, 0.5)
		ValueList.Position = UDim2.new(0, MousePos.X, 0, MousePos.Y)
		ValueList.AutoButtonColor = false
		ValueList.AutomaticSize = Enum.AutomaticSize.Y
		ValueList.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
		ValueList.BackgroundTransparency = 0.1
		ValueList.BorderSizePixel = 0
		ValueList.Modal = true
		ValueList.Size = UDim2.new(0, 196, 0, 0)
		ValueList.ClipsDescendants = true
		ValueList.Image = "rbxassetid://16255699706"
		ValueList.ImageTransparency = 0.95
		ValueList.ScaleType = Enum.ScaleType.Crop
		ValueList.ZIndex = 2

		ValueHolder_1.Name = "ValueHolder"
		ValueHolder_1.Parent = ValueList
		ValueHolder_1.Active = true
		ValueHolder_1.AutomaticSize = Enum.AutomaticSize.Y
		ValueHolder_1.BackgroundTransparency = 1
		ValueHolder_1.Size = UDim2.new(1, 0, 0, 0)
		ValueHolder_1.CanvasSize = UDim2.fromOffset(0, 0)
		ValueHolder_1.ClipsDescendants = true
		ValueHolder_1.AutomaticCanvasSize = Enum.AutomaticSize.Y
		ValueHolder_1.ScrollBarThickness = 0
		ValueHolder_1.ZIndex = 3

		local ManualContstrait = Instance.new("UISizeConstraint")
		ManualContstrait.Parent = ValueList
		ManualContstrait.MaxSize = Vector2.new(math.huge, 335)

		Stroke.Parent = ValueList
		Stroke.Color = Color3.fromRGB(255, 255, 255)
		Stroke.Thickness = 1
		Stroke.Transparency = 0.9

		Constraint.Parent = ValueList
		Constraint.MaxSize = Vector2.new(math.huge, 335)

		Layout3.Parent = ValueHolder_1
		Layout3.SortOrder = Enum.SortOrder.LayoutOrder

		Corner2.Parent = ValueList
		Corner2.CornerRadius = UDim.new(0, 20)

		if ValueHolder_1.AbsoluteSize.Y >= 335 then
			ValueHolder_1.AutomaticSize = Enum.AutomaticSize.None
			ValueHolder_1.Size = UDim2.new(1, 0, 0, 335)
		else
			ValueHolder_1.AutomaticSize = Enum.AutomaticSize.Y
			ValueHolder_1.Size = UDim2.new(1, 0, 0, 0)
		end

		ValueHolder_1:GetPropertyChangedSignal("AbsoluteSize"):Connect(function()
			if ValueHolder_1.AbsoluteSize.Y >= 335 then
				ValueHolder_1.AutomaticSize = Enum.AutomaticSize.None
				ValueHolder_1.Size = UDim2.new(1, 0, 0, 335)
			else
				ValueHolder_1.AutomaticSize = Enum.AutomaticSize.Y
				ValueHolder_1.Size = UDim2.new(1, 0, 0, 0)
			end
		end)

		for _, Index in pairs(List) do
			local ValueItem = Instance.new("TextButton")
			local ValueName_1 = Instance.new("TextLabel")
			local Layout2 = Instance.new("UIListLayout")
			local Padding = Instance.new("UIPadding")
			local Corner = Instance.new("UICorner")

			ValueItem.Name = tostring(Index)
			ValueItem.Parent = ValueHolder_1
			ValueItem.BackgroundTransparency = 0.95
			ValueItem.Size = UDim2.new(1, 0, 0, 0)
			ValueItem.Text = ""
			ValueItem.ZIndex = 4

			ValueName_1.Name = "ValueName"
			ValueName_1.Parent = ValueItem
			ValueName_1.BackgroundTransparency = 1
			ValueName_1.Size = UDim2.new(1, 0, 1, 0)
			ValueName_1.Font = Enum.Font.GothamMedium
			ValueName_1.Text = tostring(Index)
			ValueName_1.TextColor3 = Color3.fromRGB(220, 220, 220)
			ValueName_1.TextTransparency = 1
			ValueName_1.TextSize = 15
			ValueName_1.TextXAlignment = Enum.TextXAlignment.Left
			ValueName_1.ZIndex = 5

			Layout2.Parent = ValueItem
			Padding.Parent = ValueItem
			Padding.PaddingLeft = UDim.new(0, 15)
			Corner.Parent = ValueItem
			Corner.CornerRadius = UDim.new(0, 20)

			AnimHandler:Animate(ValueItem, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
				Size = UDim2.new(1, 0, 0, 40),
				BackgroundTransparency = 1,
			})
			AnimHandler:Animate(ValueName_1, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
				TextTransparency = 0,
			})

			SignalHandler:NewSignal(ValueItem, "MouseButton1Click", function()
				if Multi then
					local FoundItem = table.find(Selected, ValueItem.Name)
					if FoundItem then
						table.remove(Selected, FoundItem)
					else
						table.insert(Selected, ValueItem.Name)
					end
				else
					Selected = { ValueItem.Name }
				end

				HandleTitle()
				SignalHandler:SafeCallback(Callback, Selected, Data.Title)
			end)

			SignalHandler:NewSignal(ValueItem, "MouseEnter", function()
				AnimHandler:Animate(ValueItem, TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
					BackgroundTransparency = 0.9,
				})
			end)

			SignalHandler:NewSignal(ValueItem, "MouseLeave", function()
				AnimHandler:Animate(ValueItem, TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
					BackgroundTransparency = 1,
				})
			end)
		end

		task.delay(0.3, function()
			NewSignal = SignalHandler:NewSignal(Library.Services.UserInputService, "InputEnded", function(Input)
				if Input.UserInputType == Enum.UserInputType.MouseButton1 and ActiveList then
					ActiveList:Close()

					if NewSignal then
						NewSignal:Disconnect()
						NewSignal = nil
					end
				end
			end)
		end)

		return {
			Close = function()
				ActiveList = nil
				if ValueList:FindFirstChild("ValueHolder") then
					for _, Item in pairs(ValueHolder_1:GetChildren()) do
						if #ValueHolder_1:GetChildren() <= 8 then
							if Item:IsA("TextButton") then
								AnimHandler:Animate(
									Item,
									TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
									{
										Size = UDim2.new(1, 0, 0, 0),
										BackgroundTransparency = 1,
									}
								)
								AnimHandler:Animate(
									Item.ValueName,
									TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
									{
										TextTransparency = 1,
									}
								)
							end
						else
							ValueList.Visible = false
						end
					end

					task.wait(0.2)
					ValueList:Destroy()
				end
			end,

			GetItem = function(_, Value)
				if ValueList:FindFirstChild("ValueHolder") then
					for _, Item in pairs(ValueList.ValueHolder:GetChildren()) do
						if Item:IsA("TextButton") and Item.Name:lower():find(Value:lower()) then
							return Item
						end
					end
				end
			end,
		}
	end

	SignalHandler:NewSignal(DropdownHolder_1, "MouseButton1Click", function()
		ActiveList = HandleList(Values)
	end)

	return {
		Callback,
		Value = Selected,
		AllowNone,
		Values,
		Multi,
		Shadow,

		SetDescription = function(_, Text)
			Description_1.Text = Text
		end,

		SetTitle = function(_, Text)
			Display_1.Text = Text
		end,

		--[[Select = function()
			
		end]]
		--//TODO: add :Select()
	}
end

return Dropdown
