local living = {}
getgenv().loop = true

function add(v)
	if v.Name == "HealthTag" then
		if v.Parent.Name ~= "Wind" then
			table.insert(living, v.Parent)
		end
	end
end

function remove(v)
	pos = table.find(living,v)
	table.remove(living, pos)
end

for i,v in pairs(game:GetService("Workspace").Living:GetDescendants()) do
	add(v)
end

workspace.Living.DescendantAdded:Connect(function(descendant)
	add(descendant)
end)

workspace.Living.ChildRemoved:Connect(function(descendant)
	remove(descendant)
end)
while loop do
	for i,v in pairs(living) do
		v:WaitForChild("Humanoid")
		v:WaitForChild("HealthTag")
		v.Humanoid.Health = v.HealthTag.Value
		v.Humanoid.MaxHealth = v.HealthTag.MaxValue
	end
	wait(1)
end
