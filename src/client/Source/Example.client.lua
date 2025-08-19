local Library = require(script.Parent:WaitForChild("Init"))

local Navigator = Library:Setup({
	Window = {
		Title = "Window Example",
		Logo = "user",
		Size = nil, --// Default: offset 425, 520
	},

	BarSection = "Center",
	TagsSection = "Right",
	MiscSection = "Left",
})

local CombatTab = Navigator:CreateTab({
	Title = "Combat Tab And Utilities",
	Icon = "Info",
})

local CombatT22222222ab = Navigator:CreateTab({
	Title = "Combat Tab And Skids",
	Icon = "Sword",
})

local Co2mbatTab = Navigator:CreateTab({
	Title = "Combat Tab And Pasters",
	Icon = "User",
})

CombatTab:Select()

CombatTab:CreateToggle({
	Title = "Toggle Exmaple",
	Description = "This is an example toggle",
	Default = false,
	Callback = function(Bool)
		print(Bool)
	end,
})

CombatTab:CreateButton({
	Title = "Button Example",
	Icon = "clock",
	Description = "This is an example Button",
	Callback = function()
		print("clicked button")
	end,
})

CombatTab:CreateSlider({
	Title = "Slider Exmaple",
	Description = "This is an example slider",
	Default = false,
	Min = 10,
	Max = 100,
	Step = 1,
	Callback = function() end,
})
