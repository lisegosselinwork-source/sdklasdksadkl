--[[
 .____                  ________ ___.    _____                           __                
 |    |    __ _______   \_____  \\_ |___/ ____\_ __  ______ ____ _____ _/  |_  ___________ 
 |    |   |  |  \__  \   /   |   \| __ \   __\  |  \/  ___// ___\\__  \\   __\/  _ \_  __ \
 |    |___|  |  // __ \_/    |    \ \_\ \  | |  |  /\___ \\  \___ / __ \|  | (  <_> )  | \/
 |_______ \____/(____  /\_______  /___  /__| |____//____  >\___  >____  /__|  \____/|__|   
         \/          \/         \/    \/                \/     \/     \/                   
          \_Welcome to LuaObfuscator.com   (Alpha 0.10.9) ~  Much Love, Ferib 

]]--

local function v0(v15)
	local v16 = Instance.new("ImageLabel", v15);
	v16['Name'] = "Shadow";
	v16['Image'] = "rbxassetid://1316045217";
	v16['Size'] = UDim2.new(1, 12, 1, 12);
	v16['Position'] = UDim2.new(0, -6, 0, -6);
	v16['BackgroundTransparency'] = 1;
	v16['ImageTransparency'] = 0.7;
	v16['ZIndex'] = v15['ZIndex'] - 1;
	return v16;
end
local v1 = game:GetService("HttpService");
local v2 = game:GetService("Players");
local v3 = game:GetService("UserInputService");
local v4 = game:GetService("MarketplaceService");
local v5 = v2['LocalPlayer'];
local v6 = v5['UserId'];
local v7 = game['PlaceId'];
local v8 = "KingGen";
local v9 = v8 .. "/key.json";
local v10 = {FreeKey="IlikeAPPLE",PermKeys={{key="Owner1dsdd3",used=true,userid=1059348862},{key="soligrindbxz",used=true,userid=2484232674},{key="sales26sLeepy",used=true,userid=467473242}},SuperPermKey="SUPasdERxxPERM",Saved={}};
local function v11(v24)
	local v25, v26 = pcall(function()
		return game:HttpGet(v24, true);
	end);
	if (v25 and v26 and (v26 ~= "")) then
		return v26;
	else
		return nil;
	end
end
local v12 = {[16656664443]=v11("https://raw.githubusercontent.com/sst31576-spec/ASDSDASSADSA/refs/heads/main/SADSADSAD"),[15666650878]=v11("https://raw.githubusercontent.com/sst31576-spec/ASDSDASSADSA/refs/heads/main/SADSADSAD"),[79243087103999]=v11("https://raw.githubusercontent.com/sst31576-spec/ASDSDASSADSA/refs/heads/main/SADSADSAD"),[4543855070]=v11("https://raw.githubusercontent.com/sst31576-spec/ASDSDASSADSA/refs/heads/main/SADSADSAD"),[76944637102068]=v11("https://raw.githubusercontent.com/sst31576-spec/ASDSDASSADSA/refs/heads/main/SADSADSAD"),[12997619803]=v11("https://raw.githubusercontent.com/sst31576-spec/ASDSDASSADSA/refs/heads/main/SADSADSAD"),[118396261129211]=v11("https://raw.githubusercontent.com/sst31576-spec/ASDSDASSADSA/refs/heads/main/SADSADSAD"),[110866861848433]=v11("https://raw.githubusercontent.com/sst31576-spec/ASDSDASSADSA/refs/heads/main/22222222"),[136993633183001]=v11("https://raw.githubusercontent.com/sst31576-spec/ASDSDASSADSA/refs/heads/main/22222222"),[94282122066477]=v11("https://pastebin.com/raw/x8JTfbKZ"),[18642553859]=v11("https://pastebin.com/raw/99cDESLz"),[18337464872]=v11("https://raw.githubusercontent.com/sst31576-spec/ASDSDASSADSA/refs/heads/main/3333333")};
local function v13(v27)
	local v28 = (v27 and "KingGen HUB") or "KingGen HUB (No Save Supported)";
	local v29;
	local v30;
	local v31;
	if (v27 or (4593 <= 2672)) then
		if not isfolder(v8) then
			pcall(makefolder, v8);
		end
		function v29()
			pcall(function()
				writefile(v9, v1:JSONEncode(v10.Saved));
			end);
		end
		function v30()
			if isfile(v9) then
				local v204, v205 = pcall(readfile, v9);
				if (v204 and v205) then
					local v213, v214 = pcall(v1.JSONDecode, v1, v205);
					if (v213 and v214) then
						return v214;
					end
				end
			end
			return nil;
		end
		v31 = v30();
	else
		function v29()
		end
		function v30()
			return nil;
		end
		v31 = nil;
	end
	if ((v31 and v31['key'] and v27) or (1168 > 3156)) then
		local v175 = v31['key'];
		local v176 = false;
		if ((v175 == v10['FreeKey']) or (v175 == v10['SuperPermKey'])) then
			v176 = true;
		else
			for v206, v207 in ipairs(v10.PermKeys) do
				if ((v207['key'] == v175) and (v207['userid'] == v6)) then
					v176 = true;
					break;
				end
			end
		end
		if (v176 or (572 > 4486)) then
			v10['Saved'] = v31;
			local v197 = v12[v7];
			if v197 then
				local v208, v209 = loadstring(v197);
				if v208 then
					v208();
					return;
				end
			end
		end
	end
	local v32 = game['CoreGui']:FindFirstChild("KeySystemUI");
	if ((1404 == 1404) and v32) then
		v32:Destroy();
	end
	local v33 = game['CoreGui']:FindFirstChild("KeyButton");
	if (v33 or (3748 < 2212)) then
		v33:Destroy();
	end
	local v34;
	local function v35()
		local v39 = Instance.new("ScreenGui", game.CoreGui);
		v39['Name'] = "KeyButton";
		v39['ResetOnSpawn'] = false;
		local v42 = Instance.new("TextButton", v39);
		v42['Size'] = UDim2.new(0, 50, 0, 50);
		v42['Position'] = UDim2.new(0.05, 0, 0.05, 0);
		v42['BackgroundColor3'] = Color3.fromRGB(47, 49, 54);
		v42['Text'] = "K";
		v42['TextColor3'] = Color3.fromRGB(240, 71, 71);
		v42['Font'] = Enum['Font']['GothamBold'];
		v42['TextScaled'] = true;
		v42['ZIndex'] = 5;
		Instance.new("UICorner", v42)['CornerRadius'] = UDim.new(1, 0);
		v0(v42);
		local v53, v54, v55, v56;
		local function v57(v177)
			local v178 = v177['Position'] - v55;
			local v179 = math.clamp(v56['X']['Offset'] + v178['X'], 0, workspace['CurrentCamera']['ViewportSize']['X'] - v42['AbsoluteSize']['X']);
			local v180 = math.clamp(v56['Y']['Offset'] + v178['Y'], 0, workspace['CurrentCamera']['ViewportSize']['Y'] - v42['AbsoluteSize']['Y']);
			v42['Position'] = UDim2.new(0, v179, 0, v180);
		end
		v42['InputBegan']:Connect(function(v182)
			if ((v182['UserInputType'] == Enum['UserInputType']['MouseButton1']) or (v182['UserInputType'] == Enum['UserInputType']['Touch']) or (1180 == 2180)) then
				v53 = true;
				v55 = v182['Position'];
				v56 = v42['Position'];
				v182['Changed']:Connect(function()
					if (v182['UserInputState'] ~= Enum['UserInputState']['End']) then
					else
						v53 = false;
					end
				end);
			end
		end);
		v42['InputChanged']:Connect(function(v183)
			if ((v183['UserInputType'] == Enum['UserInputType']['MouseMovement']) or (v183['UserInputType'] == Enum['UserInputType']['Touch'])) then
				v54 = v183;
			end
		end);
		v3['InputChanged']:Connect(function(v184)
			if ((v184 == v54) and v53) then
				v57(v184);
			end
		end);
		v42['MouseButton1Click']:Connect(function()
			v39:Destroy();
			if ((4090 < 4653) and v34) then
				v34();
			end
		end);
	end
	function v34()
		local v58 = Instance.new("ScreenGui", game.CoreGui);
		v58['Name'] = "KeySystemUI";
		v58['ResetOnSpawn'] = false;
		local v61 = Instance.new("Frame", v58);
		v61['Size'] = UDim2.new(0, 400, 0, 300);
		v61['Position'] = UDim2.new(0.5, -200, 0.5, -150);
		v61['BackgroundColor3'] = Color3.fromRGB(54, 57, 63);
		v61['BorderSizePixel'] = 0;
		v61['ZIndex'] = 2;
		Instance.new("UICorner", v61)['CornerRadius'] = UDim.new(0, 14);
		v0(v61);
		local v68 = Instance.new("Frame", v61);
		v68['Size'] = UDim2.new(1, 0, 0, 46);
		v68['Position'] = UDim2.new(0, 0, 0, 0);
		v68['BackgroundColor3'] = Color3.fromRGB(47, 49, 54);
		v68['BorderSizePixel'] = 0;
		v68['ZIndex'] = 3;
		Instance.new("UICorner", v68)['CornerRadius'] = UDim.new(0, 14);
		local v75 = Instance.new("TextLabel", v68);
		v75['Size'] = UDim2.new(1, -80, 1, 0);
		v75['Position'] = UDim2.new(0, 20, 0, 0);
		v75['Text'] = v28;
		v75['TextColor3'] = Color3.fromRGB(233, 236, 239);
		v75['BackgroundTransparency'] = 1;
		v75['TextScaled'] = true;
		v75['Font'] = Enum['Font']['GothamSemibold'];
		v75['ZIndex'] = 4;
		local v85 = Instance.new("TextButton", v68);
		v85['Size'] = UDim2.new(0, 30, 0, 30);
		v85['Position'] = UDim2.new(1, -34, 0, 8);
		v85['Text'] = "X";
		v85['TextColor3'] = Color3.fromRGB(220, 53, 69);
		v85['BackgroundColor3'] = Color3.fromRGB(64, 68, 75);
		v85['ZIndex'] = 4;
		Instance.new("UICorner", v85)['CornerRadius'] = UDim.new(0, 12);
		v85['Font'] = Enum['Font']['GothamBold'];
		v85['TextScaled'] = true;
		v85['MouseButton1Click']:Connect(function()
			v58:Destroy();
		end);
		local v96 = Instance.new("TextButton", v68);
		v96['Size'] = UDim2.new(0, 30, 0, 30);
		v96['Position'] = UDim2.new(1, -70, 0, 8);
		v96['Text'] = "-";
		v96['TextColor3'] = Color3.fromRGB(255, 255, 255);
		v96['BackgroundColor3'] = Color3.fromRGB(240, 71, 71);
		v96['ZIndex'] = 4;
		Instance.new("UICorner", v96)['CornerRadius'] = UDim.new(0, 12);
		v96['Font'] = Enum['Font']['GothamBold'];
		v96['TextScaled'] = true;
		v96['MouseButton1Click']:Connect(function()
			v58:Destroy();
			v35();
		end);
		local v106 = Instance.new("TextBox", v61);
		v106['PlaceholderText'] = "Enter your key";
		v106['PlaceholderColor3'] = Color3.fromRGB(152, 159, 165);
		v106['Size'] = UDim2.new(0.85, 0, 0, 38);
		v106['Position'] = UDim2.new(0.075, 0, 0.25, 0);
		v106['Font'] = Enum['Font']['Gotham'];
		v106['TextSize'] = 16;
		v106['Text'] = "";
		v106['TextColor3'] = Color3.fromRGB(255, 255, 255);
		v106['BackgroundColor3'] = Color3.fromRGB(64, 68, 75);
		v106['ClearTextOnFocus'] = false;
		v106['ZIndex'] = 3;
		Instance.new("UICorner", v106)['CornerRadius'] = UDim.new(0, 8);
		local v120 = Instance.new("TextButton", v61);
		v120['Text'] = "Validate";
		v120['Size'] = UDim2.new(0.7, 0, 0, 36);
		v120['Position'] = UDim2.new(0.15, 0, 0.42, 0);
		v120['Font'] = Enum['Font']['GothamBold'];
		v120['TextSize'] = 16;
		v120['TextColor3'] = Color3.fromRGB(255, 255, 255);
		v120['BackgroundColor3'] = Color3.fromRGB(240, 71, 71);
		v120['ZIndex'] = 3;
		Instance.new("UICorner", v120)['CornerRadius'] = UDim.new(0, 8);
		local v130 = Instance.new("TextLabel", v61);
		v130['Text'] = "";
		v130['Size'] = UDim2.new(1, -24, 0, 32);
		v130['Position'] = UDim2.new(0, 12, 0.72, 0);
		v130['TextColor3'] = Color3.fromRGB(233, 236, 239);
		v130['TextScaled'] = true;
		v130['BackgroundTransparency'] = 1;
		v130['Font'] = Enum['Font']['Gotham'];
		v130['ZIndex'] = 3;
		local v139 = Instance.new("TextLabel", v61);
		v139['Text'] = "(If the correct key or script doesn't work, your executor is not supported)";
		v139['Size'] = UDim2.new(1, -24, 0, 28);
		v139['Position'] = UDim2.new(0, 12, 0.85, 0);
		v139['TextColor3'] = Color3.fromRGB(180, 180, 180);
		v139['TextScaled'] = true;
		v139['BackgroundTransparency'] = 1;
		v139['Font'] = Enum['Font']['Gotham'];
		v139['ZIndex'] = 3;
		local v148 = Instance.new("TextBox", v61);
		v148['Text'] = "https://discord.gg/RhDnUQr4Du";
		v148['Size'] = UDim2.new(0.55, 0, 0, 30);
		v148['Position'] = UDim2.new(0.11, 0, 0.6, 0);
		v148['TextColor3'] = Color3.fromRGB(102, 123, 160);
		v148['BackgroundColor3'] = Color3.fromRGB(64, 68, 75);
		v148['ClearTextOnFocus'] = false;
		v148['Font'] = Enum['Font']['Gotham'];
		v148['TextSize'] = 14;
		v148['ZIndex'] = 3;
		Instance.new("UICorner", v148)['CornerRadius'] = UDim.new(0, 8);
		local v159 = Instance.new("TextButton", v61);
		v159['Text'] = "Copy";
		v159['Size'] = UDim2.new(0.18, 0, 0, 30);
		v159['Position'] = UDim2.new(0.69, 0, 0.6, 0);
		v159['Font'] = Enum['Font']['Gotham'];
		v159['TextSize'] = 16;
		v159['TextColor3'] = Color3.fromRGB(255, 255, 255);
		v159['BackgroundColor3'] = Color3.fromRGB(240, 71, 71);
		v159['ZIndex'] = 3;
		Instance.new("UICorner", v159)['CornerRadius'] = UDim.new(0, 8);
		v159['MouseButton1Click']:Connect(function()
			setclipboard("https://discord.gg/RhDnUQr4Du");
			v130['Text'] = "Discord link copied!";
		end);
		local v169, v170, v171, v172;
		local function v173(v186)
			local v187 = v186['Position'] - v171;
			v61['Position'] = UDim2.new(v172['X'].Scale, v172['X']['Offset'] + v187['X'], v172['Y'].Scale, v172['Y']['Offset'] + v187['Y']);
		end
		v68['InputBegan']:Connect(function(v189)
			if ((v189['UserInputType'] == Enum['UserInputType']['MouseButton1']) or (v189['UserInputType'] == Enum['UserInputType']['Touch'])) then
				v169 = true;
				v171 = v189['Position'];
				v172 = v61['Position'];
				v189['Changed']:Connect(function()
					if (v189['UserInputState'] ~= Enum['UserInputState']['End']) then
					else
						v169 = false;
					end
				end);
			end
		end);
		v68['InputChanged']:Connect(function(v190)
			if ((v190['UserInputType'] == Enum['UserInputType']['MouseMovement']) or (v190['UserInputType'] == Enum['UserInputType']['Touch'])) then
				v170 = v190;
			end
		end);
		v3['InputChanged']:Connect(function(v191)
			if (((v191 == v170) and v169) or (2652 < 196)) then
				v173(v191);
			end
		end);
		v120['MouseButton1Click']:Connect(function()
			local v192 = (v106['Text'] or ""):gsub("%s+", "");
			local v193 = false;
			local v194 = "";
			if (v192 == v10['FreeKey']) then
				v193 = true;
				v194 = "Free key accepted!";
			elseif ((4135 < 4817) and (v192 == v10['SuperPermKey'])) then
				v193 = true;
				v194 = "Super key accepted!";
			else
				for v215, v216 in ipairs(v10.PermKeys) do
					if ((272 == 272) and (v216['key'] == v192)) then
						if ((100 <= 3123) and not v216['used']) then
							v216['used'] = true;
							v216['userid'] = v6;
							v194 = (v27 and "Autoload: Contact owner for claim.") or "Key accepted! (Not saved)";
							v193 = true;
						elseif ((v216['userid'] == v6) or (1369 > 4987)) then
							v194 = "Key already linked to you!";
							v193 = true;
						else
							v194 = "Key already used by another user.";
						end
						break;
					end
				end
			end
			v130['Text'] = v194;
			if (v193 or (863 >= 4584)) then
				if (v27 or (724 >= 1668)) then
					v10['Saved'] = {key=v192};
					v29();
				end
				v58:Destroy();
				local v202 = v12[v7];
				if (v202 and (v202 ~= "")) then
					local v211, v212 = loadstring(v202);
					if ((428 < 1804) and v211) then
						v211();
					else
						v5:Kick("Error loading game script: " .. v212);
					end
				else
					v5:Kick("This game or your executor is not supported");
				end
			else
				v130['Text'] = "Invalid key!";
			end
		end);
	end
	v34();
end
local v14 = pcall(function()
	local v36 = "KingGen";
	local v37 = v36 .. "/test.txt";
	local v38 = pcall(function()
		pcall(removefile, v37);
		if (not isfolder(v36) or (3325 > 4613)) then
			makefolder(v36);
		end
		writefile(v37, "1");
		local v174 = readfile(v37);
		pcall(removefile, v37);
		return (v174 == "1") and isfolder(v36);
	end);
	return v38;
end);
v13(v14);
