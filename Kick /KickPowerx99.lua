local player = game.Players.LocalPlayer
local character = player.Character
local hrp = character:WaitForChild("HumanoidRootPart")


local function getMyPlot()
    for _, plot in pairs(workspace.Plots:GetChildren()) do
        for key, value in pairs(plot:GetAttributes()) do
            if value == player.UserId or value == player.Name then
                return plot
            end
        end
    end
    return nil
end

local function TouchAllSlots()
    local myPlot = getMyPlot()
    for i = 1, 30 do
        local part = myPlot.Buttons:FindFirstChild("Slot" .. i)
        if part then
            firetouchinterest(hrp, part, 0)
            task.wait(.1)
            firetouchinterest(hrp, part, 1)
        end
    end
end

task.spawn(function ()
    while task.wait(.2) do
        game:GetService("ReplicatedStorage"):WaitForChild("Shared"):WaitForChild("Packages"):WaitForChild("Network"):WaitForChild("rev_TaviMishkal"):FireServer()
        TouchAllSlots()
    end
end)
