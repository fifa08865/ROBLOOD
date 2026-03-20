-- ============================================================
--  ZeroHUB - Hacker Theme
-- ============================================================

local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local player = Players.LocalPlayer

local screenGui = Instance.new("ScreenGui")
screenGui.Name = "ZeroHUB"
screenGui.ResetOnSpawn = false
screenGui.Parent = player.PlayerGui

-- ============================================================
--  Frame หลัก
-- ============================================================

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 400, 0, 230)
frame.Position = UDim2.new(0.5, -200, 0.5, -115)
frame.BackgroundColor3 = Color3.fromRGB(5, 10, 5)
frame.BorderSizePixel = 0
frame.ClipsDescendants = true
frame.Parent = screenGui

local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 16)
corner.Parent = frame

local stroke = Instance.new("UIStroke")
stroke.Color = Color3.fromRGB(0, 255, 80)
stroke.Thickness = 2
stroke.Parent = frame

local gradient = Instance.new("UIGradient")
gradient.Color = ColorSequence.new({
    ColorSequenceKeypoint.new(0, Color3.fromRGB(0, 25, 10)),
    ColorSequenceKeypoint.new(0.5, Color3.fromRGB(0, 12, 5)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(0, 8, 3))
})
gradient.Rotation = 135
gradient.Parent = frame

-- ============================================================
--  Topbar
-- ============================================================

local topbar = Instance.new("Frame")
topbar.Size = UDim2.new(1, 0, 0, 42)
topbar.Position = UDim2.new(0, 0, 0, 0)
topbar.BackgroundColor3 = Color3.fromRGB(0, 40, 15)
topbar.BorderSizePixel = 0
topbar.Parent = frame

local topbarCorner = Instance.new("UICorner")
topbarCorner.CornerRadius = UDim.new(0, 16)
topbarCorner.Parent = topbar

local topbarFix = Instance.new("Frame")
topbarFix.Size = UDim2.new(1, 0, 0.5, 0)
topbarFix.Position = UDim2.new(0, 0, 0.5, 0)
topbarFix.BackgroundColor3 = Color3.fromRGB(0, 40, 15)
topbarFix.BorderSizePixel = 0
topbarFix.Parent = topbar

-- ชื่อ
local titleLabel = Instance.new("TextLabel")
titleLabel.Size = UDim2.new(1, -100, 1, 0)
titleLabel.Position = UDim2.new(0, 14, 0, 0)
titleLabel.BackgroundTransparency = 1
titleLabel.Text = "⚡ ZEROHUB"
titleLabel.TextColor3 = Color3.fromRGB(0, 255, 80)
titleLabel.TextSize = 16
titleLabel.Font = Enum.Font.Code
titleLabel.TextXAlignment = Enum.TextXAlignment.Left
titleLabel.Parent = topbar

-- ปุ่มพับ
local minimizeBtn = Instance.new("TextButton")
minimizeBtn.Size = UDim2.new(0, 32, 0, 26)
minimizeBtn.Position = UDim2.new(1, -72, 0.5, -13)
minimizeBtn.BackgroundColor3 = Color3.fromRGB(0, 70, 25)
minimizeBtn.BorderSizePixel = 0
minimizeBtn.Text = "—"
minimizeBtn.TextColor3 = Color3.fromRGB(0, 255, 80)
minimizeBtn.TextSize = 14
minimizeBtn.Font = Enum.Font.Code
minimizeBtn.Parent = topbar

local minCorner = Instance.new("UICorner")
minCorner.CornerRadius = UDim.new(0, 6)
minCorner.Parent = minimizeBtn

-- ปุ่มปิด
local closeBtn = Instance.new("TextButton")
closeBtn.Size = UDim2.new(0, 32, 0, 26)
closeBtn.Position = UDim2.new(1, -36, 0.5, -13)
closeBtn.BackgroundColor3 = Color3.fromRGB(80, 10, 10)
closeBtn.BorderSizePixel = 0
closeBtn.Text = "✕"
closeBtn.TextColor3 = Color3.fromRGB(255, 80, 80)
closeBtn.TextSize = 14
closeBtn.Font = Enum.Font.Code
closeBtn.Parent = topbar

