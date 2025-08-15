local Aether = loadstring(...)

local Navigator, Window = Aether:Init({
	NavigationBar = {
		NavigationBarAlignament = "Center",
		TagsBarAlignament = "Right",
		MiscBarAlignament = "Left",
	}, -- yes

	WindowSize = UDim2.fromScale(400, 500),
})

Navigator:NewTag({
	Title = "Hello world",
	BackgroundGradient = {
		ColorSequenceKeypoint = "",
		TransparencySequenceKeypoint = "",
		Rotation = 45,
	},

	StrokeGradient = {
		StrokeColorSequenceKeypoint = "",
		StrokeTransparencySequenceKeypoint = "",
		Rotation = 45,
	},
})

local Tab = Navigator:NewTab({
	Title = "SkidsTab",
	Icon = "hello world",
})

Tab:Select() --// Enabled the tab
