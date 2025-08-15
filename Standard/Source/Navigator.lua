local Nagivator = {}

if shared.Nagivator then
	Nagivator:Exit()
	shared.Nagivator = Nagivator
end

local SignalHandler = shared.SignalHandler
local AnimHandler = shared.AnimHandler

function Nagivator:Setup(NewIon)
	local Methods = {}
	local NavigationBar = Instance.new("Frame")
	local UIListLayout_1 = Instance.new("UIListLayout")
	local Left_1 = Instance.new("Frame")
	local UIListLayout_2 = Instance.new("UIListLayout")
	local UIPadding_1 = Instance.new("UIPadding")
	local Changelogs_1 = Instance.new("ImageButton")
	local UICorner_1 = Instance.new("UICorner")
	local Title_1 = Instance.new("TextLabel")
	local UIListLayout_3 = Instance.new("UIListLayout")
	local UIPadding_2 = Instance.new("UIPadding")
	local Icon_1 = Instance.new("ImageLabel")
	local UIStroke_1 = Instance.new("UIStroke")
	local Center_1 = Instance.new("Frame")
	local UIListLayout_4 = Instance.new("UIListLayout")
	local Bar_1 = Instance.new("ImageButton")
	local UICorner_2 = Instance.new("UICorner")
	local UIListLayout_5 = Instance.new("UIListLayout")
	local UIPadding_3 = Instance.new("UIPadding")
	local UIPadding_10 = Instance.new("UIPadding")
	local Right_1 = Instance.new("Frame")
	local UIListLayout_12 = Instance.new("UIListLayout")
	local UIPadding_11 = Instance.new("UIPadding")
	local TagZone_1 = Instance.new("Frame")
	local UIListLayout_13 = Instance.new("UIListLayout")

	NavigationBar.Name = "NavigationBar"
	NavigationBar.Parent = shared.Library.MainUI
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

	local ParentMap = {
		["Left"] = Left_1,
		["Center"] = Center_1,
		["Right"] = Right_1,
	}

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

	Changelogs_1.Name = "Changelogs"
	Changelogs_1.Parent = ParentMap[NewIon.MiscBarAlignament] or Left_1
	Changelogs_1.Active = true
	Changelogs_1.AnchorPoint = Vector2.new(0.5, 0.5)
	Changelogs_1.AutoButtonColor = false
	Changelogs_1.AutomaticSize = Enum.AutomaticSize.X
	Changelogs_1.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
	Changelogs_1.BackgroundTransparency = 0.10000000149011612
	Changelogs_1.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Changelogs_1.BorderSizePixel = 0
	Changelogs_1.Modal = true
	Changelogs_1.Position = UDim2.new(0.152160287, 0, 0.5, 0)
	Changelogs_1.Size = UDim2.new(0, 45, 0, 45)
	Changelogs_1.Image = "rbxassetid://16255699706"
	Changelogs_1.ImageTransparency = 0.949999988079071
	Changelogs_1.ScaleType = Enum.ScaleType.Crop

	UICorner_1.Parent = Changelogs_1
	UICorner_1.CornerRadius = UDim.new(1, 0)

	Title_1.Name = "Title"
	Title_1.Parent = Changelogs_1
	Title_1.AutomaticSize = Enum.AutomaticSize.X
	Title_1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Title_1.BackgroundTransparency = 1.0099999904632568
	Title_1.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Title_1.BorderSizePixel = 0
	Title_1.Position = UDim2.new(0.153439149, 0, 0, 0)
	Title_1.Size = UDim2.new(0, 0, 1, 0)
	Title_1.Font = Enum.Font.GothamMedium
	Title_1.Text = "Changelog and Patches"
	Title_1.TextColor3 = Color3.fromRGB(220, 220, 220)
	Title_1.TextSize = 15

	UIListLayout_3.Parent = Changelogs_1
	UIListLayout_3.Padding = UDim.new(0, 7)
	UIListLayout_3.FillDirection = Enum.FillDirection.Horizontal
	UIListLayout_3.HorizontalAlignment = Enum.HorizontalAlignment.Center
	UIListLayout_3.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout_3.VerticalAlignment = Enum.VerticalAlignment.Center

	UIPadding_2.Parent = Changelogs_1
	UIPadding_2.PaddingLeft = UDim.new(0, 12)
	UIPadding_2.PaddingRight = UDim.new(0, 12)

	Icon_1.Name = "Icon"
	Icon_1.Parent = Changelogs_1
	Icon_1.AnchorPoint = Vector2.new(0.5, 0.5)
	Icon_1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Icon_1.BackgroundTransparency = 1
	Icon_1.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Icon_1.BorderSizePixel = 0
	Icon_1.LayoutOrder = -1
	Icon_1.Position = UDim2.new(0.5, 0, 0.5, 0)
	Icon_1.Size = UDim2.new(0, 22, 0, 22)
	Icon_1.Image = "rbxassetid://10709782154"
	Icon_1.ImageTransparency = 0.30000001192092896

	UIStroke_1.Parent = Changelogs_1
	UIStroke_1.Color = Color3.fromRGB(255, 255, 255)
	UIStroke_1.Thickness = 1

	UIListLayout_4.Parent = Center_1
	UIListLayout_4.Padding = UDim.new(0, 5)
	UIListLayout_4.FillDirection = Enum.FillDirection.Horizontal
	UIListLayout_4.HorizontalAlignment = Enum.HorizontalAlignment.Center
	UIListLayout_4.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout_4.VerticalAlignment = Enum.VerticalAlignment.Bottom

	Bar_1.Name = "Bar"
	Bar_1.Parent = ParentMap[NewIon.TabsBarAlignament] or Center_1
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
	TagZone_1.Parent = ParentMap[NewIon.TagsBarAlignament] or Right_1
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

	function Methods:NewTab(Data)
		local Methods = {}

		local function HandleSelection(Bool, Tab)
			if Bool then
				Tab:SetAttribute("Selected", true)
				Selected = nil
				AnimHandler:Animate(
					Tab,
					TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
					{ BackgroundTransparency = 0.1 }
				)
				AnimHandler:Animate(
					Tab:FindFistChild("UIStroke"),
					TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
					{ Transparency = 0.75 }
				)
			else
				Tab:SetAttribute("Selected", false)
				Selected = Tab
				AnimHandler:Animate(
					Tab,
					TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
					{ BackgroundTransparency = 1 }
				)
				AnimHandler:Animate(
					Tab:FindFistChild("UIStroke"),
					TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
					{ Transparency = 1 }
				)
			end
		end

		local Tab_1 = Instance.new("ImageButton")
		local UICorner_3 = Instance.new("UICorner")
		local UIStroke_2 = Instance.new("UIStroke")
		local Icon_2 = Instance.new("ImageLabel")
		local Identifier_1 = Instance.new("ImageButton")
		local UICorner_4 = Instance.new("UICorner")
		local Title_2 = Instance.new("TextLabel")
		local UIListLayout_6 = Instance.new("UIListLayout")
		local UIPadding_4 = Instance.new("UIPadding")
		local UIStroke_3 = Instance.new("UIStroke")
		local UIStroke_4 = Instance.new("UIStroke")

		Tab_1.Name = Data.Title or Data.Name or ""
		Tab_1.Parent = Bar_1
		Tab_1.Active = true
		Tab_1.AnchorPoint = Vector2.new(0.5, 0.5)
		Tab_1.AutoButtonColor = false
		Tab_1.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
		Tab_1.BackgroundTransparency = 0.10000000149011612
		Tab_1.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Tab_1.BorderSizePixel = 0
		Tab_1.Modal = true
		Tab_1.Position = UDim2.new(0.5, 0, 0.5, 0)
		Tab_1.Size = UDim2.new(0, 45, 0, 45)
		Tab_1.Image = "rbxassetid://16255699706"
		Tab_1.ImageTransparency = 0.949999988079071
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
		Icon_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Icon_2.BackgroundTransparency = 1
		Icon_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Icon_2.BorderSizePixel = 0
		Icon_2.Position = UDim2.new(0.5, 0, 0.5, 0)
		Icon_2.Size = UDim2.new(0, 27, 0, 27)
		Icon_2.Image = "rbxassetid://10734975692"
		Icon_2.ImageTransparency = 0.30000001192092896

		Identifier_1.Name = "Identifier"
		Identifier_1.Parent = Tab_1
		Identifier_1.Active = true
		Identifier_1.AnchorPoint = Vector2.new(0.5, 0.5)
		Identifier_1.AutoButtonColor = false
		Identifier_1.AutomaticSize = Enum.AutomaticSize.X
		Identifier_1.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
		Identifier_1.BackgroundTransparency = 0.10000000149011612
		Identifier_1.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Identifier_1.BorderSizePixel = 0
		Identifier_1.Modal = true
		Identifier_1.Position = UDim2.new(0.5, 0, -0.877777755, 0)
		Identifier_1.Size = UDim2.new(0, 45, 0, 45)
		Identifier_1.Image = "rbxassetid://16255699706"
		Identifier_1.ImageTransparency = 0.949999988079071
		Identifier_1.ScaleType = Enum.ScaleType.Crop

		UICorner_4.Parent = Identifier_1
		UICorner_4.CornerRadius = UDim.new(1, 0)

		Title_2.Name = "Title"
		Title_2.Parent = Identifier_1
		Title_2.AutomaticSize = Enum.AutomaticSize.X
		Title_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Title_2.BackgroundTransparency = 1.0099999904632568
		Title_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Title_2.BorderSizePixel = 0
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

		UIStroke_4.Parent = Bar_1
		UIStroke_4.Color = Color3.fromRGB(255, 255, 255)
		UIStroke_4.Thickness = 1

		--// Selection Logic
		for _, Tab in pairs(Bar_1:GetChildren()) do
			if Tab:IsA("ImageButton") then
				HandleSelection(true, Tab)
			end
		end

		for _, Tab in pairs(Bar_1:GetChildren()) do
			if Tab:IsA("ImageButton") then
				--// Selection
				SignalHandler:NewSignal(Tab, MouseButton1Click, function()
					if Tab ~= Selected then
						HandleSelection(false, Selected)
						task.wait(0.3)
						HandleSelection(true, Tab)
					else
						HandleSelection(false, Tab)
					end
				end)

				--// Hovers
				SignalHandler:NewSignal(Tab, MouseEnter, function()
					if Tab:GetAttribute("Selected", true) then
						return
					end

					AnimHandler:Animate(
						Tab,
						TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{ BackgroundTransparency = 0.8 }
					)
					AnimHandler:Animate(
						Tab:FindFistChild("UIStroke"),
						TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{ Transparency = 0.88 }
					)
				end)

				SignalHandler:NewSignal(Tab, MouseLeave, function()
					if Tab:GetAttribute("Selected", true) then
						return
					end

					AnimHandler:Animate(
						Tab,
						TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{ BackgroundTransparency = 1 }
					)
					AnimHandler:Animate(
						Tab:FindFistChild("UIStroke"),
						TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{ Transparency = 1 }
					)
				end)
			end
		end

		return Methods
	end

	function Methods:NewTag(Data)
		local Identifier_6 = Instance.new("ImageButton")
		local UICorner_18 = Instance.new("UICorner")
		local Title_7 = Instance.new("TextLabel")
		local UIListLayout_14 = Instance.new("UIListLayout")
		local UIPadding_12 = Instance.new("UIPadding")
		local UIGradient_1 = Instance.new("UIGradient")
		local UIStroke_10 = Instance.new("UIStroke")
		local UIGradient_2 = Instance.new("UIGradient")

		Identifier_6.Name = "Identifier"
		Identifier_6.Parent = TagZone_1
		Identifier_6.Active = true
		Identifier_6.AnchorPoint = Vector2.new(0.5, 0.5)
		Identifier_6.AutoButtonColor = false
		Identifier_6.AutomaticSize = Enum.AutomaticSize.X
		Identifier_6.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
		Identifier_6.BackgroundTransparency = 0.10000000149011612
		Identifier_6.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Identifier_6.BorderSizePixel = 0
		Identifier_6.Modal = true
		Identifier_6.Position = UDim2.new(0.5, 0, -0.877777755, 0)
		Identifier_6.Size = UDim2.new(0, 45, 0, 45)
		Identifier_6.Image = "rbxassetid://16255699706"
		Identifier_6.ImageTransparency = 0.949999988079071
		Identifier_6.ScaleType = Enum.ScaleType.Crop

		UICorner_18.Parent = Identifier_6
		UICorner_18.CornerRadius = UDim.new(1, 0)

		Title_7.Name = "Title"
		Title_7.Parent = Identifier_6
		Title_7.AutomaticSize = Enum.AutomaticSize.X
		Title_7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Title_7.BackgroundTransparency = 1.0099999904632568
		Title_7.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Title_7.BorderSizePixel = 0
		Title_7.Size = UDim2.new(0, 0, 1, 0)
		Title_7.Font = Enum.Font.GothamMedium
		Title_7.Text = Data.Title or Data.Name or ""
		Title_7.TextColor3 = Color3.fromRGB(220, 220, 220)
		Title_7.TextSize = 15

		UIListLayout_14.Parent = Identifier_6
		UIListLayout_14.HorizontalAlignment = Enum.HorizontalAlignment.Center
		UIListLayout_14.SortOrder = Enum.SortOrder.LayoutOrder
		UIListLayout_14.VerticalAlignment = Enum.VerticalAlignment.Center

		UIPadding_12.Parent = Identifier_6
		UIPadding_12.PaddingLeft = UDim.new(0, 12)
		UIPadding_12.PaddingRight = UDim.new(0, 12)

		UIGradient_1.Parent = Identifier_6
		UIGradient_1.Color = Data.BackgroundGradient.ColorSequenceKeypoint :: ColorSequenceKeypoint or nil
		UIGradient_1.Transparency = Data.BackgroundGradient.TransparencySequenceKeypoint :: NumberSequence
		UIGradient_1.Rotation = Data.BackgroundGradient.Rotation :: number or 0

		UIStroke_10.Parent = Identifier_6
		UIStroke_10.Transparency = 0
		UIStroke_10.Color = Color3.fromRGB(155, 155, 155)
		UIStroke_10.Thickness = 1

		UIGradient_2.Parent = UIStroke_10
		UIGradient_2.Color = Data.StrokeGradient.StrokeColorSequenceKeypoint :: ColorSequenceKeypoint or nil
		UIGradient_2.Transparency = Data.StrokeGradient.StrokeTransparencySequenceKeypoint :: NumberSequence or nil
		UIGradient_2.Rotation = Data.StrokeGradient.Rotation or 0
	end

	function Methods:SetupProfile() --// This was mostly to organize stuff and more methods
		local Methods = {}

		local ProfileBar = Instance.new("ImageButton")
		local Screenshot_1 = Instance.new("ImageButton")
		local UICorner_5 = Instance.new("UICorner")
		local UIStroke_5 = Instance.new("UIStroke")
		local Screenshot_2 = Instance.new("ImageLabel")
		local UICorner_6 = Instance.new("UICorner")
		local Identifier_2 = Instance.new("ImageButton")
		local UICorner_7 = Instance.new("UICorner")
		local Title_3 = Instance.new("TextLabel")
		local UIListLayout_7 = Instance.new("UIListLayout")
		local UIPadding_5 = Instance.new("UIPadding")
		local UICorner_8 = Instance.new("UICorner")
		local UIListLayout_8 = Instance.new("UIListLayout")
		local UIPadding_6 = Instance.new("UIPadding")
		local Settings_1 = Instance.new("ImageButton")
		local UICorner_9 = Instance.new("UICorner")
		local UIStroke_6 = Instance.new("UIStroke")
		local Icon2 = Instance.new("ImageLabel")
		local UICorner_10 = Instance.new("UICorner")
		local Identifier_3 = Instance.new("ImageButton")
		local UICorner_11 = Instance.new("UICorner")
		local Title_4 = Instance.new("TextLabel")
		local UIListLayout_9 = Instance.new("UIListLayout")
		local UIPadding_7 = Instance.new("UIPadding")
		local Hud_1 = Instance.new("ImageButton")
		local UICorner_12 = Instance.new("UICorner")
		local UIStroke_7 = Instance.new("UIStroke")
		local Icon = Instance.new("ImageLabel")
		local UICorner_13 = Instance.new("UICorner")
		local Identifier_4 = Instance.new("ImageButton")
		local UICorner_14 = Instance.new("UICorner")
		local Title_5 = Instance.new("TextLabel")
		local UIListLayout_10 = Instance.new("UIListLayout")
		local UIPadding_8 = Instance.new("UIPadding")
		local ExitScam_1 = Instance.new("ImageButton")
		local UICorner_15 = Instance.new("UICorner")
		local UIStroke_8 = Instance.new("UIStroke")
		local Screenshot_5 = Instance.new("ImageLabel")
		local UICorner_16 = Instance.new("UICorner")
		local Identifier_5 = Instance.new("ImageButton")
		local UICorner_17 = Instance.new("UICorner")
		local Title_6 = Instance.new("TextLabel")
		local UIListLayout_11 = Instance.new("UIListLayout")
		local UIPadding_9 = Instance.new("UIPadding")
		local UIStroke_9 = Instance.new("UIStroke")

		ProfileBar.Name = "Profile Bar"
		ProfileBar.Parent = Center_1
		ProfileBar.Active = true
		ProfileBar.AnchorPoint = Vector2.new(0.5, 0.5)
		ProfileBar.AutoButtonColor = false
		ProfileBar.AutomaticSize = Enum.AutomaticSize.X
		ProfileBar.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
		ProfileBar.BackgroundTransparency = 0.10000000149011612
		ProfileBar.BorderColor3 = Color3.fromRGB(0, 0, 0)
		ProfileBar.BorderSizePixel = 0
		ProfileBar.Modal = true
		ProfileBar.Position = UDim2.new(0.5, 0, 0.5, 0)
		ProfileBar.Size = UDim2.new(0, 0, 0, 55)
		ProfileBar.Image = "rbxassetid://16255699706"
		ProfileBar.ImageTransparency = 0.8999999761581421
		ProfileBar.ScaleType = Enum.ScaleType.Crop

		Screenshot_1.Name = "Screenshot"
		Screenshot_1.Parent = ProfileBar
		Screenshot_1.Active = true
		Screenshot_1.AnchorPoint = Vector2.new(0.5, 0.5)
		Screenshot_1.AutoButtonColor = false
		Screenshot_1.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
		Screenshot_1.BackgroundTransparency = 0.10000000149011612
		Screenshot_1.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Screenshot_1.BorderSizePixel = 0
		Screenshot_1.Modal = true
		Screenshot_1.Position = UDim2.new(0.5, 0, 0.5, 0)
		Screenshot_1.Size = UDim2.new(0, 45, 0, 45)
		Screenshot_1.Image = "rbxassetid://16255699706"
		Screenshot_1.ImageTransparency = 0.949999988079071
		Screenshot_1.ScaleType = Enum.ScaleType.Crop

		UICorner_5.Parent = Screenshot_1
		UICorner_5.CornerRadius = UDim.new(1, 0)

		UIStroke_5.Parent = Screenshot_1
		UIStroke_5.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
		UIStroke_5.Color = Color3.fromRGB(255, 255, 255)
		UIStroke_5.Thickness = 1

		Screenshot_2.Name = "Screenshot"
		Screenshot_2.Parent = Screenshot_1
		Screenshot_2.AnchorPoint = Vector2.new(0.5, 0.5)
		Screenshot_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Screenshot_2.BackgroundTransparency = 1
		Screenshot_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Screenshot_2.BorderSizePixel = 0
		Screenshot_2.Position = UDim2.new(0.5, 0, 0.5, 0)
		Screenshot_2.Size = UDim2.new(1, 0, 1, 0)
		Screenshot_2.Image = shared.Library.Players:GetUserThumbnailAsync(shared.Library.LocalPlayer.UserId)

		UICorner_6.Parent = Screenshot_2
		UICorner_6.CornerRadius = UDim.new(1, 0)

		Identifier_2.Name = "Identifier"
		Identifier_2.Parent = Screenshot_1
		Identifier_2.Active = true
		Identifier_2.AnchorPoint = Vector2.new(0.5, 0.5)
		Identifier_2.AutoButtonColor = false
		Identifier_2.AutomaticSize = Enum.AutomaticSize.X
		Identifier_2.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
		Identifier_2.BackgroundTransparency = 0.10000000149011612
		Identifier_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Identifier_2.BorderSizePixel = 0
		Identifier_2.Modal = true
		Identifier_2.Position = UDim2.new(0.5, 0, -0.877777755, 0)
		Identifier_2.Size = UDim2.new(0, 45, 0, 45)
		Identifier_2.Visible = false
		Identifier_2.Image = "rbxassetid://16255699706"
		Identifier_2.ImageTransparency = 0.949999988079071
		Identifier_2.ScaleType = Enum.ScaleType.Crop

		UICorner_7.Parent = Identifier_2
		UICorner_7.CornerRadius = UDim.new(1, 0)

		Title_3.Name = "Title"
		Title_3.Parent = Identifier_2
		Title_3.AutomaticSize = Enum.AutomaticSize.X
		Title_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Title_3.BackgroundTransparency = 1.0099999904632568
		Title_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Title_3.BorderSizePixel = 0
		Title_3.Size = UDim2.new(0, 0, 1, 0)
		Title_3.Font = Enum.Font.GothamMedium
		Title_3.Text = shared.Library.LocalPlayer.Display .. " (You)"
		Title_3.TextColor3 = Color3.fromRGB(220, 220, 220)
		Title_3.TextSize = 15

		UIListLayout_7.Parent = Identifier_2
		UIListLayout_7.HorizontalAlignment = Enum.HorizontalAlignment.Center
		UIListLayout_7.SortOrder = Enum.SortOrder.LayoutOrder
		UIListLayout_7.VerticalAlignment = Enum.VerticalAlignment.Center

		UIPadding_5.Parent = Identifier_2
		UIPadding_5.PaddingLeft = UDim.new(0, 12)
		UIPadding_5.PaddingRight = UDim.new(0, 12)

		UICorner_8.Parent = ProfileBar
		UICorner_8.CornerRadius = UDim.new(1, 0)

		UIListLayout_8.Parent = ProfileBar
		UIListLayout_8.Padding = UDim.new(0, 5)
		UIListLayout_8.FillDirection = Enum.FillDirection.Horizontal
		UIListLayout_8.HorizontalAlignment = Enum.HorizontalAlignment.Center
		UIListLayout_8.SortOrder = Enum.SortOrder.LayoutOrder
		UIListLayout_8.VerticalAlignment = Enum.VerticalAlignment.Center

		UIPadding_6.Parent = ProfileBar
		UIPadding_6.PaddingLeft = UDim.new(0, 6)
		UIPadding_6.PaddingRight = UDim.new(0, 6)

		Settings_1.Name = "Settings"
		Settings_1.Parent = ProfileBar
		Settings_1.Active = true
		Settings_1.AnchorPoint = Vector2.new(0.5, 0.5)
		Settings_1.AutoButtonColor = false
		Settings_1.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
		Settings_1.BackgroundTransparency = 1
		Settings_1.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Settings_1.BorderSizePixel = 0
		Settings_1.Modal = true
		Settings_1.Position = UDim2.new(0.5, 0, 0.5, 0)
		Settings_1.Size = UDim2.new(0, 45, 0, 45)
		Settings_1.Image = "rbxassetid://16255699706"
		Settings_1.ImageTransparency = 0.949999988079071
		Settings_1.ScaleType = Enum.ScaleType.Crop

		UICorner_9.Parent = Settings_1
		UICorner_9.CornerRadius = UDim.new(1, 0)

		UIStroke_6.Parent = Settings_1
		UIStroke_6.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
		UIStroke_6.Color = Color3.fromRGB(255, 255, 255)
		UIStroke_6.Thickness = 1

		Icon2.Name = "Screenshot"
		Icon2.Parent = Settings_1
		Icon2.AnchorPoint = Vector2.new(0.5, 0.5)
		Icon2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Icon2.BackgroundTransparency = 1
		Icon2.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Icon2.BorderSizePixel = 0
		Icon2.Position = UDim2.new(0.5, 0, 0.5, 0)
		Icon2.Size = UDim2.new(0, 27, 0, 27)
		Icon2.Image = "rbxassetid://10734950020"
		Icon2.ImageTransparency = 0.30000001192092896

		UICorner_10.Parent = Icon2
		UICorner_10.CornerRadius = UDim.new(1, 0)

		Identifier_3.Name = "Identifier"
		Identifier_3.Parent = Settings_1
		Identifier_3.Active = true
		Identifier_3.AnchorPoint = Vector2.new(0.5, 0.5)
		Identifier_3.AutoButtonColor = false
		Identifier_3.AutomaticSize = Enum.AutomaticSize.X
		Identifier_3.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
		Identifier_3.BackgroundTransparency = 0.10000000149011612
		Identifier_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Identifier_3.BorderSizePixel = 0
		Identifier_3.Modal = true
		Identifier_3.Position = UDim2.new(0.5, 0, -0.877777755, 0)
		Identifier_3.Size = UDim2.new(0, 45, 0, 45)
		Identifier_3.Visible = false
		Identifier_3.Image = "rbxassetid://16255699706"
		Identifier_3.ImageTransparency = 0.949999988079071
		Identifier_3.ScaleType = Enum.ScaleType.Crop

		UICorner_11.Parent = Identifier_3
		UICorner_11.CornerRadius = UDim.new(1, 0)

		Title_4.Name = "Title"
		Title_4.Parent = Identifier_3
		Title_4.AutomaticSize = Enum.AutomaticSize.X
		Title_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Title_4.BackgroundTransparency = 1.0099999904632568
		Title_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Title_4.BorderSizePixel = 0
		Title_4.Size = UDim2.new(0, 0, 1, 0)
		Title_4.Font = Enum.Font.GothamMedium
		Title_4.Text = "Change Settings And Preferences"
		Title_4.TextColor3 = Color3.fromRGB(220, 220, 220)
		Title_4.TextSize = 15

		UIListLayout_9.Parent = Identifier_3
		UIListLayout_9.HorizontalAlignment = Enum.HorizontalAlignment.Center
		UIListLayout_9.SortOrder = Enum.SortOrder.LayoutOrder
		UIListLayout_9.VerticalAlignment = Enum.VerticalAlignment.Center

		UIPadding_7.Parent = Identifier_3
		UIPadding_7.PaddingLeft = UDim.new(0, 12)
		UIPadding_7.PaddingRight = UDim.new(0, 12)

		Hud_1.Name = "Hud"
		Hud_1.Parent = ProfileBar
		Hud_1.Active = true
		Hud_1.AnchorPoint = Vector2.new(0.5, 0.5)
		Hud_1.AutoButtonColor = false
		Hud_1.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
		Hud_1.BackgroundTransparency = 1
		Hud_1.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Hud_1.BorderSizePixel = 0
		Hud_1.Modal = true
		Hud_1.Position = UDim2.new(0.5, 0, 0.5, 0)
		Hud_1.Size = UDim2.new(0, 45, 0, 45)
		Hud_1.Image = "rbxassetid://16255699706"
		Hud_1.ImageTransparency = 0.949999988079071
		Hud_1.ScaleType = Enum.ScaleType.Crop

		UICorner_12.Parent = Hud_1
		UICorner_12.CornerRadius = UDim.new(1, 0)

		UIStroke_7.Parent = Hud_1
		UIStroke_7.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
		UIStroke_7.Color = Color3.fromRGB(255, 255, 255)
		UIStroke_7.Thickness = 1

		Icon.Name = "Screenshot"
		Icon.Parent = Hud_1
		Icon.AnchorPoint = Vector2.new(0.5, 0.5)
		Icon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Icon.BackgroundTransparency = 1
		Icon.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Icon.BorderSizePixel = 0
		Icon.Position = UDim2.new(0.5, 0, 0.5, 0)
		Icon.Size = UDim2.new(0, 27, 0, 27)
		Icon.Image = "rbxassetid://10723346871"
		Icon.ImageTransparency = 0.30000001192092896

		UICorner_13.Parent = Icon
		UICorner_13.CornerRadius = UDim.new(1, 0)

		Identifier_4.Name = "Identifier"
		Identifier_4.Parent = Hud_1
		Identifier_4.Active = true
		Identifier_4.AnchorPoint = Vector2.new(0.5, 0.5)
		Identifier_4.AutoButtonColor = false
		Identifier_4.AutomaticSize = Enum.AutomaticSize.X
		Identifier_4.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
		Identifier_4.BackgroundTransparency = 0.10000000149011612
		Identifier_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Identifier_4.BorderSizePixel = 0
		Identifier_4.Modal = true
		Identifier_4.Position = UDim2.new(0.5, 0, -0.877777755, 0)
		Identifier_4.Size = UDim2.new(0, 45, 0, 45)
		Identifier_4.Visible = false
		Identifier_4.Image = "rbxassetid://16255699706"
		Identifier_4.ImageTransparency = 0.949999988079071
		Identifier_4.ScaleType = Enum.ScaleType.Crop

		UICorner_14.Parent = Identifier_4
		UICorner_14.CornerRadius = UDim.new(1, 0)

		Title_5.Name = "Title"
		Title_5.Parent = Identifier_4
		Title_5.AutomaticSize = Enum.AutomaticSize.X
		Title_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Title_5.BackgroundTransparency = 1.0099999904632568
		Title_5.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Title_5.BorderSizePixel = 0
		Title_5.Size = UDim2.new(0, 0, 1, 0)
		Title_5.Font = Enum.Font.GothamMedium
		Title_5.Text = "Hide the profile hud"
		Title_5.TextColor3 = Color3.fromRGB(220, 220, 220)
		Title_5.TextSize = 15

		UIListLayout_10.Parent = Identifier_4
		UIListLayout_10.HorizontalAlignment = Enum.HorizontalAlignment.Center
		UIListLayout_10.SortOrder = Enum.SortOrder.LayoutOrder
		UIListLayout_10.VerticalAlignment = Enum.VerticalAlignment.Center

		UIPadding_8.Parent = Identifier_4
		UIPadding_8.PaddingLeft = UDim.new(0, 12)
		UIPadding_8.PaddingRight = UDim.new(0, 12)

		ExitScam_1.Name = "ExitScam"
		ExitScam_1.Parent = ProfileBar
		ExitScam_1.Active = true
		ExitScam_1.AnchorPoint = Vector2.new(0.5, 0.5)
		ExitScam_1.AutoButtonColor = false
		ExitScam_1.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
		ExitScam_1.BackgroundTransparency = 1
		ExitScam_1.BorderColor3 = Color3.fromRGB(0, 0, 0)
		ExitScam_1.BorderSizePixel = 0
		ExitScam_1.Modal = true
		ExitScam_1.Position = UDim2.new(0.5, 0, 0.5, 0)
		ExitScam_1.Size = UDim2.new(0, 45, 0, 45)
		ExitScam_1.Image = "rbxassetid://16255699706"
		ExitScam_1.ImageTransparency = 0.949999988079071
		ExitScam_1.ScaleType = Enum.ScaleType.Crop

		UICorner_15.Parent = ExitScam_1
		UICorner_15.CornerRadius = UDim.new(1, 0)

		UIStroke_8.Parent = ExitScam_1
		UIStroke_8.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
		UIStroke_8.Color = Color3.fromRGB(255, 255, 255)
		UIStroke_8.Thickness = 1

		Screenshot_5.Name = "Screenshot"
		Screenshot_5.Parent = ExitScam_1
		Screenshot_5.AnchorPoint = Vector2.new(0.5, 0.5)
		Screenshot_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Screenshot_5.BackgroundTransparency = 1
		Screenshot_5.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Screenshot_5.BorderSizePixel = 0
		Screenshot_5.Position = UDim2.new(0.5, 0, 0.5, 0)
		Screenshot_5.Size = UDim2.new(0, 27, 0, 27)
		Screenshot_5.Image = "rbxassetid://10723434906"
		Screenshot_5.ImageTransparency = 0.30000001192092896

		UICorner_16.Parent = Screenshot_5
		UICorner_16.CornerRadius = UDim.new(1, 0)

		Identifier_5.Name = "Identifier"
		Identifier_5.Parent = ExitScam_1
		Identifier_5.Active = true
		Identifier_5.AnchorPoint = Vector2.new(0.5, 0.5)
		Identifier_5.AutoButtonColor = false
		Identifier_5.AutomaticSize = Enum.AutomaticSize.X
		Identifier_5.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
		Identifier_5.BackgroundTransparency = 0.10000000149011612
		Identifier_5.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Identifier_5.BorderSizePixel = 0
		Identifier_5.Modal = true
		Identifier_5.Position = UDim2.new(0.5, 0, -0.877777755, 0)
		Identifier_5.Size = UDim2.new(0, 45, 0, 45)
		Identifier_5.Visible = false
		Identifier_5.Image = "rbxassetid://16255699706"
		Identifier_5.ImageTransparency = 0.949999988079071
		Identifier_5.ScaleType = Enum.ScaleType.Crop

		UICorner_17.Parent = Identifier_5
		UICorner_17.CornerRadius = UDim.new(1, 0)

		Title_6.Name = "Title"
		Title_6.Parent = Identifier_5
		Title_6.AutomaticSize = Enum.AutomaticSize.X
		Title_6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Title_6.BackgroundTransparency = 1.0099999904632568
		Title_6.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Title_6.BorderSizePixel = 0
		Title_6.Size = UDim2.new(0, 0, 1, 0)
		Title_6.Font = Enum.Font.GothamMedium
		Title_6.Text = "Uninject"
		Title_6.TextColor3 = Color3.fromRGB(220, 220, 220)
		Title_6.TextSize = 15

		UIListLayout_11.Parent = Identifier_5
		UIListLayout_11.HorizontalAlignment = Enum.HorizontalAlignment.Center
		UIListLayout_11.SortOrder = Enum.SortOrder.LayoutOrder
		UIListLayout_11.VerticalAlignment = Enum.VerticalAlignment.Center

		UIPadding_9.Parent = Identifier_5
		UIPadding_9.PaddingLeft = UDim.new(0, 12)
		UIPadding_9.PaddingRight = UDim.new(0, 12)

		UIStroke_9.Parent = ProfileBar
		UIStroke_9.Color = Color3.fromRGB(255, 255, 255)
		UIStroke_9.Thickness = 1

		SignalHandler:NewSignal(Hud_1, MouseButton1Click, function()
			ProfileBar.Visible = false
			--// TODO: add a better profile bar hide
		end)

		SignalHandler:NewSignal(Settings_1, MouseButton1Click, function()
			--// TODO: add a settings openup signal
		end)

		SignalHandler:NewSignal(ExitScam_1, MouseButton1Click, function()
			--// TODO: add an uninject for exit scam
		end)

		return Methods
	end

	shared.Library.LeftInstance = Left_1
	shared.Library.RightInstance = Right_1
	shared.Library.CenterInstance = Center_1
	return Methods
end

return Nagivator
