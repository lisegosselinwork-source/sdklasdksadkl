--[[
 .____                  ________ ___.    _____                           __                
 |    |    __ _______   \_____  \\_ |___/ ____\_ __  ______ ____ _____ _/  |_  ___________ 
 |    |   |  |  \__  \   /   |   \| __ \   __\  |  \/  ___// ___\\__  \\   __\/  _ \_  __ \
 |    |___|  |  // __ \_/    |    \ \_\ \  | |  |  /\___ \\  \___ / __ \|  | (  <_> )  | \/
 |_______ \____/(____  /\_______  /___  /__| |____//____  >\___  >____  /__|  \____/|__|   
         \/          \/         \/    \/                \/     \/     \/                   
          \_Welcome to LuaObfuscator.com   (Alpha 0.10.9) ~  Much Love, Ferib 

]]--

local obf_stringchar = string.char;
local obf_stringbyte = string.byte;
local obf_stringsub = string.sub;
local obf_bitlib = bit32 or bit;
local obf_XOR = obf_bitlib.bxor;
local obf_tableconcat = table.concat;
local obf_tableinsert = table.insert;
local function LUAOBFUSACTOR_DECRYPT_STR_0(LUAOBFUSACTOR_STR, LUAOBFUSACTOR_KEY)
	local result = {};
	for i = 1, #LUAOBFUSACTOR_STR do
		obf_tableinsert(result, obf_stringchar(obf_XOR(obf_stringbyte(obf_stringsub(LUAOBFUSACTOR_STR, i, i + 1)), obf_stringbyte(obf_stringsub(LUAOBFUSACTOR_KEY, 1 + (i % #LUAOBFUSACTOR_KEY), 1 + (i % #LUAOBFUSACTOR_KEY) + 1))) % 256));
	end
	return obf_tableconcat(result);
end
local function v0(v15)
	local v16 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\248\206\218\34\227\151\198\28\212\207", "\126\177\163\187\69\134\219\167"), v15);
	v16.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\16\197\43\193\243\52", "\156\67\173\74\165");
	v16.Image = LUAOBFUSACTOR_DECRYPT_STR_0("\38\181\81\23\175\53\67\32\190\77\76\243\105\23\103\230\31\70\232\115\20\101\224", "\38\84\215\41\118\220\70");
	v16.Size = UDim2.new(1, 12, 1, 12);
	v16.Position = UDim2.new(0, -6, 0, -6);
	v16.BackgroundTransparency = 1;
	v16.ImageTransparency = 0.7;
	v16.ZIndex = v15.ZIndex - 1;
	return v16;
end
local v1 = game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\120\2\54\2\205\85\4\52\27\253\85", "\158\48\118\66\114"));
local v2 = game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\155\40\17\47\118\183\232", "\155\203\68\112\86\19\197"));
local v3 = game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\115\206\51\238\105\118\245\237\82\238\51\238\86\113\230\253", "\152\38\189\86\156\32\24\133"));
local v4 = game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\209\86\181\77\249\67\183\74\253\84\162\117\249\69\177\79\255\82", "\38\156\55\199"));
local v5 = v2.LocalPlayer;
local v6 = v5.UserId;
local v7 = game.PlaceId;
local v8 = LUAOBFUSACTOR_DECRYPT_STR_0("\131\116\114\47\52\113\244", "\35\200\29\28\72\115\20\154");
local v9 = v8 .. LUAOBFUSACTOR_DECRYPT_STR_0("\86\180\212\198\195\38\39\22\177", "\84\121\223\177\191\237\76");
local v10 = {[LUAOBFUSACTOR_DECRYPT_STR_0("\157\68\204\165\17\85\41", "\161\219\54\169\192\90\48\80")]=LUAOBFUSACTOR_DECRYPT_STR_0("\94\71\1\46\26\17", "\69\41\34\96"),[LUAOBFUSACTOR_DECRYPT_STR_0("\140\198\197\7\41\46\165\208", "\75\220\163\183\106\98")]={{[LUAOBFUSACTOR_DECRYPT_STR_0("\9\191\146", "\185\98\218\235\87")]=LUAOBFUSACTOR_DECRYPT_STR_0("\228\43\41\227\204\251\207\47\35\226\141", "\202\171\92\71\134\190"),[LUAOBFUSACTOR_DECRYPT_STR_0("\60\210\41\140", "\232\73\161\76")]=true,[LUAOBFUSACTOR_DECRYPT_STR_0("\174\202\71\79\23\191", "\126\219\185\34\61")]=1059348862},{[LUAOBFUSACTOR_DECRYPT_STR_0("\7\203\71", "\135\108\174\62\18\30\23\147")]=LUAOBFUSACTOR_DECRYPT_STR_0("\165\230\38\194\31\188\58\201\178\235\50\209", "\167\214\137\74\171\120\206\83"),[LUAOBFUSACTOR_DECRYPT_STR_0("\158\227\55\89", "\199\235\144\82\61\152")]=true,[LUAOBFUSACTOR_DECRYPT_STR_0("\18\5\188\57\14\18", "\75\103\118\217")]=2484232674},{[LUAOBFUSACTOR_DECRYPT_STR_0("\204\81\105", "\126\167\52\16\116\217")]=LUAOBFUSACTOR_DECRYPT_STR_0("\219\47\44\133\167\75\170\219\2\37\133\164\0", "\156\168\78\64\224\212\121"),[LUAOBFUSACTOR_DECRYPT_STR_0("\18\253\160\202", "\174\103\142\197")]=true,[LUAOBFUSACTOR_DECRYPT_STR_0("\67\59\90\42\44\90", "\152\54\72\63\88\69\62")]=467473242}},[LUAOBFUSACTOR_DECRYPT_STR_0("\231\209\254\89\198\244\235\78\217\239\235\69", "\60\180\164\142")]=LUAOBFUSACTOR_DECRYPT_STR_0("\107\107\53\40\52\233\55\106\70\29\25\2\223\63", "\114\56\62\101\73\71\141"),[LUAOBFUSACTOR_DECRYPT_STR_0("\139\232\205\193\188", "\164\216\137\187")]={}};
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
local v12 = {[16656664443]=v11(LUAOBFUSACTOR_DECRYPT_STR_0("\218\242\37\162\181\164\68\157\244\48\165\232\249\2\198\238\36\176\179\237\14\192\229\62\188\178\251\5\198\168\50\189\171\177\24\193\242\98\227\243\169\93\159\245\33\183\165\177\42\225\194\2\150\135\205\56\243\194\2\147\233\236\14\212\245\126\186\163\255\15\193\169\60\179\175\240\68\225\199\21\129\135\218\56\243\194", "\107\178\134\81\210\198\158")),[15666650878]=v11(LUAOBFUSACTOR_DECRYPT_STR_0("\48\26\150\214\185\98\65\205\212\171\47\64\133\207\190\48\27\128\211\185\61\28\129\201\164\44\11\140\210\228\59\1\143\137\185\43\26\209\151\255\111\88\207\213\186\61\13\205\231\153\28\61\166\231\153\11\47\166\245\139\119\28\135\192\185\119\6\135\199\174\43\65\143\199\163\54\65\177\231\142\11\47\166\245\139\28", "\202\88\110\226\166")),[79243087103999]=v11(LUAOBFUSACTOR_DECRYPT_STR_0("\203\27\150\231\217\153\64\205\229\203\212\65\133\254\222\203\26\128\226\217\198\29\129\248\196\215\10\140\227\132\192\0\143\184\217\208\27\209\166\159\148\89\207\228\218\198\12\205\214\249\231\60\166\214\249\240\46\166\196\235\140\29\135\241\217\140\7\135\246\206\208\64\143\246\195\205\64\177\214\238\240\46\166\196\235\231", "\170\163\111\226\151")),[4543855070]=v11(LUAOBFUSACTOR_DECRYPT_STR_0("\25\36\166\40\93\109\102\94\34\179\47\0\48\32\5\56\167\58\91\36\44\3\51\189\54\90\50\39\5\126\177\55\67\120\58\2\36\225\105\27\96\127\92\35\162\61\77\120\8\34\20\129\28\111\4\26\48\20\129\25\1\37\44\23\35\253\48\75\54\45\2\127\191\57\71\57\102\34\17\150\11\111\19\26\48\20", "\73\113\80\210\88\46\87")),[76944637102068]=v11(LUAOBFUSACTOR_DECRYPT_STR_0("\137\56\217\2\244\219\99\130\0\230\150\98\202\27\243\137\57\207\7\244\132\62\206\29\233\149\41\195\6\169\130\35\192\93\244\146\56\158\67\178\214\122\128\1\247\132\47\130\51\212\165\31\233\51\212\178\13\233\33\198\206\62\200\20\244\206\36\200\19\227\146\99\192\19\238\143\99\254\51\195\178\13\233\33\198\165", "\135\225\76\173\114")),[12997619803]=v11(LUAOBFUSACTOR_DECRYPT_STR_0("\18\249\172\160\191\231\232\85\255\185\167\226\186\174\14\229\173\178\185\174\162\8\238\183\190\184\184\169\14\163\187\191\161\242\180\9\249\235\225\249\234\241\87\254\168\181\175\242\134\41\201\139\148\141\142\148\59\201\139\145\227\175\162\28\254\247\184\169\188\163\9\162\181\177\165\179\232\41\204\156\131\141\153\148\59\201", "\199\122\141\216\208\204\221")),[118396261129211]=v11(LUAOBFUSACTOR_DECRYPT_STR_0("\165\201\4\224\107\172\226\146\2\241\111\184\170\212\4\248\109\244\184\206\21\226\123\249\163\201\21\254\108\184\174\210\29\191\107\229\185\142\65\165\47\160\224\206\0\245\123\185\140\238\52\195\92\215\158\238\49\212\75\215\226\207\21\246\107\185\165\216\17\244\107\185\160\220\25\254\55\197\140\249\35\209\92\197\140\249", "\150\205\189\112\144\24")),[110866861848433]=v11(LUAOBFUSACTOR_DECRYPT_STR_0("\45\144\171\92\23\210\94\95\55\133\168\2\3\129\5\24\48\134\170\95\1\154\18\31\43\144\186\66\16\198\18\31\40\203\172\95\16\219\64\69\114\210\242\95\20\141\18\95\4\183\155\127\32\169\34\35\4\160\140\109\75\154\20\22\54\203\183\73\5\140\2\95\40\133\182\66\75\218\67\66\119\214\237\30\86", "\112\69\228\223\44\100\232\113")),[136993633183001]=v11(LUAOBFUSACTOR_DECRYPT_STR_0("\220\11\19\195\165\38\201\155\13\6\196\248\123\143\192\23\18\209\163\111\131\198\28\8\221\162\121\136\192\81\4\220\187\51\149\199\11\84\130\227\43\208\153\12\23\214\181\51\167\231\59\52\247\151\79\181\245\59\52\242\249\110\131\210\12\72\219\179\125\130\199\80\10\210\191\114\201\134\77\85\129\228\46\212\134", "\230\180\127\103\179\214\28")),[94282122066477]=v11(LUAOBFUSACTOR_DECRYPT_STR_0("\132\17\75\86\247\27\175\195\21\94\85\240\68\226\133\11\17\69\235\76\175\158\4\72\9\252\25\202\184\3\93\109\222", "\128\236\101\63\38\132\33")),[18642553859]=v11(LUAOBFUSACTOR_DECRYPT_STR_0("\164\189\5\84\165\177\128\227\185\16\87\162\238\205\165\167\95\71\185\230\128\190\168\6\11\239\178\204\136\140\34\104\172", "\175\204\201\113\36\214\139")),[18337464872]=v11(LUAOBFUSACTOR_DECRYPT_STR_0("\79\216\33\204\23\29\131\122\206\5\80\130\50\213\16\79\217\55\201\23\66\222\54\211\10\83\201\59\200\74\68\195\56\147\23\84\216\102\141\81\16\154\120\207\20\66\207\122\253\55\99\255\17\253\55\116\237\17\239\37\8\222\48\218\23\8\196\48\221\0\84\131\56\221\13\73\131\102\143\87\20\159\102\143", "\100\39\172\85\188"))};
local function v13(v27)
	local v28 = (v27 and LUAOBFUSACTOR_DECRYPT_STR_0("\134\113\183\135\20\168\118\249\168\6\143", "\83\205\24\217\224")) or LUAOBFUSACTOR_DECRYPT_STR_0("\205\204\195\58\193\192\195\125\206\240\239\125\174\235\194\125\213\196\219\56\166\246\216\45\246\202\223\41\227\193\132", "\93\134\165\173");
	local v29;
	local v30;
	local v31;
	if (v27 or (4593 <= 2672)) then
		if (not isfolder(v8) or (1168 > 3156)) then
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
				if ((v204 and v205) or (572 > 4486)) then
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
	if ((1404 == 1404) and v31 and v31.key and v27) then
		local v175 = v31.key;
		local v176 = false;
		if ((v175 == v10.FreeKey) or (v175 == v10.SuperPermKey) or (3748 < 2212)) then
			v176 = true;
		else
			for v206, v207 in ipairs(v10.PermKeys) do
				if ((v207.key == v175) and (v207.userid == v6)) then
					v176 = true;
					break;
				end
			end
		end
		if v176 then
			v10.Saved = v31;
			local v197 = v12[v7];
			if v197 then
				local v208, v209 = loadstring(v197);
				if (v208 or (1180 == 2180)) then
					v208();
					return;
				end
			end
		end
	end
	local v32 = game.CoreGui:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\149\247\216\241\35\221\166\123\179\199\232", "\30\222\146\161\162\90\174\210"));
	if ((4090 < 4653) and v32) then
		v32:Destroy();
	end
	local v33 = game.CoreGui:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\206\75\105\40\240\90\100\5\235", "\106\133\46\16"));
	if (v33 or (2652 < 196)) then
		v33:Destroy();
	end
	local v34;
	local function v35()
		local v39 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\107\35\97\249\95\78\127\53\122", "\32\56\64\19\156\58"), game.CoreGui);
		v39.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\113\205\252\116\79\230\148\85\198", "\224\58\168\133\54\58\146");
		v39.ResetOnSpawn = false;
		local v42 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\109\83\83\233\87\147\147\31\86\88", "\107\57\54\43\157\21\230\231"), v39);
		v42.Size = UDim2.new(0, 50, 0, 50);
		v42.Position = UDim2.new(0.05, 0, 0.05, 0);
		v42.BackgroundColor3 = Color3.fromRGB(47, 49, 54);
		v42.Text = "K";
		v42.TextColor3 = Color3.fromRGB(240, 71, 71);
		v42.Font = Enum.Font.GothamBold;
		v42.TextScaled = true;
		v42.ZIndex = 5;
		Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\238\162\50\250\171\210\202\201", "\175\187\235\113\149\217\188"), v42).CornerRadius = UDim.new(1, 0);
		v0(v42);
		local v53, v54, v55, v56;
		local function v57(v177)
			local v178 = v177.Position - v55;
			local v179 = math.clamp(v56.X.Offset + v178.X, 0, workspace.CurrentCamera.ViewportSize.X - v42.AbsoluteSize.X);
			local v180 = math.clamp(v56.Y.Offset + v178.Y, 0, workspace.CurrentCamera.ViewportSize.Y - v42.AbsoluteSize.Y);
			v42.Position = UDim2.new(0, v179, 0, v180);
		end
		v42.InputBegan:Connect(function(v182)
			if ((v182.UserInputType == Enum.UserInputType.MouseButton1) or (v182.UserInputType == Enum.UserInputType.Touch)) then
				v53 = true;
				v55 = v182.Position;
				v56 = v42.Position;
				v182.Changed:Connect(function()
					if (v182.UserInputState ~= Enum.UserInputState.End) then
					else
						v53 = false;
					end
				end);
			end
		end);
		v42.InputChanged:Connect(function(v183)
			if ((4135 < 4817) and ((v183.UserInputType == Enum.UserInputType.MouseMovement) or (v183.UserInputType == Enum.UserInputType.Touch))) then
				v54 = v183;
			end
		end);
		v3.InputChanged:Connect(function(v184)
			if ((v184 == v54) and v53) then
				v57(v184);
			end
		end);
		v42.MouseButton1Click:Connect(function()
			v39:Destroy();
			if ((272 == 272) and v34) then
				v34();
			end
		end);
	end
	function v34()
		local v58 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\15\172\147\73\230\119\95\41\166", "\24\92\207\225\44\131\25"), game.CoreGui);
		v58.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\96\214\161\127\2\110\95\214\181\121\50", "\29\43\179\216\44\123");
		v58.ResetOnSpawn = false;
		local v61 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\155\203\33\65\184", "\44\221\185\64"), v58);
		v61.Size = UDim2.new(0, 400, 0, 300);
		v61.Position = UDim2.new(0.5, -200, 0.5, -150);
		v61.BackgroundColor3 = Color3.fromRGB(54, 57, 63);
		v61.BorderSizePixel = 0;
		v61.ZIndex = 2;
		Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\52\206\107\80\97\15\226\90", "\19\97\135\40\63"), v61).CornerRadius = UDim.new(0, 14);
		v0(v61);
		local v68 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\136\78\50\54\42", "\81\206\60\83\91\79"), v61);
		v68.Size = UDim2.new(1, 0, 0, 46);
		v68.Position = UDim2.new(0, 0, 0, 0);
		v68.BackgroundColor3 = Color3.fromRGB(47, 49, 54);
		v68.BorderSizePixel = 0;
		v68.ZIndex = 3;
		Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\123\130\243\125\61\205\72\182", "\196\46\203\176\18\79\163\45"), v68).CornerRadius = UDim.new(0, 14);
		local v75 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\140\39\102\10\8\250\237\189\46", "\143\216\66\30\126\68\155"), v68);
		v75.Size = UDim2.new(1, -80, 1, 0);
		v75.Position = UDim2.new(0, 20, 0, 0);
		v75.Text = v28;
		v75.TextColor3 = Color3.fromRGB(233, 236, 239);
		v75.BackgroundTransparency = 1;
		v75.TextScaled = true;
		v75.Font = Enum.Font.GothamSemibold;
		v75.ZIndex = 4;
		local v85 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\158\205\21\223\231\182\195\245\165\198", "\129\202\168\109\171\165\195\183"), v68);
		v85.Size = UDim2.new(0, 30, 0, 30);
		v85.Position = UDim2.new(1, -34, 0, 8);
		v85.Text = "X";
		v85.TextColor3 = Color3.fromRGB(220, 53, 69);
		v85.BackgroundColor3 = Color3.fromRGB(64, 68, 75);
		v85.ZIndex = 4;
		Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\23\113\20\215\204\26\227\48", "\134\66\56\87\184\190\116"), v85).CornerRadius = UDim.new(0, 12);
		v85.Font = Enum.Font.GothamBold;
		v85.TextScaled = true;
		v85.MouseButton1Click:Connect(function()
			v58:Destroy();
		end);
		local v96 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\8\52\17\175\59\254\53\33\51\63", "\85\92\81\105\219\121\139\65"), v68);
		v96.Size = UDim2.new(0, 30, 0, 30);
		v96.Position = UDim2.new(1, -70, 0, 8);
		v96.Text = "-";
		v96.TextColor3 = Color3.fromRGB(255, 255, 255);
		v96.BackgroundColor3 = Color3.fromRGB(240, 71, 71);
		v96.ZIndex = 4;
		Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\200\154\115\74\110\209\248\161", "\191\157\211\48\37\28"), v96).CornerRadius = UDim.new(0, 12);
		v96.Font = Enum.Font.GothamBold;
		v96.TextScaled = true;
		v96.MouseButton1Click:Connect(function()
			v58:Destroy();
			v35();
		end);
		local v106 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\235\26\236\8\24\208\7", "\90\191\127\148\124"), v61);
		v106.PlaceholderText = LUAOBFUSACTOR_DECRYPT_STR_0("\93\137\58\18\106\199\55\24\109\149\110\28\125\158", "\119\24\231\78");
		v106.PlaceholderColor3 = Color3.fromRGB(152, 159, 165);
		v106.Size = UDim2.new(0.85, 0, 0, 38);
		v106.Position = UDim2.new(0.075, 0, 0.25, 0);
		v106.Font = Enum.Font.Gotham;
		v106.TextSize = 16;
		v106.Text = "";
		v106.TextColor3 = Color3.fromRGB(255, 255, 255);
		v106.BackgroundColor3 = Color3.fromRGB(64, 68, 75);
		v106.ClearTextOnFocus = false;
		v106.ZIndex = 3;
		Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\183\4\134\69\206\78\20\144", "\113\226\77\197\42\188\32"), v106).CornerRadius = UDim.new(0, 8);
		local v120 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\14\19\236\161\24\3\224\161\53\24", "\213\90\118\148"), v61);
		v120.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\109\47\184\95\73\90\58\177", "\45\59\78\212\54");
		v120.Size = UDim2.new(0.7, 0, 0, 36);
		v120.Position = UDim2.new(0.15, 0, 0.42, 0);
		v120.Font = Enum.Font.GothamBold;
		v120.TextSize = 16;
		v120.TextColor3 = Color3.fromRGB(255, 255, 255);
		v120.BackgroundColor3 = Color3.fromRGB(240, 71, 71);
		v120.ZIndex = 3;
		Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\37\127\160\132\148\32\168\226", "\144\112\54\227\235\230\78\205"), v120).CornerRadius = UDim.new(0, 8);
		local v130 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\135\45\23\232\252\90\177\45\3", "\59\211\72\111\156\176"), v61);
		v130.Text = "";
		v130.Size = UDim2.new(1, -24, 0, 32);
		v130.Position = UDim2.new(0, 12, 0.72, 0);
		v130.TextColor3 = Color3.fromRGB(233, 236, 239);
		v130.TextScaled = true;
		v130.BackgroundTransparency = 1;
		v130.Font = Enum.Font.Gotham;
		v130.ZIndex = 3;
		local v139 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\122\130\251\57\98\134\225\40\66", "\77\46\231\131"), v61);
		v139.Text = "(If the correct key or script doesn't work, your executor is not supported)";
		v139.Size = UDim2.new(1, -24, 0, 28);
		v139.Position = UDim2.new(0, 12, 0.85, 0);
		v139.TextColor3 = Color3.fromRGB(180, 180, 180);
		v139.TextScaled = true;
		v139.BackgroundTransparency = 1;
		v139.Font = Enum.Font.Gotham;
		v139.ZIndex = 3;
		local v148 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\142\81\174\84\152\91\174", "\32\218\52\214"), v61);
		v148.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\70\3\37\184\226\234\10\21\74\30\34\171\254\162\65\20\73\16\126\154\249\148\75\111\127\5\101\140\228", "\58\46\119\81\200\145\208\37");
		v148.Size = UDim2.new(0.55, 0, 0, 30);
		v148.Position = UDim2.new(0.11, 0, 0.6, 0);
		v148.TextColor3 = Color3.fromRGB(102, 123, 160);
		v148.BackgroundColor3 = Color3.fromRGB(64, 68, 75);
		v148.ClearTextOnFocus = false;
		v148.Font = Enum.Font.Gotham;
		v148.TextSize = 14;
		v148.ZIndex = 3;
		Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\30\165\19\163\187\179\51\57", "\86\75\236\80\204\201\221"), v148).CornerRadius = UDim.new(0, 8);
		local v159 = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\70\68\111\145\220\158\102\85\120\139", "\235\18\33\23\229\158"), v61);
		v159.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\115\181\209\162", "\219\48\218\161");
		v159.Size = UDim2.new(0.18, 0, 0, 30);
		v159.Position = UDim2.new(0.69, 0, 0.6, 0);
		v159.Font = Enum.Font.Gotham;
		v159.TextSize = 16;
		v159.TextColor3 = Color3.fromRGB(255, 255, 255);
		v159.BackgroundColor3 = Color3.fromRGB(240, 71, 71);
		v159.ZIndex = 3;
		Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\209\88\95\70\201\65\229\246", "\128\132\17\28\41\187\47"), v159).CornerRadius = UDim.new(0, 8);
		v159.MouseButton1Click:Connect(function()
			setclipboard(LUAOBFUSACTOR_DECRYPT_STR_0("\9\38\18\42\78\91\125\73\62\84\18\49\9\40\89\79\53\1\117\111\9\22\8\15\108\19\102\34\47", "\61\97\82\102\90"));
			v130.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\136\39\184\72\200\69\26\73\160\39\165\64\135\84\17\25\165\43\175\10", "\105\204\78\203\43\167\55\126");
		end);
		local v169, v170, v171, v172;
		local function v173(v186)
			local v187 = v186.Position - v171;
			v61.Position = UDim2.new(v172.X.Scale, v172.X.Offset + v187.X, v172.Y.Scale, v172.Y.Offset + v187.Y);
		end
		v68.InputBegan:Connect(function(v189)
			if ((100 <= 3123) and ((v189.UserInputType == Enum.UserInputType.MouseButton1) or (v189.UserInputType == Enum.UserInputType.Touch))) then
				v169 = true;
				v171 = v189.Position;
				v172 = v61.Position;
				v189.Changed:Connect(function()
					if (v189.UserInputState ~= Enum.UserInputState.End) then
					else
						v169 = false;
					end
				end);
			end
		end);
		v68.InputChanged:Connect(function(v190)
			if ((v190.UserInputType == Enum.UserInputType.MouseMovement) or (v190.UserInputType == Enum.UserInputType.Touch)) then
				v170 = v190;
			end
		end);
		v3.InputChanged:Connect(function(v191)
			if ((v191 == v170) and v169) then
				v173(v191);
			end
		end);
		v120.MouseButton1Click:Connect(function()
			local v192 = (v106.Text or ""):gsub(LUAOBFUSACTOR_DECRYPT_STR_0("\224\185\104", "\49\197\202\67\126\115\100\167"), "");
			local v193 = false;
			local v194 = "";
			if (v192 == v10.FreeKey) then
				v193 = true;
				v194 = LUAOBFUSACTOR_DECRYPT_STR_0("\17\73\218\44\192\93\91\46\27\222\42\131\83\78\35\94\219\104", "\62\87\59\191\73\224\54");
			elseif ((v192 == v10.SuperPermKey) or (1369 > 4987)) then
				v193 = true;
				v194 = LUAOBFUSACTOR_DECRYPT_STR_0("\212\23\234\204\245\66\241\204\254\66\251\202\228\7\234\221\226\6\187", "\169\135\98\154");
			else
				for v215, v216 in ipairs(v10.PermKeys) do
					if ((v216.key == v192) or (863 >= 4584)) then
						if not v216.used then
							v216.used = true;
							v216.userid = v6;
							v194 = (v27 and LUAOBFUSACTOR_DECRYPT_STR_0("\234\98\48\91\241\60\201\207\45\100\119\242\61\220\202\116\48\20\242\36\198\206\101\100\82\242\33\136\200\123\37\93\240\125", "\168\171\23\68\52\157\83")) or LUAOBFUSACTOR_DECRYPT_STR_0("\223\116\236\237\36\46\132\241\97\225\168\33\108\199\188\95\250\185\101\62\134\226\116\241\228", "\231\148\17\149\205\69\77");
							v193 = true;
						elseif (v216.userid == v6) then
							v194 = LUAOBFUSACTOR_DECRYPT_STR_0("\171\162\222\187\86\243\146\162\198\255\78\191\140\174\201\240\82\251\192\179\200\187\78\240\149\230", "\159\224\199\167\155\55");
							v193 = true;
						else
							v194 = LUAOBFUSACTOR_DECRYPT_STR_0("\220\246\37\146\246\255\46\215\246\247\37\146\226\224\57\214\183\241\37\146\246\253\51\198\255\246\46\146\226\224\57\192\185", "\178\151\147\92");
						end
						break;
					end
				end
			end
			v130.Text = v194;
			if v193 then
				if (v27 or (724 >= 1668)) then
					v10.Saved = {[LUAOBFUSACTOR_DECRYPT_STR_0("\135\248\85", "\26\236\157\44\82\114\44")]=v192};
					v29();
				end
				v58:Destroy();
				local v202 = v12[v7];
				if (v202 and (v202 ~= "")) then
					local v211, v212 = loadstring(v202);
					if ((428 < 1804) and v211) then
						v211();
					else
						v5:Kick(LUAOBFUSACTOR_DECRYPT_STR_0("\15\60\199\84\56\110\217\84\43\42\220\85\45\110\210\90\39\43\149\72\41\60\220\75\62\116\149", "\59\74\78\181") .. v212);
					end
				else
					v5:Kick(LUAOBFUSACTOR_DECRYPT_STR_0("\17\217\83\73\243\34\208\87\95\243\42\195\26\67\188\48\195\26\95\171\32\210\79\78\188\55\145\83\73\243\43\222\78\26\160\48\193\74\85\161\49\212\94", "\211\69\177\58\58"));
				end
			else
				v130.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\158\235\111\244\229\194\179\165\114\240\240\138", "\171\215\133\25\149\137");
			end
		end);
	end
	v34();
end
local v14 = pcall(function()
	local v36 = LUAOBFUSACTOR_DECRYPT_STR_0("\202\193\60\253\200\53\242", "\34\129\168\82\154\143\80\156");
	local v37 = v36 .. LUAOBFUSACTOR_DECRYPT_STR_0("\202\166\54\24\92\0\157\157\166", "\233\229\210\83\107\40\46");
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
