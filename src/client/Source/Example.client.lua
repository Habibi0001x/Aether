local Library = require(script.Parent:WaitForChild("Init"))

local Navigator = Library:Setup({
	Window = {
		Title = "Window Example",
		Logo = "",
		Size = nil, --// Default: offset 425, 520
	},

	BarSection = "Center",
	TagsSection = "Right",
	MiscSection = "Left",
})

local CombatTab = Navigator:CreateTab({
	Title = "Combat Tab And Utilities",
	Icon = "",
})

local CombatT22222222ab = Navigator:CreateTab({
	Title = "Combat Tab And Skids",
	Icon = "",
})

local Co2mbatTab = Navigator:CreateTab({
	Title = "Combat Tab And Pasters",
	Icon = "",
})

CombatTab:Select()

CombatTab:CreateToggle({
	Title = "Toggle Exmaple",
	Description = "This is an example toggle",
	Default = false,
	Callback = function() end,
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