local closeCorner = Instance.new("UICorner")
closeCorner.CornerRadius = UDim.new(0, 6)
closeCorner.Parent = closeBtn

-- ============================================================
--  Content
-- ============================================================

local content = Instance.new("Frame")
content.Size = UDim2.new(1, 0, 1, -42)
content.Position = UDim2.new(0, 0, 0, 42)
content.BackgroundTransparency = 1
content.Parent = frame

-- เส้นประดับบน
local topLine = Instance.new("Frame")
topLine.Size = UDim2.new(1, -40, 0, 1)
topLine.Position = UDim2.new(0, 20, 0, 8)
topLine.BackgroundColor3 = Color3.fromRGB(0, 255, 80)
topLine.BackgroundTransparency = 0.7
topLine.BorderSizePixel = 0
topLine.Parent = content

-- เส้นกลาง แบ่ง Level กับ Timer
local midLine = Instance.new("Frame")
midLine.Size = UDim2.new(1, -40, 0, 1)
midLine.Position = UDim2.new(0, 20, 0.58, 0)
midLine.BackgroundColor3 = Color3.fromRGB(0, 255, 80)
midLine.BackgroundTransparency = 0.7
midLine.BorderSizePixel = 0
midLine.Parent = content

-- เส้นประดับล่าง
local botLine = Instance.new("Frame")
botLine.Size = UDim2.new(1, -40, 0, 1)
botLine.Position = UDim2.new(0, 20, 1, -26)
botLine.BackgroundColor3 = Color3.fromRGB(0, 255, 80)
botLine.BackgroundTransparency = 0.7
botLine.BorderSizePixel = 0
botLine.Parent = content

-- หัวข้อ LEVEL
local lvHeader = Instance.new("TextLabel")
lvHeader.Size = UDim2.new(1, 0, 0, 18)
lvHeader.Position = UDim2.new(0, 0, 0, 10)
lvHeader.BackgroundTransparency = 1
lvHeader.Text = "[ LEVEL ]"
lvHeader.TextColor3 = Color3.fromRGB(0, 180, 55)
lvHeader.TextSize = 12
lvHeader.Font = Enum.Font.Code
lvHeader.TextXAlignment = Enum.TextXAlignment.Center
lvHeader.Parent = content

-- Shadow level
local levelShadow = Instance.new("TextLabel")
levelShadow.Size = UDim2.new(1, 3, 0, 75)
levelShadow.Position = UDim2.new(0, 3, 0, 25)
levelShadow.BackgroundTransparency = 1
levelShadow.Text = "Lv. --"
levelShadow.TextColor3 = Color3.fromRGB(0, 80, 25)
levelShadow.TextSize = 52
levelShadow.Font = Enum.Font.Code
levelShadow.TextXAlignment = Enum.TextXAlignment.Center
levelShadow.ZIndex = 1
levelShadow.Parent = content

-- Level text
local levelLabel = Instance.new("TextLabel")
levelLabel.Size = UDim2.new(1, 0, 0, 75)
levelLabel.Position = UDim2.new(0, 0, 0, 23)
levelLabel.BackgroundTransparency = 1
levelLabel.Text = "Lv. --"
levelLabel.TextColor3 = Color3.fromRGB(0, 255, 80)
levelLabel.TextSize = 52
levelLabel.Font = Enum.Font.Code
levelLabel.TextXAlignment = Enum.TextXAlignment.Center
levelLabel.ZIndex = 2
levelLabel.Parent = content

