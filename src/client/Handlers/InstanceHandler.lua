local Handler = {
	Instances = {},
}

function Handler:NewInstance(ClassName, Proprieties)
	local NewInstance = Instance.new[ClassName]
	for Propriety, Value in pairs(Proprieties) do
		NewInstance[Propriety] = Value
	end

	table.insert(Handler.Instances, NewInstance)
end

function Handler:ClearInstances()
	for _, v in pairs(Handler.Instances) do
		v:Destroy()
	end
end

return Handler
