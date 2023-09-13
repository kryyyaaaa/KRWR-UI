local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()
 
 
local MainWindow = Rayfield:CreateWindow({
    Name = "KRWR UI",
    LoadingTitle = "This is the best free multi cheat!",
    LoadingSubtitle = "made by @kryyyaaaa",
    ConfigurationSaving = {
       Enabled = true,
       FolderName = nil, -- Create a custom folder for your hub/game
       FileName = "KRWR UI"
    },
    Discord = {
       Enabled = false,
       Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD.
       RememberJoins = true -- Set this to false to make them join the discord every time they load it up
    },
    KeySystem = false, -- Set this to true to use our key system
    KeySettings = {
       Title = "KRWR Key System",
       Subtitle = "the best cheat",
       Note = "Key: krwr_thebest",
       FileName = "krwr_Key",
       SaveKey = true,
       GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
       Key = "krwr_thebest"
    }
 })
 
 
 local MainTab = MainWindow:CreateTab("Main", 4483362458) -- Title, Image
 
 
 local Button = MainTab:CreateButton({
    Name = "its work in any place!",
    Callback = function(v)
        v = print('i dont know')
    end,
 })

 local Button = MainTab:CreateButton({
    Name = "thenks for install:)",
    Callback = function(v)
        v = print('i dont know')
    end,
 })

 
 local Toggle = MainTab:CreateToggle({
    Name = "Infinite Jump",
    CurrentValue = false,
    Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(InfiniteJumpEnabled)
        local InfiniteJumpEnabled = true
        game:GetService("UserInputService").JumpRequest:connect(function()
            if InfiniteJumpEnabled then
                game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
            end
        end)
    end,
 })
 
 
 
 local Slider = MainTab:CreateSlider({
    Name = "Walkspeed",
    Range = {16, 250},
    Increment = 10,
    Suffix = "Walkspeed",
    CurrentValue = 10,
    Flag = "Slider1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(v)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v
    end,
 })
 
 
 
 local Slider = MainTab:CreateSlider({
    Name = "JumpPower",
    Range = {50, 500},
    Increment = 10,
    Suffix = "JumpPower",
    CurrentValue = 10,
    Flag = "Slider1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(v)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = v
    end,
 })

 local Button = MainTab:CreateButton({
    Name = "Players esp",
    Callback = function(v)
        v = loadstring(game:HttpGet("https://raw.githubusercontent.com/Spoorloos/scripts/main/universal_esp.lua"))();

    end,
 })

 local Button = MainTab:CreateButton({
    Name = "Free Headless",
    Callback = function(d)
        d = loadstring(game:HttpGet('https://pastebin.com/raw/H5yx10Jq'))()
    end,
 })

 -- loadstring(game:HttpGet("https://raw.githubusercontent.com/Spoorloos/scripts/main/universal_esp.lua"))();
