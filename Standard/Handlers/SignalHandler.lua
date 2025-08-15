local Handler = {}
Handler.ActiveConnections = {}

if shared.SignalHandler then
	shared.SignalHandler:Replace(Handler)
else
	shared.SignalHandler = Handler
end

function Handler:Replace(New)
	Handler = New
end

Handler.ActiveConnections = {}

function Handler:NewSignal(Instance, EventName, Callback)
	local Event = Instance[EventName]
	if typeof(Event) ~= "RBXScriptSignal" then
		error(EventName .. " is not a valid signal for " .. Instance.ClassName)
	end

	local Connection = Event:Connect(Callback)
	table.insert(self.ActiveConnections, Connection)
	return Connection
end

function Handler:DisconnectSignal(Connection)
	for i, Conn in ipairs(self.ActiveConnections) do
		if Conn == Connection then
			Conn:Disconnect()
			table.remove(self.ActiveConnections, i)
			break
		end
	end
end

function Handler:DisconnectAllSignals()
	for _, Conn in ipairs(self.ActiveConnections) do
		Conn:Disconnect()
	end
	self.ActiveConnections = {}
end

return Handler
