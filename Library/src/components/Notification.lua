local Notification = {}
Notification.__index = Notification

function Notification.New(Library)
	local self = setmetatable({}, Notification)

	self.Library = Library
	self.Queue = {}
	self.Active = nil
	self.Notifying = false

	assert(Library, "No library passed, ended thread.")
	assert(Library.SignalHandler, "No SignalHandler in Library")
	assert(Library.AnimationHandler, "No AnimationHandler in Library")
	assert(Library.NotificationZone, "No NotificationZone in Library")

	return self
end

function Notification:Push(Data)
	table.insert(self.Queue, Data)
	self:Queue()
end

function Notification:Queue()
	if self.Notifying or #self.Queue == 0 then
		return
	end

	self.Notifying = true

	local Data = table.remove(self.Queue, 1)
	local Body = self:Init(Data)

	self.Library.AnimationHandler:Animate(
		Body,
		TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)({ Size = UDim2.new(0, 250, 0, 50) }),
		0.3
	)

	task.delay(Data.Duration or 3, function()
		if Body and Body.Parent then
			self.Library.AnimationHandler:Animate(
				Body,
				TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
				{ Size = UDim2.new(0, 0, 0, 0) },
				0.3
			)

			task.delay(0.3, function()
				Body:Destroy()
				self.Notifying = false
				self:Queue()
			end)
		end
	end)
end

