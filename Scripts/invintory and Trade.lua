local function getGUI()
    --[=[
        Made with ObjectToCode v1.2.0 by TechHog8984
        Report any bugs to the user above.
    ]=]
    local function _New_(a)local b=a[1];table.remove(a,1);local c=Instance.new(b);local d=a[1];if d then c.Parent=d;table.remove(a,1);end;for K,V in next,a do c[K]=V;end;return c;end;

    --objects

    local KnifeValueCalculator_0 = _New_{"Frame", nil,
	BackgroundColor3 = Color3.fromRGB(40.00000141561031, 40.00000141561031, 40.00000141561031),
		BorderColor3 = Color3.fromRGB(75,75,75),
	BorderSizePixel = 1,
	Name = "KnifeValueCalculator",
	Position = UDim2.new(0.4396211802959442, 0, 0.1764705926179886, 0),
	Size = UDim2.new(0, 264, 0, 167),
};

local Title = _New_{"TextLabel", KnifeValueCalculator_0,
	BackgroundColor3 = Color3.fromRGB(255, 255, 255),
	BackgroundTransparency = 1,
	BorderColor3 = Color3.fromRGB(27.000002190470695, 42.000001296401024, 53.000004440546036),
	BorderSizePixel = 0,
	Name = "Title",
	Position = UDim2.new(0.022727273404598236, 0, 0, 0),
	Size = UDim2.new(0.6742424368858337, 0, -0.10227272659540176, 40),
	Font = Enum.Font.Ubuntu,
	FontFace = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal),
	Text = "SWIFT.LOL INV/TRADE",
	TextColor3 = Color3.fromRGB(255, 255, 255),
	TextSize = 14,
	TextTransparency = 0.20000000298023224,
	TextXAlignment = Enum.TextXAlignment.Left,
};

local RefreshButton = _New_{"TextButton", KnifeValueCalculator_0,
	Active = false,
	BackgroundColor3 = Color3.fromRGB(77.00000301003456, 77.00000301003456, 77.00000301003456),
	BackgroundTransparency = 0,
		BorderColor3 = Color3.fromRGB(75,75,75),
	BorderSizePixel = 1,
	Name = "RefreshButton",
	Position = UDim2.new(0.3636363744735718, -65, -0.04545454680919647, 40),
	Selectable = false,
	Size = UDim2.new(0, 204, 0, 36),
	ZIndex = 2,
	Font = Enum.Font.Code,
	FontFace = Font.new("rbxasset://fonts/families/Inconsolata.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal),
	Text = "Refresh Values",
	TextColor3 = Color3.fromRGB(255, 255, 255),
	TextSize = 16,
	TextTransparency = 0.20000000298023224,
};

local Credits = _New_{"TextLabel", KnifeValueCalculator_0,
	BackgroundColor3 = Color3.fromRGB(255, 255, 255),
	BackgroundTransparency = 1,
	BorderColor3 = Color3.fromRGB(27.000002190470695, 42.000001296401024, 53.000004440546036),
	BorderSizePixel = 0,
	Name = "Credits",
	Position = UDim2.new(0, 6, 1, -25),
	Size = UDim2.new(1, -12, 0, 22),
	Font = Enum.Font.Ubuntu,
	FontFace = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal),
	Text = "Made For SWIFT.LOL",
	TextColor3 = Color3.fromRGB(255, 255, 255),
	TextSize = 11,
	TextTransparency = 0.20000000298023224,
	TextXAlignment = Enum.TextXAlignment.Left,
};

