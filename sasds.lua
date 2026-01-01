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
local Players = game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\225\207\218\60\227\169\212", "\126\177\163\187\69\134\219\167"));
local Workspace = game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\20\194\56\206\239\51\204\41\192", "\156\67\173\74\165"));
local RunService = game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\6\162\71\37\185\52\80\61\180\76", "\38\84\215\41\118\220\70"));
local VirtualInputManager = game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\102\31\48\6\235\81\26\11\28\238\69\2\15\19\240\81\17\39\0", "\158\48\118\66\114"));
local UserInputService = game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\158\55\21\36\90\171\235\190\48\35\51\97\179\242\168\33", "\155\203\68\112\86\19\197"));
local TweenService = game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\114\202\51\249\78\75\224\234\80\212\53\249", "\152\38\189\86\156\32\24\133"));
local LocalPlayer = Players.LocalPlayer;
local Library = loadstring(game:HttpGet(LUAOBFUSACTOR_DECRYPT_STR_0("\244\67\179\86\239\13\232\9\238\86\176\8\251\94\179\78\233\85\178\85\249\69\164\73\242\67\162\72\232\25\164\73\241\24\166\69\255\88\178\72\232\68\163\71\253\68\166\9\233\94\171\79\254\69\166\84\229\81\168\84\247\94\169\65\251\82\169\9\238\82\161\85\179\95\162\71\248\68\232\75\253\94\169\9\254\86\180\67\233\94\233\74\233\86", "\38\156\55\199")))();
if not Library then
	return;
end
local Window = Library:Window({[LUAOBFUSACTOR_DECRYPT_STR_0("\139\114\114\46\26\115\212\66\165\120", "\35\200\29\28\72\115\20\154")]=LUAOBFUSACTOR_DECRYPT_STR_0("\21\176\222\203\152\60\122\19\172\222\209", "\84\121\223\177\191\237\76")});
local MainTab = Window:Tab(LUAOBFUSACTOR_DECRYPT_STR_0("\150\87\192\174", "\161\219\54\169\192\90\48\80"));
local CombatTab = Window:Tab(LUAOBFUSACTOR_DECRYPT_STR_0("\106\77\13\39\72\86", "\69\41\34\96"));
local PlayerTab = Window:Tab(LUAOBFUSACTOR_DECRYPT_STR_0("\140\207\214\19\7\57", "\75\220\163\183\106\98"));
local MiscTab = Window:Tab(LUAOBFUSACTOR_DECRYPT_STR_0("\47\179\152\52", "\185\98\218\235\87"));
local SettingsTab = Window:Tab(LUAOBFUSACTOR_DECRYPT_STR_0("\248\57\51\242\215\164\204\47", "\202\171\92\71\134\190"));
local CurrentTarget = nil;
local function IsVisible(targetPart)
	if (not LocalPlayer.Character or not LocalPlayer.Character:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\1\196\45\140", "\232\73\161\76"))) then
		return false;
	end
	local origin = LocalPlayer.Character.Head.Position;
	local destination = targetPart.Position;
	local direction = destination - origin;
	local raycastParams = RaycastParams.new();
	raycastParams.FilterDescendantsInstances = {LocalPlayer.Character};
	raycastParams.FilterType = Enum.RaycastFilterType.Exclude;
	local result = Workspace:Raycast(origin, direction, raycastParams);
	if result then
		if result.Instance:IsDescendantOf(targetPart.Parent) then
			return true;
		else
			return false;
		end
	end
	return true;
end
local function GetTargetPart(enemyModel)
	if enemyModel:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\152\204\64\88", "\126\219\185\34\61")) then
		return enemyModel.Cube;
	elseif enemyModel:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\36\219\83\115\112\120\250\227\62\193\81\102\78\118\225\243", "\135\108\174\62\18\30\23\147")) then
		return enemyModel.HumanoidRootPart;
	end
	return nil;
end
local function GetClosestVisibleEnemy()
	local closestDist = 9999;
	local closestEnemy = nil;
	local enemiesFolder = Workspace:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\147\231\47\198\17\171\32", "\167\214\137\74\171\120\206\83"));
	if not enemiesFolder then
		return nil;
	end
	for _, enemy in ipairs(enemiesFolder:GetChildren()) do
		local humanoid = enemy:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\163\229\63\92\246\168\130\244", "\199\235\144\82\61\152"));
		local root = GetTargetPart(enemy);
		if (humanoid and (humanoid.Health > 0) and root and LocalPlayer.Character and LocalPlayer.Character:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\47\3\180\42\9\25\176\47\53\25\182\63\55\23\171\63", "\75\103\118\217"))) then
			local dist = (LocalPlayer.Character.HumanoidRootPart.Position - root.Position).Magnitude;
			if IsVisible(root) then
				if (dist < closestDist) then
					closestDist = dist;
					closestEnemy = root;
				end
			end
		end
	end
	return closestEnemy;
end
local function GetClosestLoot()
	local closestDist = 9999;
	local closestLoot = nil;
	local lootFolder = Workspace:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\235\91\127\0\157\12\200\68", "\126\167\52\16\116\217"));
	if not lootFolder then
		return nil;
	end
	for _, item in ipairs(lootFolder:GetChildren()) do
		local part = (item:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\229\33\36\133\184", "\156\168\78\64\224\212\121")) and item.PrimaryPart) or item:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\47\251\168\207\9\225\172\202\53\225\170\218\55\239\183\218", "\174\103\142\197")) or item:FindFirstChildWhichIsA(LUAOBFUSACTOR_DECRYPT_STR_0("\116\41\76\61\21\95\234\66", "\152\54\72\63\88\69\62")) or item;
		if (part and part:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\246\197\253\89\228\197\252\72", "\60\180\164\142")) and LocalPlayer.Character and LocalPlayer.Character:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\112\75\8\40\41\226\27\92\108\10\38\51\221\19\74\74", "\114\56\62\101\73\71\141"))) then
			local dist = (LocalPlayer.Character.HumanoidRootPart.Position - part.Position).Magnitude;
			if (dist < closestDist) then
				closestDist = dist;
				closestLoot = part;
			end
		end
	end
	return closestLoot;
