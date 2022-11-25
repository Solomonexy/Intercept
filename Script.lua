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

local Button = ScriptTab:CreateButton({
	Name = "Ball Spin",
	Callback = function()
        loadstring(game:HttpGet(('https://pastebin.com/raw/EJskzezp')))()
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
RS.C0 = RS.C0:Lerp(CF(1+0*math.cos(sine/13),0.5+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(105+0*math.cos(sine/13)),RAD(18+0*math.cos(sine/13)),RAD(30+0*math.cos(sine/13))),.3)
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

--This was copied from neptunian V
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
--Created using Nexo Animator
	end,
})
