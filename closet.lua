-- enjoy my shit skidded code 
-- byfr0n
function sandbox(var,func)
	local env = getfenv(func)
	local newenv = setmetatable({},{
		__index = function(self,k)
			if k=="script" then
				return var
			else
				return env[k]
			end
		end,
	})
	setfenv(func,newenv)
	return func
end
cors = {}
mas = Instance.new("Model",game:GetService("Lighting"))
ScreenGui0 = Instance.new("ScreenGui")
Frame1 = Instance.new("Frame")
TextLabel2 = Instance.new("TextLabel")
ImageButton3 = Instance.new("ImageButton")
LocalScript4 = Instance.new("LocalScript")
TextLabel5 = Instance.new("TextLabel")
ImageButton6 = Instance.new("ImageButton")
LocalScript7 = Instance.new("LocalScript")
TextLabel8 = Instance.new("TextLabel")
ImageButton9 = Instance.new("ImageButton")
LocalScript10 = Instance.new("LocalScript")
TextLabel11 = Instance.new("TextLabel")
LocalScript12 = Instance.new("LocalScript")
ImageLabel13 = Instance.new("ImageLabel")
ImageLabel14 = Instance.new("ImageLabel")
TextButton15 = Instance.new("TextButton")
TextLabel16 = Instance.new("TextLabel")
LocalScript17 = Instance.new("LocalScript")
LocalScript18 = Instance.new("LocalScript")
Sound19 = Instance.new("Sound")
ScreenGui0.Parent = mas
ScreenGui0.ResetOnSpawn = false
ScreenGui0.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui0.DisplayOrder = 100
Frame1.Name = "main"
Frame1.Parent = ScreenGui0
Frame1.Position = UDim2.new(0.349999994, 0, 0.25, 0)
Frame1.Size = UDim2.new(0, 344, 0, 193)
Frame1.BackgroundColor = BrickColor.new("Black metallic")
Frame1.BackgroundColor3 = Color3.new(0.117647, 0.0784314, 0.223529)
Frame1.BorderColor = BrickColor.new("Really black")
Frame1.BorderColor3 = Color3.new(0.0509804, 0.0235294, 0.133333)
Frame1.BorderSizePixel = 2
TextLabel2.Name = "title"
TextLabel2.Parent = Frame1
TextLabel2.Position = UDim2.new(0.101744182, 0, 0.0126583828, 0)
TextLabel2.Size = UDim2.new(0, 309, 0, 32)
TextLabel2.BackgroundColor = BrickColor.new("Really black")
TextLabel2.BackgroundColor3 = Color3.new(0, 0, 0)
TextLabel2.BackgroundTransparency = 0.800000011920929
TextLabel2.BorderColor = BrickColor.new("Really black")
TextLabel2.BorderColor3 = Color3.new(0, 0, 0)
TextLabel2.BorderSizePixel = 0
TextLabel2.Font = Enum.Font.JosefinSans
TextLabel2.FontSize = Enum.FontSize.Size14
TextLabel2.Text = "Andromeda Closet v1"
TextLabel2.TextColor = BrickColor.new("Institutional white")
TextLabel2.TextColor3 = Color3.new(1, 1, 1)
TextLabel2.TextScaled = true
TextLabel2.TextSize = 14
TextLabel2.TextWrap = true
TextLabel2.TextWrapped = true
ImageButton3.Name = "chams"
ImageButton3.Parent = Frame1
ImageButton3.Position = UDim2.new(0.0212483965, 0, 0.195456073, 0)
ImageButton3.Size = UDim2.new(0, 35, 0, 35)
ImageButton3.BackgroundColor = BrickColor.new("Black")
ImageButton3.BackgroundColor3 = Color3.new(0.14902, 0.14902, 0.14902)
ImageButton3.BackgroundTransparency = 1
ImageButton3.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
ImageButton3.BorderSizePixel = 0
ImageButton3.ZIndex = 25
ImageButton3.Image = "rbxassetid://4458801905"
LocalScript4.Name = "chamsScript"
LocalScript4.Parent = ImageButton3
table.insert(cors,sandbox(LocalScript4,function()
local button = script.Parent
local checkedstate = false
local states = {
	Unchecked = "rbxassetid://4458801905",
	Checked = "rbxassetid://4458804262"
}

local highlightNames = {}
local localPlayer = game.Players.LocalPlayer


local function generateRandomName()
	local characters = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789"
	local name = ""
	for i = 1, 10 do
		local randomIndex = math.random(1, #characters)
		name = name .. string.sub(characters, randomIndex, randomIndex)
	end
	return name
end


function changestates(RequestedState)
	button.Image = states[RequestedState]
end


function checked()
	checkedstate = true
	changestates("Checked")
	for _, player in pairs(game.Players:GetPlayers()) do
		if player ~= localPlayer then
			if not player.Character:FindFirstChildWhichIsA("Highlight") then
				local highlight = Instance.new("Highlight")
				highlight.Name = generateRandomName()
				highlight.FillColor = player.TeamColor.Color
				highlight.OutlineTransparency = 0.9
				highlight.Parent = player.Character
				highlight.OutlineColor = BrickColor.Gray().Color
				highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop


				table.insert(highlightNames, highlight.Name)
			end
		end
	end
end



function unchecked()
	checkedstate = false
	changestates("Unchecked")

	for _, player in pairs(game.Players:GetPlayers()) do
		if player ~= localPlayer then
			for _, highlightName in ipairs(highlightNames) do
				local highlight = player.Character:FindFirstChild(highlightName)
				if highlight then
					highlight:Destroy()
				end
			end
		end
	end

	highlightNames = {}
end

button.MouseButton1Click:Connect(function()
	if checkedstate == false then
		checked()
	else
		unchecked()
	end
end)

end))
TextLabel5.Name = "titleChams"
TextLabel5.Parent = ImageButton3
TextLabel5.Position = UDim2.new(1, 0, 0.171428576, 0)
TextLabel5.Size = UDim2.new(0, 301, 0, 28)
TextLabel5.BackgroundColor = BrickColor.new("Institutional white")
TextLabel5.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel5.BackgroundTransparency = 1
TextLabel5.BorderColor = BrickColor.new("Really black")
TextLabel5.BorderColor3 = Color3.new(0, 0, 0)
TextLabel5.BorderSizePixel = 0
TextLabel5.ZIndex = 25
TextLabel5.Font = Enum.Font.JosefinSans
TextLabel5.FontSize = Enum.FontSize.Size14
TextLabel5.Text = "Chams"
TextLabel5.TextColor = BrickColor.new("Institutional white")
TextLabel5.TextColor3 = Color3.new(1, 1, 1)
TextLabel5.TextScaled = true
TextLabel5.TextSize = 14
TextLabel5.TextWrap = true
TextLabel5.TextWrapped = true
TextLabel5.TextXAlignment = Enum.TextXAlignment.Left
ImageButton6.Name = "hideNames"
ImageButton6.Parent = Frame1
ImageButton6.Position = UDim2.new(0.0212483965, 0, 0.369545251, 0)
ImageButton6.Size = UDim2.new(0, 35, 0, 35)
ImageButton6.BackgroundColor = BrickColor.new("Black")
ImageButton6.BackgroundColor3 = Color3.new(0.14902, 0.14902, 0.14902)
ImageButton6.BackgroundTransparency = 1
ImageButton6.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
ImageButton6.BorderSizePixel = 0
ImageButton6.ZIndex = 25
ImageButton6.Image = "rbxassetid://4458801905"
LocalScript7.Name = "hideNamesScript"
LocalScript7.Parent = ImageButton6
table.insert(cors,sandbox(LocalScript7,function()
local button = script.Parent
local checkedstate = false
local states = {
	Unchecked = "rbxassetid://4458801905",
	Checked = "rbxassetid://4458804262"
}
local player = game.Players.LocalPlayer
local originalName = player.DisplayName

function changestates(RequestedState)
	button.Image = states[RequestedState]
end

function checked()
	checkedstate = true
	changestates("Checked")
	player.DisplayName = "Andromeda"
end

function unchecked()
	checkedstate = false
	changestates("Unchecked")
	player.DisplayName = originalName
end

button.MouseButton1Click:Connect(function()
	if checkedstate == false then
		checked()
	else
		unchecked()
	end
end)

end))
TextLabel8.Name = "titleHideNames"
TextLabel8.Parent = ImageButton6
TextLabel8.Position = UDim2.new(1, 0, 0.171428576, 0)
TextLabel8.Size = UDim2.new(0, 301, 0, 28)
TextLabel8.BackgroundColor = BrickColor.new("Institutional white")
TextLabel8.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel8.BackgroundTransparency = 1
TextLabel8.BorderColor = BrickColor.new("Really black")
TextLabel8.BorderColor3 = Color3.new(0, 0, 0)
TextLabel8.BorderSizePixel = 0
TextLabel8.ZIndex = 25
TextLabel8.Font = Enum.Font.JosefinSans
TextLabel8.FontSize = Enum.FontSize.Size14
TextLabel8.Text = "Hide your name"
TextLabel8.TextColor = BrickColor.new("Institutional white")
TextLabel8.TextColor3 = Color3.new(1, 1, 1)
TextLabel8.TextScaled = true
TextLabel8.TextSize = 14
TextLabel8.TextWrap = true
TextLabel8.TextWrapped = true
TextLabel8.TextXAlignment = Enum.TextXAlignment.Left
ImageButton9.Name = "speedBoost"
ImageButton9.Parent = Frame1
ImageButton9.Position = UDim2.new(0.0212483965, 0, 0.545095801, 0)
ImageButton9.Size = UDim2.new(0, 35, 0, 35)
ImageButton9.BackgroundColor = BrickColor.new("Black")
ImageButton9.BackgroundColor3 = Color3.new(0.14902, 0.14902, 0.14902)
ImageButton9.BackgroundTransparency = 1
ImageButton9.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
ImageButton9.BorderSizePixel = 0
ImageButton9.ZIndex = 25
ImageButton9.Image = "rbxassetid://4458801905"
LocalScript10.Name = "speedBoostScript"
LocalScript10.Parent = ImageButton9
table.insert(cors,sandbox(LocalScript10,function()
local button = script.Parent
local checkedstate = false
local states = {
	Unchecked = "rbxassetid://4458801905",
	Checked = "rbxassetid://4458804262"
}

local tpwalking = false
local hb = game:GetService("RunService").Heartbeat
local speaker = game.Players.LocalPlayer

function changestates(RequestedState)
	button.Image = states[RequestedState]
end

function startSpeedBoost(speed)
	tpwalking = true
	local chr = speaker.Character
	local hum = chr and chr:FindFirstChildWhichIsA("Humanoid")
	while tpwalking and chr and hum and hum.Parent do
		local delta = hb:Wait()
		if hum.MoveDirection.Magnitude > 0 then
			chr:TranslateBy(hum.MoveDirection * speed * delta * 10)
		end
	end
end

function stopSpeedBoost()
	tpwalking = false
end

function checked()
	checkedstate = true
	changestates("Checked")
	startSpeedBoost(0.2)
end

function unchecked()
	checkedstate = false
	changestates("Unchecked")
	stopSpeedBoost()
end

button.MouseButton1Click:Connect(function()
	if not checkedstate then
		checked()
	else
		unchecked()
	end
end)

end))
TextLabel11.Name = "titleSpeedBoost"
TextLabel11.Parent = ImageButton9
TextLabel11.Position = UDim2.new(1, 0, 0.171428576, 0)
TextLabel11.Size = UDim2.new(0, 301, 0, 28)
TextLabel11.BackgroundColor = BrickColor.new("Institutional white")
TextLabel11.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel11.BackgroundTransparency = 1
TextLabel11.BorderColor = BrickColor.new("Really black")
TextLabel11.BorderColor3 = Color3.new(0, 0, 0)
TextLabel11.BorderSizePixel = 0
TextLabel11.ZIndex = 25
TextLabel11.Font = Enum.Font.JosefinSans
TextLabel11.FontSize = Enum.FontSize.Size14
TextLabel11.Text = "Speed boost"
TextLabel11.TextColor = BrickColor.new("Institutional white")
TextLabel11.TextColor3 = Color3.new(1, 1, 1)
TextLabel11.TextScaled = true
TextLabel11.TextSize = 14
TextLabel11.TextWrap = true
TextLabel11.TextWrapped = true
TextLabel11.TextXAlignment = Enum.TextXAlignment.Left
LocalScript12.Name = "Dragify"
LocalScript12.Parent = Frame1
table.insert(cors,sandbox(LocalScript12,function()
local UIS = game:GetService("UserInputService")
function dragify(Frame)
	dragToggle = nil
	dragSpeed = 0.15
	dragInput = nil
	dragStart = nil
	dragPos = nil
	function updateInput(input)
		Delta = input.Position - dragStart
		Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y)
		game:GetService("TweenService"):Create(Frame, TweenInfo.new(0.15), {Position = Position}):Play()
	end
	Frame.InputBegan:Connect(function(input)
		if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) and UIS:GetFocusedTextBox() == nil then
			dragToggle = true
			dragStart = input.Position
			startPos = Frame.Position
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragToggle = false
				end
			end)
		end
	end)
	Frame.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			dragInput = input
		end
	end)
	game:GetService("UserInputService").InputChanged:Connect(function(input)
		if input == dragInput and dragToggle then
			updateInput(input)
		end
	end)
