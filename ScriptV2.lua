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
		Key = "ohiomoment" 
		

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
	Name = "Die",
	Callback = function()
		game.Players.LocalPlayer.Character.Humanoid.Health = 0
	end,
})

local Button = Main:CreateButton({
	Name = "Full Bright",
	Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/06iG6YkU", true))() 
	end,
})

local Button = Main:CreateButton({
	Name = "Bypass FallenPartsDestroyHeight",
	Callback = function()
        workspace.FallenPartsDestroyHeight = 0/0
	end,
})

local Button = Main:CreateButton({
	Name = "AntiBring",
	Callback = function()
        AntiBring()
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

-- variables
local antifling = false
local lp = game:GetService("Players").LocalPlayer
local mouse = lp:GetMouse()
local ws = game:GetService("Workspace")
local cg = game:GetService("CoreGui")
local rs = game:GetService("RunService")
local uis = game:GetService("UserInputService")
local stepped = rs.Stepped
local heartbeat = rs.Heartbeat
local Mouses = lp:GetMouse()

-- functions
local function gp(parent, name, className)
    if typeof(parent) == "Instance" then
		for _, v in pairs(parent:GetChildren()) do
			if (v.Name == name) and v:IsA(className) then
				return v
			end
		end
	end
	return nil
end

function AntiBring()
    antifling = true
    local c = game:GetService("Players").LocalPlayer
	local t = game:GetService("Players").LocalPlayer.Backpack
	local charcon = nil
	local currentcon = nil
	local function onchar(c)

    	if typeof(c) ~= "Instance" then
        	return
    	end
    	if currentcon then
        	currentcon:Disconnect()
    	end
		if antifling == true then
    	currentcon = c.ChildAdded:Connect(function(t)
        	if not t:IsA("Tool") then return end
        	local h = gp(t, "Handle", "BasePart") or t:FindFirstChildWhichIsA("BasePart")
        	if not h then return end
        	for i, v in pairs(h:GetConnectedParts()) do
            	if not v:IsDescendantOf(c) then
                	h:BreakJoints()
                	stepped:Wait()
                	if t and (t.Parent == c) then
                    	t.Parent = lp:FindFirstChildOfClass("Backpack") or ws
                	end
                	return
            	end
        	end
    	end)
	else return end
end
    onchar(lp.Character)
	charcon = lp.CharacterAdded:Connect(onchar)
end


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
	Name = "Hat Orbit",
	Callback = function()
        loadstring(game:HttpGet('https://pastebin.com/raw/4B4fktPS'))()
	end,
})

local Button = ScriptTab:CreateButton({
	Name = "Neko Maid",
	Callback = function()
        loadstring(game:HttpGet('https://pastebin.com/raw/8AnW582j'))()
	end,
})

local Button = ScriptTab:CreateButton({
	Name = "Pen",
	Callback = function()
        loadstring(game:HttpGetAsync("https://pastebin.com/raw/1qcpeuDm"))()
	end,
})

local Button = ScriptTab:CreateButton({
	Name = "Snaik",
	Callback = function()
        loadstring(game:HttpGet(('https://pastefy.ga/tWBTcE4R/raw'),true))()
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
	Name = "Exotic Lighting",
	Callback = function()
        loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Solomonexy/EL/main/Exotic%20Lighting.lua"))()
	end,
})

local Button = brazil:CreateButton({
	Name = "Scp 173 [HATS NEEDED]",
	Callback = function()
        _G.KeyCode = "X"
        loadstring(game:HttpGet("https://shattered-gang.lol/scripts/fe/fe_scp_173.lua"))()
	end,
})

local Button = brazil:CreateButton({
	Name = "Sniper Fling [HATS NEEDED]",
	Callback = function()
		loadstring(game:HttpGetAsync("https://pastebin.com/raw/njZ8eDjS"))()
	end,
})

local Button = brazil:CreateButton({
	Name = "Sword Fling [HATS NEEDED]",
	Callback = function()
        loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Solomonexy/sendpeopletobrazil/main/brazil.lua"))()
	end,
})

local Button = brazil:CreateButton({
	Name = "Cosmo Sword Fling [HATS NEEDED]",
	Callback = function()
        loadstring(game:HttpGet(('https://raw.githubusercontent.com/Azetax/script-for-roblox/main/OP'),true))()
	end,
})


local Button = brazil:CreateButton({
	Name = "FE Waiter [HATS NEEDED]",
	Callback = function()
        loadstring(game:HttpGet(('https://raw.githubusercontent.com/kakabok1233453/asdasda/main/The Waiter'),true))()
	end,
})

-- SCRIPT HUBS

local hubs = Window:CreateTab("Script Hubs", 4483362458) 

local Section = hubs:CreateSection("Hubs")


local Button = hubs:CreateButton({
	Name = "Simplity [UNIVERSAL]",
	Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/HeyGyt/simplityv2/main/main"))()
	end,
})

local Button = hubs:CreateButton({
	Name = "Tiger Admin [PRISON LIFE]",
	Callback = function()
        loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/H17S32/A0UA/main/OLD"))()
	end,
})

