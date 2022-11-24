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
		Key = "0x39261"
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
	Name = "Sniper Fling",
	Callback = function()
        loadstring(game:HttpGetAsync("https://pastebin.com/raw/njZ8eDjS"))()
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
