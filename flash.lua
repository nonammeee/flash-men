wait(0.1)
game.StarterGui:SetCore("SendNotification", {
    Title = "منور السكربت يا عسل",
    Text = "تم تفعيل سكربت المطور فــــلـــــا ش",
    Duration = 5,
})

-- بديل Kavo UI هنا
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/tbao143/Library-ui/main/Redzhubui.lua"))()

-- بافتراض إن الـ UI الجديد بيدعم نفس طريقة الإنشاء
local Window = Library:CreateWindow("FLASH MENU V1")

local Tab1 = Window:CreateTab("قائمة السكربتات")
Tab1:CreateButton("Jeon", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/joygril/Brookhaven-RP-JG-Hub/refs/heads/main/Jeon-The-Best.txt"))()
end)

Tab1:CreateButton("Alfa IRQ", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/ALFA5675/alfa99999/refs/heads/main/Protected_9468890821289887.lua.txt"))()
end)

Tab1:CreateButton("الهلال الرحمة", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/n0kc/AtomicHub/main/Map-Al-Biout.lua"))()
end)

local Tab2 = Window:CreateTab("التحكم بالشخصية")
Tab2:CreateSlider("سرعة المشي", 0, 500, function(s)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

Tab2:CreateSlider("قوة القفز", 0, 500, function(s)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
end)

local Tab3 = Window:CreateTab("الطيران ✈️")
Tab3:CreateButton("تشغيل سكربت الطيران ✈️ BY FLASH", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/nonammeee/flash-fly-V1/main/flash.lua"))()
end)
