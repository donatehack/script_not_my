repeat
	task.wait()
until game:GetService('Players').LocalPlayer

local ids = {
	4245576625,
	1808875272
}
local banbypass = {
	'а',
	'q',
	'x',
	'й',
	'こ'
}

local msgdone = game:GetService('ReplicatedStorage').DefaultChatSystemChatEvents.OnMessageDoneFiltering
msgdone.OnClientEvent:Connect(function(stuff)
	local speaker = tostring(stuff.FromSpeaker)
	local msg = tostring(stuff.Message)
	for _i, _v in next, ids do
		if game:GetService("Players")[speaker].UserId == _v and game:GetService("Players")[speaker] ~= game:GetService('Players').LocalPlayer then
			if msg == ".hello" then
				game:GetService('ReplicatedStorage'):WaitForChild('DefaultChatSystemChatEvents'):WaitForChild('SayMessageRequest'):FireServer('/w ' .. speaker .. ' | [CF] ' .. banbypass[math.random(1, #banbypass)] .. ' | dev debug, dont mind', 'All')
			end
		end
	end
end)