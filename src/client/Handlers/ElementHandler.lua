local Handler = {}
Handler.__index = Handler

function Handler:GetModule(Module)
	return require(script.Parent.Parent:WaitForChild("Elements"):WaitForChild(Module))
end

--// Modules
local Toggle = Handler:GetModule("Toggle")

function Handler:NewToggle(Data)
	Toggle:Init({})
end

return Handler
