local RunService = game:GetService("RunService")
local TweenService = game:GetService("TweenService")
local Library = {}
Library.__index = Library

if shared.Library then
	shared.Library:Uninject(nil, function()
		return
	end)
end

local self = setmetatable({}, Library)

self.Window = nil
self.Theme = nil
self.MainUI = nil

self.ProtectGui = protectgui or (syn and syn.protect_gui) or function() end
self.Parent = gethui and gethui() or game:GetService("CoreGui")
self.CloneRef = cloneref or function(Object)
	return Object
end

self.Services = {
	TweenService = self.CloneRef(game:GetService("TweenService")),
	RunService = self.CloneRef(game:GetService("RunService")),
	Players = self.CloneRef(game:GetService("Players")),
}

self.LocalPlayer = self.Services.Players.LocalPlayer

function Library:Init(Data)
	self.MainUI = Instance.new("ScreenGui", self.Parent)
	self.MainUI.Name = "Aether"

	self.ProtectGui(self.MainUI)

	--// TODO: Add requires
	local Nagivator = require()
	local Window = require()

	local NagivatorAlign = Data.NavigationBar.TabsBarAlignament or "Center"
	local TagsAlign = Data.NavigationBar.TagsBarAlignament or "Right"
	local MiscAlign = Data.NavigationBar.MiscBarAlignament or "Left"

	local WindowSize = Data.WindowSize or UDim2.fromOffset(480, 580)

	local Navigator = Nagivator:Setup()
	shared.Nagivator = Nagivator

	return Navigator, Window
end

function Library:Uninject(Confirm, Cancel) end

shared.Library = self
return self