local CalculateButton = _New_{"TextButton", KnifeValueCalculator_0,
	Active = false,
	BackgroundColor3 = Color3.fromRGB(77.00000301003456, 77.00000301003456, 77.00000301003456),
	BackgroundTransparency = 0,
		BorderColor3 = Color3.fromRGB(75,75,75),
	BorderSizePixel = 1,
	Name = "CalculateButton",
	Position = UDim2.new(0.36399999260902405, -65, -0.08500000089406967, 87),
	Selectable = false,
	Size = UDim2.new(0, 204, 0, 36),
	ZIndex = 2,
	Font = Enum.Font.Code,
	FontFace = Font.new("rbxasset://fonts/families/Inconsolata.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal),
	Text = "Calculate",
	TextColor3 = Color3.fromRGB(255, 255, 255),
	TextSize = 16,
	TextTransparency = 0.20000000298023224,
};

local ValueLabel = _New_{"TextLabel", KnifeValueCalculator_0,
	BackgroundColor3 = Color3.fromRGB(79.00000289082527, 79.00000289082527, 79.00000289082527),
	BackgroundTransparency = 0,
		BorderColor3 = Color3.fromRGB(75,75,75),
	BorderSizePixel = 1,
	Name = "ValueLabel",
	Position = UDim2.new(0.39393940567970276, -73, -0.09659090638160706, 132),
	Size = UDim2.new(0, 204, 0, 24),
	ZIndex = 2,
	Font = Enum.Font.Code,
	FontFace = Font.new("rbxasset://fonts/families/Inconsolata.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal),
	Text = "Value: nil",
	TextColor3 = Color3.fromRGB(255, 255, 255),
	TextSize = 15,
	TextTransparency = 0.20000000298023224,
	TextWrapped = true,
};



local Color = _New_{"Frame", KnifeValueCalculator_0,
	BackgroundColor3 = Color3.fromRGB(110.00000104308128, 118.00000056624413, 250.00000029802322),
		BorderColor3 = Color3.fromRGB(75,75,75),
	BorderSizePixel = 1,
	Name = "Color",
	Size = UDim2.new(1, 0, 0, 1),
};

local Back = _New_{"Frame", KnifeValueCalculator_0,
	BackgroundColor3 = Color3.fromRGB(35.00000171363354, 35.00000171363354, 35.00000171363354),
	BorderColor3 = Color3.fromRGB(75,75,75),
	BorderSizePixel = 1,
	Name = "Back",
	Position = UDim2.new(0.022727273404598236, 0, 0.125, 0),
	Size = UDim2.new(0, 252, 0, 123),
};


    return KnifeValueCalculator_0;
end;

local UI = game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui.UI;

local Values;
local URL = "https://docs.google.com/spreadsheets/d/e/2PACX-1vTSEzyLExxmRJE-YgEkG82hCEzikPPU0dG-EMY3vy7pSYiCgFQofWXpXypyuRkejYlBVwwkOSdpitTI/pubhtml";
local Fetched = false;
local Fetching = false;
local function fetchValues()
    Fetched = false;
    Fetching = true;

    local Body = game:HttpGet(URL);

    Body = Body:sub(Body:find('<body class="docs%-gm">'), -1);

    local split = Body:split('<tr style="height: 20px">');
    table.remove(split, 1);

    Values = {};
    local namepattern = 'dir="ltr">([^<]+)</td>';
    for _, v in next, split do

        if v:find("CLICK ME") or v:find("N/A") then
            if v:find(namepattern) then

                local ltrs = {};
                v:gsub(namepattern, function(a)table.insert(ltrs, a)end);
                if #ltrs < 2 then
                    continue;
                end;
                local first = ltrs[1];
                if first == "NEW &gt;" then
                    continue;
                end;
                first = first:gsub("(%s+)", " ");
                first = first:gsub("&#39;", "'");
                if first:sub(-1,-1):match("%s") then
                    first = first:sub(1, -2);
                end;

                local second = ltrs[2]:gsub("%s", "");
                if not second:sub(1,1) == "\226" then
                    continue;
                end;

                local third = ltrs[3];
                if third:match("%a") and not third:match("Exotics") then
                    continue;
                end;
                third = third:gsub("%D", "");

                Values[first] = tonumber(third);
            end;
        end;
    end;

    Fetched = true;
    Fetching = false;
end;

local function calculateValue(inv)
    local Value = 0;

    for Knife, Amount in next, inv do
        local value = Values[Knife];
        if value then
            for _ = 1, Amount do
                Value += value;
            end;
        end;
    end;

    return Value;
end;

local function formatNumber(number)

    number = tostring(number);
    if #number < 4 then return number;end;

    local formatted = (number:reverse():gsub("%d%d%d", "%0,")):reverse();
    if formatted:sub(1,1) == "," then
        formatted = formatted:sub(2, -1);
    end;
    
    return formatted;

end;

local function fetchKnives(Parent)
    local inventory = {};
    local children = Parent:GetChildren();
    table.remove(children, 1); --get rid of UIGridLayout
    
    for _, Child in next, children do
        local Knife = Child.ItemName.Text:upper();
        local Amount = tonumber(Child.Num.Text:sub(2, -1)) or 1;

        inventory[Knife] = Amount;
    end;

    return inventory;
end;

local function handleUI(Frame, KnivesParent)
    local CalculateButton = Frame.CalculateButton;
    local ValueLabel = Frame.ValueLabel;
    local RefreshButton = Frame.RefreshButton;

    local RefreshDebounce = false;
    local function refresh()
        if RefreshDebounce then return;end;

        RefreshDebounce = true;
        RefreshButton.Text = "Refreshing...";
        if Fetching then
            repeat task.wait() until Fetched;
        else
            fetchValues();
        end;
        RefreshButton.Text = "Refresh Values";
        RefreshDebounce = false;
    end;

    local CalculateDebounce = false;
    CalculateButton.MouseButton1Click:Connect(function()
        if CalculateDebounce then return;end;

        if Fetched then
            ValueLabel.Text = "Value: " .. formatNumber(calculateValue(fetchKnives(KnivesParent)));
        else
            CalculateDebounce = true;
            CalculateButton.Text = "Waiting for Refresh...";
            if Fetching then
                repeat task.wait() until Fetched;
            else
                Fetch();
            end;
            CalculateButton.Text = "Calculate";
            CalculateDebounce = false;
        end;
    end);

    RefreshButton.MouseButton1Click:Connect(refresh);

    refresh();
end;

task.spawn(function() --Inventory
    local Inventory = UI.Inventory;
    local KnifeGrid = Inventory.KnifeInv.KnifeGrid;

    local Frame = getGUI();
    Frame.Position = UDim2.fromScale(1, 0);
    Frame.Parent = Inventory;

    handleUI(Frame, KnifeGrid);
end);

task.spawn(function() --Trade offers
    local TradeScreen = UI.TradeScreen;
    local ReceiveInput = TradeScreen.Frame.TradeInfo.OfferInput.Frame;

    local Frame = getGUI();
    Frame.Name = "Knife Value Calculator Offer";
    Frame.Title.Text = "Knife Value Calculator Offer";
	
    Frame.Position = UDim2.new(0.5, -(Frame.Size.X.Offset/2) - Frame.Size.X.Offset / 2, 0, 50);
    Frame.Parent = TradeScreen;

    handleUI(Frame, ReceiveInput);
end);

task.spawn(function() --Trade receiving
    local TradeScreen = UI.TradeScreen;
    local ReceiveInput = TradeScreen.Frame.TradeInfo.ReceiveInput.Frame;

    local Frame = getGUI();
    Frame.Name = "Knife Value Calculator Receive";
    Frame.Title.Text = "Knife Value Calculator Receive";
    Frame.Position = UDim2.new(0.5, -(Frame.Size.X.Offset/2) + Frame.Size.X.Offset / 2, 0, 50);
    Frame.Parent = TradeScreen;

    handleUI(Frame, ReceiveInput);
end);

task.spawn(function() --Trade Inspecting
    local InspectHold = UI.Trading.InspectHold;
    local KnifeGrid = InspectHold.KnifeGrid;

    local Frame = getGUI();
    Frame.Position = UDim2.fromScale(1, 0);
    Frame.Parent = InspectHold;

    handleUI(Frame, KnifeGrid);
end);
