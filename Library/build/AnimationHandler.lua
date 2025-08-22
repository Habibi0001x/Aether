local Handler = {}
Handler.ActiveTweens = {}

function Handler:Animate(Instance, Info, Propriety)
	local Tween = game:GetService("TweenService"):Create(Instance, Info, Propriety)
	Tween:Play()
	table.insert(Handler.ActiveTweens, Tween)

	return Tween
end

return Handler