-- หัวข้อ UPTIME
local timeHeader = Instance.new("TextLabel")
timeHeader.Size = UDim2.new(1, 0, 0, 18)
timeHeader.Position = UDim2.new(0, 0, 0.6, 2)
timeHeader.BackgroundTransparency = 1
timeHeader.Text = "[ UPTIME ]"
timeHeader.TextColor3 = Color3.fromRGB(0, 180, 55)
timeHeader.TextSize = 12
timeHeader.Font = Enum.Font.Code
timeHeader.TextXAlignment = Enum.TextXAlignment.Center
timeHeader.Parent = content

-- Timer text
local timerLabel = Instance.new("TextLabel")
timerLabel.Size = UDim2.new(1, 0, 0, 40)
timerLabel.Position = UDim2.new(0, 0, 0.6, 18)
timerLabel.BackgroundTransparency = 1
timerLabel.Text = "00:00:00"
timerLabel.TextColor3 = Color3.fromRGB(0, 220, 70)
timerLabel.TextSize = 30
timerLabel.Font = Enum.Font.Code
timerLabel.TextXAlignment = Enum.TextXAlignment.Center
timerLabel.ZIndex = 2
timerLabel.Parent = content

-- Dot สถานะ
local dot = Instance.new("Frame")
dot.Size = UDim2.new(0, 10, 0, 10)
dot.Position = UDim2.new(0, 16, 1, -17)
dot.BackgroundColor3 = Color3.fromRGB(0, 255, 80)
dot.BorderSizePixel = 0
dot.ZIndex = 2
dot.Parent = content

local dotCorner = Instance.new("UICorner")
dotCorner.CornerRadius = UDim.new(1, 0)
dotCorner.Parent = dot

-- By. ZeroHUB
local byLabel = Instance.new("TextLabel")
byLabel.Size = UDim2.new(1, -16, 0, 18)
byLabel.Position = UDim2.new(0, 0, 1, -20)
byLabel.BackgroundTransparency = 1
byLabel.Text = "By. ZeroHUB"
byLabel.TextColor3 = Color3.fromRGB(0, 120, 45)
byLabel.TextSize = 13
byLabel.Font = Enum.Font.Code
byLabel.TextXAlignment = Enum.TextXAlignment.Right
byLabel.ZIndex = 2
byLabel.Parent = content

-- ============================================================
--  Draggable
-- ============================================================

local dragging, dragStart, startPos
topbar.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        dragging = true
        dragStart = input.Position
        startPos = frame.Position
    end
end)
topbar.InputChanged:Connect(function(input)
    if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
        local delta = input.Position - dragStart
        frame.Position = UDim2.new(
            startPos.X.Scale, startPos.X.Offset + delta.X,
            startPos.Y.Scale, startPos.Y.Offset + delta.Y
        )
    end
end)
topbar.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        dragging = false
    end
end)

-- ============================================================
--  Minimize & Close
-- ============================================================

local minimized = false
local fullHeight = 230
local miniHeight = 42

minimizeBtn.MouseButton1Click:Connect(function()
    minimized = not minimized
    local tween = TweenService:Create(frame,
        TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out),
        { Size = UDim2.new(0, 400, 0, minimized and miniHeight or fullHeight) }
    )
    tween:Play()
    minimizeBtn.Text = minimized and "▲" or "—"
end)

closeBtn.MouseButton1Click:Connect(function()
    local tween = TweenService:Create(frame,
        TweenInfo.new(0.2, Enum.EasingStyle.Quart, Enum.EasingDirection.In),
        { Size = UDim2.new(0, 400, 0, 0) }
    )
    tween:Play()
    tween.Completed:Connect(function()
        screenGui:Destroy()
    end)
end)

-- ============================================================
--  อัปเดตเลเวลทุก 5 วิ
-- ============================================================

local function getLevel()
    local ok, result = pcall(function()
        return workspace.Camera
            :WaitForChild(player.Name, 5)
            :WaitForChild("Head", 5)
            :WaitForChild("NameLevelBBGUI", 5)
            :WaitForChild("LevelFrame", 5)
            :WaitForChild("TextLabel", 5).Text
    end)
    return ok and result or nil
end