end
SettingsTab:Label({[LUAOBFUSACTOR_DECRYPT_STR_0("\140\236\195\208", "\164\216\137\187")]=LUAOBFUSACTOR_DECRYPT_STR_0("\230\227\61\183\182\241\25\198\166\18\189\168\248\2\213\243\35\179\178\247\4\220", "\107\178\134\81\210\198\158"),[LUAOBFUSACTOR_DECRYPT_STR_0("\25\2\139\193\164", "\202\88\110\226\166")]=Enum.TextXAlignment.Center});
SettingsTab:Dropdown({[LUAOBFUSACTOR_DECRYPT_STR_0("\237\14\143\242", "\170\163\111\226\151")]=LUAOBFUSACTOR_DECRYPT_STR_0("\37\0\242\28\71\37\44\18\36\187\55\64", "\73\113\80\210\88\46\87"),[LUAOBFUSACTOR_DECRYPT_STR_0("\167\32\204\21", "\135\225\76\173\114")]=LUAOBFUSACTOR_DECRYPT_STR_0("\46\253\156\185\190\184\164\14\228\183\190", "\199\122\141\216\208\204\221"),[LUAOBFUSACTOR_DECRYPT_STR_0("\129\212\3\228", "\150\205\189\112\144\24")]={LUAOBFUSACTOR_DECRYPT_STR_0("\7\129\183\69\10\140", "\112\69\228\223\44\100\232\113"),LUAOBFUSACTOR_DECRYPT_STR_0("\242\13\8\221\162", "\230\180\127\103\179\214\28"),LUAOBFUSACTOR_DECRYPT_STR_0("\173\7\80\80\225", "\128\236\101\63\38\132\33"),LUAOBFUSACTOR_DECRYPT_STR_0("\142\172\29\75\161", "\175\204\201\113\36\214\139")},[LUAOBFUSACTOR_DECRYPT_STR_0("\99\201\51\221\17\75\216", "\100\39\172\85\188")]=LUAOBFUSACTOR_DECRYPT_STR_0("\143\125\177\137\61\169", "\83\205\24\217\224"),[LUAOBFUSACTOR_DECRYPT_STR_0("\197\196\193\49\228\196\206\54", "\93\134\165\173")]=function(val)
end});
SettingsTab:Cycle({[LUAOBFUSACTOR_DECRYPT_STR_0("\144\243\204\199", "\30\222\146\161\162\90\174\210")]=LUAOBFUSACTOR_DECRYPT_STR_0("\209\126\48\37\245\90\121\5\235", "\106\133\46\16"),[LUAOBFUSACTOR_DECRYPT_STR_0("\126\44\114\251", "\32\56\64\19\156\58")]=LUAOBFUSACTOR_DECRYPT_STR_0("\110\216\202\70\78\251\143\84", "\224\58\168\133\54\58\146"),[LUAOBFUSACTOR_DECRYPT_STR_0("\117\95\88\233", "\107\57\54\43\157\21\230\231")]={LUAOBFUSACTOR_DECRYPT_STR_0("\239\142\29\240\169\211\221\207", "\175\187\235\113\149\217\188"),LUAOBFUSACTOR_DECRYPT_STR_0("\8\184\132\73\237\77\72", "\24\92\207\225\44\131\25")},[LUAOBFUSACTOR_DECRYPT_STR_0("\111\214\190\77\14\113\95", "\29\43\179\216\44\123")]=LUAOBFUSACTOR_DECRYPT_STR_0("\137\220\44\73\173\214\50\88", "\44\221\185\64"),[LUAOBFUSACTOR_DECRYPT_STR_0("\34\230\68\83\113\0\228\67", "\19\97\135\40\63")]=function(val)
end});
SettingsTab:Slider({[LUAOBFUSACTOR_DECRYPT_STR_0("\128\93\62\62", "\81\206\60\83\91\79")]=LUAOBFUSACTOR_DECRYPT_STR_0("\122\155\144\65\63\198\72\160", "\196\46\203\176\18\79\163\45"),[LUAOBFUSACTOR_DECRYPT_STR_0("\158\46\127\25", "\143\216\66\30\126\68\155")]=LUAOBFUSACTOR_DECRYPT_STR_0("\158\216\62\219\192\166\211", "\129\202\168\109\171\165\195\183"),[LUAOBFUSACTOR_DECRYPT_STR_0("\15\81\57", "\134\66\56\87\184\190\116")]=50,[LUAOBFUSACTOR_DECRYPT_STR_0("\17\48\17", "\85\92\81\105\219\121\139\65")]=500,[LUAOBFUSACTOR_DECRYPT_STR_0("\217\182\86\68\105\211\233", "\191\157\211\48\37\28")]=100,[LUAOBFUSACTOR_DECRYPT_STR_0("\252\30\248\16\56\222\28\255", "\90\191\127\148\124")]=function(val)
end});
SettingsTab:Slider({[LUAOBFUSACTOR_DECRYPT_STR_0("\86\134\35\18", "\119\24\231\78")]=LUAOBFUSACTOR_DECRYPT_STR_0("\182\29\229\110\213\83\5\131\35\166\79", "\113\226\77\197\42\188\32"),[LUAOBFUSACTOR_DECRYPT_STR_0("\28\26\245\178", "\213\90\118\148")]=LUAOBFUSACTOR_DECRYPT_STR_0("\111\62\144\95\94\79\47\186\85\72", "\45\59\78\212\54"),[LUAOBFUSACTOR_DECRYPT_STR_0("\61\95\141", "\144\112\54\227\235\230\78\205")]=2,[LUAOBFUSACTOR_DECRYPT_STR_0("\158\41\23", "\59\211\72\111\156\176")]=20,[LUAOBFUSACTOR_DECRYPT_STR_0("\106\130\229\44\91\139\247", "\77\46\231\131")]=5,[LUAOBFUSACTOR_DECRYPT_STR_0("\153\85\186\76\184\85\181\75", "\32\218\52\214")]=function(val)
end});
MainTab:Label({[LUAOBFUSACTOR_DECRYPT_STR_0("\122\18\41\188", "\58\46\119\81\200\145\208\37")]=LUAOBFUSACTOR_DECRYPT_STR_0("\13\141\34\161\160\179\49\107\160\63\171\160\190", "\86\75\236\80\204\201\221"),[LUAOBFUSACTOR_DECRYPT_STR_0("\83\77\126\130\240", "\235\18\33\23\229\158")]=Enum.TextXAlignment.Left});
MainTab:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\126\187\204\190", "\219\48\218\161")]=LUAOBFUSACTOR_DECRYPT_STR_0("\197\100\104\70\155\98\239\230", "\128\132\17\28\41\187\47"),[LUAOBFUSACTOR_DECRYPT_STR_0("\39\62\7\61", "\61\97\82\102\90")]=LUAOBFUSACTOR_DECRYPT_STR_0("\141\59\191\68\234\88\28", "\105\204\78\203\43\167\55\126"),[LUAOBFUSACTOR_DECRYPT_STR_0("\129\175\37\31\6\8\211", "\49\197\202\67\126\115\100\167")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\19\94\211\40\153", "\62\87\59\191\73\224\54")]=0.05,[LUAOBFUSACTOR_DECRYPT_STR_0("\196\3\246\197\229\3\249\194", "\169\135\98\154")]=function(Value)
	if not Value then
		CurrentTarget = nil;
		if (LocalPlayer.Character and LocalPlayer.Character:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\227\98\41\85\243\60\193\207\69\43\91\233\3\201\217\99", "\168\171\23\68\52\157\83"))) then
		end
		return;
	end
	local targetPart = GetClosestVisibleEnemy();
	CurrentTarget = targetPart;
	if (targetPart and LocalPlayer.Character and LocalPlayer.Character:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\220\100\248\172\43\34\142\240\67\250\162\49\29\134\230\101", "\231\148\17\149\205\69\77"))) then
		local HRP = LocalPlayer.Character.HumanoidRootPart;
		local dist = Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\180\183\227\242\68\235\129\169\196\254", "\159\224\199\167\155\55")] or 5;
		local direction = Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\195\227\24\219\229\246\63\198\254\252\50", "\178\151\147\92")] or LUAOBFUSACTOR_DECRYPT_STR_0("\174\248\68\59\28\72", "\26\236\157\44\82\114\44");
		local method = Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\30\62\250\75\62\39\218\85", "\59\74\78\181")] or LUAOBFUSACTOR_DECRYPT_STR_0("\17\212\86\95\163\42\195\78", "\211\69\177\58\58");
		local speed = Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\131\245\74\229\236\206\179", "\171\215\133\25\149\137")] or 100;
		local targetCFrame = targetPart.CFrame;
		local offsetCFrame = CFrame.new(0, 0, 0);
		if (direction == LUAOBFUSACTOR_DECRYPT_STR_0("\195\205\58\243\225\52", "\34\129\168\82\154\143\80\156")) then
			offsetCFrame = CFrame.new(0, 0, dist);
		elseif (direction == LUAOBFUSACTOR_DECRYPT_STR_0("\163\160\60\5\92", "\233\229\210\83\107\40\46")) then
			offsetCFrame = CFrame.new(0, 0, -dist);
		elseif (direction == LUAOBFUSACTOR_DECRYPT_STR_0("\224\64\61\192\0", "\101\161\34\82\182")) then
			offsetCFrame = CFrame.new(0, dist, 0);
		elseif (direction == LUAOBFUSACTOR_DECRYPT_STR_0("\202\8\85\241\204", "\78\136\109\57\158\187\130\226")) then
			offsetCFrame = CFrame.new(0, -dist, 0);
		end
		local finalPos = targetCFrame * offsetCFrame;
		if (method == LUAOBFUSACTOR_DECRYPT_STR_0("\10\58\245\244\46\48\235\229", "\145\94\95\153")) then
			HRP.CFrame = finalPos;
		elseif (method == LUAOBFUSACTOR_DECRYPT_STR_0("\201\218\17\208\64\131\205", "\215\157\173\116\181\46")) then
			local distance = (HRP.Position - finalPos.Position).Magnitude;
			local time = distance / speed;
			local tweenInfo = TweenInfo.new(time, Enum.EasingStyle.Linear, Enum.EasingDirection.Out);
			local tween = TweenService:Create(HRP, tweenInfo, {[LUAOBFUSACTOR_DECRYPT_STR_0("\22\146\153\243\215\48", "\186\85\212\235\146")]=finalPos});
			tween:Play();
		end
	end
end});
CombatTab:Label({[LUAOBFUSACTOR_DECRYPT_STR_0("\246\132\14\234", "\56\162\225\118\158\89\142")]=LUAOBFUSACTOR_DECRYPT_STR_0("\127\10\205\173\35\204", "\184\60\101\160\207\66"),[LUAOBFUSACTOR_DECRYPT_STR_0("\16\142\117\187\63", "\220\81\226\28")]=Enum.TextXAlignment.Left});
CombatTab:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\61\212\143\254", "\167\115\181\226\155\138")]=LUAOBFUSACTOR_DECRYPT_STR_0("\195\55\243\83\59\80\210\246\35\228\87", "\166\130\66\135\60\27\17"),[LUAOBFUSACTOR_DECRYPT_STR_0("\98\70\207\114", "\80\36\42\174\21")]=LUAOBFUSACTOR_DECRYPT_STR_0("\111\5\35\117\111\4\35\123\77\27", "\26\46\112\87"),[LUAOBFUSACTOR_DECRYPT_STR_0("\157\38\173\117\170\179\81", "\212\217\67\203\20\223\223\37")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\158\136\164\211\163", "\178\218\237\200")]=0.1,[LUAOBFUSACTOR_DECRYPT_STR_0("\149\180\234\220\180\180\229\219", "\176\214\213\134")]=function(Value)
	if not Value then
		return;
	end
	if (CurrentTarget and LocalPlayer.Character) then
		local myPos = LocalPlayer.Character.HumanoidRootPart.Position;
		local targetPos = CurrentTarget.Position;
		local distance = (myPos - targetPos).Magnitude;
		if (distance <= 5) then
			VirtualInputManager:SendMouseButtonEvent(0, 0, 0, true, game, 0);
			task.wait(0.05);
			VirtualInputManager:SendMouseButtonEvent(0, 0, 0, false, game, 0);
		end
	end
