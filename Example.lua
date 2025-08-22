local Library = loadstring(
	game:HttpGet("https://raw.githubusercontent.com/Severity-svc2/Aether/refs/heads/main/Library/src/Init.lua")
)()

local Navigator = Library:Setup({
	Window = {
		Title = "Aether Window Example", --// Default: ""
		Logo = "user", --//Default: none
		Size = UDim2.fromOffset(425, 520), --// Default: offset 425, 520
	},

	BarSection = "Center", --//Default: Center
	TagsSection = "Right", --//Default:  Left
	MiscSection = "Left", --//Default: Left
})

local CombatTab = Navigator:CreateTab({
	Title = "Combat Tab",
	Icon = "rbxassetid://10734975692",
})

local Utility = Navigator:CreateTab({
	Title = "Utility Tab",
	Icon = "rbxassetid://10709759764",
})

local World = Navigator:CreateTab({
	Title = "World Tab",
	Icon = "rbxassetid://10734897956",
})

local Table = {}
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

CombatTab:CreateDropdown({
	Title = "Dropdown Example",
	Icon = "",
	Description = "This is a dropdown example",
	Values = Table,
	Value = {},
	AllowNone = false,
	Multi = {
		Enabled = true,
		ShadowSelected = true,
	},
	Callback = function(Value)
		print(Value)
	end,
})

CombatTab:CreateSlider({
	Title = "Slider Exmaple",
	Description = "This is an example slider",
	Default = false,
	Min = 10,
	Max = 100,
	Step = 1,
	Callback = function(Value)
		print(Value)
	end,
})

for i = 1, 100 do
	table.insert(Table, tostring(i))
	task.wait(2)
end