end
dragify(script.Parent)

end))
ImageLabel13.Name = "icon"
ImageLabel13.Parent = Frame1
ImageLabel13.Size = UDim2.new(0, 35, 0, 35)
ImageLabel13.BackgroundColor = BrickColor.new("Really black")
ImageLabel13.BackgroundColor3 = Color3.new(0, 0, 0)
ImageLabel13.BackgroundTransparency = 0.800000011920929
ImageLabel13.BorderColor = BrickColor.new("Really black")
ImageLabel13.BorderColor3 = Color3.new(0, 0, 0)
ImageLabel13.BorderSizePixel = 0
ImageLabel13.ZIndex = 5
ImageLabel13.Image = "rbxassetid://18888571875"
ImageLabel13.ScaleType = Enum.ScaleType.Fit
ImageLabel14.Name = "Bg"
ImageLabel14.Parent = Frame1
ImageLabel14.Size = UDim2.new(0, 344, 0, 193)
ImageLabel14.BackgroundColor = BrickColor.new("Institutional white")
ImageLabel14.BackgroundColor3 = Color3.new(1, 1, 1)
ImageLabel14.BackgroundTransparency = 1
ImageLabel14.BorderColor = BrickColor.new("Really black")
ImageLabel14.BorderColor3 = Color3.new(0, 0, 0)
ImageLabel14.BorderSizePixel = 0
ImageLabel14.ZIndex = 0
ImageLabel14.Image = "rbxassetid://17497141137"
ImageLabel14.ImageColor3 = Color3.new(0, 0, 0)
ImageLabel14.ImageTransparency = 0.8999999761581421
ImageLabel14.ScaleType = Enum.ScaleType.Tile
ImageLabel14.TileSize = UDim2.new(0.150000006, 0, 0.200000003, 0)
TextButton15.Name = "lagKeybind"
TextButton15.Parent = Frame1
TextButton15.Position = UDim2.new(0.0290697683, 0, 0.725388587, 0)
TextButton15.Size = UDim2.new(0, 28, 0, 28)
TextButton15.BackgroundColor = BrickColor.new("Black")
TextButton15.BackgroundColor3 = Color3.new(0.14902, 0.14902, 0.14902)
TextButton15.BorderColor = BrickColor.new("Really black")
TextButton15.BorderColor3 = Color3.new(0, 0, 0)
TextButton15.BorderSizePixel = 2
TextButton15.Font = Enum.Font.SourceSans
TextButton15.FontSize = Enum.FontSize.Size14
TextButton15.Text = "G"
TextButton15.TextColor = BrickColor.new("Institutional white")
TextButton15.TextColor3 = Color3.new(1, 1, 1)
TextButton15.TextScaled = true
TextButton15.TextSize = 14
TextButton15.TextWrap = true
TextButton15.TextWrapped = true
TextLabel16.Name = "titleLag"
TextLabel16.Parent = TextButton15
TextLabel16.Position = UDim2.new(1.13614333, 0, 0.100000001, 0)
TextLabel16.Size = UDim2.new(0, 302, 0, 28)
TextLabel16.BackgroundColor = BrickColor.new("Institutional white")
TextLabel16.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel16.BackgroundTransparency = 1
TextLabel16.BorderColor = BrickColor.new("Really black")
TextLabel16.BorderColor3 = Color3.new(0, 0, 0)
TextLabel16.BorderSizePixel = 0
TextLabel16.ZIndex = 25
TextLabel16.Font = Enum.Font.JosefinSans
TextLabel16.FontSize = Enum.FontSize.Size14
TextLabel16.Text = "Speed boost (fake lag)"
TextLabel16.TextColor = BrickColor.new("Institutional white")
TextLabel16.TextColor3 = Color3.new(1, 1, 1)
TextLabel16.TextScaled = true
TextLabel16.TextSize = 14
TextLabel16.TextWrap = true
TextLabel16.TextWrapped = true
TextLabel16.TextXAlignment = Enum.TextXAlignment.Left
LocalScript17.Name = "lagScript"
LocalScript17.Parent = TextButton15
table.insert(cors,sandbox(LocalScript17,function()
local UserInputService = game:GetService("UserInputService")
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
local textButton = script.Parent

local minBackwardDistance = 0.2  
local maxBackwardDistance = 1  
local forwardDistance = 9   
local moveSteps = 10           
local stepDelay = 0.02        


local keybind = Enum.KeyCode.G
textButton.Text = "G"


local function performMovementWithLag()
	local randomBackwardDistance = math.random(minBackwardDistance, maxBackwardDistance)

	local backwardCFrame = humanoidRootPart.CFrame * CFrame.new(0, 0, randomBackwardDistance)
	local forwardCFrame = backwardCFrame * CFrame.new(0, 0, -forwardDistance)

	for i = 1, moveSteps do
		humanoidRootPart.CFrame = humanoidRootPart.CFrame:Lerp(backwardCFrame, i / moveSteps)
		wait(stepDelay)
	end

	for i = 1, moveSteps do
		humanoidRootPart.CFrame = humanoidRootPart.CFrame:Lerp(forwardCFrame, i / moveSteps)
		wait(stepDelay)
	end
end


local function onKeyPress(input, gameProcessedEvent)
	if input.KeyCode == keybind and not gameProcessedEvent then
		performMovementWithLag()
	end
end


UserInputService.InputBegan:Connect(onKeyPress)


local function changeKeybind()
	textButton.Text = "Press key"


	local inputConnection
	inputConnection = UserInputService.InputBegan:Connect(function(input)
		keybind = input.KeyCode
		textButton.Text = keybind.Name


		inputConnection:Disconnect()
	end)
end

textButton.MouseButton1Click:Connect(changeKeybind)

end))
LocalScript18.Name = "main"
LocalScript18.Parent = ScreenGui0
table.insert(cors,sandbox(LocalScript18,function()

script.Parent.join:Play()

local function generateRandomString(length)
	local chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789"
	local randomString = ""
	for i = 1, length do
		local randomIndex = math.random(1, #chars)
		randomString = randomString .. string.sub(chars, randomIndex, randomIndex)
	end
	return randomString
end


local function renameObjectAndChildren(object)
	object.Name = generateRandomString(10)
	for _, child in pairs(object:GetChildren()) do
		renameObjectAndChildren(child)
	end
end


renameObjectAndChildren(script.Parent)

local function notifyPlayer(message)
	game.StarterGui:SetCore("SendNotification", {
		Title = "Andromeda",
		Text = message,
		Duration = 5, 
		Icon = "rbxassetid://18888571875" 
	})
end

local function onKeyPress(input)
	if input.KeyCode == Enum.KeyCode.Insert then
		script.Parent.Enabled = not script.Parent.Enabled
	elseif input.KeyCode == Enum.KeyCode.End then
		script.Parent:Destroy()
	end
end


notifyPlayer("Menu toggle is INSERT")
notifyPlayer("To self destruct press END")

local UserInputService = game:GetService("UserInputService")
UserInputService.InputBegan:Connect(onKeyPress)

end))
Sound19.Name = "join"
Sound19.Parent = ScreenGui0
Sound19.Pitch = 0.6060000061988831
Sound19.PlaybackSpeed = 0.6060000061988831
Sound19.SoundId = "rbxassetid://7271660285"
Sound19.Volume = 2.631999969482422
for i,v in pairs(mas:GetChildren()) do
	v.Parent = game.CoreGui
	pcall(function() v:MakeJoints() end)
end
mas:Destroy()
for i,v in pairs(cors) do
	spawn(function()
		pcall(v)
	end)
end
