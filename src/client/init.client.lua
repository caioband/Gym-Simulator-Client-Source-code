local Services = {
    ['ReplicatedStorage'] = game.ReplicatedStorage
}

Services.ReplicatedStorage.Events.Remotes.ClientActivation.OnClientEvent:Connect(function(PlayerData)
    local Load = tick()

	for _, Module in pairs(script:GetChildren()) do
		--local S,E = pcall(function()
		coroutine.wrap(function()
			require(Module):Start(PlayerData)
		end)()			
		--	end)
	end
end)