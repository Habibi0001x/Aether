local NavigationEnd = {}
NavigationEnd.__index = NavigationEnd

function NavigationEnd.New(Library)
	local Self = setmetatable({}, NavigationEnd)

	Self.Library = Library
	Self.Body = nil

	return Self
end

function NavigationEnd:Init(EndData)
	local Methods = {}

	assert(self.Library, "No Library found")

	local SignalHandler = self.Library.SignalHandler
	local AnimHandler = self.Library.AnimationHandler
	local InstanceHandler = self.Library.InstanceHandler
	local New = InstanceHandler.NewInstance

	local NavigationBar = New("Frame")
	local UIListLayout_1 = New("UIListLayout")
	local Left_1 = New("Frame")
	local UIListLayout_2 = New("UIListLayout")
	local UIPadding_1 = New("UIPadding")
	local Center_1 = New("Frame")
	local Bar_1 = New("ImageButton")
	local UICorner_2 = New("UICorner")
	local UIListLayout_5 = New("UIListLayout")
	local UIPadding_3 = New("UIPadding")
	local UIPadding_10 = New("UIPadding")
	local Right_1 = New("Frame")
	local UIListLayout_12 = New("UIListLayout")
	local UIPadding_11 = New("UIPadding")
	local UIStroke_4 = New("UIStroke")
	local TagZone_1 = New("Frame")
	local UIListLayout_13 = New("UIListLayout")

	self.Body = NavigationBar

	NavigationBar.Name = "NavigationBar"
	NavigationBar.Parent = self.Library.GUI
	NavigationBar.AnchorPoint = Vector2.new(0, 1)
	NavigationBar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	NavigationBar.BackgroundTransparency = 1
	NavigationBar.BorderColor3 = Color3.fromRGB(0, 0, 0)
	NavigationBar.BorderSizePixel = 0
	NavigationBar.Position = UDim2.new(0, 0, 1, 0)
	NavigationBar.Size = UDim2.new(1, 0, -0.146191642, 200)

	UIListLayout_1.Parent = NavigationBar
	UIListLayout_1.FillDirection = Enum.FillDirection.Horizontal
	UIListLayout_1.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout_1.VerticalAlignment = Enum.VerticalAlignment.Center

	Left_1.Name = "Left"
	Left_1.Parent = NavigationBar
	Left_1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Left_1.BackgroundTransparency = 1
	Left_1.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Left_1.BorderSizePixel = 0
	Left_1.Position = UDim2.new(0.133982971, 0, -1.79012346, 0)
	Left_1.Size = UDim2.new(0.333333343, 0, 1, 0)

	Center_1.Name = "Center"
	Center_1.Parent = NavigationBar
	Center_1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Center_1.BackgroundTransparency = 1
	Center_1.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Center_1.BorderSizePixel = 0
	Center_1.Position = UDim2.new(0, 0, 0.299999863, 0)
	Center_1.Size = UDim2.new(0.333333343, 0, 1, 0)

	Right_1.Name = "Right"
	Right_1.Parent = NavigationBar
	Right_1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Right_1.BackgroundTransparency = 1
	Right_1.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Right_1.BorderSizePixel = 0
	Right_1.Position = UDim2.new(0, 0, 0.299999863, 0)
	Right_1.Size = UDim2.new(0.333333343, 0, 1, 0)

	UIListLayout_2.Parent = Left_1
	UIListLayout_2.Padding = UDim.new(0, 5)
	UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout_2.VerticalAlignment = Enum.VerticalAlignment.Bottom

	UIPadding_1.Parent = Left_1
	UIPadding_1.PaddingBottom = UDim.new(0, 12)
	UIPadding_1.PaddingLeft = UDim.new(0, 15)

	--// Setup
	local ParentMap = {
		["Left"] = Left_1,
		["Center"] = Center_1,
		["Right"] = Right_1,
	}

	Bar_1.Name = "Bar"
	Bar_1.Parent = ParentMap[EndData.BarSection] or Center_1
	Bar_1.Active = true
	Bar_1.AnchorPoint = Vector2.new(0.5, 0.5)
	Bar_1.AutoButtonColor = false
	Bar_1.AutomaticSize = Enum.AutomaticSize.X
	Bar_1.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
	Bar_1.BackgroundTransparency = 0.10000000149011612
	Bar_1.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Bar_1.BorderSizePixel = 0
	Bar_1.LayoutOrder = 1
	Bar_1.Modal = true
	Bar_1.Position = UDim2.new(0.5, 0, 0.5, 0)
	Bar_1.Size = UDim2.new(0, 0, 0, 55)
	Bar_1.Image = "rbxassetid://16255699706"
	Bar_1.ImageTransparency = 0.8999999761581421
	Bar_1.ScaleType = Enum.ScaleType.Crop

	UIStroke_4.Parent = Bar_1
	UIStroke_4.Color = Color3.fromRGB(255, 255, 255)
	UIStroke_4.Thickness = 1
	UIStroke_4.Transparency = 0.9

	UICorner_2.Parent = Bar_1
	UICorner_2.CornerRadius = UDim.new(1, 0)

	UIListLayout_5.Parent = Bar_1
	UIListLayout_5.Padding = UDim.new(0, 5)
	UIListLayout_5.FillDirection = Enum.FillDirection.Horizontal
	UIListLayout_5.HorizontalAlignment = Enum.HorizontalAlignment.Center
	UIListLayout_5.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout_5.VerticalAlignment = Enum.VerticalAlignment.Center

	UIPadding_3.Parent = Bar_1
	UIPadding_3.PaddingLeft = UDim.new(0, 6)
	UIPadding_3.PaddingRight = UDim.new(0, 6)

	UIPadding_10.Parent = Center_1
	UIPadding_10.PaddingBottom = UDim.new(0, 12)
	UIPadding_10.PaddingLeft = UDim.new(0, 15)

	UIListLayout_12.Parent = Right_1
	UIListLayout_12.Padding = UDim.new(0, 5)
	UIListLayout_12.FillDirection = Enum.FillDirection.Horizontal
	UIListLayout_12.HorizontalAlignment = Enum.HorizontalAlignment.Right
	UIListLayout_12.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout_12.VerticalAlignment = Enum.VerticalAlignment.Bottom

	UIPadding_11.Parent = Right_1
	UIPadding_11.PaddingRight = UDim.new(0, 15)

	TagZone_1.Name = "TagZone"
	TagZone_1.Parent = ParentMap[EndData.TagsSection] or Right_1
	TagZone_1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TagZone_1.BackgroundTransparency = 1
	TagZone_1.BorderColor3 = Color3.fromRGB(0, 0, 0)
	TagZone_1.BorderSizePixel = 0
	TagZone_1.Position = UDim2.new(0.524733901, 0, 0.055555556, 0)
	TagZone_1.Size = UDim2.new(0.5, 0, 0, 72)

	UIListLayout_13.Parent = TagZone_1
	UIListLayout_13.Padding = UDim.new(0, 5)
	UIListLayout_13.FillDirection = Enum.FillDirection.Horizontal
	UIListLayout_13.HorizontalAlignment = Enum.HorizontalAlignment.Right
	UIListLayout_13.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout_13.VerticalAlignment = Enum.VerticalAlignment.Center

	local Selected = nil
	function Methods:CreateTab(Data)
		local Methods = {}

		assert(shared.Window, "No Window Found")
		local Window = shared.Window

		local WindowContext = Window:NewContext({
			Title = Data.Title or Data.Name or "unnamed",
			SearchBarEnabled = true,
		})

		local Tab_1 = New("ImageButton")
		local UICorner_3 = New("UICorner")
		local UIStroke_2 = New("UIStroke")
		local Icon_2 = New("ImageLabel")
		local Identifier_1 = New("ImageButton")
		local UICorner_4 = New("UICorner")
		local Title_2 = New("TextLabel")
		local UIListLayout_6 = New("UIListLayout")
		local UIPadding_4 = New("UIPadding")
		local UIStroke_3 = New("UIStroke")

		local function HandleSelection(Bool, Tab)
			assert(Tab, "Tab is nil for 'HandleSelection'")

			if Bool then
				Tab:SetAttribute("Selected", true)
				Selected = Tab

				AnimHandler:Animate(
					Tab,
					TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
					{ BackgroundTransparency = 0.1 }
				)
				AnimHandler:Animate(
					Tab:FindFirstChild("UIStroke"),
					TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
					{ Transparency = 0.75 }
				)
			else
				Tab:SetAttribute("Selected", false)

				AnimHandler:Animate(
					Tab,
					TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
					{ BackgroundTransparency = 1 }
				)
				AnimHandler:Animate(
					Tab:FindFirstChild("UIStroke"),
					TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
					{ Transparency = 1 }
				)
			end
		end

		Tab_1.Name = Data.Title or Data.Name or ""
		Tab_1.Parent = Bar_1
		Tab_1.Active = true
		Tab_1.AnchorPoint = Vector2.new(0.5, 0.5)
		Tab_1.AutoButtonColor = false
		Tab_1.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
		Tab_1.BackgroundTransparency = 0.1
		Tab_1.BorderSizePixel = 0
		Tab_1.Modal = true
		Tab_1.Position = UDim2.new(0.5, 0, 0.5, 0)
		Tab_1.Size = UDim2.new(0, 45, 0, 45)
		Tab_1.Image = "rbxassetid://16255699706"
		Tab_1.ImageTransparency = 0.95
		Tab_1.ScaleType = Enum.ScaleType.Crop

		Tab_1:SetAttribute("Selected", false)

		UICorner_3.Parent = Tab_1
		UICorner_3.CornerRadius = UDim.new(1, 0)

		UIStroke_2.Parent = Tab_1
		UIStroke_2.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
		UIStroke_2.Color = Color3.fromRGB(255, 255, 255)
		UIStroke_2.Thickness = 1

		Icon_2.Name = "Icon"
		Icon_2.Parent = Tab_1
		Icon_2.AnchorPoint = Vector2.new(0.5, 0.5)
		Icon_2.BackgroundTransparency = 1
		Icon_2.Position = UDim2.new(0.5, 0, 0.5, 0)
		Icon_2.Size = UDim2.new(0, 27, 0, 27)
		Icon_2.Image = "rbxassetid://10734975692"
		Icon_2.ImageTransparency = 0.3

		Identifier_1.Name = "Identifier"
		Identifier_1.Parent = Tab_1
		Identifier_1.Active = true
		Identifier_1.AnchorPoint = Vector2.new(0.5, 0.5)
		Identifier_1.AutoButtonColor = false
		Identifier_1.AutomaticSize = Enum.AutomaticSize.X
		Identifier_1.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
		Identifier_1.BackgroundTransparency = 0.1
		Identifier_1.BorderSizePixel = 0
		Identifier_1.Modal = true
		Identifier_1.Position = UDim2.new(0.5, 0, -0.877777755, 0)
		Identifier_1.Size = UDim2.new(0, 45, 0, 45)
		Identifier_1.Image = "rbxassetid://16255699706"
		Identifier_1.ImageTransparency = 0.95
		Identifier_1.ScaleType = Enum.ScaleType.Crop
		Identifier_1.Visible = true

		UICorner_4.Parent = Identifier_1
		UICorner_4.CornerRadius = UDim.new(1, 0)

		Title_2.Name = "Title"
		Title_2.Parent = Identifier_1
		Title_2.AutomaticSize = Enum.AutomaticSize.X
		Title_2.BackgroundTransparency = 1
		Title_2.Size = UDim2.new(0, 0, 1, 0)
		Title_2.Font = Enum.Font.GothamMedium
		Title_2.Text = Data.Title or Data.Name or Tab_1.Name or ""
		Title_2.TextColor3 = Color3.fromRGB(220, 220, 220)
		Title_2.TextSize = 15

		UIListLayout_6.Parent = Identifier_1
		UIListLayout_6.HorizontalAlignment = Enum.HorizontalAlignment.Center
		UIListLayout_6.SortOrder = Enum.SortOrder.LayoutOrder
		UIListLayout_6.VerticalAlignment = Enum.VerticalAlignment.Center

		UIPadding_4.Parent = Identifier_1
		UIPadding_4.PaddingLeft = UDim.new(0, 12)
		UIPadding_4.PaddingRight = UDim.new(0, 12)

		UIStroke_3.Parent = Identifier_1
		UIStroke_3.Color = Color3.fromRGB(255, 255, 255)
		UIStroke_3.Thickness = 1

		--// Setting up before animating
		AnimHandler:Animate(
			Tab_1,
			TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
			{ BackgroundTransparency = 1 }
		)
		AnimHandler:Animate(
			Tab_1:FindFirstChild("UIStroke"),
			TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
			{ Transparency = 1 }
		)

		AnimHandler:Animate(
			Identifier_1,
			TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
			{ Position = UDim2.new(0.5, 0, -0.8, 0), BackgroundTransparency = 1, ImageTransparency = 1 }
		)

		AnimHandler:Animate(
			Identifier_1:FindFirstChild("Title"),
			TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
			{ TextTransparency = 1 }
		)

		AnimHandler:Animate(
			Identifier_1:FindFirstChild("UIStroke"),
			TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
			{ Transparency = 1 }
		)

		--// Selection Handling
		SignalHandler:NewSignal(Tab_1, "MouseButton1Click", function()
			if Selected and Selected ~= Tab_1 then
				HandleSelection(false, Selected)
				HandleSelection(true, Tab_1)

				Window:Change(Tab_1.Name or "")
			elseif not Selected then
				HandleSelection(true, Tab_1)
			else
				HandleSelection(false, Tab_1)
				Selected = nil

				Window:Exit()
			end
		end)

		--// Anims
		SignalHandler:NewSignal(Tab_1, "MouseEnter", function()
			if not Tab_1:GetAttribute("Selected") then
				AnimHandler:Animate(
					Tab_1,
					TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
					{ BackgroundTransparency = 0.8 }
				)
				AnimHandler:Animate(
					Tab_1:FindFirstChild("UIStroke"),
					TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
					{ Transparency = 0.88 }
				)
			end

			AnimHandler:Animate(
				Identifier_1,
				TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
				{ Position = UDim2.new(0.5, 0, -0.888, 0), BackgroundTransparency = 0.15, ImageTransparency = 0.95 }
			)

			AnimHandler:Animate(
				Identifier_1:FindFirstChild("Title"),
				TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
				{ TextTransparency = 0 }
			)

			AnimHandler:Animate(
				Identifier_1:FindFirstChild("UIStroke"),
				TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
				{ Transparency = 0.9 }
			)
		end)

		SignalHandler:NewSignal(Tab_1, "MouseLeave", function()
			if not Tab_1:GetAttribute("Selected") then
				AnimHandler:Animate(
					Tab_1,
					TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
					{ BackgroundTransparency = 1 }
				)
				AnimHandler:Animate(
					Tab_1:FindFirstChild("UIStroke"),
					TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
					{ Transparency = 1 }
				)
			end

			AnimHandler:Animate(
				Identifier_1,
				TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
				{ Position = UDim2.new(0.5, 0, -0.8, 0), BackgroundTransparency = 1, ImageTransparency = 1 }
			)

			AnimHandler:Animate(
				Identifier_1:FindFirstChild("Title"),
				TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
				{ TextTransparency = 1 }
			)

			AnimHandler:Animate(
				Identifier_1:FindFirstChild("UIStroke"),
				TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
				{ Transparency = 1 }
			)
		end)

		--// Methods
		function Methods:Select()
			HandleSelection(true, Tab_1)
		end

		function Methods:UnSelect()
			HandleSelection(false, Tab_1)
		end

		--// Window Methods
		function Methods:CreateToggle(Data)
			WindowContext:NewToggle({
				Title = Data.Title or Data.Name,
				Description = Data.Description or Data.Desc,
				Default = Data.Default or Data.DefaultaValue,
				Callback = Data.Callback,
			})
		end

		function Methods:CreateSlider(Data)
			WindowContext:NewSlider({
				Title = Data.Title or Data.Name,
				Description = Data.Description or Data.Desc,
				MinValue = Data.MinValue or Data.Min,
				MaxValue = Data.MaxValue or Data.Max,
				Step = Data.Step or Data.Increment,
				Default = Data.Default or Data.DefaultaValue,
				Callback = Data.Callback,
			})
		end

		return Methods
	end

	return Methods
end

function NavigationEnd:Remove()
	if self.Body ~= nil then
		self.Body:Destroy()
	end

	--// self.Library.SignalHandler:DisconnectAllSignals()
end

return NavigationEnd