local function updateLevel()
    dot.BackgroundColor3 = Color3.fromRGB(255, 255, 0)
    task.wait(0.15)
    dot.BackgroundColor3 = Color3.fromRGB(0, 255, 80)

    local level = getLevel()
    if level then
        levelLabel.Text = level
        levelShadow.Text = level
    end
end

updateLevel()

task.spawn(function()
    while task.wait(5) do
        updateLevel()
    end
end)

-- ============================================================
--  Uptime Timer
-- ============================================================

local startTime = os.time()

task.spawn(function()
    while task.wait(1) do
        local elapsed = os.time() - startTime
        local hours   = math.floor(elapsed / 3600)
        local minutes = math.floor((elapsed % 3600) / 60)
        local seconds = elapsed % 60
        timerLabel.Text = string.format("%02d:%02d:%02d", hours, minutes, seconds)
    end
end)









-- ============================================================
--  Auto Setup Script
-- ============================================================

repeat task.wait() until game:IsLoaded()

-- ============================================================
--  Services & References
-- ============================================================

local Players           = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local VIM               = game:GetService("VirtualInputManager")

local player    = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local hrp       = character:WaitForChild("HumanoidRootPart")
local Remotes   = ReplicatedStorage:WaitForChild("Remotes"):WaitForChild("Input")

-- ============================================================
--  Helper Functions
-- ============================================================
task.spawn(function()
    local remote = game:GetService("ReplicatedStorage")
        :WaitForChild("Remotes")
        :WaitForChild("Input")

    local cframes = {
        CFrame.new(-391.85202, 6.51562452, -644.691528, 0.0252523776, -3.78404197e-09, 0.999681115, -3.61697694e-08, 1, 4.69891281e-09, -0.999681115, -3.62768944e-08, 0.0252523776),
        CFrame.new(-378.557648, 6.51562452, -660.129395, 0.248381898, 3.53030885e-08, 0.968662202, -9.99554572e-08, 1, -1.0814877e-08, -0.968662202, -9.41368512e-08, 0.248381898),
        CFrame.new(-381.742188, 6.51562452, -659.814453, -0.065197669, -3.60095704e-08, 0.997872353, 9.90629658e-08, 1, 4.2558792e-08, -0.997872353, 1.01626931e-07, -0.065197669),
        CFrame.new(-385.031586, 6.51562452, -660.561035, 0.674526274, -2.67049423e-08, 0.738250852, 5.50253212e-08, 1, -1.41023646e-08, -0.738250852, 5.01349042e-08, 0.674526274),
        CFrame.new(-384.506805, 6.51562452, -655.253418, 0.0136668598, -2.6475103e-08, 0.9999066, -4.16982999e-08, 1, 2.70475145e-08, -0.9999066, -4.20640625e-08, 0.0136668598),
        CFrame.new(-381.217163, 6.51562452, -654.505981, -0.394284874, -6.4348086e-08, -0.918988287, 3.52635823e-08, 1, -8.51501412e-08, 0.918988287, -6.59802311e-08, -0.394284874),
        CFrame.new(-391.698944, 6.51562452, -653.952148, -0.403298646, -1.01456141e-08, 0.915068388, 1.95629823e-08, 1, 1.97092795e-08, -0.915068388, 2.58501931e-08, -0.403298646),
        CFrame.new(-396.082977, 6.51562452, -659.986145, -0.27243802, 3.04459178e-08, 0.962173343, -7.11560872e-08, 1, -5.17906038e-08, -0.962173343, -8.25742177e-08, -0.27243802)
    }

    while task.wait(1) do
        for _, cf in pairs(cframes) do
            pcall(function()
                remote:FireServer("Summon", {
                    Rotation = 0,
                    cframe = cf,
                    Unit = "Naruto"
                })
            end)
            task.wait(0.3)
        end
    end
end)

-- ============================================================
--  8. Upgrade Loop
-- ============================================================