function Notification:Init(Data)
	local Body = {}

	-- GUI to Lua
	-- Version: 0.0.3

	-- Instances:

	local NotificationZone = Instance.new("Frame")
	local Notification_1 = Instance.new("ImageButton")
	local UICorner_1 = Instance.new("UICorner")
	local UIListLayout_1 = Instance.new("UIListLayout")
	local UIPadding_1 = Instance.new("UIPadding")
	local UIStroke_1 = Instance.new("UIStroke")
	local Content_1 = Instance.new("ImageButton")
	local UICorner_2 = Instance.new("UICorner")
	local UIListLayout_2 = Instance.new("UIListLayout")
	local UIPadding_2 = Instance.new("UIPadding")
	local UIStroke_2 = Instance.new("UIStroke")
	local Title_1 = Instance.new("TextLabel")
	local UISizeConstraint_1 = Instance.new("UISizeConstraint")
	local Title_2 = Instance.new("ImageButton")
	local UICorner_3 = Instance.new("UICorner")
	local UIListLayout_3 = Instance.new("UIListLayout")
	local UIPadding_3 = Instance.new("UIPadding")
	local UIStroke_3 = Instance.new("UIStroke")
	local Title_3 = Instance.new("TextLabel")
	local Icon_1 = Instance.new("ImageLabel")
	local TimeLapse_1 = Instance.new("ImageButton")
	local UICorner_4 = Instance.new("UICorner")
	local UIListLayout_4 = Instance.new("UIListLayout")
	local UIPadding_4 = Instance.new("UIPadding")
	local UIStroke_4 = Instance.new("UIStroke")
	local Title_4 = Instance.new("TextLabel")
	local UIPadding_5 = Instance.new("UIPadding")

	-- Properties:
	NotificationZone.Name = "NotificationZone"
	NotificationZone.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
	NotificationZone.AnchorPoint = Vector2.new(0.5, 0)
	NotificationZone.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	NotificationZone.BackgroundTransparency = 1
	NotificationZone.BorderColor3 = Color3.fromRGB(0, 0, 0)
	NotificationZone.BorderSizePixel = 0
	NotificationZone.Position = UDim2.new(0.5, 0, 0, 0)
	NotificationZone.Size = UDim2.new(1, 0, 1, 0)

	Notification_1.Name = "Notification"
	Notification_1.Parent = NotificationZone
	Notification_1.Active = true
	Notification_1.AnchorPoint = Vector2.new(0.5, 0.5)
	Notification_1.AutoButtonColor = false
	Notification_1.AutomaticSize = Enum.AutomaticSize.XY
	Notification_1.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
	Notification_1.BackgroundTransparency = 0.10000000149011612
	Notification_1.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Notification_1.BorderSizePixel = 0
	Notification_1.LayoutOrder = 1
	Notification_1.Modal = true
	Notification_1.Position = UDim2.new(0.510999978, 0, 0, 0)
	Notification_1.Size = UDim2.new(0, 0, 0, 0)
	Notification_1.Image = "rbxassetid://16255699706"
	Notification_1.ImageTransparency = 0.8999999761581421
	Notification_1.ScaleType = Enum.ScaleType.Crop

	UICorner_1.Parent = Notification_1
	UICorner_1.CornerRadius = UDim.new(1, 0)

	UIListLayout_1.Parent = Notification_1
	UIListLayout_1.Padding = UDim.new(0, 8)
	UIListLayout_1.FillDirection = Enum.FillDirection.Horizontal
	UIListLayout_1.HorizontalAlignment = Enum.HorizontalAlignment.Center
	UIListLayout_1.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout_1.VerticalAlignment = Enum.VerticalAlignment.Center

	UIPadding_1.Parent = Notification_1
	UIPadding_1.PaddingLeft = UDim.new(0, 6)
	UIPadding_1.PaddingRight = UDim.new(0, 6)

	UIStroke_1.Parent = Notification_1
	UIStroke_1.Color = Color3.fromRGB(255, 255, 255)
	UIStroke_1.Thickness = 1

	Content_1.Name = "Content"
	Content_1.Parent = Notification_1
	Content_1.Active = true
	Content_1.AnchorPoint = Vector2.new(0.5, 0.5)
	Content_1.AutoButtonColor = false
	Content_1.AutomaticSize = Enum.AutomaticSize.X
	Content_1.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
	Content_1.BackgroundTransparency = 1
	Content_1.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Content_1.BorderSizePixel = 0
	Content_1.LayoutOrder = 1
	Content_1.Modal = true
	Content_1.Position = UDim2.new(0.5, 0, -0.877777755, 0)
	Content_1.Size = UDim2.new(0, 45, 0, 45)
	Content_1.Image = "rbxassetid://16255699706"
	Content_1.ImageTransparency = 0.949999988079071
	Content_1.ScaleType = Enum.ScaleType.Crop

	UICorner_2.Parent = Content_1
	UICorner_2.CornerRadius = UDim.new(1, 0)

	UIListLayout_2.Parent = Content_1
	UIListLayout_2.Padding = UDim.new(0, 7)
	UIListLayout_2.FillDirection = Enum.FillDirection.Horizontal
	UIListLayout_2.HorizontalAlignment = Enum.HorizontalAlignment.Center
	UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout_2.VerticalAlignment = Enum.VerticalAlignment.Center

	UIPadding_2.Parent = Content_1
	UIPadding_2.PaddingLeft = UDim.new(0, 12)
	UIPadding_2.PaddingRight = UDim.new(0, 12)

	UIStroke_2.Parent = Content_1
	UIStroke_2.Color = Color3.fromRGB(255, 255, 255)
	UIStroke_2.Thickness = 1

	Title_1.Name = "Title"
	Title_1.Parent = Content_1
	Title_1.AutomaticSize = Enum.AutomaticSize.X
	Title_1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Title_1.BackgroundTransparency = 1
	Title_1.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Title_1.BorderSizePixel = 0
	Title_1.LayoutOrder = 1
	Title_1.Position = UDim2.new(0.0182648394, 0, 0.111111112, 0)
	Title_1.Size = UDim2.new(0, 0, 1, 0)
	Title_1.Font = Enum.Font.GothamMedium
	Title_1.Text = "  20:30:52.519  DataStoreService is not a valid member of ServerStorage "
	ServerStorage("  -  Server - GameServer:5")
	Title_1.TextColor3 = Color3.fromRGB(220, 220, 220)
	Title_1.TextSize = 15
	Title_1.TextTruncate = Enum.TextTruncate.AtEnd

	UISizeConstraint_1.Parent = Content_1
	UISizeConstraint_1.MaxSize = Vector2.new(775, INF)

	Title_2.Name = "Title"
	Title_2.Parent = Notification_1
	Title_2.Active = true
	Title_2.AnchorPoint = Vector2.new(0.5, 0.5)
	Title_2.AutoButtonColor = false
	Title_2.AutomaticSize = Enum.AutomaticSize.X
	Title_2.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
	Title_2.BackgroundTransparency = 0.10000000149011612
	Title_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Title_2.BorderSizePixel = 0
	Title_2.Modal = true
	Title_2.Position = UDim2.new(0.5, 0, -0.877777755, 0)
	Title_2.Size = UDim2.new(0, 45, 0, 45)
	Title_2.Image = "rbxassetid://16255699706"
	Title_2.ImageTransparency = 0.949999988079071
	Title_2.ScaleType = Enum.ScaleType.Crop

	UICorner_3.Parent = Title_2
	UICorner_3.CornerRadius = UDim.new(1, 0)

	UIListLayout_3.Parent = Title_2
	UIListLayout_3.Padding = UDim.new(0, 7)
	UIListLayout_3.FillDirection = Enum.FillDirection.Horizontal
	UIListLayout_3.HorizontalAlignment = Enum.HorizontalAlignment.Center
	UIListLayout_3.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout_3.VerticalAlignment = Enum.VerticalAlignment.Center

	UIPadding_3.Parent = Title_2
	UIPadding_3.PaddingLeft = UDim.new(0, 12)
	UIPadding_3.PaddingRight = UDim.new(0, 12)

	UIStroke_3.Parent = Title_2
	UIStroke_3.Color = Color3.fromRGB(255, 255, 255)
	UIStroke_3.Thickness = 1

	Title_3.Name = "Title"
	Title_3.Parent = Title_2
	Title_3.AutomaticSize = Enum.AutomaticSize.X
	Title_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Title_3.BackgroundTransparency = 1.0099999904632568
	Title_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Title_3.BorderSizePixel = 0
	Title_3.LayoutOrder = 1
	Title_3.Size = UDim2.new(0, 0, 1, 0)
	Title_3.Font = Enum.Font.GothamMedium
	Title_3.Text = "Notification Title"
	Title_3.TextColor3 = Color3.fromRGB(220, 220, 220)
	Title_3.TextSize = 15

	Icon_1.Name = "Icon"
	Icon_1.Parent = Title_2
	Icon_1.AnchorPoint = Vector2.new(0.5, 0.5)
	Icon_1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Icon_1.BackgroundTransparency = 1
	Icon_1.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Icon_1.BorderSizePixel = 0
	Icon_1.Position = UDim2.new(0.5, 0, 0.5, 0)
	Icon_1.Size = UDim2.new(0, 22, 0, 22)
	Icon_1.Image = "rbxassetid://10734975692"
	Icon_1.ImageTransparency = 0.30000001192092896

	TimeLapse_1.Name = "TimeLapse"
	TimeLapse_1.Parent = Notification_1
	TimeLapse_1.Active = true
	TimeLapse_1.AnchorPoint = Vector2.new(0.5, 0.5)
	TimeLapse_1.AutoButtonColor = false
	TimeLapse_1.AutomaticSize = Enum.AutomaticSize.X
	TimeLapse_1.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
	TimeLapse_1.BackgroundTransparency = 1
	TimeLapse_1.BorderColor3 = Color3.fromRGB(0, 0, 0)
	TimeLapse_1.BorderSizePixel = 0
	TimeLapse_1.LayoutOrder = 1
	TimeLapse_1.Modal = true
	TimeLapse_1.Position = UDim2.new(0.5, 0, -0.877777755, 0)
	TimeLapse_1.Size = UDim2.new(0, 45, 0, 45)
	TimeLapse_1.Image = "rbxassetid://16255699706"
	TimeLapse_1.ImageTransparency = 0.949999988079071
	TimeLapse_1.ScaleType = Enum.ScaleType.Crop

	UICorner_4.Parent = TimeLapse_1
	UICorner_4.CornerRadius = UDim.new(1, 0)

	UIListLayout_4.Parent = TimeLapse_1
	UIListLayout_4.Padding = UDim.new(0, 7)
	UIListLayout_4.FillDirection = Enum.FillDirection.Horizontal
	UIListLayout_4.HorizontalAlignment = Enum.HorizontalAlignment.Center
	UIListLayout_4.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout_4.VerticalAlignment = Enum.VerticalAlignment.Center

	UIPadding_4.Parent = TimeLapse_1
	UIPadding_4.PaddingLeft = UDim.new(0, 12)
	UIPadding_4.PaddingRight = UDim.new(0, 12)

	UIStroke_4.Parent = TimeLapse_1
	UIStroke_4.Color = Color3.fromRGB(255, 255, 255)
	UIStroke_4.Thickness = 1

	Title_4.Name = "Title"
	Title_4.Parent = TimeLapse_1
	Title_4.AutomaticSize = Enum.AutomaticSize.X
	Title_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Title_4.BackgroundTransparency = 1
	Title_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Title_4.BorderSizePixel = 0
	Title_4.LayoutOrder = 1
	Title_4.Position = UDim2.new(0.0182648394, 0, 0.111111112, 0)
	Title_4.Size = UDim2.new(0, 0, 1, 0)
	Title_4.Font = Enum.Font.GothamMedium
	Title_4.Text = "X15"
	Title_4.TextColor3 = Color3.fromRGB(220, 220, 220)
	Title_4.TextSize = 15

	UIPadding_5.Parent = NotificationZone
	UIPadding_5.PaddingTop = UDim.new(0.05000000074505806, 0)

	return Body
end

return Notification
