local Notification = {}
Notification.__index = Notification

function Notification.New(Library)
	local self = setmetatable({}, Notification)

	self.Library = Library
	self.Queue = {}
	self.Active = nil
	self.Notifying = false

	assert(Library, "No library passed, ended thread.")
	assert(Library.SignalHandler, "No SignalHandler in Library")
	assert(Library.AnimationHandler, "No AnimationHandler in Library")
	assert(Library.NotificationZone, "No NotificationZone in Library")

	return self
end

function Notification:Push(data)
	table.insert(self.Queue, data)
	self:_ProcessQueue()
end

function Notification:_ProcessQueue()
	if self.Notifying or #self.Queue == 0 then
		return
	end
	self.Notifying = true

	local data = table.remove(self.Queue, 1)
	local Body = self:_CreateNotificationUI(data)

	self.Library.AnimationHandler:Tween(Body, { Size = UDim2.new(0, 250, 0, 50) }, 0.3)

	task.delay(data.Duration or 3, function()
		if Body and Body.Parent then
			self.Library.AnimationHandler:Animate(Body, { Size = UDim2.new(0, 0, 0, 0) }, 0.3)

			task.delay(0.3, function()
				Body:Destroy()
				self.Notifying = false
				self:_ProcessQueue()
			end)
		end
	end)
end

function Notification:_CreateNotificationUI(Data) end

return Notification
