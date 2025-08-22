
---

# 📖 Aether Documentation

## Introduction

**Aether** is a Roblox GUI library inspired by newer UI frameworks such as **WindUI** and **Fluent**.
It is currently in **Beta** and actively being developed.

👉 If you encounter issues or have suggestions, please DM me on Discord: **severitysvc**

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

#### `Library:Uninject()`

Cleans up and unloads Aether.

* Destroys all UI instances
* Disconnects signals
* Removes shared variables

---

#### `Library:Notify(options) -> Notification`

Creates a notification.
⚠️ Currently **not functional** (pending `notification.lua`).

```lua
local Notification = Library:Notify({
    Title = "Notification Title",
    Content = "Hello world",
    Duration = 3
})
```

##### Notification Methods

* `Notification:Remove()` → Destroys the notification.
* `Notification:Queue()` → Queues the notification until `:Show()` is called.
* `Notification:Show()` → Displays the notification (requires `:Queue()` first).

---

#### `Library:SetIconLibrary(libraryName)`

Sets the active icon library.

* Default: `"lucide"`
* Supported: `{ "lucide", "craft" }` (see [.ftgs/Icons](https://github.com/Footagesus))

Example:

```lua
Library:SetIconLibrary("lucide")
```

---

### Navigator

#### `Library:Setup(options) -> Navigator`

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

#### `Navigator:CreateTab(options) -> Tab`

Creates a new tab in the navigation bar.

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
I will add more elements with each update

#### Toggles

```lua
Tab:CreateToggle({
	Title = "Toggle Example",
	Description = "This is a toggle",
	Default = false,
	Callback = function(state)
		print(state)
	end,
})
```

#### Buttons

```lua
Tab:CreateButton({
	Title = "Button Example",
	Icon = "clock",
	Description = "This is a button",
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
	Title = "Slider Example",
	Description = "This is a slider",
	Min = 10,
	Max = 100,
	Step = 1,
	Default = 50,
	Callback = function(value)
		print(value)
	end,
})
```