task.spawn(function()
    local remoteServer = game:GetService("ReplicatedStorage")
        :WaitForChild("Remotes")
        :WaitForChild("Server")

    while task.wait(1) do
        pcall(function()
            local unitFolder = workspace:FindFirstChild("Unit")
            if unitFolder then
                local naruto = unitFolder:FindFirstChild("Naruto")
                if naruto then
                    remoteServer:InvokeServer("Upgrade", naruto)
                end
            end
        end)
    end
end)

local function fireRemote(...)
    Remotes:FireServer(...)
end

local function click()
    VIM:SendMouseButtonEvent(0, 0, 0, true,  game, 0)
    VIM:SendMouseButtonEvent(0, 0, 0, false, game, 0)
end

-- ============================================================
--  ตั้งค่า Setting
-- ============================================================

pcall(function()
    local SettingV2 = player.PlayerGui
        :WaitForChild("HUD")
        :WaitForChild("Setting")
        :WaitForChild("Page")
        :WaitForChild("Main")
        :WaitForChild("Scroll")
        :WaitForChild("SettingV2")

    local toggle = SettingV2
        :WaitForChild("AutoReplay")
        :WaitForChild("Options")
        :WaitForChild("Toggle")
        :WaitForChild("CategoryName").Text

    if toggle == "Off" then
        fireRemote("LowGfxChange")
        fireRemote("AutoSkipWaves_CHANGE")
        fireRemote("AutoReplay")
    end
end)

pcall(function()
    fireRemote("SpeedChange", true)
end)

-- ============================================================
--  1. คลิกหน้าจอ 10 ครั้ง
-- ============================================================

for i = 1, 10 do
    click()
    task.wait(1)
end
print("กำลังเริ่ม TU")

-- ============================================================
--  2. ข้าม Tutorial
-- ============================================================

for i = 1, 4 do
    fireRemote("AdvanceTutorialStep")
    task.wait(5)
    click()
    click()
end
print("กำลังเปิด Inventory")

-- ============================================================
--  3. เปิด Inventory
-- ============================================================

local HUD          = player.PlayerGui:WaitForChild("HUD")
local InventoryBtn = HUD:WaitForChild("LeftButton")
                        :WaitForChild("InventoryButton")

firesignal(InventoryBtn.MouseButton1Click)
task.wait(2)
print("กำลังเลือกตัว")

-- ============================================================
--  4. Equip Units
-- ============================================================

local InventoryV2 = HUD:WaitForChild("InventoryV2")

local scroll   = InventoryV2:WaitForChild("Page")
                            :WaitForChild("Main")
                            :WaitForChild("Bottom")
                            :WaitForChild("Scroll")

local equipBtn = InventoryV2:WaitForChild("InventoryStat")
                            :WaitForChild("Main")
                            :WaitForChild("Equip")

for i, slot in pairs(scroll:GetChildren()) do
    if i < 3 then
        local btn = slot:FindFirstChild("View")
                   and slot.View:FindFirstChild("TextButton")
        if btn then
            firesignal(btn.MouseButton1Click)
            task.wait(0.5)
            firesignal(equipBtn.MouseButton1Click)
            task.wait(0.7)
        end
    end
end

-- ============================================================
--  5. Teleport
-- ============================================================

task.wait(2)

local Queue = workspace:WaitForChild("Queue")

local point1 = Queue:WaitForChild("Interactions")
                    :WaitForChild("TP[Story Mode]")
                    :WaitForChild("Part")

local storyChildren = Queue:WaitForChild("Story"):GetChildren()
local point2        = storyChildren[30]

hrp.CFrame = point1.CFrame
task.wait(3)

if point2 then
    hrp.CFrame = point2.CFrame
end
task.wait(3)

-- ============================================================
--  6. ตั้งค่าเกม
-- ============================================================

fireRemote("Script408Level", "1", false)
task.wait(1)
fireRemote("Script408Start")
task.wait(2)
fireRemote("VoteGameMode", "Normal")
print("เริ่ม Summon Loop")

-- ============================================================
--  7. Summon Loop
-- ============================================================

