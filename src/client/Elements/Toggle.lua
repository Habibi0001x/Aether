local Toggle = {}

assert(shared.Library, "No library found, ended thread for 'Toggle'")

--// Modules
local Library = shared.Library

local SignalHandler = Library.SignalHandler
local AnimHandler = Library.AnimationHandler
local InstanceHandler = Library.InstanceHandler

local New = InstanceHandler.NewInstance

function Toggle:Init() end

return Toggle