local Button = hubs:CreateButton({
	Name = "Nullware Hub [UNIVERSAL]",
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

local Button = hubs:CreateButton({
	Name = "Infinite Yield [UNIVERSAL]",
	Callback = function()
        loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
	end,
})

local Button = hubs:CreateButton({
	Name = "Septex [PRISON LIFE]",
	Callback = function()
        game.Players.LocalPlayer:Kick("LMFAO IMAGINE USING SEPTEX YOU SKID 🤡🤡🤡")
	end,
})


-- ONE PUNCH MAN!

local Button = brazil:CreateButton({
	Name = "One Punch Man [HATS NEEDED]",
	Callback = function()
        print('Saitama Made by mugaga#2801')

for i,v in next, game:GetService("Players").LocalPlayer.Character:GetDescendants() do
if v:IsA("BasePart") and v.Name ~="HumanoidRootPart" then 
game:GetService("RunService").Heartbeat:connect(function()
v.Velocity = Vector3.new(0,35,0)
wait(0.5)
end)
end
end

game:GetService("StarterGui"):SetCore("SendNotification", { 
	Title = "Notification";
	Text = "Netless activated";
	Icon = "rbxthumb://type=Asset&id=5107182114&w=150&h=150"})
Duration = 16;
local HatChar = game.Players.LocalPlayer.Character
local Hat = HatChar:FindFirstChild("WDW_FoamFinger")

Hat.Handle.SpecialMesh:Destroy()

HumanDied = false
local reanim
function noplsmesh(hat)
_G.OldCF=workspace.Camera.CFrame
oldchar=game.Players.LocalPlayer.Character
game.Players.LocalPlayer.Character=workspace[game.Players.LocalPlayer.Name]
for i,v in next, workspace[game.Players.LocalPlayer.Name][hat]:GetDescendants() do
if v:IsA('Mesh') or v:IsA('SpecialMesh') then
v:Remove()
end
end
game.Players.LocalPlayer.Character=oldchar
wait()
workspace.Camera.CFrame=_G.OldCF
game.Players.LocalPlayer.Character=oldchar
end
_G.ClickFling=false -- Set this to true if u want.
loadstring(game:HttpGet(('https://raw.githubusercontent.com/OofHead-FE/nexo-before-deleted/main/NexoPD'),true))()

IT = Instance.new
CF = CFrame.new
VT = Vector3.new
RAD = math.rad
C3 = Color3.new
UD2 = UDim2.new
BRICKC = BrickColor.new
ANGLES = CFrame.Angles
EULER = CFrame.fromEulerAnglesXYZ
COS = math.cos
ACOS = math.acos
SIN = math.sin
ASIN = math.asin
ABS = math.abs
MRANDOM = math.random
FLOOR = math.floor

speed = 1
sine = 1
srv = game:GetService('RunService')

function hatset(yes,part,c1,c0,nm)
reanim[yes].Handle.AccessoryWeld.Part1=reanim[part]
reanim[yes].Handle.AccessoryWeld.C1=c1 or CFrame.new()
reanim[yes].Handle.AccessoryWeld.C0=c0 or CFrame.new()--3bbb322dad5929d0d4f25adcebf30aa5
if nm==true then
noplsmesh(yes)
end
end

--put the hat script converted below

reanim = game.Players.LocalPlayer.Character.CWExtra.NexoPD
RJ = reanim.HumanoidRootPart.RootJoint
RS = reanim.Torso['Right Shoulder']
LS = reanim.Torso['Left Shoulder']
RH = reanim.Torso['Right Hip']
LH = reanim.Torso['Left Hip']
Root = reanim.HumanoidRootPart
NECK = reanim.Torso.Neck
NECK.C0 = CF(0,1,0)*ANGLES(RAD(0),RAD(0),RAD(0))
NECK.C1 = CF(0,-0.5,0)*ANGLES(RAD(0),RAD(0),RAD(0))
RJ.C1 = CF(0,0,0)*ANGLES(RAD(0),RAD(0),RAD(0))
RJ.C0 = CF(0,0,0)*ANGLES(RAD(0),RAD(0),RAD(0))
RS.C1 = CF(-0.5,0.5,0)*ANGLES(RAD(0),RAD(0),RAD(0))
LS.C1 = CF(0.5,0.5,0)*ANGLES(RAD(0),RAD(0),RAD(0))
RH.C1 = CF(0,1,0)*ANGLES(RAD(0),RAD(0),RAD(0))
LH.C1 = CF(0,1,0)*ANGLES(RAD(0),RAD(0),RAD(0))
RH.C0 = CF(0,0,0)*ANGLES(RAD(0),RAD(0),RAD(0))
LH.C0 = CF(0,0,0)*ANGLES(RAD(0),RAD(0),RAD(0))
RS.C0 = CF(0,0,0)*ANGLES(RAD(0),RAD(0),RAD(0))
LS.C0 = CF(0,0,0)*ANGLES(RAD(0),RAD(0),RAD(0))

Mode='1'

mousechanger=game.Players.LocalPlayer:GetMouse().KeyDown:Connect(function(k)
if k == 'r' then-- first mode
Mode='1'
elseif k == 'e' then-- second mode
Mode='2'
elseif k == 'urkeybind' then-- third mode
Mode='3'
end
end)



attacklol=game.Players.LocalPlayer:GetMouse().Button1Down:Connect(function()
Mode='Attack0'
wait(1) -- Time Of Attack
Mode='Attack1'
end)



coroutine.wrap(function()
while true do -- anim changer
if HumanDied then mousechanger:Disconnect() break end
sine = sine + speed
local rlegray = Ray.new(reanim["Right Leg"].Position + Vector3.new(0, 0.5, 0), Vector3.new(0, -2, 0))
local rlegpart, rlegendPoint = workspace:FindPartOnRay(rlegray, char)
local llegray = Ray.new(reanim["Left Leg"].Position + Vector3.new(0, 0.5, 0), Vector3.new(0, -2, 0))
local llegpart, llegendPoint = workspace:FindPartOnRay(llegray, char)
local rightvector = (Root.Velocity * Root.CFrame.rightVector).X + (Root.Velocity * Root.CFrame.rightVector).Z
local lookvector = (Root.Velocity * Root.CFrame.lookVector).X + (Root.Velocity * Root.CFrame.lookVector).Z
if lookvector > reanim.Humanoid.WalkSpeed then
lookvector = reanim.Humanoid.WalkSpeed
end
if lookvector < -reanim.Humanoid.WalkSpeed then
lookvector = -reanim.Humanoid.WalkSpeed
end
if rightvector > reanim.Humanoid.WalkSpeed then
rightvector = reanim.Humanoid.WalkSpeed
end
if rightvector < -reanim.Humanoid.WalkSpeed then
rightvector = -reanim.Humanoid.WalkSpeed
end
local lookvel = lookvector / reanim.Humanoid.WalkSpeed
local rightvel = rightvector / reanim.Humanoid.WalkSpeed
if Mode == '1' then
if Root.Velocity.y > 1 then -- jump
--jump clerp here
elseif Root.Velocity.y < -1 then -- fall
--fall clerp here
elseif Root.Velocity.Magnitude < 2 then -- idle
NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/13),0+0.1*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RS.C0 = RS.C0:Lerp(CF(1+0*math.cos(sine/13),0.5+0.1*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+10*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
LS.C0 = LS.C0:Lerp(CF(-1+0*math.cos(sine/13),0.5+0.2*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+10.4*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RH.C0 = RH.C0:Lerp(CF(0.5+0*math.cos(sine/13),-1+-0.1*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(-33+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
LH.C0 = LH.C0:Lerp(CF(-0.5+0*math.cos(sine/13),-1+-0.1*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
reanim['WDW_FoamFinger'].Handle.AccessoryWeld.C0 = reanim['WDW_FoamFinger'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),0.5+0*math.cos(sine/13),-0.3+0*math.cos(sine/13))*ANGLES(RAD(0+3*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
elseif Root.Velocity.Magnitude < 20 then -- walk
NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/13),0+0.1*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RS.C0 = RS.C0:Lerp(CF(1+0*math.cos(sine/13),0.5+0.1*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+10*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
LS.C0 = LS.C0:Lerp(CF(-1+0*math.cos(sine/13),0.5+0.2*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+-10.4*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RH.C0 = RH.C0:Lerp(CF(0.5+0*math.cos(sine/13),-1+-0.1*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+-30*math.cos(sine/13)),RAD(-6+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
LH.C0 = LH.C0:Lerp(CF(-0.5+0*math.cos(sine/13),-1+-0.1*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+20*math.cos(sine/13)),RAD(3+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
reanim['WDW_FoamFinger'].Handle.AccessoryWeld.C0 = reanim['WDW_FoamFinger'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),0.5+0*math.cos(sine/13),-0.4+0*math.cos(sine/13))*ANGLES(RAD(34+15*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
elseif Root.Velocity.Magnitude > 20 then -- run
--run clerp here
end
elseif Mode == '2' then
if Root.Velocity.y > 1 then -- jump
--jump clerp here
elseif Root.Velocity.y < -1 then -- fall
--fall clerp here
elseif Root.Velocity.Magnitude < 2 then -- idle
NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(21+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/13),-0.5+0.1*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(-37+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RS.C0 = RS.C0:Lerp(CF(0+3*math.cos(sine/1),1+-2*math.cos(sine/1),0+8*math.cos(sine/1))*ANGLES(RAD(130+10*math.cos(sine/1)),RAD(32+0*math.cos(sine/1)),RAD(-26+0*math.cos(sine/1))),.3)
LS.C0 = LS.C0:Lerp(CF(0+5*math.cos(sine/1),0.5+4*math.cos(sine/1),0+-7*math.cos(sine/1))*ANGLES(RAD(94+0*math.cos(sine/1)),RAD(0+0*math.cos(sine/1)),RAD(0+0*math.cos(sine/1))),.3)
RH.C0 = RH.C0:Lerp(CF(0.5+0*math.cos(sine/13),0+-0.1*math.cos(sine/13),-1+0*math.cos(sine/13))*ANGLES(RAD(1+0*math.cos(sine/13)),RAD(-6+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
LH.C0 = LH.C0:Lerp(CF(-0.5+0*math.cos(sine/13),-1+-0.1*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(3+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
reanim['WDW_FoamFinger'].Handle.AccessoryWeld.C0 = reanim['WDW_FoamFinger'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/2),0.5+0*math.cos(sine/2),-0.6+0*math.cos(sine/2))*ANGLES(RAD(36+15*math.cos(sine/2)),RAD(0+0*math.cos(sine/2)),RAD(0+0*math.cos(sine/2))),.3)
elseif Root.Velocity.Magnitude < 20 then -- walk
NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(21+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/13),-0.5+0.1*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(-37+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RS.C0 = RS.C0:Lerp(CF(0+3*math.cos(sine/1),1+-2*math.cos(sine/1),0+8*math.cos(sine/1))*ANGLES(RAD(130+10*math.cos(sine/1)),RAD(32+0*math.cos(sine/1)),RAD(-26+0*math.cos(sine/1))),.3)
LS.C0 = LS.C0:Lerp(CF(0+5*math.cos(sine/1),0.5+4*math.cos(sine/1),0+-7*math.cos(sine/1))*ANGLES(RAD(94+0*math.cos(sine/1)),RAD(0+0*math.cos(sine/1)),RAD(0+0*math.cos(sine/1))),.3)
RH.C0 = RH.C0:Lerp(CF(0.5+0*math.cos(sine/13),0+-0.1*math.cos(sine/13),-1+0*math.cos(sine/13))*ANGLES(RAD(1+0*math.cos(sine/13)),RAD(-6+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
LH.C0 = LH.C0:Lerp(CF(-0.5+0*math.cos(sine/13),-1+-0.1*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(3+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
reanim['WDW_FoamFinger'].Handle.AccessoryWeld.C0 = reanim['WDW_FoamFinger'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/2),0.5+0*math.cos(sine/2),-0.6+0*math.cos(sine/2))*ANGLES(RAD(36+15*math.cos(sine/2)),RAD(0+0*math.cos(sine/2)),RAD(0+0*math.cos(sine/2))),.3)
elseif Root.Velocity.Magnitude > 20 then -- run
--run clerp here
end
elseif Mode == '3' then
if Root.Velocity.y > 1 then -- jump
--jump clerp here
elseif Root.Velocity.y < -1 then -- fall
--fall clerp here
elseif Root.Velocity.Magnitude < 2 then -- idle
--idle clerp here
elseif Root.Velocity.Magnitude < 20 then -- walk
--walk clerp here
elseif Root.Velocity.Magnitude > 20 then -- run
--run clerp here
end
elseif Mode == 'Attack0' then
NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(5+0*math.cos(sine/13)),RAD(-37+0*math.cos(sine/13)),RAD(1+0*math.cos(sine/13))),.3)
RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/13),0+0.1*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(-13+0*math.cos(sine/13)),RAD(30+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RS.C0 = RS.C0:Lerp(RCF(1+0*math.cos(sine/13),0.5+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(105+0*math.cos(sine/13)),RAD(18+0*math.cos(sine/13)),RAD(30+0*math.cos(sine/13))),.3)
LS.C0 = LS.C0:Lerp(CF(-1+0*math.cos(sine/13),0+0.1*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(101+0*math.cos(sine/13)),RAD(18+0*math.cos(sine/13)),RAD(-44+0*math.cos(sine/13))),.3)
RH.C0 = RH.C0:Lerp(CF(0.5+0*math.cos(sine/13),-1+-0.1*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(18+0*math.cos(sine/13)),RAD(-51+0*math.cos(sine/13)),RAD(12+0*math.cos(sine/13))),.3)
LH.C0 = LH.C0:Lerp(CF(-0.5+0*math.cos(sine/13),-1+-0.1*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(3+0*math.cos(sine/13)),RAD(-2+0*math.cos(sine/13)),RAD(-4+0*math.cos(sine/13))),.3)
reanim['WDW_FoamFinger'].Handle.AccessoryWeld.C0 = reanim['WDW_FoamFinger'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/2),0.6+0*math.cos(sine/2),-0.5+0*math.cos(sine/2))*ANGLES(RAD(0+0*math.cos(sine/2)),RAD(0+0*math.cos(sine/2)),RAD(0+0*math.cos(sine/2))),.3)
elseif Mode == 'Attack1' then
NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/13),0+0.1*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(-13+0*math.cos(sine/13)),RAD(-30+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RS.C0 = RS.C0:Lerp(CF(1+0*math.cos(sine/13),0+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(101+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(14+0*math.cos(sine/13))),.3)
LS.C0 = LS.C0:Lerp(CF(-1+0*math.cos(sine/13),0.5+0.1*math.cos(sine/13),-1+0*math.cos(sine/13))*ANGLES(RAD(105+0*math.cos(sine/13)),RAD(-15+0*math.cos(sine/13)),RAD(-15+0*math.cos(sine/13))),.3)
RH.C0 = RH.C0:Lerp(CF(0.5+0*math.cos(sine/13),-1+-0.1*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
LH.C0 = LH.C0:Lerp(CF(-0.5+0*math.cos(sine/13),-1+-0.1*math.cos(sine/13),-0.2+0*math.cos(sine/13))*ANGLES(RAD(21+0*math.cos(sine/13)),RAD(30+0*math.cos(sine/13)),RAD(-11+0*math.cos(sine/13))),.3)
reanim['WDW_FoamFinger'].Handle.AccessoryWeld.C0 = reanim['WDW_FoamFinger'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/2),0.6+0*math.cos(sine/2),-0.5+0*math.cos(sine/2))*ANGLES(RAD(21+2*math.cos(sine/2)),RAD(0+0*math.cos(sine/2)),RAD(0+0*math.cos(sine/2))),.3)
end
srv.RenderStepped:Wait()
end
end)()

local muter = false
local ORGID = 335167645
local ORVOL = 1.15
local ORPIT = 1.01
local kan = Instance.new("Sound",char)
kan.Volume = 0
if not NoSound then
	kan.Volume = 1.15
end
kan.TimePosition = 0
kan.PlaybackSpeed = 1.01
kan.Pitch = 1.01
kan.SoundId = "rbxassetid://335167645"
kan.Name = "Saitama"
kan.Looped = true
kan:Play()
	end,
})

local Button = ScriptTab:CreateButton({
	Name = "Ball Spin",
	Callback = function()
        loadstring(game:HttpGet(('https://pastebin.com/raw/EJskzezp')))()
	end,
})

local Button = ScriptTab:CreateButton({
	Name = "Spoodermen",
	Callback = function()
        --Edited by MrXTriceratops! AKA Spiderman!
function clerp(c1,c2,al)
	local com1 = {c1.X,c1.Y,c1.Z,c1:toEulerAnglesXYZ()}
	local com2 = {c2.X,c2.Y,c2.Z,c2:toEulerAnglesXYZ()}
	for i,v in pairs(com1) do 
		com1[i] = v+(com2[i]-v)*al
	end
	return CFrame.new(com1[1],com1[2],com1[3]) * CFrame.Angles(select(4,unpack(com1)))
 end
 
 plr = game:service'Players'.LocalPlayer
 plrgui = plr.PlayerGui
 char = plr.Character
 mouse = plr:GetMouse()
 humanoid = char:findFirstChild("Humanoid")
 torso = char:findFirstChild("Torso")
 head = char.Head
 ra = char:findFirstChild("Right Arm")
 la = char:findFirstChild("Left Arm")
 rl = char:findFirstChild("Right Leg")
 ll = char:findFirstChild("Left Leg")
 rs = torso:findFirstChild("Right Shoulder")
 ls = torso:findFirstChild("Left Shoulder")
 rh = torso:findFirstChild("Right Hip")
 lh = torso:findFirstChild("Left Hip")
 neck = torso:findFirstChild("Neck")
 rj = char:findFirstChild("HumanoidRootPart"):findFirstChild("RootJoint")
 rootpart = char:findFirstChild("HumanoidRootPart")
 camera = workspace.CurrentCamera
 anim = char:findFirstChild("Animate")
 if anim then
 anim:Destroy()
 end
 
 local rm = Instance.new("Weld", torso)
 rm.C0 = CFrame.new(1.5, 0.5, 0)
 rm.C1 = CFrame.new(0, 0.5, 0)
 rm.Part0 = torso
 rm.Part1 = ra
 rm.Name = 'Right Shoulder'
 
 local lm = Instance.new("Weld", torso)
 lm.C0 = CFrame.new(-1.5, 0.5, 0)
 lm.C1 = CFrame.new(0, 0.5, 0)
 lm.Part0 = torso
 lm.Part1 = la
 lm.Name = 'Left Shoulder'
 
 local rlegm = Instance.new("Weld", torso)
 rlegm.C0 = CFrame.new(0.5, -1, 0)
 rlegm.C1 = CFrame.new(0, 1, 0)
 rlegm.Part0 = torso
 rlegm.Part1 = rl
 
 local llegm = Instance.new("Weld", torso)
 llegm.C0 = CFrame.new(-0.5, -1, 0)
 llegm.C1 = CFrame.new(0, 1, 0)
 llegm.Part0 = torso
 llegm.Part1 = ll
 
 rj.C0 = CFrame.new()
 rj.C1 = CFrame.new()
 
 neck.C0 = CFrame.new(0, 1, 0)
 neck.C1 = CFrame.new(0, -0.5, 0)
 
 
 local speed = 0.3
 local angle = 0
 local anglespeed = 1
 rsc0 = rm.C0
 lsc0 = lm.C0
 llc0 = llegm.C0
 rlc0 = rlegm.C0
 rootc0 = rj.C0
 neckc0 = neck.C0
 
 model = Instance.new('Model', char)
 model.Name = '3DG'
 function Weld(part0,part1,c1,c0)
 local w = Instance.new('Weld', model)
 w.Part0 = part0
 w.Part1 = part1
 w.C0 = c0 or CFrame.new()
 w.C1 = c1 or CFrame.new()
 end
 
 local BasePart = Instance.new('Part')
 BasePart.FormFactor = 'Custom'
 BasePart.Material = 'Neon'
 BasePart.CanCollide = false
 BasePart.Locked = true
 BasePart.TopSurface = 10
 BasePart.BottomSurface = 10
 BasePart.LeftSurface = 10
 BasePart.RightSurface = 10
 BasePart.FrontSurface = 10
 BasePart.BackSurface = 10
 BasePart:breakJoints()
 
 
 for i = 1,2 do
 local strap = BasePart:clone()
 strap.Size = Vector3.new(1.025,.2,1.025)
 strap.Parent = model
 strap.BrickColor = BrickColor.new()
	strap:BreakJoints()
 Weld(strap, la, CFrame.new(0, .1 - i/3,0))
 end
 
 for i = 1,2 do
 local strap = BasePart:clone()
 strap.Size = Vector3.new(1.025,.2,1.025)
 strap.Parent = model
 strap.BrickColor = BrickColor.new()
	strap:BreakJoints()
 Weld(strap, ra, CFrame.new(0, .1 - i/3,0))
 end
 
 local ropeStart = BasePart:clone()
	ropeStart.Size = Vector3.new(.2,1.75,.2)
	ropeStart.Parent = model
	ropeStart.BrickColor = BrickColor.new()
	ropeStart:BreakJoints()
	Weld(ropeStart, ra, CFrame.new(-.45, -.5, 0))
 local ropeStart2 = BasePart:clone()
	ropeStart2.Size = Vector3.new(.2,1.75,.2)
	ropeStart2.Parent = model
	ropeStart2.BrickColor = BrickColor.new()
	ropeStart2:BreakJoints()
	Weld(ropeStart2, la, CFrame.new(.45, -.5, 0))
 
 local pa = BasePart:clone()
 pa.BrickColor = BrickColor.new()
 pa.Anchored = true
 pa.Size = Vector3.new(.5,1,.5)
 local special = Instance.new('SpecialMesh', pa)
 special.MeshId = "rbxassetid://1033714"
 special.Scale = Vector3.new(.25,2,.25)
 local ropePA = BasePart:clone()
 ropePA.Parent = pa
 ropePA.Anchored = true
 ropePA.BrickColor = BrickColor.new'White'
 Instance.new('CylinderMesh', ropePA).Scale = Vector3.new(.25,1,.25)
 
 local pa2 = BasePart:clone()
 pa2.BrickColor = BrickColor.new()
 pa2.Anchored = true
 pa2.Size = Vector3.new(.5,1,.5)
 local special = Instance.new('SpecialMesh', pa2)
 special.MeshId = "rbxassetid://1033714"
 special.Scale = Vector3.new(.25,2,.25)
 local ropePA2 = BasePart:clone()
 ropePA2.Parent = pa2
 ropePA2.Anchored = true
 ropePA2.BrickColor = BrickColor.new'White'
 Instance.new('CylinderMesh', ropePA2).Scale = Vector3.new(.25,1,.25)
 
 local pa3 = BasePart:clone()
 pa3.Transparency = 1
 pa3.Anchored = true
 pa3.Size = Vector3.new(2,2,2)
 
 local torso3 = Instance.new('Part', char)
 torso3.Name = 'FakeTorsoForStuff'
 torso3.Size = torso.Size
 torso3.Transparency = 1
 torso3:breakJoints()
 Weld(torso3, torso)
 
 local bodygyro = Instance.new('BodyGyro', torso)
	bodygyro.maxTorque = Vector3.new(14e16,14e16,14e16)
	bodygyro.P = 10000
 
		ro=Instance.new("RocketPropulsion",rootpart)
		ro.Name = 'RockatPropoolsun'
		ro.MaxSpeed=550
		ro.MaxThrust=9000
		ro.TurnP = 57
		ro.MaxTorque=Vector3.new(14e16,14e16,14e16)
 
		ro2=Instance.new("RocketPropulsion",torso)
		ro2.Name = 'RockatPropoolsun2'
		ro2.MaxSpeed=550
		ro2.MaxThrust=9000
		ro2.TurnP = 57
		ro2.MaxTorque=Vector3.new(14e16,14e16,14e16)
 local run
 mouse.KeyDown:connect(function(k)
	if k:byte() == 48 then
		run = not run
		if run then
			humanoid.WalkSpeed = 35
		else
			humanoid.WalkSpeed = 14
		end
	end
	if k:byte() == 32 then
		if Grapple1 or Grapple2 then
		wait()
		humanoid.PlatformStand = true
		rlegm.C0 = rlc0 * CFrame.new(0, .5, -.65) * CFrame.Angles(-math.pi/8, 0, .1)
		llegm.C0 = llc0 * CFrame.new(0, .5, -.65) * CFrame.Angles(-math.pi/8, 0, -.1)
		if pa3.Parent ~= nil then
			ro3:Fire()
		end
		if Grapple1 then
			ro:Fire()
		end
		if Grapple2 then
			ro2:Fire()
		end
		end
	end
	if k=="q" then
		local sound = Instance.new('Sound', head)
		sound.SoundId = "rbxassetid://151733071"
		sound.Pitch = 3+math.random()/3
		sound.Volume = .8
		sound:play()
		game:service'Debris':AddItem(sound,4)
		lm.Parent = torso
		pa.CFrame = la.CFrame
			local grapplepos = pa.Position
			local grapplevelocity = (mouse.Hit.p - grapplepos).unit*50
			local lastgrapplepos = pa.Position 
			while wait() do
				lastgrapplepos = grapplepos 
				grapplepos = grapplepos + grapplevelocity
				local RayCast = Ray.new(lastgrapplepos, (grapplepos - lastgrapplepos))
				local hit, hitpos = workspace:FindPartOnRay(RayCast, char)
				if (torso.Position - pa.Position).magnitude > 900 then
					pa.Parent = nil
					break
				end
				pa.Anchored = true
				pa.CFrame = CFrame.new(grapplepos, grapplepos+grapplevelocity) * CFrame.Angles(math.pi/2, 0, 0)
				pa.Parent = char
				if hit then
					local rotX,rotY,rotZ = pa.CFrame:toEulerAnglesXYZ()
					local sound = Instance.new('Sound', head)
					sound.SoundId = "rbxassetid://151733071"
					sound.Pitch = 1.2+math.random()/3
					sound.Volume = .45
					sound:play()
					game:service'Debris':AddItem(sound,4)
					pa.Parent = char
					pa.CFrame=CFrame.new(hitpos.x, hitpos.y, hitpos.z)*CFrame.Angles(rotX,rotY,rotZ)*CFrame.Angles(math.pi,0,0)
					ro.Target=pa
					lm.Parent = torso
					local ray = Ray.new(rootpart.Position, Vector3.new(0, -6, 0))
					local hitz, enz = workspace:FindPartOnRay(ray, char)
					local hum = hit and hit.Parent and hit.Parent:findFirstChild'Humanoid'
					if hum then
						hum:TakeDamage(math.random(7,11))
					end
					local hum = hit and hit.Parent and hit.Parent.Parent and hit.Parent.Parent:findFirstChild'Humanoid'
					if hum then
						hum:TakeDamage(math.random(7,11))
					end
					if pa.Parent ~= nil and humanoid.PlatformStand or not (hitz and hitz.CanCollide) then
						ro:Fire()
						if jumpmode then
							humanoid.Jump = true
						end
					end
					Gweld = Instance.new("Weld", char)
					Gweld.C0 = hit.CFrame:toObjectSpace(pa.CFrame)
					Gweld.Part0 = hit
					Gweld.Part1 = pa
					pa.Anchored = false
					Grapple1Hit = hit
					Grapple1 = true
					break
				end
				pa.Anchored = true
				pa.CFrame = CFrame.new(grapplepos, grapplepos+grapplevelocity) * CFrame.Angles(math.pi/2, 0, 0)
			end
	end
	if k=="e" then
		local sound = Instance.new('Sound', head)
		sound.SoundId = "rbxassetid://151733071"
		sound.Pitch = 3+math.random()/3
		sound.Volume = .8
		sound:play()
		game:service'Debris':AddItem(sound,4)
			pa2.CFrame = ra.CFrame
			rm.Parent = torso
			local grapplepos = pa2.Position
			local grapplevelocity = (mouse.Hit.p - grapplepos).unit*50
			local lastgrapplepos = pa2.Position 
			while wait() do
				lastgrapplepos = grapplepos 
				grapplepos = grapplepos + grapplevelocity
				local RayCast = Ray.new(lastgrapplepos, (grapplepos - lastgrapplepos))
				local hit, hitpos = workspace:FindPartOnRay(RayCast, char)
				if (torso.Position - pa2.Position).magnitude > 900 then
					pa2.Parent = nil
					break
				end
				pa2.Anchored = true
				pa2.CFrame = CFrame.new(grapplepos, grapplepos+grapplevelocity) * CFrame.Angles(math.pi/2, 0, 0)
				pa2.Parent = char
				if hit then
					local rotX,rotY,rotZ = pa2.CFrame:toEulerAnglesXYZ()
					local sound = Instance.new('Sound', head)
					sound.SoundId = "rbxassetid://151733071"
					sound.Pitch = 1.2+math.random()/3
					sound.Volume = .45
					sound:play()
					game:service'Debris':AddItem(sound,4)
					pa2.Parent = char
					pa2.CFrame=CFrame.new(hitpos.x, hitpos.y, hitpos.z)*CFrame.Angles(rotX,rotY,rotZ)*CFrame.Angles(math.pi,0,0)
					ro2.Target=pa2
					rm.Parent = torso
					local ray = Ray.new(rootpart.Position, Vector3.new(0, -6, 0))
					local hitz, enz = workspace:FindPartOnRay(ray, char)
					local hum = hit and hit.Parent and hit.Parent:findFirstChild'Humanoid'
					if hum then
						hum:TakeDamage(math.random(7,11))
					end
					local hum = hit and hit.Parent and hit.Parent.Parent and hit.Parent.Parent:findFirstChild'Humanoid'
					if hum then
						hum:TakeDamage(math.random(7,11))
					end
					if pa2.Parent ~= nil and humanoid.PlatformStand or not (hitz and hitz.CanCollide) then
						if jumpmode then
							humanoid.Jump = true
						end
						ro2:Fire()
					end
					Gweld2 = Instance.new("Weld", char)
					Gweld2.C0 = hit.CFrame:toObjectSpace(pa2.CFrame)
					Gweld2.Part0 = hit
					Gweld2.Part1 = pa2
					pa2.Anchored = false
					Grapple2Hit = hit
					Grapple2 = true
					break
				end
				pa2.Anchored = true
				pa2.CFrame = CFrame.new(grapplepos, grapplepos+grapplevelocity) * CFrame.Angles(math.pi/2, 0, 0)
			end
	end
 end)
 
 mouse.KeyUp:connect(function(k)
	if k=="q" then
		pcall(function() Gweld:remove() end)
		game:service'RunService'.RenderStepped:wait()
		pcall(function() pa.Parent = nil Grapple1 = false end)
		pcall(function() ro:Abort() end)
		game:service'RunService'.RenderStepped:wait()
		pcall(function() ro2.Target=pa2 if Grapple2 and humanoid.PlatformStand or Grapple2 and not hitz then ro2:Fire() end end)
	elseif k=="e" then
		pcall(function() Gweld2:remove() end)
		game:service'RunService'.RenderStepped:wait()
		pcall(function() pa2.Parent = nil Grapple2 = false end)
		pcall(function() ro2:Abort() end)
		game:service'RunService'.RenderStepped:wait()
		pcall(function() ro.Target=pa if Grapple1 and humanoid.PlatformStand or Grapple1 and not hitz then ro:Fire() end end)
	end
 end)
 
 
 local MidPointUsed = false
 local TorsoSmoke = Instance.new('Smoke', torso)
 
 
 game:service'RunService'.RenderStepped:connect(function()
		angle = (angle % 100) + anglespeed/10
		mvmnt = math.pi * math.sin(math.pi*2/100*(angle*10))
		local rscf = rsc0
		local lscf = lsc0
		local rlcf = rlc0
		local llcf = llc0
		local rjcf = rootc0
		local ncf = neckc0
		for i,object in pairs(char:children()) do
			if object:IsA("Tool") then
				tool = true
				if not debounce then
				for x,value in pairs(object:children()) do
					if value:IsA("StringValue") and value.Name == "toolanim" and value.Value == "Slash" then
						debounce = true
						coroutine.wrap(function()
						slashing = true
						wait(.25)
						slashing = false
						debounce = false
					end)()
					value:Destroy()
					end
				end
				end
			elseif not object:IsA'Tool' then
				tool = false
			end
		end
		if not humanoid.PlatformStand then
			if humanoid.Sit == true then
				speed = 0.2
				anglespeed = 1/4
						ncf = neckc0 * CFrame.Angles(0, 0, 0)
						rjcf = rootc0
						rscf = rsc0 * CFrame.Angles(math.pi/2+math.sin(-angle)*0.05, 0, 0)
						lscf = lsc0 * CFrame.Angles(math.pi/2+math.sin(-angle)*0.05, 0, 0)
						rlcf = rlc0 * CFrame.Angles(math.pi/2+-math.rad(.2), 0, math.rad(.2))
						llcf = llc0 * CFrame.Angles(math.pi/2+math.rad(.2), 0, -math.rad(.2))
			elseif Vector3.new(torso.Velocity.x, 0, torso.Velocity.z).magnitude <= 2 then
					anglespeed = 1/4
						speed = 0.2
						ncf = neckc0 * CFrame.Angles(math.sin(angle)*0.075, 0, 0)
						rjcf = rootc0
						rscf = rsc0 * CFrame.new(0, math.sin(angle)*0.05, 0) * CFrame.Angles(math.sin(-angle)*0.05, 0, 0)
						lscf = lsc0 * CFrame.new(0, math.sin(angle)*0.05, 0) * CFrame.Angles(math.sin(-angle)*0.05, 0, 0)
						rlcf = rlc0 * CFrame.Angles(-math.rad(.2), 0, math.rad(.2))
						llcf = llc0 * CFrame.Angles(math.rad(.2), 0, -math.rad(.2))
			elseif Vector3.new(torso.Velocity.x, 0, torso.Velocity.z).magnitude <= 20 then
						anglespeed = 1.7
						speed = 0.25
						anglespeed = 2.2
						speed = 0.25
						ncf = neckc0 * CFrame.Angles(0, 0, 0)
						rjcf = rootc0 * CFrame.new(0, math.abs(math.sin(angle))*.055, 0) * CFrame.Angles(-math.rad(1), 0, 0)
						rscf = rsc0 * CFrame.Angles(math.sin(angle)*.5, 0, -math.rad(1))
						lscf = lsc0 * CFrame.Angles(math.sin(-angle)*.5, 0, math.rad(1))
						rlcf = rlc0 * CFrame.new(0, .075 + -math.cos(-angle)*.075, math.sin(angle)*0.1) * CFrame.Angles(math.sin(-angle)*.45, 0, math.rad(.5))
						llcf = llc0 * CFrame.new(0, .075 - -math.cos(angle)*.075, -math.sin(angle)*0.1) * CFrame.Angles(math.sin(angle)*.45, 0, -math.rad(.5))
			elseif Vector3.new(torso.Velocity.x, 0, torso.Velocity.z).magnitude >= 20 then
				local RotVelocityZ = torso.RotVelocity.Y
				if RotVelocityZ >= 15 then
					RotVelocityZ = 15
				elseif RotVelocityZ <= -15 then
					RotVelocityZ = -15
				end
					speed = 0.25
					anglespeed = 2.7
					ncf = neckc0 * CFrame.Angles(0, 0, -math.sin(angle)*.045)
					rscf = rsc0 * CFrame.new(0, 0, -math.sin(angle)*0.125) * CFrame.Angles(math.pi/14+math.sin(angle)*1.5, 0, -math.sin(math.abs(angle))*0.3)
					lscf = lsc0 * CFrame.new(0, 0, math.sin(angle)*0.125) * CFrame.Angles(math.pi/14+math.sin(-angle)*1.5, 0, -math.sin(math.abs(angle))*0.3)
					rjcf = rootc0 * CFrame.new(0, math.abs(math.sin(angle))*.175 - .2, 0) * CFrame.Angles(math.abs(math.sin(angle))*0.055 + -math.pi/18, 0, math.rad(RotVelocityZ) + math.sin(angle)*.045)
					rlcf = rlc0 * CFrame.new(0, .3 + -math.cos(-angle)*.3, -.2+math.sin(angle)*0.25) * CFrame.Angles(-math.pi/18+math.sin(-angle)*1.3, 0, math.rad(.5))
					llcf = llc0 * CFrame.new(0, .3 - -math.cos(angle)*.3, -.05-math.sin(angle)*0.25) * CFrame.Angles(-math.pi/18+math.sin(angle)*1.3, 0, -math.rad(.5))
			end
			if tool then
				rscf = rsc0 * CFrame.Angles(math.pi/2, 0, 0)
				if slashing then
					rscf = rsc0
				end
			end
		end
	if pa2.Parent == nil then
	rm.C0 = clerp(rm.C0,rscf,speed)
	end
	if pa.Parent == nil then
	lm.C0 = clerp(lm.C0,lscf,speed)
	end
	rj.C0 = clerp(rj.C0,rjcf,speed)
	neck.C0 = clerp(neck.C0,ncf,speed)
	rlegm.C0 = clerp(rlegm.C0,rlcf,speed)
	llegm.C0 = clerp(llegm.C0,llcf,speed)
 end)
 
 
 
 game:service'RunService'.RenderStepped:connect(function()
	if Vector3.new(torso.Velocity.x, 0, torso.Velocity.z).magnitude >= 225 then
		TorsoSmoke.Enabled = true
	else
		TorsoSmoke.Enabled = false
	end
	local ray = Ray.new(rootpart.Position, Vector3.new(0, -7, 0))
	local hitz, enz = workspace:FindPartOnRay(ray, char)
	if hitz and hitz.CanCollide and pa.Parent ~= char and pa2.Parent ~= char then
		bodygyro.Parent = nil
		humanoid.PlatformStand = false
	end
	if pa.Parent ~= nil or Grapple1 then
		local size = (ropeStart2.Position-pa.Position).magnitude
			ropePA.Size = Vector3.new(.2, size, .2) 
			ropePA.CFrame = CFrame.new(ropeStart2.Position, pa.Position) * CFrame.Angles(math.pi/2, 0, 0) * CFrame.new(0, -size/2, 0)
		lm.C0 = CFrame.new(Vector3.new(lsc0.x, lsc0.y, lsc0.z), torso.CFrame:pointToObjectSpace(pa.Position)) * CFrame.Angles(math.pi/2, 0, 0)
	else
		if not debounce and humanoid.PlatformStand then
			lm.C0 = lsc0 * CFrame.Angles(-.15, 0, -.15)
		end
	end
	if pa2.Parent ~= nil or Grapple2 then
		local size = (ropeStart.Position-pa2.Position).magnitude
			ropePA2.Size = Vector3.new(.2, size, .2) 
			ropePA2.CFrame = CFrame.new(ropeStart.Position, pa2.Position) * CFrame.Angles(math.pi/2, 0, 0) * CFrame.new(0, -size/2, 0)
		rm.C0 = CFrame.new(Vector3.new(rsc0.x, rsc0.y, rsc0.z), torso.CFrame:pointToObjectSpace(pa2.Position)) * CFrame.Angles(math.pi/2, 0, 0)
	else
		if not debounce and humanoid.PlatformStand then
			rm.C0 = rsc0 * CFrame.Angles(-.15, 0, .15)
		end
	end
	if Grapple1 and Grapple1Hit.Parent == nil then
		pcall(function() Gweld:remove() end)
		pa.Parent = nil
		Grapple1 = false
		ro:Abort()
	end
	if Grapple2 and Grapple2Hit.Parent == nil then
		pcall(function() Gweld2:remove() end)
		pa2.Parent = nil
		Grapple2 = false
		ro2:Abort()
	end
	if Grapple1 and Grapple2 and (humanoid.PlatformStand or not hitz) then
		local distance = (pa.Position-pa2.Position).magnitude
		bodygyro.Parent = torso
		torso.CFrame = CFrame.new(torso.Position, Vector3.new(camera.CoordinateFrame.x, camera.CoordinateFrame.y, camera.CoordinateFrame.z)) * CFrame.Angles(0, math.pi, 0)
		bodygyro.cframe = CFrame.new(torso.Position, Vector3.new(camera.CoordinateFrame.x, camera.CoordinateFrame.y, camera.CoordinateFrame.z)) * CFrame.Angles(0, math.pi, 0)
		pa3.Parent = char
			if distance <= .5 then
				pa3.CFrame = pa.CFrame
			elseif distance > .5 then
				pa3.CFrame = CFrame.new(pa.Position, pa2.Position) * CFrame.new(0, 0, -distance/2)
			end
		if not MidPointUsed then
		ro3=Instance.new("RocketPropulsion",torso3)
		ro3.Name = 'RockatPropoolsun3'
		ro3.MaxSpeed=550
		ro3.MaxThrust=16000
		ro3.TurnP = 57
		ro3.TurnD = 0
		ro3.MaxTorque=Vector3.new(14e16,14e16,14e16)
		if humanoid.PlatformStand or not hitz then
			ro:Abort()
			ro2:Abort()
		end
			ro3.Target = pa3
			if humanoid.PlatformStand or not hitz then
				ro3:Fire()
			end
			MidPointUsed = true
		end
	elseif (not Grapple1 or not Grapple2) and MidPointUsed == true and (humanoid.PlatformStand or not hitz) then
		pa3.Parent = nil
		MidPointUsed = false
		ro3:Abort()
		ro3:Destroy()
		if Grapple1 then
			ro:Fire()
		end
		if Grapple2 then
			ro2:Fire()
		end
	end
	if not Grapple1 then
		pcall(function() Gweld:remove() end)
	end
	if not Grapple2 then
		pcall(function() Gweld2:remove() end)
	end
	if (Grapple1 or Grapple2) and not hitz then
		bodygyro.Parent = torso
		humanoid.PlatformStand = true
		rlegm.Parent = torso
		llegm.Parent = torso
		lm.Parent = torso
		rm.Parent = torso
		rlegm.C0 = rlc0 * CFrame.new(0, .5, -.65) * CFrame.Angles(-math.pi/8, 0, .1)
		llegm.C0 = llc0 * CFrame.new(0, .5, -.65) * CFrame.Angles(-math.pi/8, 0, -.1)
	end
	if (Grapple1 or Grapple2) and not hitz or humanoid.PlatformStand then
		bodygyro.Parent = torso
		bodygyro.cframe = CFrame.new(torso.Position, Vector3.new(camera.CoordinateFrame.x, camera.CoordinateFrame.y, camera.CoordinateFrame.z)) * CFrame.Angles(0, math.pi, 0)
		rlegm.Parent = torso
		llegm.Parent = torso
		rlegm.C0 = rlc0 * CFrame.new(0, .5, -.65) * CFrame.Angles(-math.pi/8, 0, .1)
		llegm.C0 = llc0 * CFrame.new(0, .5, -.65) * CFrame.Angles(-math.pi/8, 0, -.1)
	end
 end)
 repeat wait() until game.Players.LocalPlayer.Character
 repeat wait(1) until game.Players.LocalPlayer.Character:IsDescendantOf(game.Workspace)
 wait(4 / 20)
	end,
})
