wait(0.1)

-- إشعار ترحيبي
pcall(function()
    game.StarterGui:SetCore("SendNotification", {
        Title = "منور السكربت يا عسل",
        Text = "المطور كـــريــــم",
        Duration = 5,
    })
end)

-- استدعاء مكتبة Kavo UI
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("FLASH MENU V1", "Blood Theme")

-- تبويب السكربتات
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

-- تبويب التحكم بالشخصية
local Tab2 = Window:NewTab("التحكم بالشخصية")
local Section2 = Tab2:NewSection("خصائص الشخصية")

Section2:NewSlider("سرعة المشي", "تعديل السرعة", 500, 0, function(s)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

Section2:NewSlider("قوة القفز", "تعديل النط", 500, 0, function(s)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
end)

-- تبويب الطيران
local Tab3 = Window:NewTab("الطيران ✈️")
local Section3 = Tab3:NewSection("سكربت طيران ✈️ BY FLASH")

Section3:NewButton("تشغيل سكربت الطيران", "واجهة طيران مع تحكم كامل", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/nonammeee/flash-fly-V1/main/flash.lua"))()
end)
