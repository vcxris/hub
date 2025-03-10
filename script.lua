local Players = game:GetService("Players")

local plrs = {}

getgenv.Print = true

Players.PlayerAdded:Connect(function(player)
    plrs[player.Name] = player
end)


Players.PlayerRemoved:Connect(function(player)
    plrs[player.Name] = nil
end)

task.spawn(function()
    while getgenv.Print do
        task.wait(1)
        for i,v in plrs do
            print(i)
        end
    end  
end)