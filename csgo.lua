local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "CSGO Guns", HidePremium = true, SaveConfig = false, ConfigFolder = "CSGOGuns"})
local Main = Window:MakeTab({
	Name = "Main",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local mainSection = Main:AddSection({
	Name = "Main Section"
})
local Rage = Window:MakeTab({
	Name = "Rage",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local rageSection = Rage:AddSection({
	Name = "Rage Section"
})

OrionLib:MakeNotification({
	Name = "Alert!",
	Content = "Use most of these on spawn (every time you spawn)",
	Image = "rbxassetid://4483345998",
	Time = 13
})
wait()
game:GetService("StarterGui"):SetCore("ChatMakeSystemMessage",{
Text = "Alert!, Use some buttons on spawn (every time you spawn)",
Color = Color3.fromRGB(124, 92, 70)
})

function wsss()
local Players = game:GetService("Players")
local client = Players.LocalPlayer

local character
client.CharacterAdded:Connect(function(_character)
    character = _character
    character.Humanoid.Died:Connect(function()
    wait(1)
game.Players.LocalPlayer.Character:FindFirstChild("LocalScript"):Destroy()
end)
end)
end

function jppp()
local Players = game:GetService("Players")
local client = Players.LocalPlayer

local character
client.CharacterAdded:Connect(function(_character)
    character = _character
    character.Humanoid.Died:Connect(function()
    wait(1)
game.Players.LocalPlayer.Character:FindFirstChild("LocalScript"):Destroy()
end)
end)
end

function flyy()
local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local StarterGui = game:GetService("StarterGui")
local SoundService = game:GetService("SoundService")

local localPlayer = Players.LocalPlayer
local character = localPlayer.Character

RunService.Stepped:Connect(function()
		if not character then return end
		for i, v in pairs(character:GetDescendants()) do
			if v:IsA("BasePart") then
				v.CanCollide = false
			end
		end
	end)
    wait()
	if Fly == true then

		Fly = false

		return

	end

	Fly = true

  local mouse=game.Players.LocalPlayer:GetMouse''

  localplayer=game.Players.LocalPlayer

  game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")

  local torso = game.Players.LocalPlayer.Character.HumanoidRootPart

  local speed=0

  local keys={a=false,d=false,w=false,s=false} 

  local e1

  local e2

  local function start()

   local pos = Instance.new("BodyPosition",torso)

   local gyro = Instance.new("BodyGyro",torso)

   pos.Name="EPIXPOS"

   pos.maxForce = Vector3.new(math.huge, math.huge, math.huge)

   pos.position = torso.Position

   gyro.maxTorque = Vector3.new(9e9, 9e9, 9e9) 

   gyro.cframe = torso.CFrame

   repeat

    wait()

    localplayer.Character.Humanoid.PlatformStand=true

    local new=gyro.cframe - gyro.cframe.p + pos.position

    if not keys.w and not keys.s and not keys.a and not keys.d then

     speed=1

    end 

    if keys.w then 

     new = new + workspace.CurrentCamera.CoordinateFrame.lookVector * speed

     speed=speed+0.01

    end

    if keys.s then 

     new = new - workspace.CurrentCamera.CoordinateFrame.lookVector * speed

     speed=speed+0.01

    end

    if keys.d then 

     new = new * CFrame.new(speed,0,0)

     speed=speed+0.01

    end

    if keys.a then 

     new = new * CFrame.new(-speed,0,0)

     speed=speed+0.01

    end

    if speed>5 then

     speed=5

    end

    pos.position=new.p

    if keys.w then

     gyro.cframe = workspace.CurrentCamera.CoordinateFrame*CFrame.Angles(-math.rad(speed*15),0,0)

    elseif keys.s then

     gyro.cframe = workspace.CurrentCamera.CoordinateFrame*CFrame.Angles(math.rad(speed*15),0,0)

    else

     gyro.cframe = workspace.CurrentCamera.CoordinateFrame

    end

   until not Fly

   if gyro then gyro:Destroy() end

   if pos then pos:Destroy() end

   flying=false

   localplayer.Character.Humanoid.PlatformStand=false

   speed=0

  end

  e1=mouse.KeyDown:connect(function(key)

   if not torso or not torso.Parent then flying=false e1:disconnect() e2:disconnect() return end

   if key=="w" then

    keys.w=true

   elseif key=="s" then

    keys.s=true

   elseif key=="a" then

    keys.a=true

   elseif key=="d" then

    keys.d=true

   end

  end)

  e2=mouse.KeyUp:connect(function(key)

   if key=="w" then

    keys.w=false

   elseif key=="s" then

    keys.s=false

   elseif key=="a" then

    keys.a=false

   elseif key=="d" then

    keys.d=false

   end

  end)

  start()
end

function espthing()
--//Toggle\\--
getgenv().Toggle = true -- This toggles the esp, turning it to false will turn it off
getgenv().TC = false -- This toggles team check, turning it on will turn on team check
local PlayerName = "Name" -- You can decide if you want the Player's name to be a display name which is "DisplayName", or username which is "Name"

--//Variables\\--
local P = game:GetService("Players")
local LP = P.LocalPlayer

--//Debounce\\--
local DB = false

--//Loop\\--
while task.wait() do
	if not getgenv().Toggle then
		break
	end
	if DB then 
		return 
	end
	DB = true

	pcall(function()
		for i,v in pairs(P:GetChildren()) do
			if v:IsA("Player") then
				if v ~= LP then
					if v.Character then

						local pos = math.floor(((LP.Character:FindFirstChild("HumanoidRootPart")).Position - (v.Character:FindFirstChild("HumanoidRootPart")).Position).magnitude)
						-- Credits to Infinite Yield for this part (pos) ^^^^^^

						if v.Character:FindFirstChild("Totally NOT Esp") == nil and v.Character:FindFirstChild("Icon") == nil and getgenv().TC == false then
							--//ESP-Highlight\\--
							local ESP = Instance.new("Highlight", v.Character)

							ESP.Name = "Totally NOT Esp"
							ESP.Adornee = v.Character
							ESP.Archivable = true
							ESP.Enabled = true
							ESP.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
							ESP.FillColor = v.TeamColor.Color
							ESP.FillTransparency = 0.5
							ESP.OutlineColor = Color3.fromRGB(255, 255, 255)
							ESP.OutlineTransparency = 0

							--//ESP-Text\\--
							local Icon = Instance.new("BillboardGui", v.Character)
							local ESPText = Instance.new("TextLabel")

							Icon.Name = "Icon"
							Icon.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
							Icon.Active = true
							Icon.AlwaysOnTop = true
							Icon.ExtentsOffset = Vector3.new(0, 1, 0)
							Icon.LightInfluence = 1.000
							Icon.Size = UDim2.new(0, 800, 0, 50)

							ESPText.Name = "ESP Text"
							ESPText.Parent = Icon
							ESPText.BackgroundColor3 = v.TeamColor.Color
							ESPText.BackgroundTransparency = 1.000
							ESPText.Size = UDim2.new(0, 800, 0, 50)
							ESPText.Font = Enum.Font.SciFi
							ESPText.Text = v[PlayerName].." | Distance: "..pos
							ESPText.TextColor3 = v.TeamColor.Color
							ESPText.TextSize = 18.000
							ESPText.TextWrapped = true
						else
							if v.TeamColor ~= LP.TeamColor and v.Character:FindFirstChild("Totally NOT Esp") == nil and v.Character:FindFirstChild("Icon") == nil and getgenv().TC == true then
								--//ESP-Highlight\\--
								local ESP = Instance.new("Highlight", v.Character)

								ESP.Name = "Totally NOT Esp"
								ESP.Adornee = v.Character
								ESP.Archivable = true
								ESP.Enabled = true
								ESP.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
								ESP.FillColor = v.TeamColor.Color
								ESP.FillTransparency = 0.5
								ESP.OutlineColor = Color3.fromRGB(255, 255, 255)
								ESP.OutlineTransparency = 0

								--//ESP-Text\\--
								local Icon = Instance.new("BillboardGui", v.Character)
								local ESPText = Instance.new("TextLabel")

								Icon.Name = "Icon"
								Icon.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
								Icon.Active = true
								Icon.AlwaysOnTop = true
								Icon.ExtentsOffset = Vector3.new(0, 1, 0)
								Icon.LightInfluence = 1.000
								Icon.Size = UDim2.new(0, 800, 0, 50)

								ESPText.Name = "ESP Text"
								ESPText.Parent = Icon
								ESPText.BackgroundColor3 = v.TeamColor.Color
								ESPText.BackgroundTransparency = 1.000
								ESPText.Size = UDim2.new(0, 800, 0, 50)
								ESPText.Font = Enum.Font.SciFi
								ESPText.Text = v[PlayerName].." | Distance: "..pos
								ESPText.TextColor3 = v.TeamColor.Color
								ESPText.TextSize = 18.000
								ESPText.TextWrapped = true
							else
								if not v.Character:FindFirstChild("Totally NOT Esp").FillColor == v.TeamColor.Color and not v.Character:FindFirstChild("Icon").TextColor3 == v.TeamColor.Color then
									v.Character:FindFirstChild("Totally NOT Esp").FillColor = v.TeamColor.Color
									v.Character:FindFirstChild("Icon").TextColor3 = v.TeamColor.Color
								else
									if v.Character:FindFirstChild("Totally NOT Esp").Enabled == false and v.Character:FindFirstChild("Icon").Enabled == false then
										v.Character:FindFirstChild("Totally NOT Esp").Enabled = true
										v.Character:FindFirstChild("Icon").Enabled = true
									else
										if v.Character:FindFirstChild("Icon") then
											v.Character:FindFirstChild("Icon")["ESP Text"].Text = v[PlayerName].." | Distance: "..pos
										end
									end
								end
							end
						end
					end
				end
			end
		end
	end)

	wait()

	DB = false
end
end

function noclip()
local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local StarterGui = game:GetService("StarterGui")
local SoundService = game:GetService("SoundService")

local localPlayer = Players.LocalPlayer
local character = localPlayer.Character

RunService.Stepped:Connect(function()
		if not character then return end
		for i, v in pairs(character:GetDescendants()) do
			if v:IsA("BasePart") then
				v.CanCollide = false
			end
		end
	end)
end

Rage:AddTextbox({
Name = "FOV Changer",
Default = "FOV To Be?",
TextDisappear = false,
Callback = function(fov)
local args = {
    [1] = fov
}

game:GetService("ReplicatedStorage").Events.ChangeFOV:FireServer(unpack(args))
end})

Main:AddButton({
Name = "Names",
Callback = function()
espthing()
end})

Main:AddToggle({
Name = "Tracers",
Default = false,
Callback = function(tra)
if tra then
_G.trac = true
if _G.trac == true then
loadstring(game:HttpGet(('https://raw.githubusercontent.com/dudeididntliterally/OpenSourceESPStuff/main/Tracers.lua'),true))()
end
else
_G.trac = false
end
end})

Main:AddButton({
Name = "Noclip",
Callback = function()
noclip()
end})

Rage:AddButton({
Name = "AC Bypass (anticheat)",
Callback = function()
bypass()
end})

Rage:AddButton({
	Name = "(BYPASS FIRST) WalkSpeed",
	Callback = function()
    wsss()
end})

Rage:AddButton({
	Name = "(BYPASS FIRST) JumpPower",
	Callback = function()
	jppp()
end})

Rage:AddButton({
Name = "Fly",
Callback = function(flyyy)
flyy()
end})
