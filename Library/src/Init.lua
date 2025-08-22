local Library = {}
Library.__index = Library

if shared.Library then
	shared.Library:Uninject()
	shared.Library = Library
end

local Import = function(FileName, Extension)
	local BaseURL = "https://raw.githubusercontent.com/Severity-svc2/Aether/refs/heads/main/Library/"
	local FileExtension = Extension or ".lua"
	local Path = BaseURL .. FileName .. FileExtension

	local Success, Response = pcall(function()
		return game:HttpGet(Path)
	end)

	if Success and Response then
		if Response:find("<html>") then
			error("Invalid response: " .. Path)
		end
		return loadstring(Response)()
	else
		error("Failed to fetch file " .. Path)
	end
end

Library.Import = Import

--// Modules
local NavigationModule = Import("src/components/Navigator")
local WindowModule = Import("src/components/Window")
local SignalHandler = Import("build/SignalHandler")
local AnimationHandler = Import("build/AnimationHandler")
local InstanceHandler = Import("build/InstanceHandler")
local Icons = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Footagesus/Icons/main/Main.lua"))() --// Creds: .ftgs
Icons.SetIconsType("lucide")

--// Core
Library.CloneRef = cloneref or function(Object)
	assert(Object, "No object found for 'CloneRef'")
	return Object
end

Library.ProtectGui = protectgui or function() end

Library.Services = {
	TweenService = Library.CloneRef(game:GetService("TweenService")) :: TweenService,
	RunService = Library.CloneRef(game:GetService("RunService")) :: RunService,
	Players = Library.CloneRef(game:GetService("Players")) :: Players,
	UserInputService = Library.CloneRef(game:GetService("UserInputService")) :: UserInputService,
	HttpService = Library.CloneRef(game:GetService("HttpService")) :: HttpService,
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
Library.GUI = InstanceHandler:New("ScreenGui", {
	Parent = Parent,
	ResetOnSpawn = false,
	IgnoreGuiInset = true,
	Name = "Aether",
	--// ZIndexBehaviour = Enum.ZIndexBehavior.Sibling,
})

Library.DropdownUI = InstanceHandler:New("Frame", {
	Parent = Library.GUI,
	Size = UDim2.new(1, 0, 1, 0),
	BackgroundTransparency = 1,
	Name = "DropdownUI",
	ZIndex = 2,
	Visible = true,
})

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
		Title = Data.Window.Title or Data.Window.Icon or "",
		Icon = Data.Window.Icon or Data.Window.Image or "",
		Size = Data.Window.Size or Data.Window.WindowSize or UDim2.fromOffset(425, 520),
	})

	shared.Window = Window

	local NavigationUI = Navigator:Init({
		BarSection = Data.BarSection or Data.BarAligIconnt,
		TagsSection = Data.TagsSection or Data.TagsAligIconnt,
		MiscSection = Data.MiscSection or Data.MiscAligIconnt,
	})

	return NavigationUI
end

function Library:GetIcon(IconName)
	assert(IconName, "No icon passed for 'GetIcon'")

	if type(IconName) == "string" and IconName:find("rbxassetid") then
		return {
			Image = IconName,
			ImageRectPosition = Vector2.new(0, 0),
			ImageRectSize = Vector2.new(0, 0),
		}
	end

	local Icon = Icons.Icon(tostring(IconName):lower())
	--// assert(Icon and Icon[1] and Icon[2], "Invalid icon name: " .. tostring(IconName))

	if not Icon and not Icon[1] and not Icon[2] then
		return {
			Image = "",
			ImageRectPosition = Vector2.new(0, 0),
			ImageRectSize = Vector2.new(0, 0),
		}
	end

	return {
		Image = Icon[1],
		ImageRectSize = Icon[2].ImageRectSize,
		ImageRectPosition = Icon[2].ImageRectPosition,
	}
end

function Library:Uninject()
	SignalHandler:DisconnectAllSignals()
	InstanceHandler:ClearInstances()
	Library = nil
end

function Library:Notify(Data) end

function Library:SetIconLibrary(Library)
	Icons.SetIconsType(Library)
end

return Library
