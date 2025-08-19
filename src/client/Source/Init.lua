local UserInputService = game:GetService("UserInputService")
local Library = {}
Library.__index = Library

--// Modules
local NavigationModule = require(script.Parent:WaitForChild("Navigator"))
local WindowModule = require(script.Parent:WaitForChild("Window"))
local SignalHandler = require(script.Parent.Parent:WaitForChild("Handlers"):WaitForChild("SignalHandler"))
local AnimationHandler = require(script.Parent.Parent:WaitForChild("Handlers"):WaitForChild("AnimationHandler"))
local InstanceHandler = require(script.Parent.Parent:WaitForChild("Handlers"):WaitForChild("InstanceHandler"))

--// Temp
local Lucide = require(script.Parent.Parent:WaitForChild("Config"):WaitForChild("Icons"))

if shared.Library then
	shared.Library:Uninject()
	shared.Library = Library
end

--//TODO: add import

--// Core
Library.CloneRef = cloneref or function(Object)
	assert(Object, "No object found for 'CloneRef'")
	return Object
end
Library.ProtectGui = protectgui or (syn and syn.protect_gui) or function() end

Library.Services = {
	TweenService = Library.CloneRef(game:GetService("TweenService")) :: TweenService,
	RunService = Library.CloneRef(game:GetService("RunService")) :: RunService,
	Players = Library.CloneRef(game:GetService("Players")) :: Players,
	UserInputService = Library.CloneRef(game:GetService("UserInputService")) :: UserInputService,
}

Library.Font = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal) --//TODO: add :ChangeFont

Library.InstanceHandler = InstanceHandler
Library.SignalHandler = SignalHandler
Library.AnimationHandler = AnimationHandler

--// Parent Setup
local Services = Library.Services
local Parent = nil

if Services.RunService:IsStudio() then
	Parent = Services.Players.LocalPlayer:WaitForChild("PlayerGui")
else
	Parent = gethui and gethui() or game:GetService("CoreGui")
end

assert(Parent, "Failed to get gui parent")
Library.GUI =
	InstanceHandler:New("ScreenGui", { Parent = Parent, ResetOnSpawn = false, IgnoreGuiInset = true, Name = "Aether" })

--// Methods
function Library:Setup(Data)
	if shared.NagivationBar then
		shared.NagivationBar:Remove()
	end

	if shared.Window then
		shared.Window:Remove()
	end

	local Navigator = NavigationModule.New(Library)
	local Window = WindowModule.New(Library):Init({
		Title = Data.Window.Title or Data.Window.Name or "",
		Icon = self:GetLucideIcon(Data.Window.Icon or Data.Window.Image or ""),
		Size = Data.Window.Size or Data.Window.WindowSize or UDim2.fromOffset(425, 520),
	})

	shared.Window = Window

	local NavigationUI = Navigator:Init({
		BarSection = Data.BarSection or Data.BarAlignament,
		TagsSection = Data.TagsSection or Data.TagsAlignament,
		MiscSection = Data.MiscSection or Data.MiscAlignament,
	})

	return NavigationUI
end

function Library:GetLucideIcon(Icon)
	assert(Icon, "No icon passed for 'GetLucideIcon'")
	if type(Icon) ~= "string" then
		return
	end

	if Icon:find("rbxassetid") then
		return Icon
	else
		if Services.RunService:IsStudio() then
			for Name, AssetId in pairs(Lucide) do
				if Name:lower():find(Icon:lower()) then
					return AssetId
				end
			end
		else
			local Url =
				game:HttpGet("https://raw.githubusercontent.com/Habibi0001x/lucide-icons-/refs/heads/main/icons") --// Credits: Fluent
			local Data = loadstring(Url)() --//TODO: move these outside the thread

			for Name, AssetId in pairs(Data) do
				if Name:lower():find(Icon:lower()) then
					return AssetId
				end
			end
		end
	end

	return "rbxassetid://0"
end

function Library:Uninject()
	SignalHandler:DisconnectAllSignals()
	InstanceHandler:ClearInstances()
	Library = nil
end

function Library:Notify(Data) end

return Library
