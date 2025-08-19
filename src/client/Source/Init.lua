local Library = {}
Library.__index = Library

--// Modules
local NavigationModule = require(script.Parent:WaitForChild("Navigator"))
local WindowModule = require(script.Parent:WaitForChild("Window"))
local SignalHandler = require(script.Parent.Parent:WaitForChild("Handlers"):WaitForChild("SignalHandler"))
local AnimationHandler = require(script.Parent.Parent:WaitForChild("Handlers"):WaitForChild("AnimationHandler"))
local InstanceHandler = require(script.Parent.Parent:WaitForChild("Handlers"):WaitForChild("InstanceHandler"))

if shared.Library then
	shared.Library:Uninject()
	shared.Library = Library
end

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

Library.GUI = Instance.new("ScreenGui")
Library.GUI.Parent = Parent
Library.GUI.ResetOnSpawn = false

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

function Library:SafeCallback(Func, ContextName)
	assert(Func, "Parameter is nil for 'SafeCallback'")

	local Success, Error = pcall(Func)

	if not Success then
		warn("[Aether Debug, " .. (ContextName or "unnamed") .. "]: " .. tostring(Error))
	end
end

function Library:GetLucideIcon()
	return nil
end

function Library:Uninject()
	--//TODO: Fix Uninject

	SignalHandler:DisconnectAllSignals()
	InstanceHandler:ClearInstances()
	Library = nil
end

function Library:Notify(Data) end

return Library
