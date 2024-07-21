local Hide = {}
local _New_ = Instance.new;

local Remove = _New_("ScreenGui", game.CoreGui);
Remove.Name = "Remove";

function Hide.Show(m)
	m= m or {}
	
	local Main = _New_("Frame", Remove);
Main.AnchorPoint = Vector2.new(0.5, 0.5);
Main.BackgroundColor3 = Color3.fromRGB(40.00000141561031, 40.00000141561031, 40.00000141561031);
Main.BorderColor3 = Color3.fromRGB(75.00000312924385, 75.00000312924385, 75.00000312924385);
Main.Name = "Main";
Main.Position = UDim2.new(0.05826546996831894, 0, 0.936450719833374, 0);
Main.Size = UDim2.new(0, 154, 0, 87);

local Color = _New_("Frame", Main);
Color.BackgroundColor3 = Color3.fromRGB(110.00000104308128, 118.00000056624413, 250.00000029802322);
Color.BorderSizePixel = 0;
Color.Name = "Color";
Color.Size = UDim2.new(1, 0, 0, 1);

local ScriptName = _New_("TextLabel", Main);
ScriptName.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
ScriptName.BackgroundTransparency = 1;
ScriptName.Name = "ScriptName";
ScriptName.Position = UDim2.new(0.0645643100142479, 0, -0.021022194996476173, 2);
ScriptName.Size = UDim2.new(0, 100, 0, 14);
ScriptName.Font = Enum.Font.Ubuntu;
ScriptName.FontFace = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
ScriptName.Text = "SWIFT.LOL";
ScriptName.TextColor3 = Color3.fromRGB(255, 255, 255);
ScriptName.TextSize = 14;
ScriptName.TextXAlignment = Enum.TextXAlignment.Left;

local List = _New_("Frame", Main);
List.BackgroundColor3 = Color3.fromRGB(30.00000011175871, 30.00000011175871, 30.00000011175871);
List.BorderColor3 = Color3.fromRGB(70.00000342726707, 70.00000342726707, 70.00000342726707);
List.Name = "List";
List.Position = UDim2.new(0.0645642951130867, 0, 0.2277018278837204, 0);
List.Size = UDim2.new(0, 136, 0, 60);

local Txt = _New_("TextLabel", List);
Txt.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
Txt.BackgroundTransparency = 1;
Txt.BorderColor3 = Color3.fromRGB(0, 0, 0);
Txt.BorderSizePixel = 0;
Txt.Name = "Txt";
Txt.Size = UDim2.new(0, 136, 0, 22);
Txt.Font = Enum.Font.Ubuntu;
Txt.FontFace = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
Txt.Text = "HideUI";
Txt.TextColor3 = Color3.fromRGB(157.0000058412552, 157.0000058412552, 157.0000058412552);
Txt.TextSize = 14;

local Bind = _New_("TextButton", List);
Bind.AutoButtonColor = false;
Bind.BackgroundColor3 = Color3.fromRGB(61.00000016391277, 61.00000016391277, 61.00000016391277);
Bind.BorderColor3 = Color3.fromRGB(70.00000342726707, 70.00000342726707, 70.00000342726707);
Bind.Name = "Bind";
Bind.Position = UDim2.new(0.10497194528579712, 0, 0.47471314668655396, 0);
Bind.Size = UDim2.new(0, 110, 0, 19);
Bind.ZIndex = 2;
Bind.Font = Enum.Font.Ubuntu;
Bind.FontFace = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
Bind.Text = "[E]";
Bind.TextColor3 = Color3.fromRGB(255, 255, 255);
	Bind.TextSize = 14;

--Okay Btn

local K = _New_("TextButton", Main);
K.AutoButtonColor = false;
K.BackgroundColor3 = Color3.fromRGB(30.00000011175871, 30.00000011175871, 30.00000011175871);
K.BorderColor3 = Color3.fromRGB(70.00000342726707, 70.00000342726707, 70.00000342726707);
K.Name = "K";
K.Position = UDim2.new(0.0645642951130867, 0, 0.7585486769676208, 0);
K.Size = UDim2.new(0, 135, 0, 19);
K.ZIndex = 2;
K.Font = Enum.Font.Ubuntu;
K.FontFace = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
K.Text = "Okay";
K.TextColor3 = Color3.fromRGB(255, 255, 255);
K.TextSize = 14;

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

