game:GetService("UserInputService").JumpRequest:connect(function()
	if infjumptoggle == "true" then
	game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")		
	end
end)
