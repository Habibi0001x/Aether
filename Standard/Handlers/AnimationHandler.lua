local Handler = {}
Handler.ActiveTweens = {}

local TweenService = shared.Library.Services.TweenService

function Handler:Animate(Instance, Info, Propriety)
	local Tween = TweenService:Create(Instance, Info, Propriety)
	Tween:Play()
	table.insert(Handler.ActiveTweens, Tween)

	return Tween
end

return Handler