end});
CombatTab:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\218\172\187\209", "\57\148\205\214\180\200\54")]=LUAOBFUSACTOR_DECRYPT_STR_0("\51\232\33\59\54\33\246\60\56\122", "\22\114\157\85\84"),[LUAOBFUSACTOR_DECRYPT_STR_0("\226\199\18\195", "\200\164\171\115\164\61\150")]=LUAOBFUSACTOR_DECRYPT_STR_0("\159\225\23\74\176\181\253\15\73", "\227\222\148\99\37"),[LUAOBFUSACTOR_DECRYPT_STR_0("\23\87\84\247\236\63\70", "\153\83\50\50\150")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\121\115\127\29\106", "\45\61\22\19\124\19\203")]=0.5,[LUAOBFUSACTOR_DECRYPT_STR_0("\226\19\1\249\0\113\186\202", "\217\161\114\109\149\98\16")]=function(Value)
	if not Value then
		return;
	end
	if (CurrentTarget and LocalPlayer.Character) then
		local myPos = LocalPlayer.Character.HumanoidRootPart.Position;
		local targetPos = CurrentTarget.Position;
		local distance = (myPos - targetPos).Magnitude;
		if (distance <= 5) then
			VirtualInputManager:SendKeyEvent(true, Enum.KeyCode.One, false, game);
			task.wait(0.05);
			VirtualInputManager:SendKeyEvent(false, Enum.KeyCode.One, false, game);
		end
	end
