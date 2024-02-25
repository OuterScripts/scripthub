local lplr = game.Players.LocalPlayer
local isfile = isfile or function(file)
    local success, filecontents = pcall(function() return readfile(file) end)
    return success and type(filecontents) == 'string'
end

if not isfile("KeySystem1Whitelist.txt") then
    lplr:Kick("Key Detection\nKey not found!")
end

local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()

local Window = Fluent:CreateWindow({
    Title = "ScriptHub",
    SubTitle = "by outer",
    TabWidth = 160,
    Size = UDim2.fromOffset(590, 460),
    Acrylic = true,
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.RightControl
})

local Tabs = {
    Main = Window:AddTab({ Title = "Main", Icon = "braces" }),
}

Tabs.Main:AddButton({
    Title = "Arsenal",
    Description = ".",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/tbao143/thaibao/main/TbaoHubArsenal"))()
    end
})

Tabs.Main:AddButton({
    Title = "BloxFruits (HoHo Hub)",
    Description = "dm kidtoxicyt (outer) for key",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/acsu123/HOHO_H/main/Loading_UI'))()
    end
})

Tabs.Main:AddButton({
    Title = "SlapBattles",
    Description = ".",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/ionlyusegithubformcmods/1-Line-Scripts/main/Slap%20Farm'))()
    end
})
