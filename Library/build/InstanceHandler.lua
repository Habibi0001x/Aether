local Handler = {
	Instances = {},
}

function Handler:New(ClassName, Properties, Container)
	local Success, NewInstance = pcall(Instance.new, ClassName)
	if not Success then
		warn("Invalid ClassName: " .. tostring(ClassName))
		return nil
	end

	if Properties then
		for Property, Value in pairs(Properties) do
			NewInstance[Property] = Value
		end
	end

	table.insert(Container or self.Instances, NewInstance)
	return NewInstance
end

function Handler:ClearInstances()
	for _, Instance in pairs(self.Instances) do
		if Instance and Instance.Destroy then
			Instance:Destroy()
		end
	end
	table.clear(self.Instances)
end

return Handler
