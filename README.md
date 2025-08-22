
---

# 📖 Aether Documentation

## Introduction

**Aether** is a Roblox GUI library inspired by newer UI frameworks such as **WindUI** and **Fluent**.
It is currently in **Beta** and actively being developed.

If you encounter issues or have suggestions, please DM me on Discord: **severitysvc**

---

## 🔔 Note

* Aether is in **Beta**. Expect breaking changes.
* Some features are **not fully implemented yet** (see API notes).

---

## 🙌 Credits

* **[.ftgs](https://github.com/Footagesus)** → Icon library

---

## 🌐 Socials

* [Discord Server](https://discord.gg/cdGfgsaD5b)
* [YouTube Channel](https://www.youtube.com/@Severity-Svc)

---

## 🚀 Getting Started

### Booting the Library

```lua
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Severity-svc2/Aether/refs/heads/main/Library/src/Init.lua"))()
```

---

## 🛠️ API Reference

### Library

```lua
 Library:Uninject()
```

Cleans up and unloads Aether.

* Destroys all UI instances
* Disconnects signals
* Removes shared variables

---

```lua
Library:Notify({Not scripted yet :p})
```

Creates a notification.
> [!WARNING]
> ⚠️ Currently **not functional** (pending `notification.lua`).

```lua
local Notification = Library:Notify({
    Title = "Notification Title",
    Content = "Hello world",
    Duration = 3
})
--// Desired Creation
```

##### Desired Notification Methods

* `Notification:Remove()` → Destroys the notification.
* `Notification:Queue()` → Queues the notification until `:Show()` is called.
* `Notification:Show()` → Displays the notification (requires `:Queue()` first).

---

```lua
 Library:SetIconLibrary(libraryName)
```

Sets the active icon library.

* Default: `"lucide"`
* Supported: `{ "lucide", "craft" }` (see [.ftgs/Icons](https://github.com/Footagesus/Icons))

---

### Navigator
Initializes the main window and navigation bar.

```lua
local Navigator = Library:Setup({
	Window = {
		Title = "Aether Window Example",
		Logo = "user",
		Size = UDim2.fromOffset(425, 520),
	},
	BarSection = "Center",
	TagsSection = "Right",
	-- MiscSection = "Left" (currently not working)
})
```

---

### Creating Tabs
Example using Roblox AssetId:

```lua
local Tab = Navigator:CreateTab({
	Title = "Example Tab",
	Icon = "rbxassetid://10734975692",
})
```

Example using icon library:

```lua
local Tab = Navigator:CreateTab({
	Title = "Example Tab",
	Icon = "user",
})
```

---

### Tab Elements
> I will add more elements with each update {eg: Paragraphs, ColorPickers, Inputs}
> Note: when "" is used, it means the element will not be visible {eg: if a Description is set to nil or "" then it wont show}


#### Toggles

```lua
Tab:CreateToggle({
	Title = "Toggle Example", --// Default: ""
	Description = "This is a toggle", --// Default: ""
	Default = false, --// Default: false
	Callback = function(State)
		print(State)
	end,
})
```

#### Buttons

```lua
Tab:CreateButton({
	Title = "Button Example", --// Default: ""
	Icon = "clock", --// Default: ""
	Description = "This is a button", --// Default: ""
	Callback = function()
		print("Button clicked")
	end,
})
```

#### Dropdowns

```lua
Tab:CreateDropdown({
	Title = "Dropdown Example",
	Description = "Choose a value",
	Values = { "Option1", "Option2", "Option3" },
	AllowNone = false,
	Multi = {
		Enabled = true,
		ShadowSelected = true,
	},
	Callback = function(value)
		print(value)
	end,
})
```

#### Sliders

```lua
Tab:CreateSlider({
	Title = "Slider Example",--// Default: ""
	Description = "This is a slider",--// Default: ""
	Min = 10,--// Default: 0
	Max = 100,--// Default: 100
	Step = 1,--// Default: 1
	Default = 50,--// Default: Min 
	Callback = function(value)
		print(value)
	end,
})
```



