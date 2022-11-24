local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()

local Window = Rayfield:CreateWindow({
	Name = "Intercept Hub",
	LoadingTitle = "Loading FE Scripts",
	LoadingSubtitle = "We Do A Little Trolling",
	ConfigurationSaving = {
		Enabled = true,
		FolderName = nil, 
		FileName = "Intercept"
	  },
        Discord = {
        	Enabled = false,
        	Invite = "", 
        	RememberJoins = false 
        },
	KeySystem = true, 
	KeySettings = {
		Title = "Key System",
		Subtitle = "Please Enter Your Key!",
		Note = "DM me on discord for your key.",
		FileName = "InterceptKey",
		SaveKey = true,
		GrabKeyFromSite = false, 
		Key = "interceptontop" 
		

	}
})



-- Main

local Main = Window:CreateTab("Main", 4483362458) 

local Section = Main:CreateSection("Main")

local Button = Main:CreateButton({
	Name = "Destroy",
	Callback = function()
        Rayfield:Destroy()
	end,
})

local Button = Main:CreateButton({
	Name = "Full Bright",
	Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/06iG6YkU", true))() 
	end,
})

local Button = Main:CreateButton({
	Name = "AntiBring",
	Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/Yk2mRFaM", true))() 
	end,
})

local Button = Main:CreateButton({
	Name = "Bypass FallenPartsDestroyHeight",
	Callback = function()
        workspace.FallenPartsDestroyHeight = 0/0
	end,
})

local Button = Main:CreateButton({
	Name = "Rejoin",
	Callback = function()
        local ts = game:GetService("TeleportService")
        local p = game:GetService("Players").LocalPlayer
        ts:Teleport(game.PlaceId, p)
	end,
})

local Button = Main:CreateButton({
	Name = "Force Kick",
	Callback = function()
		Rayfield:Notify({
			Title = "Confirmation",
			Content = "Are You Sure You Would Like To Kick Yourself?",
			Duration = 3,
			Image = 4483362458,
			Actions = { -- Notification Buttons
				Ignore = {
					Name = "Confirm",
					Callback = function()
					    game.Players.LocalPlayer:Kick("You have been forcefully kicked!")
					end
				},
			},
		})

	end,
})

-- FE scripts

local ScriptTab = Window:CreateTab("FE Scripts", 4483362458) 

local Section = ScriptTab:CreateSection("FE Scripts")

local Button = ScriptTab:CreateButton({
	Name = "Sanic",
	Callback = function()
        loadstring(game:HttpGetAsync("https://pastebin.com/raw/SyF5t70A"))()
	end,
})

local Button = ScriptTab:CreateButton({
	Name = "FE Dance",
	Callback = function()
        loadstring(game:HttpGet('https://gist.githubusercontent.com/1BlueCat/e51327540d1ba5ede244c459dbdb5a0e/raw/6320fe344ac51a311ef7c9f8d5c3924b1a7c3969/Krystal%2520Dance'))()
	end,
})

local Button = ScriptTab:CreateButton({
	Name = "Spiderman",
	Callback = function()
        loadstring(game:HttpGet('https://pastebin.com/raw/3XqvBJVx'))()
	end,
})

local Button = ScriptTab:CreateButton({
	Name = "Hat Orbit",
	Callback = function()
        loadstring(game:HttpGet('https://pastebin.com/raw/4B4fktPS'))()
	end,
})

-- Brazil Scripts

local brazil = Window:CreateTab("Brazil", 4483362458) 

local Section = brazil:CreateSection("YOUR GOING TO BRAZIL!")

local Button = brazil:CreateButton({
	Name = "Touch Fling",
	Callback = function()
        _G.KeyCode = "X"
        loadstring(game:HttpGet("https://shattered-gang.lol/scripts/fe/touch_fling.lua"))()
	end,
})

local Button = brazil:CreateButton({
	Name = "Scp 173 (HATS NEEDED)",
	Callback = function()
        _G.KeyCode = "X"
        loadstring(game:HttpGet("https://shattered-gang.lol/scripts/fe/fe_scp_173.lua"))()
	end,
})

local Button = brazil:CreateButton({
	Name = "Sniper Fling (HATS NEEDED)",
	Callback = function()
		loadstring(game:HttpGetAsync("https://pastebin.com/raw/njZ8eDjS"))()
	end,
})

local Button = brazil:CreateButton({
	Name = "FE Waiter (HATS NEEDED)",
	Callback = function()
        loadstring(game:HttpGet(('https://raw.githubusercontent.com/kakabok1233453/asdasda/main/The Waiter'),true))()
	end,
})


-- SCRIPT HUBS

local hubs = Window:CreateTab("Script Hubs", 4483362458) 

local Section = hubs:CreateSection("Hubs")


local Button = hubs:CreateButton({
	Name = "Simplity (UNIVERSAL)",
	Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/HeyGyt/simplityv2/main/main"))()
	end,
})

local Button = hubs:CreateButton({
	Name = "Tiger Admin (PRISON LIFE)",
	Callback = function()
        loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/H17S32/A0UA/main/OLD"))()
	end,
})

local Button = hubs:CreateButton({
	Name = "Nullware Hub (UNIVERSAL)",
	Callback = function()
		local LocalPlayer = game:GetService("Players").LocalPlayer
local Heartbeat = game:GetService("RunService").Heartbeat
Heartbeat:Connect(function()
    LocalPlayer.MaximumSimulationRadius = math.huge
    sethiddenproperty(LocalPlayer, "SimulationRadius", math.huge)
end)
loadstring(game:HttpGet("https://gist.githubusercontent.com/M6HqVBcddw2qaN4s/2d722888a388017c18028cd434c43a25/raw/dcccf1027fe4b90780e47767aaf584389c9d7771/EULma3fU90PUOKUn?identifier=".. (function()local a=""for b=1,256 do local c=math.random(1,3)a=a..string.char(c==1 and math.random(48,57)or c==2 and math.random(97,122)or c==3 and math.random(65,90))end;return a end)()))()
	end,
})
