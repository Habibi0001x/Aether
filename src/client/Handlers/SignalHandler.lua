local Handler = {}
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

function Handler:HandleNil(Instance)
	if Instance:IsA("TextLabel") then
		if Instance.Text == "" or Instance.Text == nil then
			Instance.Visible = false
		else
			Instance.Visible = true
		end

		Instance:GetPropertyChangedSignal("Text"):Connect(function()
			if Instance.Text == "" or Instance.Text == nil then
				Instance.Visible = false
			else
				Instance.Visible = true
			end
		end)
	elseif Instance:IsA("ImageLabel") or Instance:IsA("ImageButton") then
		if Instance.Image == "" or Instance.Image == nil then
			Instance.Visible = false
		else
			Instance.Visible = true
		end

		Instance:GetPropertyChangedSignal("Image"):Connect(function()
			if Instance.Image == "" or Instance.Image == nil then
				Instance.Visible = false
			else
				Instance.Visible = true
			end
		end)
	end
end

function Library:SafeCallback(Func, ContextName)
	assert(Func, "Parameter is nil for 'SafeCallback'")

	local Success, Error = pcall(Func)

	if not Success then
		warn("[Aether Debug, " .. (ContextName or "unnamed") .. "]: " .. tostring(Error))
	end
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
