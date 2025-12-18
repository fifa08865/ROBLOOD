local ply = game:GetService("Players").LocalPlayer
local messages = "💎 Gems :  "
local Gem = tostring(ply:GetAttribute("Gems"))

while task.wait(1) do
    _G.Horst_SetDescription(messages..Gem)
end
