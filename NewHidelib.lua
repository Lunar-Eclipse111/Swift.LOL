local Hide = {}
local _New_ = Instance.new;

local Remove = _New_("ScreenGui", game.CoreGui);
Remove.Name = "Remove";

function Hide:Show(m)
	m = m or {}
	
	local Main = _New_("Frame", Remove);
	Main.AnchorPoint = Vector2.new(0.5, 0.5);
	Main.BackgroundColor3 = Color3.fromRGB(40.00000141561031, 40.00000141561031, 40.00000141561031);
	Main.BorderColor3 = Color3.fromRGB(75.00000312924385, 75.00000312924385, 75.00000312924385);
	Main.Name = "Main";
	Main.Position = UDim2.new(0.1220783218741417, 0, 0.8151746392250061, 0);
	Main.Size = UDim2.new(0, 144, 0, 70);

	local ScriptName = _New_("TextLabel", Main);
	ScriptName.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
	ScriptName.BackgroundTransparency = 1;
	ScriptName.Name = "ScriptName";
	ScriptName.Position = UDim2.new(0.0645643100142479, 0, -0.021022194996476173, 2);
	ScriptName.Size = UDim2.new(0, 100, 0, 14);
	ScriptName.Font = Enum.Font.Ubuntu;
	ScriptName.FontFace = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
	ScriptName.Text = "SWIFT.LOL|UI TOGGLE";
	ScriptName.TextColor3 = Color3.fromRGB(150.0000062584877, 150.0000062584877, 150.0000062584877);
	ScriptName.TextSize = 14;
	ScriptName.TextXAlignment = Enum.TextXAlignment.Left;

	local K = _New_("TextButton", Main);
	K.AutoButtonColor = false;
	K.BackgroundColor3 = Color3.fromRGB(31.000000052154064, 31.000000052154064, 31.000000052154064);
	K.BorderColor3 = Color3.fromRGB(70.00000342726707, 70.00000342726707, 70.00000342726707);
	K.Name = "K";
	K.Position = UDim2.new(0.08500000089406967, 0, 0.6690000295639038, -2);
	K.Size = UDim2.new(0, 118, 0, 14);
	K.ZIndex = 2;
	K.Font = Enum.Font.Ubuntu;
	K.FontFace = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
	K.Text = "Okay";
	K.TextColor3 = Color3.fromRGB(255, 255, 255);
	K.TextSize = 14;

	local UICorner = _New_("UICorner", Main);
	UICorner.CornerRadius = UDim.new(0, 4);

	local MainGradiant = _New_("UIGradient", Main);
	MainGradiant.Color = ColorSequence.new{ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1, Color3.fromRGB(110.00000104308128, 118.00000056624413, 250.00000029802322))};
	MainGradiant.Rotation = 64;
	MainGradiant.Name = "MainGradiant";

	local Bind = _New_("TextButton", Main);
	Bind.AutoButtonColor = false;
	Bind.BackgroundColor3 = Color3.fromRGB(31.000000052154064, 31.000000052154064, 31.000000052154064);
	Bind.BorderColor3 = Color3.fromRGB(70.00000342726707, 70.00000342726707, 70.00000342726707);
	Bind.Name = "Bind";
	Bind.Position = UDim2.new(0.08500000089406967, 0, 0.18299999833106995, 6);
	Bind.Size = UDim2.new(0, 119, 0, 21);
	Bind.ZIndex = 2;
	Bind.Font = Enum.Font.Ubuntu;
	Bind.FontFace = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
	Bind.Text = "[E]";
	Bind.TextColor3 = Color3.fromRGB(255, 255, 255);
	Bind.TextSize = 14;

	local LocalScript = _New_("LocalScript", Bind);

	local UIStroke = _New_("UIStroke", Main);
	UIStroke.Color = Color3.fromRGB(112.000000923872, 112.000000923872, 112.000000923872);
	
	K.MouseButton1Down:Connect(function()
		Main.Visible = false
	end)


	local oldKey = m.def.Name


	local blacklist = {
		"W","A","S","D","Slash","Tab","Backspace","Escape","Space","Delete","Unknown","Backquote"
	}

	Bind.MouseButton1Click:connect(function(e) 
		Bind.Text = "..."
		local a, b = game:GetService('UserInputService').InputBegan:wait();


		if not table.find(blacklist, a.KeyCode.Name) then
			Bind.Text = "[".. a.KeyCode.Name.."]"
			oldKey = a.KeyCode.Name;
		else
			Bind.Text =	 "[NONE]"
			oldKey = Enum.KeyCode.World55
		end



	end)

	-- X Declares being shown
	local x = true

	game:GetService("UserInputService").InputBegan:connect(function(current, ok) 



		if not ok then 
			if current.KeyCode.Name == oldKey then 
				if x == true then
					x = false
					game.CoreGui['SWIFT.LOL'].Main.Visible = false	
				else

					x = true
					game.CoreGui['SWIFT.LOL'].Main.Visible = true	
				end
			end
		end
	end)


end

return Hide;

