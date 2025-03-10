local Players = game:GetService("Players")

local plrs = {}

Players.PlayerAdded:Connect(function(player)
    plrs[player.Name] = player
end)


Players.PlayerRemoving:Connect(function(player)
    plrs[player.Name] = nil
end)

task.spawn(function()
    while true do
        task.wait(1)
        if not getgenv().Printa then
            break
        end
        for i,v in plrs do
            print(i)
        end
    end  
end)