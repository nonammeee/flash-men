-- تنبيه أول التشغيل
wait(0.1)
game.StarterGui:SetCore("SendNotification", {
    Title = "منور السكربت يا عسل 💖";
    Text = "تم تفعيل سكربت المطور فــــلـــــا ش ⚡";
    Duration = 5;
})

-- تحميل مكتبة Kavo UI
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("فــــلـــــا ش V1", "BloodTheme")

-- تبويبة السكربتات
local Tab1 = Window:NewTab("قائمه 1")
local Section1 = Tab1:NewSection("سكربتات بروك هيفين")

Section1:NewButton("jeon", "من اقوى سكربتات التخريب", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/joygril/Brookhaven-RP-JG-Hub/refs/heads/main/Jeon-The-Best.txt"))()
end)

Section1:NewButton("Alfa IRQ", "سكنات و صملات و أدوات", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/ALFA5675/alfa99999/refs/heads/main/Protected_9468890821289887.lua.txt"))()
end)

Section1:NewButton("سكربت الهلال الرحمة", "بانقات قوية مجانًا", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/n0kc/AtomicHub/main/Map-Al-Biout.lua"))()
end)

-- تبويبة التحكم في الشخصية
local Tab2 = Window:NewTab("تحكم في الشخصيه")
local Section2 = Tab2:NewSection("التحكم ب شخصيتك")

Section2:NewSlider("سرعه الشخصيه", "غيّر سرعتك", 500, 0, function(s)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

Section2:NewSlider("قوه نطه الشخصيه", "غيّر قوة النطة", 500, 0, function(s)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
end)

-- تبويبة سكربتات فلاش الأخرى
local Tab3 = Window:NewTab("سكربتات فلاش الأخرى")
local Section3 = Tab3:NewSection("سكربتات الطيران")

Section3:NewButton("سكربت الطيران", "تفعيل سكربت الطيران", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/nonammeee/flash-fly-V1/main/flash.lua"))()
end)

-- 🔧 تفعيل سحب الواجهة
task.wait(1)
for _, v in pairs(game.CoreGui:GetDescendants()) do
    if v:IsA("Frame") and v.Active and v.Selectable then
        v.Draggable = true
    end
end

-- إضافة خاصية السحب للواجهة الرئيسية
local FlashGui = CoreGui:FindFirstChild("KavoUI")
if FlashGui then
    FlashGui.Draggable = true
end

-- ❌ زر إغلاق الواجهة
local UIS = game:GetService("User InputService")
local CoreGui = game:GetService("CoreGui")

local toggleBtn = Instance.new("TextButton")
toggleBtn.Name = "FlashToggleButton"
toggleBtn.Text = "⚡"
toggleBtn.Size = UDim2.new(0, 40, 0, 40)
toggleBtn.Position = UDim2.new(0, 10, 0, 10)
toggleBtn.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
toggleBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
toggleBtn.BorderSizePixel = 0
toggleBtn.Parent = CoreGui

-- لما تضغط على الزر يفتح أو يقفل الواجهة
local guiVisible = true
toggleBtn.MouseButton1Click:Connect(function()
    local FlashGui = CoreGui:FindFirstChild("KavoUI") -- اسم الواجهة
    if FlashGui then
        guiVisible = not guiVisible
        FlashGui.Enabled = guiVisible
    end
end)

-- 🗑️ إزالة السكربت كلياً بزر يمين
toggleBtn.MouseButton2Click:Connect(function()
    local FlashGui = CoreGui:FindFirstChild("KavoUI")
    if FlashGui then FlashGui:Destroy() end
    toggleBtn:Destroy()
end)
