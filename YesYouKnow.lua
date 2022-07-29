repeat wait() until game:IsLoaded()
wait(2)
local Library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = Library:MakeWindow({Name = "Hunter X Athena", HidePremium = false, SaveConfig = true, ConfigFolder = "Orion",IntroEnabled = true,IntroText = "Hunter X Athena"})
--Page
local main = Window:MakeTab({
    Name = "Main",
    Icon = "rbxassetid://1472442241",
    PremiumOnly = false
})

local Nen = Window:MakeTab({
    Name = "Nen Farm",
    Icon = "rbxassetid://1472442241",
    PremiumOnly = false
})

local ParamTab = Window:MakeTab({
    Name = "Parameters",
    Icon = "rbxassetid://1472442241",
    PremiumOnly = false
})

local mainsection = main:AddSection({
    Name = "Auto Farm Section",
})
local ParametersSection = ParamTab:AddSection({
    Name = "Choose The Value You Want",
})

local NenSection = Nen:AddSection({
    Name = "Auto Farm Your Nen",
})

local pushupssection = main:AddSection({
    Name = "Auto Farm Push-Ups",
})

local miscsection = main:AddSection({
    Name = "Misc Section",
})

--//Constants//--
local autopushup = false
local autoclimb = false
local autorun = false
local speedhax = false
local AutoPushUpGui = false

--//Variables//--
local speedvalue = 90
local SpeedToggle = false
local AutoTen = false
local AutoRen = false
local AutoZetsu = false
local AutoKo = false
local AutoIn = false
local AutoAura = false
local AutoReset = false


pushupssection:AddToggle({
    Name = "Auto Push-Ups",
    Default = false,
    Callback = function(state)
        autopushup = state
    end    
})

pushupssection:AddToggle({
    Name = "Auto Push-Ups GUI",
    Default = false,
    Callback = function(state)
        AutoPushUpGui = state
    end    
})




mainsection:AddToggle({
    Name = "Auto Stamina Farm",
    Default = false,
    Callback = function(state)
        autoclimb = state
    end    
})

mainsection:AddToggle({
    Name = "Auto Run Farm",
    Default = false,
    Callback = function(state)
        autorun = state
    end    
})


miscsection:AddToggle({
    Name = "Speed Hack (Key = C)",
    Default = false,
    Callback = function(state)
        speedhax = state
    end    
})

mainsection:AddButton({
	Name = "Op Meditate Farm",
	Callback = function()
        for i=1 , 101 do
            game:GetService("Players").LocalPlayer.Character.Character.input:FireServer("M", spawn)
        end
end})

miscsection:AddToggle({
    Name = "Auto Reset",
    Default = false,
    Callback = function(state)
        AutoReset = state
    end    
})


NenSection:AddToggle({
    Name = "Auto Ten Farm",
    Default = false,
    Callback = function(state)
        AutoTen = state
    end    
})

NenSection:AddToggle({
    Name = "Auto Ren Farm",
    Default = false,
    Callback = function(state)
        AutoRen = state
    end    
})

NenSection:AddToggle({
    Name = "Auto Zetsu Farm",
    Default = false,
    Callback = function(state)
        AutoZetsu = state
    end    
})

NenSection:AddToggle({
    Name = "Auto Ko Farm",
    Default = false,
    Callback = function(state)
        AutoKo = state
    end    
})

NenSection:AddToggle({
    Name = "Auto In Farm",
    Default = false,
    Callback = function(state)
        AutoIn = state
    end    
})

NenSection:AddToggle({
    Name = "Auto Aura Farm",
    Default = false,
    Callback = function(state)
        AutoAura = state
    end    
})

--//ParamTab//--

ParametersSection:AddSlider({
	Name = "Speed Value",
	Min = 0,
	Max = 200,
	Default = 80,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "Speed",
	Callback = function(s)
		 speedvalue= s
	end    
})


ParametersSection:AddBind({
	Name = "Speed Hack Key Bind",
	Default = Enum.KeyCode.C,
	Hold = false,
	Callback = function()
		SpeedToggle = not SpeedToggle
	end    
})


--//Loop//--
pcall(function()
    --//PUSHUPS//--
    game:GetService("RunService").RenderStepped:Connect(function()
        if autopushup then
            game:GetService("Players").LocalPlayer.PlayerGui.PushupsGui.Pushups.RemoteEvent:FireServer()
        end
    end)
    
    --//Run//--
    game:GetService("RunService").RenderStepped:Connect(function()
        if autorun then
            game:GetService("Players").LocalPlayer.Character.Character.input:FireServer("SprintStart", false)
            wait()
            game:GetService("Players").LocalPlayer.Character.Character.input:FireServer("FastSprintStart", false)
        end
    end)
    --//Climb//--
    game:GetService("RunService").RenderStepped:Connect(function()
        if autoclimb then
            game:GetService("Players").LocalPlayer.Character.Character.input:FireServer("ClimbStart")
            wait()
            game:GetService("Players").LocalPlayer.Character.Character.input:FireServer("ClimbEnd")
        end
    end)

    game:GetService("RunService").RenderStepped:Connect(function()
        if AutoPushUpGui then
            game:GetService("Players").LocalPlayer.Character.Character.input:FireServer("J", spawn)
        end
    end)

    --//SpeedHax//--
    game:GetService("RunService").RenderStepped:Connect(function()
        if speedhax and SpeedToggle then
            game:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed = speedvalue
        end
    end)
    --//Ten Farm//--
    game:GetService("RunService").RenderStepped:Connect(function()
        if AutoTen then
            game:GetService("Players").LocalPlayer.Character.Character.input:FireServer("B", spawn)
        end
    end)
    --//Ren Farm//--
    game:GetService("RunService").RenderStepped:Connect(function()
        if AutoRen then
            game:GetService("Players").LocalPlayer.Character.Character.input:FireServer("V", spawn)
        end
    end)
    --//Zetsu Farm//--
    game:GetService("RunService").RenderStepped:Connect(function()
        if AutoZetsu then
            game:GetService("Players").LocalPlayer.Character.Character.input:FireServer("C", spawn)
        end
    end)

    --//Ko Farm//--
    game:GetService("RunService").RenderStepped:Connect(function()
        if AutoKo then
            game:GetService("Players").LocalPlayer.Character.Character.input:FireServer("X", spawn)
        end
    end)
    --//In Farm//--
    game:GetService("RunService").RenderStepped:Connect(function()
        if AutoIn then
            game:GetService("Players").LocalPlayer.Character.Character.input:FireServer("Z", spawn)
        end
    end)
    --//Aura Farm//--
    game:GetService("RunService").RenderStepped:Connect(function()
        if AutoAura then
            game:GetService("Players").LocalPlayer.Character.Character.input:FireServer("N", spawn)
        end
    end)
    game:GetService("RunService").RenderStepped:Connect(function()
        if AutoReset then
            game:GetService("Players").LocalPlayer.Character:BreakJoints()
        end
    end)
end)
repeat wait() until game:IsLoaded() 
    game:GetService("Players").LocalPlayer.Idled:connect(function()
    game:GetService("VirtualUser"):ClickButton2(Vector2.new())
end)