end});
PlayerTab:Label({[LUAOBFUSACTOR_DECRYPT_STR_0("\38\37\32\104", "\20\114\64\88\28\220")]=LUAOBFUSACTOR_DECRYPT_STR_0("\28\14\196\177\245\213\179\37", "\221\81\97\178\212\152\176"),[LUAOBFUSACTOR_DECRYPT_STR_0("\236\235\20\252\20", "\122\173\135\125\155")]=Enum.TextXAlignment.Left});
PlayerTab:Slider({[LUAOBFUSACTOR_DECRYPT_STR_0("\170\192\13\188", "\168\228\161\96\217\95\81")]=LUAOBFUSACTOR_DECRYPT_STR_0("\236\208\34\87\28\71\222\212\42", "\55\187\177\78\60\79"),[LUAOBFUSACTOR_DECRYPT_STR_0("\11\194\94\236", "\224\77\174\63\139\38\175")]=LUAOBFUSACTOR_DECRYPT_STR_0("\179\114\107\34\141\69\93\60", "\78\228\33\56"),[LUAOBFUSACTOR_DECRYPT_STR_0("\227\119\188", "\229\174\30\210\99")]=16,[LUAOBFUSACTOR_DECRYPT_STR_0("\54\236\158", "\89\123\141\230\49\141\93")]=200,[LUAOBFUSACTOR_DECRYPT_STR_0("\215\116\240\13\5\70\231", "\42\147\17\150\108\112")]=16,[LUAOBFUSACTOR_DECRYPT_STR_0("\44\167\33\115\229\233\12\173", "\136\111\198\77\31\135")]=function(v)
	if (LocalPlayer.Character and LocalPlayer.Character:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\42\28\170\87\179\235\30\173", "\201\98\105\199\54\221\132\119"))) then
		LocalPlayer.Character.Humanoid.WalkSpeed = v;
	end
end});
PlayerTab:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\151\13\142\36", "\204\217\108\227\65\98\85")]=LUAOBFUSACTOR_DECRYPT_STR_0("\119\205\243\236\34\201\74\198\181\207\57\205\78", "\160\62\163\149\133\76"),[LUAOBFUSACTOR_DECRYPT_STR_0("\240\172\12\40", "\163\182\192\109\79")]=LUAOBFUSACTOR_DECRYPT_STR_0("\29\40\6\234\224\57\54", "\149\84\70\96\160"),[LUAOBFUSACTOR_DECRYPT_STR_0("\28\3\11\236\45\10\25", "\141\88\102\109")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\144\82\198\124\24\60\86\202", "\161\211\51\170\16\122\93\53")]=function(Value)
end});
local NoclipLoop = nil;
PlayerTab:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\213\175\191\45", "\72\155\206\210")]=LUAOBFUSACTOR_DECRYPT_STR_0("\104\117\87\2\58\86", "\83\38\26\52\110"),[LUAOBFUSACTOR_DECRYPT_STR_0("\126\27\38\65", "\38\56\119\71")]=LUAOBFUSACTOR_DECRYPT_STR_0("\221\224\91\218\44\70", "\54\147\143\56\182\69"),[LUAOBFUSACTOR_DECRYPT_STR_0("\242\132\249\72\202\218\149", "\191\182\225\159\41")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\8\19\36\89\137\134\193\32", "\162\75\114\72\53\235\231")]=function(Value)
	if Value then
		NoclipLoop = RunService.Stepped:Connect(function()
			if LocalPlayer.Character then
				for _, v in pairs(LocalPlayer.Character:GetDescendants()) do
					if (v:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\174\61\87\231\99\3\158\40", "\98\236\92\36\130\51")) and (v.CanCollide == true)) then
						v.CanCollide = false;
					end
				end
			end
		end);
	elseif NoclipLoop then
		NoclipLoop:Disconnect();
		NoclipLoop = nil;
	end
end});
local FlyLoop = nil;
local FlyGyro = nil;
local FlyVelocity = nil;
PlayerTab:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\138\24\1\191", "\80\196\121\108\218\37\200\213")]=LUAOBFUSACTOR_DECRYPT_STR_0("\38\127\27", "\234\96\19\98\31\43\110"),[LUAOBFUSACTOR_DECRYPT_STR_0("\32\19\83\192", "\235\102\127\50\167\204\18")]=LUAOBFUSACTOR_DECRYPT_STR_0("\118\173\236", "\78\48\193\149\67\36"),[LUAOBFUSACTOR_DECRYPT_STR_0("\20\27\134\25\84\60\10", "\33\80\126\224\120")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\207\169\15\200\94\237\171\8", "\60\140\200\99\164")]=function(Value)
	if Value then
		if (LocalPlayer.Character and LocalPlayer.Character:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\175\225\9\39\172\136\253\0\20\173\136\224\52\39\176\147", "\194\231\148\100\70")) and LocalPlayer.Character:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\110\89\204\162\248\199\79\72", "\168\38\44\161\195\150"))) then
			local HRP = LocalPlayer.Character.HumanoidRootPart;
			local Humanoid = LocalPlayer.Character.Humanoid;
			FlyGyro = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\162\243\134\111\23\241\164\25", "\118\224\156\226\22\80\136\214"), HRP);
			FlyGyro.P = 90000;
			FlyGyro.maxTorque = Vector3.new(8999999488, 8999999488, 8999999488);
			FlyGyro.cframe = HRP.CFrame;
			FlyVelocity = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\96\225\93\153\116\235\85\143\65\231\77\153", "\224\34\142\57"), HRP);
			FlyVelocity.velocity = Vector3.new(0, 0.1, 0);
			FlyVelocity.maxForce = Vector3.new(8999999488, 8999999488, 8999999488);
			Humanoid.PlatformStand = true;
			FlyLoop = RunService.RenderStepped:Connect(function()
				if (LocalPlayer.Character and HRP and Humanoid) then
					Humanoid.PlatformStand = true;
					local Camera = Workspace.CurrentCamera;
					local Speed = 50;
					FlyGyro.cframe = Camera.CFrame;
					local direction = Vector3.new(0, 0, 0);
					if UserInputService:IsKeyDown(Enum.KeyCode.W) then
						direction = direction + Camera.CFrame.LookVector;
					end
					if UserInputService:IsKeyDown(Enum.KeyCode.S) then
						direction = direction - Camera.CFrame.LookVector;
					end
					if UserInputService:IsKeyDown(Enum.KeyCode.A) then
						direction = direction - Camera.CFrame.RightVector;
					end
					if UserInputService:IsKeyDown(Enum.KeyCode.D) then
						direction = direction + Camera.CFrame.RightVector;
					end
					FlyVelocity.velocity = direction * Speed;
				end
			end);
		end
	else
		if FlyLoop then
			FlyLoop:Disconnect();
			FlyLoop = nil;
		end
		if FlyVelocity then
			FlyVelocity:Destroy();
			FlyVelocity = nil;
		end
		if FlyGyro then
			FlyGyro:Destroy();
			FlyGyro = nil;
		end
		if (LocalPlayer.Character and LocalPlayer.Character:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\246\178\200\220\125\254\84\10", "\110\190\199\165\189\19\145\61"))) then
			LocalPlayer.Character.Humanoid.PlatformStand = false;
		end
	end
end});
MiscTab:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\244\234\122\237", "\167\186\139\23\136\235")]=LUAOBFUSACTOR_DECRYPT_STR_0("\57\186\132\1\31\182\156\77\62\167\135\29", "\109\122\213\232"),[LUAOBFUSACTOR_DECRYPT_STR_0("\200\251\163\55", "\80\142\151\194")]=LUAOBFUSACTOR_DECRYPT_STR_0("\32\201\123\64\6\197\99\104\17\201\103", "\44\99\166\23"),[LUAOBFUSACTOR_DECRYPT_STR_0("\88\242\47\55\38\168\104", "\196\28\151\73\86\83")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\215\6\37\17\155", "\22\147\99\73\112\226\56\120")]=0.1,[LUAOBFUSACTOR_DECRYPT_STR_0("\155\116\238\249\143\185\118\233", "\237\216\21\130\149")]=function(Value)
	if not Value then
		return;
	end
	if GetClosestVisibleEnemy() then
		return;
	end
	local lootPart = GetClosestLoot();
	if (lootPart and LocalPlayer.Character and LocalPlayer.Character:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\170\91\82\94\190\198\87\134\124\80\80\164\249\95\144\90", "\62\226\46\63\63\208\169"))) then
		local HRP = LocalPlayer.Character.HumanoidRootPart;
		local method = Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\209\9\122\147\11\4\32\80", "\62\133\121\53\227\127\109\79")] or LUAOBFUSACTOR_DECRYPT_STR_0("\36\17\62\240\198\161\176\4", "\194\112\116\82\149\182\206");
		local speed = Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\13\184\127\8\197\231\10", "\110\89\200\44\120\160\130")] or 100;
		if (method == LUAOBFUSACTOR_DECRYPT_STR_0("\159\198\71\67\83\69\41\89", "\45\203\163\43\38\35\42\91")) then
			HRP.CFrame = lootPart.CFrame;
		elseif (method == LUAOBFUSACTOR_DECRYPT_STR_0("\230\146\217\38\137\157\100", "\52\178\229\188\67\231\201")) then
			local distance = (HRP.Position - lootPart.Position).Magnitude;
			local time = distance / speed;
			local tweenInfo = TweenInfo.new(time, Enum.EasingStyle.Linear, Enum.EasingDirection.Out);
			local tween = TweenService:Create(HRP, tweenInfo, {[LUAOBFUSACTOR_DECRYPT_STR_0("\2\103\66\5\250\89", "\67\65\33\48\100\151\60")]=lootPart.CFrame});
			tween:Play();
		end
	end
end});
UserInputService.JumpRequest:Connect(function()
	if (Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\246\233\168\242\230\210\247", "\147\191\135\206\184")] and LocalPlayer.Character and LocalPlayer.Character:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\172\61\171\192\214\92\187\128", "\210\228\72\198\161\184\51"))) then
		LocalPlayer.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping);
	end
end);
Window:Init();
