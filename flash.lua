-- إشعار الترحيب
wait(0.1)
game.StarterGui:SetCore("SendNotification", {
    Title = "منور السكربت يا عسل",
    Text = "تم تفعيل سكربت المطور فــــلـــــا ش",
    Duration = 5,
})

-- إعداد الألوان للثيم
local colors = {
    SchemeColor = Color3.fromRGB(0,255,255),
    Background = Color3.fromRGB(0, 0, 0),
    Header = Color3.fromRGB(0, 0, 0),
    TextColor = Color3.fromRGB(255,255,255),
    ElementColor = Color3.fromRGB(20, 20, 20)
}

-- تحميل Kavo UI
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("FLASH MENU V1", "Blood Theme")

-- التبويب الأول: السكربتات
local Tab1 = Window:NewTab("قائمة السكربتات")
local Section1 = Tab1:NewSection("سكربتات بروك هيفين")

Section1:NewButton("Jeon", "سكربت تخريب قوي", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/joygril/Brookhaven-RP-JG-Hub/refs/heads/main/Jeon-The-Best.txt"))()
end)

Section1:NewButton("Alfa IRQ", "من افضل سكربتات عربيه ل بروك هافن", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/ALFA5675/alfa99999/refs/heads/main/Protected_9468890821289887.lua.txt"))()
end)

Section1:NewButton("I2ATT", "سكربت سكنات وفك بان عن المنزل", function()
    loadstring(game:HttpGet("https://rawscripts.net/raw/Brookhaven-RP-I2att-40410"))()
end)

Section1:NewButton("Martin-Iraq", "سكربت اغاني و سكنات  و افضل سكربت عربي", function()
loadstring(game:HttpGet("https://rawscripts.net/raw/Brookhaven-RP-MARTIN-IRAQ-31476"))()
end)

Section1:NewButton("الهلال الرحمة", "بانق ماب البيوت", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/n0kc/AtomicHub/main/Map-Al-Biout.lua"))()
end)

-- التبويب الثاني: التحكم بالشخصية
local Tab2 = Window:NewTab("التحكم بالشخصية")
local Section2 = Tab2:NewSection("خصائص الشخصية")

Section2:NewSlider("سرعة المشي", "تعديل السرعة", 500, 0, function(s)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

Section2:NewSlider("قوة القفز", "تعديل النط", 500, 0, function(s)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
end)

-- التبويب الثالث: الطيران
local Tab3 = Window:NewTab("الطيران ✈️")
local Section3 = Tab3:NewSection("سكربت طيران ✈️ BY FLASH")

Section3:NewButton("تشغيل سكربت الطيران", "واجهة طيران مع تحكم كامل", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/nonammeee/flash-fly-V1/main/flash.lua"))()
end)

-- دعم السحب للهاتف
local UIS = game:GetService("UserInputService")
local gui = game:GetService("CoreGui")

for _, v in pairs(gui:GetDescendants()) do
    if v:IsA("Frame") and v.Active then
        local dragToggle = nil
        local dragSpeed = 0.25
        local dragInput, dragStart, startPos

        local function updateInput(input)
            local delta = input.Position - dragStart
            v.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X,
                                   startPos.Y.Scale, startPos.Y.Offset + delta.Y)
        end

        v.InputBegan:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.Touch or input.UserInputType == Enum.UserInputType.MouseButton1 then
                dragToggle = true
                dragStart = input.Position
                startPos = v.Position

                input.Changed:Connect(function()
                    if input.UserInputState == Enum.UserInputState.End then
                        dragToggle = false
                    end
                end)
            end
        end)

        v.InputChanged:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.Touch or input.UserInputType == Enum.UserInputType.MouseMovement then
                dragInput = input
            end
        end)

        game:GetService("RunService").Heartbeat:Connect(function()
            if dragToggle and dragInput then
                updateInput(dragInput)
            end
        end)
    end
end
