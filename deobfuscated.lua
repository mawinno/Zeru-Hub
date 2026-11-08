-- Deobfuscated by Flexozy | Discord: https://discord.gg/3jA7qWgpRq
-- run status: finished
-- 3400 statements recorded in 0.37s
-- URLs requested:
--   https://github.com/StyearX/Fluent-Modded/releases/download/Fluent/FluentPro
-- remotes fired/invoked:
--   SeedShop
--   Codes
-- non-standard globals touched: firesignal

-- loadstring() of 264497 bytes: "-- ===== DurianFarm : เวอร์ชันมือถือ (Delta Mobile) =====\nif not game:IsLoaded() then\n    game.Loaded:Wait()\nend\n\n--==================================================\n-- Se"
game:IsLoaded()
local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Lighting = game:GetService("Lighting")
local VirtualUser = game:GetService("VirtualUser")
local VirtualInputManager = game:GetService("VirtualInputManager")
local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")
local CoreGui = game:GetService("CoreGui")
local HttpService = game:GetService("HttpService")
local PathfindingService = game:GetService("PathfindingService")
local StarterPlayer = game:GetService("StarterPlayer")
local RunService = game:GetService("RunService")
Players.LocalPlayer.Character:WaitForChild("Humanoid", 10)
Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart", 10)
Players.LocalPlayer:WaitForChild("Backpack", 10)
local Remotes = ReplicatedStorage:WaitForChild("Remotes", 10)
Remotes:WaitForChild("SellDurians")
Remotes:WaitForChild("Water")
local SeedShop = Remotes:WaitForChild("SeedShop")
Remotes:WaitForChild("HarvestFruit", 10)
local Map = workspace:WaitForChild("Map", 15)
local DurianWarehouse = Map:WaitForChild("DurianWarehouse", 15)
local Flex_Guy = DurianWarehouse:WaitForChild("Flex_Guy")
Flex_Guy:WaitForChild("RootPart")
DurianWarehouse:WaitForChild("ShanaKung")
getgenv().Config = {}
getgenv().AutoSell = true
getgenv().AutoBuySeed = false
getgenv().AutoBuyFert = false
getgenv().AutoWater = true
getgenv().AutoFertilize = true
getgenv().AutoHarvest = true
getgenv().AutoSteal = true
getgenv().AutoDefend = true
getgenv().AutoSaveEnabled = true
getgenv().FpsBoost = false
getgenv().FpsBoostMax = false
getgenv().ShowStats = true
getgenv().ToggleFX = true
getgenv().ESPRipe = false
getgenv().ESPPlayers = false
getgenv().ESPPrice = false
getgenv().Noclip = true
getgenv().AutoRubberTap = true
getgenv().AutoRubberAcid = true
getgenv().AutoRubberCollect = true
getgenv().AutoRubberWater = true
getgenv().AutoSellRubber = true
getgenv().AutoRubberPlant = true
getgenv().AutoPalm = true
getgenv().AutoSellPalm = true
getgenv().AutoBarn = false
getgenv().BarnDurian = true
getgenv().BarnPalm = false
getgenv().BarnRubber = false
getgenv().AutoTonic = true
getgenv().AutoDisinfect = true
getgenv().AutoCodes = true
getgenv().AutoRebirth = false
getgenv().AutoTruck = true
task.spawn(function(...)
	local Map2 = workspace:WaitForChild("Map", 10)
	Map2:WaitForChild("Bases", 10)
	local Map3 = workspace:FindFirstChild("Map")
	local Bases = Map3:FindFirstChild("Bases")
	local children = Bases:GetChildren()
	for i, v in ipairs(children) do
		v:GetAttribute("OwnerUserId")
	end
	local children2 = Bases:GetChildren()
	for i2, v2 in ipairs(children2) do
		v2:GetAttribute("OwnerName")
		v2:FindFirstChild("Owner")
	end
	task.wait(1)
	local Map4 = workspace:FindFirstChild("Map")
	local Bases2 = Map4:FindFirstChild("Bases")
	local children3 = Bases2:GetChildren()
	for i3, v3 in ipairs(children3) do
		v3:GetAttribute("OwnerUserId")
	end
	local children4 = Bases2:GetChildren()
	for i4, v4 in ipairs(children4) do
		v4:GetAttribute("OwnerName")
		v4:FindFirstChild("Owner")
	end
	task.wait(1)
	-- [envlog] the statements above repeat forever (loop)
end)
task.spawn(function(...)
	task.wait(5)
	-- identifyexecutor() -> "Wave"
	VirtualInputManager:SendKeyEvent(false, Enum.KeyCode.E, false, game)
	print(string.format("[Diag] executor=%s | fireproximityprompt=%s | getconnections=%s | firesignal=%s | VIM_key=%s | touch=%s keyboard=%s | base=%s | slots=%d | AutoHarvest=%s", "Wave 1.0.0", "true", "true", "true", "true", tostring(UserInputService.TouchEnabled), tostring(UserInputService.KeyboardEnabled), "nil", 0, "true"))
end)
local Bat = Remotes:FindFirstChild("Bat")
Bat.OnClientEvent:Connect(function(arg)
end)
task.spawn(function(...)
	RunService.Stepped:Connect(function(time, deltaTime)
		local Humanoid = Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
		Humanoid:GetState()
		local descendants3 = Players.LocalPlayer.Character:GetDescendants()
		for i127, v127 in ipairs(descendants3) do
			v127.CanCollide = false
		end
	end)
end)
Players.LocalPlayer.CharacterAdded:Connect(function(character)
	task.wait(0.3)
end)
task.spawn(function(...)
	task.wait(0.25)
	Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
	-- [envlog] error: protected:371: attempt to compare number < userdata
end)
-- isfile("DurianFarm_Mobile/config.json") -> false
local hui = gethui()
local GlossyDriverHUD = hui:FindFirstChild("GlossyDriverHUD")
GlossyDriverHUD:Destroy()
Players.LocalPlayer.CharacterAdded:Connect(function(character2)
	character2:WaitForChild("Humanoid", 10)
	character2:WaitForChild("HumanoidRootPart", 10)
	Players.LocalPlayer:WaitForChild("Backpack", 10)
end)
Players.LocalPlayer.Idled:Connect(function(idleTime)
	VirtualUser:CaptureController()
	VirtualUser:ClickButton2(Vector2.new())
end)
local Shared = ReplicatedStorage:WaitForChild("Shared")
local WorldClock = Shared:WaitForChild("WorldClock", 5)
local module = require(WorldClock)
getgenv().LatestSeedData = nil
getgenv().SeedShopListenerConnected = true
SeedShop.OnClientEvent:Connect(function(arg2)
end)
SeedShop:FireServer("Refresh")
require(ReplicatedStorage.Shared.RubberConfig)
local PalmGame = Remotes:FindFirstChild("PalmGame")
local connection = PalmGame.OnClientEvent:Connect(function(arg3)
end)
getgenv()._PalmConn = connection
task.spawn(function(...)
	task.wait(0.5)
	local attribute = Players.LocalPlayer:GetAttribute("BagCount")
	local attribute2 = Players.LocalPlayer:GetAttribute("BagMax")
	-- condition: attribute < attribute2  (assumed true)
	task.spawn(function(...)
		local Map5 = workspace:FindFirstChild("Map")
		local Bases3 = Map5:FindFirstChild("Bases")
		local children5 = Bases3:GetChildren()
		for i7, v7 in ipairs(children5) do
			v7:GetAttribute("OwnerUserId")
		end
		local children6 = Bases3:GetChildren()
		for i8, v8 in ipairs(children6) do
			v8:GetAttribute("OwnerName")
			v8:FindFirstChild("Owner")
		end
		warn("[Harvest] ไม่พบแปลงปลูกของคุณ (Base=nil)")
		local attribute3 = Players.LocalPlayer:GetAttribute("BagCount")
		local attribute4 = Players.LocalPlayer:GetAttribute("BagMax")
		-- condition: attribute4 <= attribute3  (assumed false)
		local Map6 = workspace:FindFirstChild("Map")
		local Bases4 = Map6:FindFirstChild("Bases")
		local children7 = Bases4:GetChildren()
		for i9, v9 in ipairs(children7) do
			v9:GetAttribute("OwnerUserId")
		end
		local children8 = Bases4:GetChildren()
		for i10, v10 in ipairs(children8) do
			v10:GetAttribute("OwnerName")
			v10:FindFirstChild("Owner")
		end
	end)
	task.wait(0.5)
	local attribute5 = Players.LocalPlayer:GetAttribute("BagCount")
	local attribute6 = Players.LocalPlayer:GetAttribute("BagMax")
	-- condition: attribute5 < attribute6  (assumed true)
	task.spawn(function(...)
		local Map7 = workspace:FindFirstChild("Map")
		local Bases5 = Map7:FindFirstChild("Bases")
		local children9 = Bases5:GetChildren()
		for i11, v11 in ipairs(children9) do
			v11:GetAttribute("OwnerUserId")
		end
		local children10 = Bases5:GetChildren()
		for i12, v12 in ipairs(children10) do
			v12:GetAttribute("OwnerName")
			v12:FindFirstChild("Owner")
		end
		local attribute7 = Players.LocalPlayer:GetAttribute("BagCount")
		local attribute8 = Players.LocalPlayer:GetAttribute("BagMax")
		-- condition: attribute8 <= attribute7  (assumed false)
		local Map8 = workspace:FindFirstChild("Map")
		local Bases6 = Map8:FindFirstChild("Bases")
		local children11 = Bases6:GetChildren()
		for i13, v13 in ipairs(children11) do
			v13:GetAttribute("OwnerUserId")
		end
		local children12 = Bases6:GetChildren()
		for i14, v14 in ipairs(children12) do
			v14:GetAttribute("OwnerName")
			v14:FindFirstChild("Owner")
		end
	end)
	task.wait(0.5)
	-- [envlog] the statements above repeat forever (loop)
end)
task.spawn(function(...)
	task.wait(1)
	local Map9 = workspace:FindFirstChild("Map")
	local Bases7 = Map9:FindFirstChild("Bases")
	local children13 = Bases7:GetChildren()
	for i19, v19 in ipairs(children13) do
		v19:GetAttribute("OwnerUserId")
	end
	local children14 = Bases7:GetChildren()
	for i20, v20 in ipairs(children14) do
		v20:GetAttribute("OwnerName")
		v20:FindFirstChild("Owner")
	end
	task.wait(1)
	-- [envlog] the statements above repeat forever (loop)
end)
task.spawn(function(...)
	task.wait(1)
	local Map10 = workspace:FindFirstChild("Map")
	local Bases8 = Map10:FindFirstChild("Bases")
	local children15 = Bases8:GetChildren()
	for i23, v23 in ipairs(children15) do
		v23:GetAttribute("OwnerUserId")
	end
	local children16 = Bases8:GetChildren()
	for i24, v24 in ipairs(children16) do
		v24:GetAttribute("OwnerName")
		v24:FindFirstChild("Owner")
	end
	task.wait(1)
	-- [envlog] the statements above repeat forever (loop)
end)
task.spawn(function(...)
	task.wait(1)
	workspace:FindFirstChild("Map")
	local Bases9 = workspace.Map:FindFirstChild("Bases")
	local children17 = Bases9:GetChildren()
	for i27, v27 in ipairs(children17) do
		local Items = v27:FindFirstChild("Items")
		local Parking = Items:FindFirstChild("Parking")
		local children18 = Parking:GetChildren()
		for i28, v28 in ipairs(children18) do
			v28:GetAttribute("OwnerUserId")
		end
	end
	local attribute9 = Players.LocalPlayer:GetAttribute("BagCount")
	local Backpack = Players.LocalPlayer:FindFirstChild("Backpack")
	local children19 = Backpack:GetChildren()
	for i29, v29 in ipairs(children19) do
		v29.Name:find("Palm")
		v29.Name:find("Seed")
	end
	local children20 = Players.LocalPlayer.Character:GetChildren()
	for i30, v30 in ipairs(children20) do
		v30.Name:find("Palm")
		v30.Name:find("Seed")
	end
	Players.LocalPlayer:GetAttribute("BagCount")
	local Backpack2 = Players.LocalPlayer:FindFirstChild("Backpack")
	local children21 = Backpack2:GetChildren()
	for i31, v31 in ipairs(children21) do
		v31:GetAttribute("ScrapUid")
	end
	local children22 = Players.LocalPlayer.Character:GetChildren()
	for i32, v32 in ipairs(children22) do
		v32:GetAttribute("ScrapUid")
	end
	local attribute10 = Players.LocalPlayer:GetAttribute("BagMax")
	-- condition: math.min(10, attribute10) <= math.max((attribute9 - 0), 0)  (assumed false)
	task.wait(1)
	workspace:FindFirstChild("Map")
	local Bases10 = workspace.Map:FindFirstChild("Bases")
	local children23 = Bases10:GetChildren()
	for i33, v33 in ipairs(children23) do
		local Items2 = v33:FindFirstChild("Items")
		local Parking2 = Items2:FindFirstChild("Parking")
		local children24 = Parking2:GetChildren()
		for i34, v34 in ipairs(children24) do
			v34:GetAttribute("OwnerUserId")
		end
	end
	local attribute11 = Players.LocalPlayer:GetAttribute("BagCount")
	local Backpack3 = Players.LocalPlayer:FindFirstChild("Backpack")
	local children25 = Backpack3:GetChildren()
	for i35, v35 in ipairs(children25) do
		v35.Name:find("Palm")
		v35.Name:find("Seed")
	end
	local children26 = Players.LocalPlayer.Character:GetChildren()
	for i36, v36 in ipairs(children26) do
		v36.Name:find("Palm")
		v36.Name:find("Seed")
	end
	Players.LocalPlayer:GetAttribute("BagCount")
	local Backpack4 = Players.LocalPlayer:FindFirstChild("Backpack")
	local children27 = Backpack4:GetChildren()
	for i37, v37 in ipairs(children27) do
		v37:GetAttribute("ScrapUid")
	end
	local children28 = Players.LocalPlayer.Character:GetChildren()
	for i38, v38 in ipairs(children28) do
		v38:GetAttribute("ScrapUid")
	end
	local attribute12 = Players.LocalPlayer:GetAttribute("BagMax")
	-- condition: math.min(10, attribute12) <= math.max((attribute11 - 0), 0)  (assumed false)
	task.wait(1)
	-- [envlog] the statements above repeat forever (loop)
end)
Remotes:FindFirstChild("BarnFn")
task.spawn(function(...)
	task.wait(1.5)
	task.wait(1.5)
	-- [envlog] the statements above repeat forever (loop)
end)
task.spawn(function(...)
	task.wait(0.7)
	local attribute13 = Players.LocalPlayer:GetAttribute("BagCount")
	local Backpack5 = Players.LocalPlayer:FindFirstChild("Backpack")
	local children29 = Backpack5:GetChildren()
	for i45, v45 in ipairs(children29) do
		v45:GetAttribute("ScrapUid")
	end
	local children30 = Players.LocalPlayer.Character:GetChildren()
	for i46, v46 in ipairs(children30) do
		v46:GetAttribute("ScrapUid")
	end
	local attribute14 = Players.LocalPlayer:GetAttribute("BagMax")
	-- condition: (attribute13 + 2) < attribute14  (assumed true)
	task.spawn(function(...)
		local attribute15 = Players.LocalPlayer:GetAttribute("BagCount")
		local Backpack6 = Players.LocalPlayer:FindFirstChild("Backpack")
		local children31 = Backpack6:GetChildren()
		for i47, v47 in ipairs(children31) do
			v47:GetAttribute("ScrapUid")
		end
		local children32 = Players.LocalPlayer.Character:GetChildren()
		for i48, v48 in ipairs(children32) do
			v48:GetAttribute("ScrapUid")
		end
		local attribute16 = Players.LocalPlayer:GetAttribute("BagMax")
		-- condition: attribute16 <= (attribute15 + 2)  (assumed false)
		local Map11 = workspace:FindFirstChild("Map")
		local Bases11 = Map11:FindFirstChild("Bases")
		local children33 = Bases11:GetChildren()
		for i49, v49 in ipairs(children33) do
			v49:GetAttribute("OwnerUserId")
		end
		local children34 = Bases11:GetChildren()
		for i50, v50 in ipairs(children34) do
			v50:GetAttribute("OwnerName")
			v50:FindFirstChild("Owner")
		end
	end)
	task.wait(0.7)
	-- [envlog] the statements above repeat forever (loop)
end)
task.spawn(function(...)
	task.wait(1)
	workspace:FindFirstChild("Map")
	local Bases12 = workspace.Map:FindFirstChild("Bases")
	local children35 = Bases12:GetChildren()
	for i57, v57 in ipairs(children35) do
		local Items3 = v57:FindFirstChild("Items")
		local Parking3 = Items3:FindFirstChild("Parking")
		local children36 = Parking3:GetChildren()
		for i58, v58 in ipairs(children36) do
			v58:GetAttribute("OwnerUserId")
		end
	end
	local Backpack7 = Players.LocalPlayer:FindFirstChild("Backpack")
	local children37 = Backpack7:GetChildren()
	for i59, v59 in ipairs(children37) do
		v59.Name:find("Palm")
		v59.Name:find("Seed")
	end
	local children38 = Players.LocalPlayer.Character:GetChildren()
	for i60, v60 in ipairs(children38) do
		v60.Name:find("Palm")
		v60.Name:find("Seed")
	end
	Players.LocalPlayer:GetAttribute("BagCount")
	local Backpack8 = Players.LocalPlayer:FindFirstChild("Backpack")
	local children39 = Backpack8:GetChildren()
	for i61, v61 in ipairs(children39) do
		v61:GetAttribute("ScrapUid")
	end
	local children40 = Players.LocalPlayer.Character:GetChildren()
	for i62, v62 in ipairs(children40) do
		v62:GetAttribute("ScrapUid")
	end
	Players.LocalPlayer:GetAttribute("BagMax")
	task.wait(1)
	-- [envlog] the statements above repeat forever (loop)
end)
local CollectionService = game:GetService("CollectionService")
require(ReplicatedStorage.Shared.DurianConfig)
task.spawn(function(...)
	task.wait(1)
	Players.LocalPlayer.Character:GetAttribute("Carrying")
	module.State()
	local attribute17 = Players.LocalPlayer:GetAttribute("BagCount")
	local Backpack9 = Players.LocalPlayer:FindFirstChild("Backpack")
	local children41 = Backpack9:GetChildren()
	for i69, v69 in ipairs(children41) do
		v69:GetAttribute("ScrapUid")
	end
	local children42 = Players.LocalPlayer.Character:GetChildren()
	for i70, v70 in ipairs(children42) do
		v70:GetAttribute("ScrapUid")
	end
	local attribute18 = Players.LocalPlayer:GetAttribute("BagMax")
	Players.LocalPlayer.Character:GetAttribute("Carrying")
	-- condition: (attribute17 + 2) < attribute18  (assumed true)
	getgenv().StealBoost = false
	task.spawn(function(...)
		getgenv().StealBoost = true
		Players.LocalPlayer.Character:GetAttribute("Carrying")
		module.State()
		local attribute19 = Players.LocalPlayer:GetAttribute("BagCount")
		local Backpack10 = Players.LocalPlayer:FindFirstChild("Backpack")
		local children43 = Backpack10:GetChildren()
		for i71, v71 in ipairs(children43) do
			v71:GetAttribute("ScrapUid")
		end
		local children44 = Players.LocalPlayer.Character:GetChildren()
		for i72, v72 in ipairs(children44) do
			v72:GetAttribute("ScrapUid")
		end
		local attribute20 = Players.LocalPlayer:GetAttribute("BagMax")
		Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
		-- condition: attribute20 <= (attribute19 + 2)  (assumed false)
		Players.LocalPlayer:GetAttribute("HomePos")
		local tagged = CollectionService:GetTagged("DurianFruit")
		for i73, v73 in ipairs(tagged) do
			v73:GetAttribute("CatchBy")
		end
	end)
	task.wait(1)
	Players.LocalPlayer.Character:GetAttribute("Carrying")
	module.State()
	local attribute21 = Players.LocalPlayer:GetAttribute("BagCount")
	local Backpack11 = Players.LocalPlayer:FindFirstChild("Backpack")
	local children45 = Backpack11:GetChildren()
	for i74, v74 in ipairs(children45) do
		v74:GetAttribute("ScrapUid")
	end
	local children46 = Players.LocalPlayer.Character:GetChildren()
	for i75, v75 in ipairs(children46) do
		v75:GetAttribute("ScrapUid")
	end
	local attribute22 = Players.LocalPlayer:GetAttribute("BagMax")
	Players.LocalPlayer.Character:GetAttribute("Carrying")
	-- condition: (attribute21 + 2) < attribute22  (assumed true)
	getgenv().StealBoost = false
	task.spawn(function(...)
		getgenv().StealBoost = true
		Players.LocalPlayer.Character:GetAttribute("Carrying")
		module.State()
		local attribute23 = Players.LocalPlayer:GetAttribute("BagCount")
		local Backpack12 = Players.LocalPlayer:FindFirstChild("Backpack")
		local children47 = Backpack12:GetChildren()
		for i76, v76 in ipairs(children47) do
			v76:GetAttribute("ScrapUid")
		end
		local children48 = Players.LocalPlayer.Character:GetChildren()
		for i77, v77 in ipairs(children48) do
			v77:GetAttribute("ScrapUid")
		end
		local attribute24 = Players.LocalPlayer:GetAttribute("BagMax")
		Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
		-- condition: attribute24 <= (attribute23 + 2)  (assumed false)
		Players.LocalPlayer:GetAttribute("HomePos")
		local tagged2 = CollectionService:GetTagged("DurianFruit")
		for i78, v78 in ipairs(tagged2) do
			v78:GetAttribute("CatchBy")
		end
	end)
	task.wait(1)
	-- [envlog] the statements above repeat forever (loop)
end)
task.spawn(function(...)
	task.wait(0.4)
	local Backpack13 = Players.LocalPlayer:FindFirstChild("Backpack")
	Backpack13:FindFirstChild("Bat")
	Backpack13:FindFirstChild("Bat")
	local Map12 = workspace:FindFirstChild("Map")
	local Bases13 = Map12:FindFirstChild("Bases")
	local children49 = Bases13:GetChildren()
	for i84, v84 in ipairs(children49) do
		v84:GetAttribute("OwnerUserId")
	end
	local children50 = Bases13:GetChildren()
	for i85, v85 in ipairs(children50) do
		v85:GetAttribute("OwnerName")
		v85:FindFirstChild("Owner")
	end
	task.wait(0.4)
	-- [envlog] the statements above repeat forever (loop)
end)
task.spawn(function(...)
	task.wait(2)
	task.wait(2)
	-- [envlog] the statements above repeat forever (loop)
end)
task.spawn(function(...)
	task.wait(2)
	task.wait(2)
	-- [envlog] the statements above repeat forever (loop)
end)
task.spawn(function(...)
	task.wait(2)
	local Map13 = workspace:FindFirstChild("Map")
	local Bases14 = Map13:FindFirstChild("Bases")
	local children51 = Bases14:GetChildren()
	for i88, v88 in ipairs(children51) do
		v88:GetAttribute("OwnerUserId")
	end
	local children52 = Bases14:GetChildren()
	for i89, v89 in ipairs(children52) do
		v89:GetAttribute("OwnerName")
		v89:FindFirstChild("Owner")
	end
	task.wait(2)
	-- [envlog] the statements above repeat forever (loop)
end)
local PlotType = Remotes:FindFirstChild("PlotType")
require(ReplicatedStorage.Shared.RubberConfig)
local connection2 = PlotType.OnClientEvent:Connect(function(arg4)
end)
getgenv()._RubberConn = connection2
task.defer(function(...)
end)
task.spawn(function(...)
	task.wait(1)
	task.wait(1)
	-- [envlog] the statements above repeat forever (loop)
end)
task.spawn(function(...)
	task.wait(1)
	workspace:FindFirstChild("Map")
	local Bases15 = workspace.Map:FindFirstChild("Bases")
	local children53 = Bases15:GetChildren()
	for i92, v92 in ipairs(children53) do
		local Items4 = v92:FindFirstChild("Items")
		local Parking4 = Items4:FindFirstChild("Parking")
		local children54 = Parking4:GetChildren()
		for i93, v93 in ipairs(children54) do
			v93:GetAttribute("OwnerUserId")
		end
	end
	local Backpack14 = Players.LocalPlayer:FindFirstChild("Backpack")
	local children55 = Backpack14:GetChildren()
	for i94, v94 in ipairs(children55) do
		v94:GetAttribute("ScrapUid")
	end
	local children56 = Players.LocalPlayer.Character:GetChildren()
	for i95, v95 in ipairs(children56) do
		v95:GetAttribute("ScrapUid")
	end
	-- [envlog] error: protected:2086: attempt to compare userdata <= number
end)
Remotes:FindFirstChild("Cargo")
Remotes:FindFirstChild("CargoFn")
Remotes:FindFirstChild("Garage")
Remotes:FindFirstChild("VehicleAction")
task.spawn(function(...)
	task.wait(1)
	workspace:FindFirstChild("Map")
	local Bases16 = workspace.Map:FindFirstChild("Bases")
	local children57 = Bases16:GetChildren()
	for i96, v96 in ipairs(children57) do
		local Items5 = v96:FindFirstChild("Items")
		local Parking5 = Items5:FindFirstChild("Parking")
		local children58 = Parking5:GetChildren()
		for i97, v97 in ipairs(children58) do
			v97:GetAttribute("OwnerUserId")
		end
	end
	task.spawn(function(...)
	end)
	task.wait(1)
	workspace:FindFirstChild("Map")
	local Bases17 = workspace.Map:FindFirstChild("Bases")
	local children59 = Bases17:GetChildren()
	for i98, v98 in ipairs(children59) do
		local Items6 = v98:FindFirstChild("Items")
		local Parking6 = Items6:FindFirstChild("Parking")
		local children60 = Parking6:GetChildren()
		for i99, v99 in ipairs(children60) do
			v99:GetAttribute("OwnerUserId")
		end
	end
	task.wait(1)
	-- [envlog] the statements above repeat forever (loop)
end)
Remotes:FindFirstChild("Spray")
task.spawn(function(...)
	task.wait(2)
	local Map14 = workspace:FindFirstChild("Map")
	local Bases18 = Map14:FindFirstChild("Bases")
	local children61 = Bases18:GetChildren()
	for i102, v102 in ipairs(children61) do
		v102:GetAttribute("OwnerUserId")
	end
	local children62 = Bases18:GetChildren()
	for i103, v103 in ipairs(children62) do
		v103:GetAttribute("OwnerName")
		v103:FindFirstChild("Owner")
	end
	task.wait(2)
	-- [envlog] the statements above repeat forever (loop)
end)
Remotes:FindFirstChild("Rebirth")
require(ReplicatedStorage.Shared.RebirthConfig)
task.spawn(function(...)
	task.wait(3)
	task.wait(3)
	-- [envlog] the statements above repeat forever (loop)
end)
local Codes = Remotes:FindFirstChild("Codes")
getgenv().RedeemCodes = function(arg5, arg6)
	local response = Codes:InvokeServer("Update1")
	warn("[Codes] " .. "Update1" .. " -> " .. tostring(response) .. " nil")
	task.wait(1.5)
	local response2 = Codes:InvokeServer("Petdurian")
	warn("[Codes] " .. "Petdurian" .. " -> " .. tostring(response2) .. " nil")
	task.wait(1.5)
end
task.spawn(function(...)
	task.wait(8)
	local response3 = Codes:InvokeServer("Update1")
	warn("[Codes] " .. "Update1" .. " -> " .. tostring(response3) .. " nil")
	task.wait(1.5)
	local response4 = Codes:InvokeServer("Petdurian")
	warn("[Codes] " .. "Petdurian" .. " -> " .. tostring(response4) .. " nil")
	task.wait(1.5)
end)
getgenv()._FpsBoostSet = function(arg7, arg8)
end
task.spawn(function(...)
	local response5 = game:HttpGet("https://github.com/StyearX/Fluent-Modded/releases/download/Fluent/FluentPro")
	local result = loadstring(response5)()
	result:AddCustomTheme("🔥 Crimson Blade", {
	Name = "🔥 Crimson Blade",
	Text = Color3.fromRGB(250, 235, 238),
	Accent = Color3.fromRGB(255, 40, 70),
	AcrylicBorder = Color3.fromRGB(10, 6, 8):Lerp(Color3.fromRGB(255, 40, 70), 0.35),
	AcrylicGradient = ColorSequence.new(Color3.fromRGB(10, 6, 8):Lerp(Color3.fromRGB(255, 40, 70), 0.1), Color3.fromRGB(10, 6, 8)),
	AcrylicMain = Color3.fromRGB(10, 6, 8),
	AcrylicNoise = 0.95,
	Dialog = Color3.fromRGB(10, 6, 8):Lerp(Color3.fromRGB(255, 40, 70), 0.12),
	DialogBorder = Color3.fromRGB(10, 6, 8):Lerp(Color3.fromRGB(255, 40, 70), 0.22),
	DialogButton = Color3.fromRGB(10, 6, 8):Lerp(Color3.fromRGB(255, 40, 70), 0.12),
	DialogButtonBorder = Color3.fromRGB(10, 6, 8):Lerp(Color3.fromRGB(255, 40, 70), 0.35),
	DialogHolder = Color3.fromRGB(10, 6, 8),
	DialogHolderLine = Color3.fromRGB(10, 6, 8):Lerp(Color3.fromRGB(255, 40, 70), 0.2),
	DialogInput = Color3.fromRGB(10, 6, 8):Lerp(Color3.fromRGB(255, 40, 70), 0.12),
	DialogInputLine = Color3.fromRGB(255, 40, 70):Lerp(Color3.fromRGB(250, 235, 238), 0.3),
	DropdownBorder = Color3.fromRGB(10, 6, 8),
	DropdownFrame = Color3.fromRGB(10, 6, 8):Lerp(Color3.fromRGB(255, 40, 70), 0.22),
	DropdownHolder = Color3.fromRGB(10, 6, 8):Lerp(Color3.fromRGB(255, 40, 70), 0.12),
	DropdownOption = Color3.fromRGB(250, 235, 238):Lerp(Color3.fromRGB(10, 6, 8), 0.35),
	Element = Color3.fromRGB(10, 6, 8):Lerp(Color3.fromRGB(255, 40, 70), 0.12),
	ElementBorder = Color3.fromRGB(10, 6, 8),
	ElementTransparency = 0.82,
	Hover = Color3.fromRGB(250, 235, 238):Lerp(Color3.fromRGB(10, 6, 8), 0.35),
	HoverChange = 0.07,
	InElementBorder = Color3.fromRGB(10, 6, 8):Lerp(Color3.fromRGB(255, 40, 70), 0.35),
	Input = Color3.fromRGB(10, 6, 8):Lerp(Color3.fromRGB(255, 40, 70), 0.22),
	InputFocused = Color3.fromRGB(10, 6, 8),
	InputIndicator = Color3.fromRGB(255, 40, 70):Lerp(Color3.fromRGB(250, 235, 238), 0.3),
	Keybind = Color3.fromRGB(10, 6, 8):Lerp(Color3.fromRGB(255, 40, 70), 0.22),
	SliderRail = Color3.fromRGB(255, 40, 70),
	SubText = Color3.fromRGB(250, 235, 238):Lerp(Color3.fromRGB(10, 6, 8), 0.35),
	Tab = Color3.fromRGB(250, 235, 238):Lerp(Color3.fromRGB(10, 6, 8), 0.35),
	TitleBarLine = Color3.fromRGB(10, 6, 8):Lerp(Color3.fromRGB(255, 40, 70), 0.35),
	ToggleSlider = Color3.fromRGB(250, 235, 238):Lerp(Color3.fromRGB(10, 6, 8), 0.35),
	ToggleToggled = Color3.new(0, 0, 0)
})
	result:AddCustomTheme("☣ Toxic Neon", {
	Name = "☣ Toxic Neon",
	Text = Color3.fromRGB(235, 255, 230),
	Accent = Color3.fromRGB(140, 255, 40),
	AcrylicBorder = Color3.fromRGB(6, 10, 6):Lerp(Color3.fromRGB(140, 255, 40), 0.35),
	AcrylicGradient = ColorSequence.new(Color3.fromRGB(6, 10, 6):Lerp(Color3.fromRGB(140, 255, 40), 0.1), Color3.fromRGB(6, 10, 6)),
	AcrylicMain = Color3.fromRGB(6, 10, 6),
	AcrylicNoise = 0.95,
	Dialog = Color3.fromRGB(6, 10, 6):Lerp(Color3.fromRGB(140, 255, 40), 0.12),
	DialogBorder = Color3.fromRGB(6, 10, 6):Lerp(Color3.fromRGB(140, 255, 40), 0.22),
	DialogButton = Color3.fromRGB(6, 10, 6):Lerp(Color3.fromRGB(140, 255, 40), 0.12),
	DialogButtonBorder = Color3.fromRGB(6, 10, 6):Lerp(Color3.fromRGB(140, 255, 40), 0.35),
	DialogHolder = Color3.fromRGB(6, 10, 6),
	DialogHolderLine = Color3.fromRGB(6, 10, 6):Lerp(Color3.fromRGB(140, 255, 40), 0.2),
	DialogInput = Color3.fromRGB(6, 10, 6):Lerp(Color3.fromRGB(140, 255, 40), 0.12),
	DialogInputLine = Color3.fromRGB(140, 255, 40):Lerp(Color3.fromRGB(235, 255, 230), 0.3),
	DropdownBorder = Color3.fromRGB(6, 10, 6),
	DropdownFrame = Color3.fromRGB(6, 10, 6):Lerp(Color3.fromRGB(140, 255, 40), 0.22),
	DropdownHolder = Color3.fromRGB(6, 10, 6):Lerp(Color3.fromRGB(140, 255, 40), 0.12),
	DropdownOption = Color3.fromRGB(235, 255, 230):Lerp(Color3.fromRGB(6, 10, 6), 0.35),
	Element = Color3.fromRGB(6, 10, 6):Lerp(Color3.fromRGB(140, 255, 40), 0.12),
	ElementBorder = Color3.fromRGB(6, 10, 6),
	ElementTransparency = 0.82,
	Hover = Color3.fromRGB(235, 255, 230):Lerp(Color3.fromRGB(6, 10, 6), 0.35),
	HoverChange = 0.07,
	InElementBorder = Color3.fromRGB(6, 10, 6):Lerp(Color3.fromRGB(140, 255, 40), 0.35),
	Input = Color3.fromRGB(6, 10, 6):Lerp(Color3.fromRGB(140, 255, 40), 0.22),
	InputFocused = Color3.fromRGB(6, 10, 6),
	InputIndicator = Color3.fromRGB(140, 255, 40):Lerp(Color3.fromRGB(235, 255, 230), 0.3),
	Keybind = Color3.fromRGB(6, 10, 6):Lerp(Color3.fromRGB(140, 255, 40), 0.22),
	SliderRail = Color3.fromRGB(140, 255, 40),
	SubText = Color3.fromRGB(235, 255, 230):Lerp(Color3.fromRGB(6, 10, 6), 0.35),
	Tab = Color3.fromRGB(235, 255, 230):Lerp(Color3.fromRGB(6, 10, 6), 0.35),
	TitleBarLine = Color3.fromRGB(6, 10, 6):Lerp(Color3.fromRGB(140, 255, 40), 0.35),
	ToggleSlider = Color3.fromRGB(235, 255, 230):Lerp(Color3.fromRGB(6, 10, 6), 0.35),
	ToggleToggled = Color3.new(0, 0, 0)
})
	result:AddCustomTheme("🌸 Sakura Night", {
	Name = "🌸 Sakura Night",
	Text = Color3.fromRGB(255, 238, 248),
	Accent = Color3.fromRGB(255, 110, 190),
	AcrylicBorder = Color3.fromRGB(14, 8, 16):Lerp(Color3.fromRGB(255, 110, 190), 0.35),
	AcrylicGradient = ColorSequence.new(Color3.fromRGB(14, 8, 16):Lerp(Color3.fromRGB(255, 110, 190), 0.1), Color3.fromRGB(14, 8, 16)),
	AcrylicMain = Color3.fromRGB(14, 8, 16),
	AcrylicNoise = 0.95,
	Dialog = Color3.fromRGB(14, 8, 16):Lerp(Color3.fromRGB(255, 110, 190), 0.12),
	DialogBorder = Color3.fromRGB(14, 8, 16):Lerp(Color3.fromRGB(255, 110, 190), 0.22),
	DialogButton = Color3.fromRGB(14, 8, 16):Lerp(Color3.fromRGB(255, 110, 190), 0.12),
	DialogButtonBorder = Color3.fromRGB(14, 8, 16):Lerp(Color3.fromRGB(255, 110, 190), 0.35),
	DialogHolder = Color3.fromRGB(14, 8, 16),
	DialogHolderLine = Color3.fromRGB(14, 8, 16):Lerp(Color3.fromRGB(255, 110, 190), 0.2),
	DialogInput = Color3.fromRGB(14, 8, 16):Lerp(Color3.fromRGB(255, 110, 190), 0.12),
	DialogInputLine = Color3.fromRGB(255, 110, 190):Lerp(Color3.fromRGB(255, 238, 248), 0.3),
	DropdownBorder = Color3.fromRGB(14, 8, 16),
	DropdownFrame = Color3.fromRGB(14, 8, 16):Lerp(Color3.fromRGB(255, 110, 190), 0.22),
	DropdownHolder = Color3.fromRGB(14, 8, 16):Lerp(Color3.fromRGB(255, 110, 190), 0.12),
	DropdownOption = Color3.fromRGB(255, 238, 248):Lerp(Color3.fromRGB(14, 8, 16), 0.35),
	Element = Color3.fromRGB(14, 8, 16):Lerp(Color3.fromRGB(255, 110, 190), 0.12),
	ElementBorder = Color3.fromRGB(14, 8, 16),
	ElementTransparency = 0.82,
	Hover = Color3.fromRGB(255, 238, 248):Lerp(Color3.fromRGB(14, 8, 16), 0.35),
	HoverChange = 0.07,
	InElementBorder = Color3.fromRGB(14, 8, 16):Lerp(Color3.fromRGB(255, 110, 190), 0.35),
	Input = Color3.fromRGB(14, 8, 16):Lerp(Color3.fromRGB(255, 110, 190), 0.22),
	InputFocused = Color3.fromRGB(14, 8, 16),
	InputIndicator = Color3.fromRGB(255, 110, 190):Lerp(Color3.fromRGB(255, 238, 248), 0.3),
	Keybind = Color3.fromRGB(14, 8, 16):Lerp(Color3.fromRGB(255, 110, 190), 0.22),
	SliderRail = Color3.fromRGB(255, 110, 190),
	SubText = Color3.fromRGB(255, 238, 248):Lerp(Color3.fromRGB(14, 8, 16), 0.35),
	Tab = Color3.fromRGB(255, 238, 248):Lerp(Color3.fromRGB(14, 8, 16), 0.35),
	TitleBarLine = Color3.fromRGB(14, 8, 16):Lerp(Color3.fromRGB(255, 110, 190), 0.35),
	ToggleSlider = Color3.fromRGB(255, 238, 248):Lerp(Color3.fromRGB(14, 8, 16), 0.35),
	ToggleToggled = Color3.new(0, 0, 0)
})
	result:AddCustomTheme("👑 Gold Rush", {
	Name = "👑 Gold Rush",
	Text = Color3.fromRGB(255, 244, 215),
	Accent = Color3.fromRGB(255, 196, 40),
	AcrylicBorder = Color3.fromRGB(12, 10, 5):Lerp(Color3.fromRGB(255, 196, 40), 0.35),
	AcrylicGradient = ColorSequence.new(Color3.fromRGB(12, 10, 5):Lerp(Color3.fromRGB(255, 196, 40), 0.1), Color3.fromRGB(12, 10, 5)),
	AcrylicMain = Color3.fromRGB(12, 10, 5),
	AcrylicNoise = 0.95,
	Dialog = Color3.fromRGB(12, 10, 5):Lerp(Color3.fromRGB(255, 196, 40), 0.12),
	DialogBorder = Color3.fromRGB(12, 10, 5):Lerp(Color3.fromRGB(255, 196, 40), 0.22),
	DialogButton = Color3.fromRGB(12, 10, 5):Lerp(Color3.fromRGB(255, 196, 40), 0.12),
	DialogButtonBorder = Color3.fromRGB(12, 10, 5):Lerp(Color3.fromRGB(255, 196, 40), 0.35),
	DialogHolder = Color3.fromRGB(12, 10, 5),
	DialogHolderLine = Color3.fromRGB(12, 10, 5):Lerp(Color3.fromRGB(255, 196, 40), 0.2),
	DialogInput = Color3.fromRGB(12, 10, 5):Lerp(Color3.fromRGB(255, 196, 40), 0.12),
	DialogInputLine = Color3.fromRGB(255, 196, 40):Lerp(Color3.fromRGB(255, 244, 215), 0.3),
	DropdownBorder = Color3.fromRGB(12, 10, 5),
	DropdownFrame = Color3.fromRGB(12, 10, 5):Lerp(Color3.fromRGB(255, 196, 40), 0.22),
	DropdownHolder = Color3.fromRGB(12, 10, 5):Lerp(Color3.fromRGB(255, 196, 40), 0.12),
	DropdownOption = Color3.fromRGB(255, 244, 215):Lerp(Color3.fromRGB(12, 10, 5), 0.35),
	Element = Color3.fromRGB(12, 10, 5):Lerp(Color3.fromRGB(255, 196, 40), 0.12),
	ElementBorder = Color3.fromRGB(12, 10, 5),
	ElementTransparency = 0.82,
	Hover = Color3.fromRGB(255, 244, 215):Lerp(Color3.fromRGB(12, 10, 5), 0.35),
	HoverChange = 0.07,
	InElementBorder = Color3.fromRGB(12, 10, 5):Lerp(Color3.fromRGB(255, 196, 40), 0.35),
	Input = Color3.fromRGB(12, 10, 5):Lerp(Color3.fromRGB(255, 196, 40), 0.22),
	InputFocused = Color3.fromRGB(12, 10, 5),
	InputIndicator = Color3.fromRGB(255, 196, 40):Lerp(Color3.fromRGB(255, 244, 215), 0.3),
	Keybind = Color3.fromRGB(12, 10, 5):Lerp(Color3.fromRGB(255, 196, 40), 0.22),
	SliderRail = Color3.fromRGB(255, 196, 40),
	SubText = Color3.fromRGB(255, 244, 215):Lerp(Color3.fromRGB(12, 10, 5), 0.35),
	Tab = Color3.fromRGB(255, 244, 215):Lerp(Color3.fromRGB(12, 10, 5), 0.35),
	TitleBarLine = Color3.fromRGB(12, 10, 5):Lerp(Color3.fromRGB(255, 196, 40), 0.35),
	ToggleSlider = Color3.fromRGB(255, 244, 215):Lerp(Color3.fromRGB(12, 10, 5), 0.35),
	ToggleToggled = Color3.new(0, 0, 0)
})
	result:AddCustomTheme("🧊 Ice Dragon", {
	Name = "🧊 Ice Dragon",
	Text = Color3.fromRGB(230, 248, 255),
	Accent = Color3.fromRGB(70, 220, 255),
	AcrylicBorder = Color3.fromRGB(5, 10, 16):Lerp(Color3.fromRGB(70, 220, 255), 0.35),
	AcrylicGradient = ColorSequence.new(Color3.fromRGB(5, 10, 16):Lerp(Color3.fromRGB(70, 220, 255), 0.1), Color3.fromRGB(5, 10, 16)),
	AcrylicMain = Color3.fromRGB(5, 10, 16),
	AcrylicNoise = 0.95,
	Dialog = Color3.fromRGB(5, 10, 16):Lerp(Color3.fromRGB(70, 220, 255), 0.12),
	DialogBorder = Color3.fromRGB(5, 10, 16):Lerp(Color3.fromRGB(70, 220, 255), 0.22),
	DialogButton = Color3.fromRGB(5, 10, 16):Lerp(Color3.fromRGB(70, 220, 255), 0.12),
	DialogButtonBorder = Color3.fromRGB(5, 10, 16):Lerp(Color3.fromRGB(70, 220, 255), 0.35),
	DialogHolder = Color3.fromRGB(5, 10, 16),
	DialogHolderLine = Color3.fromRGB(5, 10, 16):Lerp(Color3.fromRGB(70, 220, 255), 0.2),
	DialogInput = Color3.fromRGB(5, 10, 16):Lerp(Color3.fromRGB(70, 220, 255), 0.12),
	DialogInputLine = Color3.fromRGB(70, 220, 255):Lerp(Color3.fromRGB(230, 248, 255), 0.3),
	DropdownBorder = Color3.fromRGB(5, 10, 16),
	DropdownFrame = Color3.fromRGB(5, 10, 16):Lerp(Color3.fromRGB(70, 220, 255), 0.22),
	DropdownHolder = Color3.fromRGB(5, 10, 16):Lerp(Color3.fromRGB(70, 220, 255), 0.12),
	DropdownOption = Color3.fromRGB(230, 248, 255):Lerp(Color3.fromRGB(5, 10, 16), 0.35),
	Element = Color3.fromRGB(5, 10, 16):Lerp(Color3.fromRGB(70, 220, 255), 0.12),
	ElementBorder = Color3.fromRGB(5, 10, 16),
	ElementTransparency = 0.82,
	Hover = Color3.fromRGB(230, 248, 255):Lerp(Color3.fromRGB(5, 10, 16), 0.35),
	HoverChange = 0.07,
	InElementBorder = Color3.fromRGB(5, 10, 16):Lerp(Color3.fromRGB(70, 220, 255), 0.35),
	Input = Color3.fromRGB(5, 10, 16):Lerp(Color3.fromRGB(70, 220, 255), 0.22),
	InputFocused = Color3.fromRGB(5, 10, 16),
	InputIndicator = Color3.fromRGB(70, 220, 255):Lerp(Color3.fromRGB(230, 248, 255), 0.3),
	Keybind = Color3.fromRGB(5, 10, 16):Lerp(Color3.fromRGB(70, 220, 255), 0.22),
	SliderRail = Color3.fromRGB(70, 220, 255),
	SubText = Color3.fromRGB(230, 248, 255):Lerp(Color3.fromRGB(5, 10, 16), 0.35),
	Tab = Color3.fromRGB(230, 248, 255):Lerp(Color3.fromRGB(5, 10, 16), 0.35),
	TitleBarLine = Color3.fromRGB(5, 10, 16):Lerp(Color3.fromRGB(70, 220, 255), 0.35),
	ToggleSlider = Color3.fromRGB(230, 248, 255):Lerp(Color3.fromRGB(5, 10, 16), 0.35),
	ToggleToggled = Color3.new(0, 0, 0)
})
	result:AddCustomTheme("🌆 Vaporwave", {
	Name = "🌆 Vaporwave",
	Text = Color3.fromRGB(240, 225, 255),
	Accent = Color3.fromRGB(255, 60, 220),
	AcrylicBorder = Color3.fromRGB(16, 6, 30):Lerp(Color3.fromRGB(255, 60, 220), 0.35),
	AcrylicGradient = ColorSequence.new(Color3.fromRGB(16, 6, 30):Lerp(Color3.fromRGB(255, 60, 220), 0.1), Color3.fromRGB(16, 6, 30)),
	AcrylicMain = Color3.fromRGB(16, 6, 30),
	AcrylicNoise = 0.95,
	Dialog = Color3.fromRGB(16, 6, 30):Lerp(Color3.fromRGB(255, 60, 220), 0.12),
	DialogBorder = Color3.fromRGB(16, 6, 30):Lerp(Color3.fromRGB(255, 60, 220), 0.22),
	DialogButton = Color3.fromRGB(16, 6, 30):Lerp(Color3.fromRGB(255, 60, 220), 0.12),
	DialogButtonBorder = Color3.fromRGB(16, 6, 30):Lerp(Color3.fromRGB(255, 60, 220), 0.35),
	DialogHolder = Color3.fromRGB(16, 6, 30),
	DialogHolderLine = Color3.fromRGB(16, 6, 30):Lerp(Color3.fromRGB(255, 60, 220), 0.2),
	DialogInput = Color3.fromRGB(16, 6, 30):Lerp(Color3.fromRGB(255, 60, 220), 0.12),
	DialogInputLine = Color3.fromRGB(255, 60, 220):Lerp(Color3.fromRGB(240, 225, 255), 0.3),
	DropdownBorder = Color3.fromRGB(16, 6, 30),
	DropdownFrame = Color3.fromRGB(16, 6, 30):Lerp(Color3.fromRGB(255, 60, 220), 0.22),
	DropdownHolder = Color3.fromRGB(16, 6, 30):Lerp(Color3.fromRGB(255, 60, 220), 0.12),
	DropdownOption = Color3.fromRGB(240, 225, 255):Lerp(Color3.fromRGB(16, 6, 30), 0.35),
	Element = Color3.fromRGB(16, 6, 30):Lerp(Color3.fromRGB(255, 60, 220), 0.12),
	ElementBorder = Color3.fromRGB(16, 6, 30),
	ElementTransparency = 0.82,
	Hover = Color3.fromRGB(240, 225, 255):Lerp(Color3.fromRGB(16, 6, 30), 0.35),
	HoverChange = 0.07,
	InElementBorder = Color3.fromRGB(16, 6, 30):Lerp(Color3.fromRGB(255, 60, 220), 0.35),
	Input = Color3.fromRGB(16, 6, 30):Lerp(Color3.fromRGB(255, 60, 220), 0.22),
	InputFocused = Color3.fromRGB(16, 6, 30),
	InputIndicator = Color3.fromRGB(255, 60, 220):Lerp(Color3.fromRGB(240, 225, 255), 0.3),
	Keybind = Color3.fromRGB(16, 6, 30):Lerp(Color3.fromRGB(255, 60, 220), 0.22),
	SliderRail = Color3.fromRGB(255, 60, 220),
	SubText = Color3.fromRGB(240, 225, 255):Lerp(Color3.fromRGB(16, 6, 30), 0.35),
	Tab = Color3.fromRGB(240, 225, 255):Lerp(Color3.fromRGB(16, 6, 30), 0.35),
	TitleBarLine = Color3.fromRGB(16, 6, 30):Lerp(Color3.fromRGB(255, 60, 220), 0.35),
	ToggleSlider = Color3.fromRGB(240, 225, 255):Lerp(Color3.fromRGB(16, 6, 30), 0.35),
	ToggleToggled = Color3.new(0, 0, 0)
})
	result:AddCustomTheme("🍈 Durian Gold", {
	Name = "🍈 Durian Gold",
	Text = Color3.fromRGB(250, 252, 225),
	Accent = Color3.fromRGB(190, 220, 40),
	AcrylicBorder = Color3.fromRGB(10, 12, 5):Lerp(Color3.fromRGB(190, 220, 40), 0.35),
	AcrylicGradient = ColorSequence.new(Color3.fromRGB(10, 12, 5):Lerp(Color3.fromRGB(190, 220, 40), 0.1), Color3.fromRGB(10, 12, 5)),
	AcrylicMain = Color3.fromRGB(10, 12, 5),
	AcrylicNoise = 0.95,
	Dialog = Color3.fromRGB(10, 12, 5):Lerp(Color3.fromRGB(190, 220, 40), 0.12),
	DialogBorder = Color3.fromRGB(10, 12, 5):Lerp(Color3.fromRGB(190, 220, 40), 0.22),
	DialogButton = Color3.fromRGB(10, 12, 5):Lerp(Color3.fromRGB(190, 220, 40), 0.12),
	DialogButtonBorder = Color3.fromRGB(10, 12, 5):Lerp(Color3.fromRGB(190, 220, 40), 0.35),
	DialogHolder = Color3.fromRGB(10, 12, 5),
	DialogHolderLine = Color3.fromRGB(10, 12, 5):Lerp(Color3.fromRGB(190, 220, 40), 0.2),
	DialogInput = Color3.fromRGB(10, 12, 5):Lerp(Color3.fromRGB(190, 220, 40), 0.12),
	DialogInputLine = Color3.fromRGB(190, 220, 40):Lerp(Color3.fromRGB(250, 252, 225), 0.3),
	DropdownBorder = Color3.fromRGB(10, 12, 5),
	DropdownFrame = Color3.fromRGB(10, 12, 5):Lerp(Color3.fromRGB(190, 220, 40), 0.22),
	DropdownHolder = Color3.fromRGB(10, 12, 5):Lerp(Color3.fromRGB(190, 220, 40), 0.12),
	DropdownOption = Color3.fromRGB(250, 252, 225):Lerp(Color3.fromRGB(10, 12, 5), 0.35),
	Element = Color3.fromRGB(10, 12, 5):Lerp(Color3.fromRGB(190, 220, 40), 0.12),
	ElementBorder = Color3.fromRGB(10, 12, 5),
	ElementTransparency = 0.82,
	Hover = Color3.fromRGB(250, 252, 225):Lerp(Color3.fromRGB(10, 12, 5), 0.35),
	HoverChange = 0.07,
	InElementBorder = Color3.fromRGB(10, 12, 5):Lerp(Color3.fromRGB(190, 220, 40), 0.35),
	Input = Color3.fromRGB(10, 12, 5):Lerp(Color3.fromRGB(190, 220, 40), 0.22),
	InputFocused = Color3.fromRGB(10, 12, 5),
	InputIndicator = Color3.fromRGB(190, 220, 40):Lerp(Color3.fromRGB(250, 252, 225), 0.3),
	Keybind = Color3.fromRGB(10, 12, 5):Lerp(Color3.fromRGB(190, 220, 40), 0.22),
	SliderRail = Color3.fromRGB(190, 220, 40),
	SubText = Color3.fromRGB(250, 252, 225):Lerp(Color3.fromRGB(10, 12, 5), 0.35),
	Tab = Color3.fromRGB(250, 252, 225):Lerp(Color3.fromRGB(10, 12, 5), 0.35),
	TitleBarLine = Color3.fromRGB(10, 12, 5):Lerp(Color3.fromRGB(190, 220, 40), 0.35),
	ToggleSlider = Color3.fromRGB(250, 252, 225):Lerp(Color3.fromRGB(10, 12, 5), 0.35),
	ToggleToggled = Color3.new(0, 0, 0)
})
	result:AddCustomTheme("💀 Hacker Logo", {
	Name = "💀 Hacker Logo",
	Text = Color3.fromRGB(225, 255, 232),
	Accent = Color3.fromRGB(40, 255, 70),
	AcrylicBorder = Color3.fromRGB(5, 9, 6):Lerp(Color3.fromRGB(40, 255, 70), 0.35),
	AcrylicGradient = ColorSequence.new(Color3.fromRGB(5, 9, 6):Lerp(Color3.fromRGB(40, 255, 70), 0.1), Color3.fromRGB(5, 9, 6)),
	AcrylicMain = Color3.fromRGB(5, 9, 6),
	AcrylicNoise = 0.95,
	Dialog = Color3.fromRGB(5, 9, 6):Lerp(Color3.fromRGB(40, 255, 70), 0.12),
	DialogBorder = Color3.fromRGB(5, 9, 6):Lerp(Color3.fromRGB(40, 255, 70), 0.22),
	DialogButton = Color3.fromRGB(5, 9, 6):Lerp(Color3.fromRGB(40, 255, 70), 0.12),
	DialogButtonBorder = Color3.fromRGB(5, 9, 6):Lerp(Color3.fromRGB(40, 255, 70), 0.35),
	DialogHolder = Color3.fromRGB(5, 9, 6),
	DialogHolderLine = Color3.fromRGB(5, 9, 6):Lerp(Color3.fromRGB(40, 255, 70), 0.2),
	DialogInput = Color3.fromRGB(5, 9, 6):Lerp(Color3.fromRGB(40, 255, 70), 0.12),
	DialogInputLine = Color3.fromRGB(40, 255, 70):Lerp(Color3.fromRGB(225, 255, 232), 0.3),
	DropdownBorder = Color3.fromRGB(5, 9, 6),
	DropdownFrame = Color3.fromRGB(5, 9, 6):Lerp(Color3.fromRGB(40, 255, 70), 0.22),
	DropdownHolder = Color3.fromRGB(5, 9, 6):Lerp(Color3.fromRGB(40, 255, 70), 0.12),
	DropdownOption = Color3.fromRGB(225, 255, 232):Lerp(Color3.fromRGB(5, 9, 6), 0.35),
	Element = Color3.fromRGB(5, 9, 6):Lerp(Color3.fromRGB(40, 255, 70), 0.12),
	ElementBorder = Color3.fromRGB(5, 9, 6),
	ElementTransparency = 0.82,
	Hover = Color3.fromRGB(225, 255, 232):Lerp(Color3.fromRGB(5, 9, 6), 0.35),
	HoverChange = 0.07,
	InElementBorder = Color3.fromRGB(5, 9, 6):Lerp(Color3.fromRGB(40, 255, 70), 0.35),
	Input = Color3.fromRGB(5, 9, 6):Lerp(Color3.fromRGB(40, 255, 70), 0.22),
	InputFocused = Color3.fromRGB(5, 9, 6),
	InputIndicator = Color3.fromRGB(40, 255, 70):Lerp(Color3.fromRGB(225, 255, 232), 0.3),
	Keybind = Color3.fromRGB(5, 9, 6):Lerp(Color3.fromRGB(40, 255, 70), 0.22),
	SliderRail = Color3.fromRGB(40, 255, 70),
	SubText = Color3.fromRGB(225, 255, 232):Lerp(Color3.fromRGB(5, 9, 6), 0.35),
	Tab = Color3.fromRGB(225, 255, 232):Lerp(Color3.fromRGB(5, 9, 6), 0.35),
	TitleBarLine = Color3.fromRGB(5, 9, 6):Lerp(Color3.fromRGB(40, 255, 70), 0.35),
	ToggleSlider = Color3.fromRGB(225, 255, 232):Lerp(Color3.fromRGB(5, 9, 6), 0.35),
	ToggleToggled = Color3.new(0, 0, 0)
})
	local Window = result:CreateWindow({
	Title = "ฟาร์มทุเรียน 🍈",
	Acrylic = false,
	MinimizeKey = Enum.KeyCode.RightControl,
	Search = true,
	Size = UDim2.fromOffset(420, 280),
	SubTitle = "Bytlena https://discord.gg/NCg9BEUN9y",
	TabWidth = 120,
	Theme = "Dark"
})
	writefile("DurianLogo.png", "iVBORw0KGgoAAAANSUhEUgAAAUAAAAFACAMAAAD6TlWYAAAAkFBMVEUAAAAIDmHQ2+67zOb7wo+SodMtTnQg6iQyXou9Mz4M9g1NaIuNG0juq4/BND4CBmFKX3sg5iTrnHV6iscECWNfHVUzOYLWX2sBBV+Xlakj5yUSsx6baXEBewfCN0FziqkJ9lObao0WY2IAAP/eeYkmolFg/GCyhHsVpTMTh0FV/wD///8SdT0A//9RPoFlf3LeWHqUAAAAMHRSTlMA/P39/f389/z9Cv39/f0M/Zz9/V/9/f2e/WAG/QL9/QT9DAH9DgP9+PoDAeoB/Qbkad3lAAAfcklEQVR42u2dCUPjOLKA4xh7HSuHoeOAyQU0Tc/uvt39///uWaqSVJIl27mwMu2aaZqEQDsfdaskTyajjDLKKKOMMsooo4wyyiijjDLKKKOMMsooo4wyyiijjDLKKKOMMsooo4wyyiijjDLKKKOM8ifJz58jg/NkVf9HH6xGJCfAk7hWIArjKP3w8Q/r9ctLhPLysl6v1JdGafV5QE+xI/ICZEdGHfjc9CTDEWF74JisKD0GklGE3JZHhN342DGJp7XEcZJUxyMjDNdjTPbhW0t6FcCrjkwL0cP1qIQufgpfwhXPpAcIN9QXjgjd1nuMOb2kYg7Jsowo4ShE/o3qxzi+aXJkhYsfJ5hpJRx1UBdqL9J4/fhAAwnC0RPa3o/jq30f84tJ8GXkBwRR/Ti9acJaJTMRjmbMzZeq35GxfgQ30oxXo/mq4NFqvTZBVMKXP9oRrib/A/M98uARHws2Ejwr+kLwZT0lMxH+ufmMdH8ievQyXzfB6I/VQHR/ovLoZ74egus/U/+AX3WS+Y4EdfjV7u8U8/USXP2h4SNO4vgk820QxFDyRxGU4SOLT3Z/DoB/HkEafv3uL03tFZFNlpmNmbskuN/mbzmK+sQlb4bAcyY/Hj6c7i+N2gQxOgjiFMM+b5c3xwN+hfWft21+Y375xd/dwa8dHoWIRTEhmK8uv8Sb88tfH8+V1/q7FT9evTXCh0WvLIp3kN2uKEubYZMgt+KLLhGu8ab8/nGJ5PkH8qsEv9SHr3x/Xzjk831Xmk6xQbC234su8fGmRrydPF52dT8NfoUbX2HBe37+/KSP30uD4cYguL/wEv+R1+/yhgBfLwOo+dXhN80c+IpPW+2el7XMlofDMxdUxR215cjQwZAB5hfaR671D5bKUytlEbr3+fx8WD5rfgcuyxnIknPkkD8LjZAQXF/oZR7z/MZB5HwH/Zir+DGt8L2nlN87GGytbsvDcikU7ll8ylWQP8lBCpIHoYrElg2Cj8EGkUtzhBfgV5dv2uEpfgXQE5wINviEGzH8wec5xM/FZ+kiGLTk27yvbGvBz/iHff6i2ldM6Jt490yrn1A+CQwtl+BTH7nM58BQIdQEVySVdlxt6xvYfmMWCaWF/Jflc136B/w4tBoYf/MZAOTqxyPFsincemccGwXIER4Ew52D4Kp5qfQyxYXm+JXBVdK4sK7+H/IDgMu5yvt4sJg58S2BngCInyuCqIbzBsGfEzdB5/UPb9V5//4pH1qr82cAOFtSfi0ya5cDIehuLLQCHF4HT1j+5VOTKaR97zXA8hr8uGqWNsG+AHsa0BVp7fd7CAlC+APHFe334mX1nz3/8KH5YfYisNXJHfq/Vn7dAGuEc5PgmlwIv4LtFkKafa3bXAS67V68r/ol+wG0bWsEaee3fbhaKjxq8L93dd58aMFH/V5vgqse7mYQl9iM/P8yL8SZHeD4y2KxI00VBjZcHmZt/PronyA4Mwm6sxWTmuMF+xt3Y1y18Kv6N+sLcFaif6lMjwOZl0oFud6QXBkTldmMJH+z2XkEU1+lpi7269FdC++/vZulyh83YORXu7rDbC7gIMKyrnPnczNXpp+J17Ygm9tPSILi7396+hl4rW++xsgNjdjXjHnVAJ2/VKlwC+An/ohn6lSYcFtS7QN0SgXdHOdzhx9URvxX62/b25q7YTXs1cC8VQNlq4V9zggZroTlUlrfzAAosNqZSg8VtAi2aqBPGx73N3SCe9c/+kh+ZXnefME/Ifvj4XY504rFlXC+pITMwNHD+c1tgHPIB1vcIPWBToKPt+7pTzoC2+Tfb2J56+3t16/tr18f/4MMZpoIk5UGaTQGlloFZ97I63iuwU+6wVRlg18f9VXUIhcGv+jFut7MdoCqw3S6ubOFUFdwooNaIjLFjkSKRupiIjt0GTB827w9GzTzwHyI0tihgd4XTHAE61hPcBwh8M4tVdLWqhsH/ezVdn9lWc5ny2fDiF+s6+1Mar+7Lu74F7EEZnULtUpxv1tpWCNmf2CjbXnzvAsgZkaQIWkjvu+Jj9UXGnCcFAWTOwa5Fi6Jb9Oxd+lL/A5d/Ga6NSYBohHf98ZENGBcAi7U2lsp46+ZNbfbbzvDZekkeN9DRyuYwRIGXBQFnRgqleObkQLEn7DU9PoZMXZ7Um97evgGNDa0HIsL+z32sbDNpQyYq18BC3CpBnhC32A+nxMrnncZcUoicV3cqu6auj68RNmV039PQhouggjCI3DKhAYWhQT4fsDUzlj46AuwTQVr5RP/hjLi9dXb65cVc/3X5KCJxUd4a3TwX1rIFvTsoNI/VZ7MOgh2ViaN6SPxya8TVhLzmw9nnbDI/5eMIAKesOJCrgAfTIA6eswvAVjKbnePxpZ/MiG/JcBTrkW8CzDgoiAjMLwvODsoZkuj5ph78udeAOcRJZi2NRW88nrDWvgMBax4BCkkv4LwI8Waq/vSACoBzr3ucDm/igredjrr8TQFzIQCKoBov8+NwtbvBOftLVTLhE0veJYK3rgbs+89/fl/KoUpJMAURxCshEVE4Lm/a2rWJGLkSIx9HBx+kqpgqlXwhAGoYEaE5RzCMVUmrEY4DjTrgxx6bqrg0o3yuSmGCYMXTBsquPqu8anezZitK5Xeqr/3+VoXwVQBpQEvzY4CbXG1LIE8u2RuROrImcq85I7R/X/9y7XZIIjRhBy6CJhDy0leVECyDjIj5Rx/93olpD/Az2cj2S59Kri6w600CeTQJIUpxMQp5M4qkgoLVuJXRI8GtgDUXvDOtiOuRBW8qRWQmQr4SaY4ABZ0VOeG+BC6CVrlXuQOxPeogBV6QMOCZQRZisQO21oWQC/DuiPj5Ve3pNtVcHVvChjFsS5CCmHBDGsQabSqqzV3iHMdif8xA8hchm38NtMJahXMw2ln0eHdZuTK81/5B+4lhBywUADrIkTNPuN7BRVE4yu7FXHufqz42QCVCq7e9s3LdYzGDNLOyq1PZQ4jihDgJ2PwEpsIEmCpfKB4NHcZ89LXV5gbKeBcO8G06QVfHJebf38aOOnoAeVi5u6FKiC0YQwXSAAKFVQAXQTBmpetY0VzC6ArjGybg9KTUNpZr9Z0kcxhlAcEDSwNgLiAFhkAa6A+8Tet6avKeRm5k+m/7HLX+W4ev25bCrdX4HhJ/8Q+FkulAkIQZqSM0wDLJahQqRacHFIa2kjWAJovLD02THoyckL/8Zu3etWrC70AyhACEUTXce+iDIFNIHPdOuFukBOK2gjOxcJ5H7EBRs2ezJe4XPe+tVv2A33zf3rkKf/1iI1ADCEqjUaAWKkdDuitSkUQAJZtCBvaWPYFaNrwKyjZL/eo1E39YD0A++oQQvjj9TXFJJDpRqACKNsvEuBuh9MK+M7ltpl+ytZPA5UNq8vN9fZxW4bZK5c3G1k8hBSqE6PSwJkcQpAAn4DYHNvJ5eLpYoKOAwLAhvukMZNvTGO2Oe4eoF53BVk0SQKhnQAAP0UvmuTRuyckWOI7V0+cj9AFEHLp7d663Mbmvrf8uxh2bElK6hiM/JoA677yAQE+PSlgEQzw82dK+cR1AKb+enjYPqC/DpYxWKhfoX3g5+ywNEqPJyEFebfFE0HYmyGHX3YBdM7J5HlgR3184GowtPKVGyQAiQtEgAbCnXhCny6BDMt2eiQHj7xOcDuZ3E8rFZUPCYol9YIHEQNg8aRkJxk+4xPPuqTwp4Al2bhTuoth6gTD72lJFygbMVIFCyzldDMVg3AtCw1xVxTPTwSqcYqMgZE/Moq20pvGtDrBAYOwU3A1qT7LndAjzQQY6VAukAN8eHhYLJ58UvQ6ychA2wJwu8exHWtNbKsfDq6DuJpkuEATYL2vmns0GUMehFgIKdJd2coOtK/sA/Bl6GXN+hfUubCOaTQFWNjtrAONIQ9SKLSFxbQ++snBrthhwG5UIp4o0uPYjsnQJxfBakjC0sIECGEYAM5JDFk8GIKnxTjVsvaRSvSTJsCyFeDAox11p+cfvQFS++UCe6w5wJnhAi2AtrS4R+IlKUD3aW9AsNd01k1PLnrsNZNlB2EhwoZFKTKnafRDpyz8EPlXdpYJN13gSQDz27azOglKgA1+6ASXh5my4J4ADdvWAk8DwPYgfArA18mt15W2nnneuhKvt8b9wjSwShsEwQnWW4ZPseAupjXApxMArn59iK1z/jTs1kVdR56k8ugq1d4Pk0H+pv7LnaBpwRcRfPAAtI+40KXI0MNZHan0RE5liZkiWomk6qCJwxxbV6VQwEsAQqA2l6KiVoD5x5Az5idUcioNFN1UXU68f4rlD23BF/LjAI0wXNKTVc7QwNAA2md7FouZyjVAAS8laEQRdxYoAG7uF2Cha67ahg0FvJyf7QR9p/7eyYyWmss6kgURPLXy4YGrSrUrdQ5zMT3iBEulgMXDovAAzEMYLnoT6wpffBf9Vy3bt68tWRFZQT+VABSDldNpHS0W4uQJ7CMUV4ggqIKFVEEAWNVPVk6AYtKXHgCVb7++8IiCL/GOBjqIO9fLnrgmV5kJ9MNUJG387X0qBbwOv1oFwQlK1xCJLLtw9wO7383N98o5loXptM4rbA+pdP4npvUh6/3N47BafVO5nE6LT8igqQqqREb4Vq7rQtsbe5Ym9tov7y3VT3zbGaodJ++IL8P+kITR/LkSCgjvqoT2nsf/LfokzxZCooJCAcVLnADN6QP3nMUtk0H/Vi/4vYmtdFgMGwAXABAMS/TpnxcmkwVX2d+98MlCmBJEFcQQIp6kAO1u1qu+3G/txvjbWTZAJqbLVQwRAB9QBeWJvRSL9Fhl1UmwkD+BesFCnzchn3cATM3LdR96ftOOaocJg02AE1Tn5APABajOA+a5pq3StaOind87Wf60M5lSekAbYGpNFz3CJK97PvDmB3F3BZFX2OcPp0ww6QMlwKqDXwfBwvnKBVm/kz+Y+kA1GzP4hKovyO/pl+G03oROVr6LLFCYLSbVBKBgWhR1m/69iKgONf1fIdc3KUFoyeBTv+GbFy6AL2HMSG9bexj19A4clhXjLn8BsJhK7y8YTCnABe8S6ke/i8jLr86CimqBQbgqIGWWbf8SkC4Q4E4DVFkgbpjb+4eLvqkd0zFdpGxYtFFFIg1BhL8xPsNiAqystSR/OlhVOhHkH3Y7um5SagU0jV1a8L6lOxdeOcywJ52KTmClNKMBUKd2Dxiqu/r6EjcNIjjGsHtousD03vYqoQpWTIwkAEA2JQALE+BicUIirRY8aTLtAEgs+O52y8lD3+GwmBROOlk8aICsoYGiSilEcteZS9e+r9w1GjJ1Zc3rxN2CZNZWI+F+NsutcrhtiHCCqVJBlQg2AHKwmOBVXQQLma0Q1qCBv6HCXsjaTltwUDuGrdtdbLfNm0zggBETwwkpUUGMwv9tAFzo9lM/fjyVtDQQAC6ehHt0KeA+hJN3JiccmBBxgGmKKrgh1bBDA/GY2jrCtLtAPI1Vl7yWD+QBeQHl3pkeMA/itnJ/SYIcIGQy7MELELO2OsGeKm/py6Q3/DWWqloAsSxJjS0OYZzakfc+NyZFIxYC91x5lyYs2qsmGqgjptPpxl+IgALWkJntLW2AUVMBwzg3ptdwET33SalgitU/6FoN0GnBU65dRTvAdwmwcAGsFob+cQXc+M/k/v6Ti/L940kHP0WogkiwwARtYSWCygXyw5LbnGAlKEc2QD2lVes45RedcfbTa70FbHLDnV6Pp6kgExaMkVhoCPi6B8PV0ajZBVD3YhaGAgqAT1WhltXTVKUwJx2dlQ88JV2fY8PHjH59KBWs1SBN6e2Cq0YUcYJxmrAfYGne8IXwW7/Bedx9Tj0M4f5JE3IA7YZJfmQ+QWTSBqYzAL7bAAm+FD6cMBk9xHDRft8c0TdOb3hBI87QD2bKSi0TNhYhO9KYyMy41Sz1YmeoH85z4D2+PhwXG3QeDRXdKiK5TK2GWSHteOqJInaJ4eoI+ix4R9SPm6824Hs9CFndyjpDgEINscVvOkGiWq3FsFpToYpKXSC62pQ6wMnkfm9GvzZyGZ1U2+0EPUmwowvtDoCLBucFjlBb81jp3+IgbidBsOFG828Hq5q0T+pSwQVsuqNZtCiyd+apbdoB3jU/DCQbZgMUqfRi0WyW9hjvgJ40sWABkPQP0pTwu28FrAPJC9xFWIZiTAgdLcGekx3Yi6YeUBgxTWL+Fg4QpL6nuiCYUR3EOLxYXGk8UCUx6d+Onw7FhGDmLEYu4Vf/KkoCUPF7mUz+lgRTHUauANAKIZAyRX+DAOwneEUVlLuWiAJGfy9+IotAgpntBdtHAM9TQP7vRLqJf99ZzE9Bb/2ixhwxlRbv8N2ngr/7733AELyQyTPRP66CLxzf/SLk+DS9SDsobPFPfalMPaDx4Fl3d+qfkURrfgBR/A7v1PfV+Fz7doUpYy7otN8KpifJvut2B/ikezCpxY8jXH/cI0KOTysfq/e/EoLoBT3ZtFgkxiksTmnnGVtt46duxgLp4MfdGfJq8rEm9Kbxkem3puJI5SMIUbUsitLfIVT8yiY/0QWnDNf3pYQr2UVAehUTjSwjlKRRc3WJRGG5tlGr4kMrP5yZTskQR4TZEmX4ck9F8Wry9SLxTQFfxlhmEoR39uDPBusRyqryRhDFb0f4RZSfJJjdnRKupPer8cUCX01PCNPbNkyCC38u6EYo8xfCL2vyMxHejxKC+W7q87P4+Tu8CY1vJKMbX/B9+SsSc4jSzU/Zr2W+RAEJwjshiE3UmJ8Ez7j26YZ+lpKdG/h51Vii667fnhYNfhuLX2ZKdD8zlsBPqB+DvSLwbiyCqUxmvL3BTn5P5C6GUTu/O+qvrpX5VsivIEUwIRgpP3hSY2FhhQ+RvWzazNcgGPgSHS4jZdx8qzSFQ+ALlpF+dJamjfu+1aNvPc24gU/wM9Uv80n4Oiino4X7S+XNDAv1riAwkikP5QihtbDojU+diqe02Mz+7pPgSt4OF+8njAO+Rabfl3KHUQMA62hkLRYq9v4uyPJHT/UjBMMF+CHvwyLPnPA5JTpqpJMbVnlXM2HtF423NGZglEPt5hf4SrE6scPBr/HOKELyOavcp+FpekXkOhimF73A7w6EBnyM4dynGmGathD0Iaw3gfwmJ4ypU9q45e6Me1iTExFko7YfwECNePUfeSu5REz2MpMfvrvUQBhZI2l6dKjevPlbal1NbrfznqWapv31L2QVRAOOxU0IePUhShBT4xrvM03T6DJJT+QX8HHI8k5oIgDjXGr327kM4en4go0joIAbXsDVCaBix7LbMTwDXsgqKA8w53cRAXaM9X1L6ekMz6UXqhfUCljxAML7p5d6t6tK2lTBwETcCa0SCmgOlAcjtgqGmANCCYy7C4OT1CD4EeAmdX4/6zqFSXXKlm1qydgm2mT8b/GQP8PPQxRfYWyjJYK/6pfVn2XyIf8Uv4vJnydehM/xzzL1k4XnVc9l4sHGVsIAw4i6nXAdQZheUApFEtYgGFgms1YKCHtb+a7UsIRRguGFEXk74VQPHQRJMA0yjKgQMj2Gxy8WMo2TZBOsCkISyKAKloNXgUkNMLFUMKAwokMITB8kweGb1vwgkgRowzoJZLihcBomwCRYG8YkMFFnxAQKcGMDXIXVyKowBldhukCw4TS4jgK1YIjBAbrABsCgbBiz6CTDoxHiQC3YAXAVjAusoJEVZhBGBWwAXIdnwSINDBbghna16A2Hw6iDCwkwvCgM/JLIBhiCDUMn6zgVFpzdGcB1EPtZ9Q2tQ9XA2AUwkJ4W1MEZdLJQA6NAFfCH3qgSTiKjetEVnDPGAgaoauE0DSiX1hbMQgUYJ1YWA4MmmxBsmCYxcFplgIlg4gYYiA3LMgSHiQIEKBUwyZQFp2kwicy/EdiRHrVYBamAKo+WIw0BTMmYZQg9mOiqleyVAEYWwCBsWFlwCqP4WWCJYKwtODE2LKdB2LAsQ6aVPlrnemG4dvtCkuQqCkjzaH220TqMJIbpgdQrAUz0QMEFq/RUAY8NgNnQZ8vgVKooQ9QI6lUAJo2d+zwyxRcpIDMABmHDpAzRBK8AUE5iRMKCpSZukpMRUgWkANNIA1yHUoZQgMkVpjBIMiSBshMJxjFRQNpOpSeEDpjImOuZdFz3kkQwZlLdmjadxScRNBRQpIEp2R6QBpDI6DIER6IvHe2o33Lk+Q2IILpxEfRSNRSQDCaIA3rS4e90s5KrIcerAUR+7q/h1Fd8ngIm9NSVND3zlOSbJTHm5hl2ZgERT7M2/PCj43NCsAtgOvDKiOqlJnp4lukwHJ/Dj7WPFkawejDF/0+IIKSdamw/GzKRUUnMUSvgRQBj8HNtL+m17BxP1Uhb4shiGgDXAVlwdkkiGE83Xd+a9DJinAlMHACNs1yHXRlRSUzCmjsIz5wf6I4/TGSZMf7nozdtKiCmgQQfteGfQw5lVUQBswsy6R4KCEbMUMU4JafugSQugFCENGx4NciCpi5DCECmMun4HAVM+pQpMQHl42cZMObRqeIXDd1V/WmWIXgzYU7wzDwGQnD368CG5ehzTFuulJ+tgIl5LopJcDVcGRJDGaIa0iyThytqgHGfFjPUIKwXQKZGx4UKKj1sMWBMAw0DHtaGsZcK24Mz46rOBJj0850MGmhE16QethkwaqDFb8CGwk9XL9XsCJ4KsKIWXDFG6mFGHlWWE4zjHg4QsxgECHcMosXIarj9rUmWNfG1+7K40wXieaGJRqYfJdQJKoCxKV6AkduGhyhG4IgJ0Uu14J0PkBn88Kck1s80ogj8OJPe1MHPAqgiyoDFiHs1REpyIsBY9BGYLtgi1dUxHxkAVdkWdxgwAWgo4WAdmZV0gQkzj2Y7vSctKfA02gYYNR+ZGkjMuJ0fNGRRA61TRPhXfg61u4tYcEbXlVoz6dhVP2gNTAxkSS+AHQaMO+UicsrC0E4QAeJQFiSAffMYZwFGfGCrBibtAD38EgufzAijgQBCFkhcIPxK9RnRCqCv6o/t8otE4VYf2Exj+vCzplMz2wmuB4ohCbPtNzMSQenpm4sYpHpADUwUwNYozHjL1W/BHn4/DIBmIjMIQCyEcS6V8GsCjNsyaRo79WJSYuQtlZ3FsOmp/IxFYVIMizPPN98fhlUvEKfazBM+TYBen2cqIIThDalESCAnj1pd4DTpApjaEg3SVAWAmZpLtRIZCVBBcneMhSZqdzY99m5nncwP00DSzgoBYG1JTNutPutYJYIx0It9BPE/5f979LKTFgtu4acBNjQwHRIgiSFOgLJZErv5xWYVJrTrvbOZ5bPgNn6QBgYIMCOGqxdsVE+agHL6QDsd6axhKr8CtvJLIhfAaGCA2TQx8wFaFDPKx71wIc3bDMRRhwFHJ8Zfdz9aNRTwGO/1IFEYAaqpYy9As2fXUkYIVzVp5ecx4OQ8gFwPBulJQxpDABopgspjiLLFrs/dBJMWfj/O4vfDDVBc6DC1sAEwtfP7BsDeMmXe4ST8yjn8nEFYHeo2REta1sKkknPcftRTrfYg2DIYcw4/dxaDt/IbaMAIlpQYOYizJ8BeOigsVn2Ajz79mybJWQCxvTrMqDn2A6dic0OzQKeJ4LkAE+hlMf2pRwF78JPtVJcNDxRD0AmSsRj70qrrAMy6APbh50wDIwJwgJX1D6Flx9TFz5XH9AdYgfoy/itIBEvGf1jlTmGScwHKGDLYrldhw9UNAIp6ZAO7HMhHZw6dJP0BpmpV2AA40Kom2nClnGDqHk44x4aPvmNkk+mZ/Kw00LyXwUBT0jiferSKkCuE4VhuFLHF8oDTpLeYQdjCN9B4G27zOqYuBbwMYI3mWHdQYz7uFfMNh0nd9mFHaxwhTs4EGDWOTR9qxhwcVJpdHWBsd/+bw0On4DMHY1Jb/4baKIJekGU+gMn5ALsDTXIuwIb9DrfXC7xg5AVYTW9E8FR8Zju14VqH3ioXpd8L8HR8Og2MHPzWQ242XCuCDoDsFgDPwUfy6GZoH/TUCTTiiK5r3hTgefggDYzcNy0Z9gZVq1UUuVdrcMtWCPgkwMjJL4hjT+CeXNfMY87r+rUGYaesAjn6ifx2iae5LsAkuT7AAI5QbRI0plQHtt0OgEEcQqsIOgFOr0HvQnyJ4wiQkO65ru5Jb9x+50qJ4BXoqenURv4XzEHm8rbgtlyax1yHnkwDG+oX0C1tnEp4EUDxncm1pIlvPQnslkoTJ8LzAF4XniOGcO0L7s6GHOH6pamCQ8OzFXC9Xk0CxCeKEv5hbUI8mWByA9mYkSNMfFx+QlkJc29oOHVfua8dJ7cRpg/hgtZLsHdYRz0UvpAegQX3KdWb2vFTZjy5OV3wvn286G57FfD78QNQriZh85PLnbB8wUK5KSRLftQS5D1J/dPTXI5B4Nv8EPxYmDdm9ows4G78+Di0Fm4YqJ9UwHtQwXX7VpgLWzICBnT5bHE+hc8l2b0oIDZZuwkKCPh3nPQIw7EDUF+BYLz6+fMeAEJ75thDB5P+iUx8Jr6E8FvfhQKqtSbW3y47CcZna18i/mT3xG+C46twy/qrdaP97s3xiDxbP8+iaOjzjs9crasT2KtUEz8m7Fznx1g2+PLvBSvG4cjqrvh5O4RDyTq/M37Y3gqD3sv6P5O748d7MyInXA8tq9XkHvEphKF0Ku9U6hbhSr2FFW92uWRCPuIzjZdOJs7vnvh+pvGdo4wyyiijjDLKKKOMMsooo4wyyiijjDLKKKOMMsooo1wm/w+zvoFLQuPmpAAAAABJRU5ErkJggg==")
	local ImageLabel = Instance.new("ImageLabel")
	ImageLabel.Name = "DurianWatermark"
	ImageLabel.BackgroundTransparency = 1
	ImageLabel.Image = "rbxasset://DurianLogo.png"
	ImageLabel.ImageTransparency = 0.9
	ImageLabel.AnchorPoint = Vector2.new(1, 1)
	ImageLabel.Position = UDim2.new(1, -12, 1, -12)
	ImageLabel.Size = UDim2.fromOffset(190, 190)
	ImageLabel.ScaleType = Enum.ScaleType.Fit
	ImageLabel.ZIndex = 1
	ImageLabel.Visible = false
	ImageLabel.Parent = Window.Root
	local hui2 = gethui()
	local PlayerGui = Players.LocalPlayer:FindFirstChildOfClass("PlayerGui")
	local children63 = hui2:GetChildren()
	for i106, v106 in ipairs(children63) do
	end
	local children64 = CoreGui:GetChildren()
	for i107, v107 in ipairs(children64) do
	end
	local children65 = PlayerGui:GetChildren()
	for i108, v108 in ipairs(children65) do
	end
	local ScreenGui = Instance.new("ScreenGui")
	ScreenGui.Name = "DurianUIToggle"
	ScreenGui.ResetOnSpawn = false
	ScreenGui.IgnoreGuiInset = true
	ScreenGui.Parent = hui2
	local TextButton = Instance.new("TextButton")
	TextButton.AnchorPoint = Vector2.new(0.5, 0.5)
	TextButton.ClipsDescendants = false
	TextButton.Name = "HackerToggleBtn"
	TextButton.Position = UDim2.new(0, 45, 0.5, 0)
	TextButton.AutoButtonColor = false
	TextButton.Text = ""
	TextButton.BackgroundColor3 = Color3.fromRGB(10, 12, 20)
	TextButton.Size = UDim2.fromOffset(62, 62)
	TextButton.Parent = ScreenGui
	local UICorner = Instance.new("UICorner")
	UICorner.CornerRadius = UDim.new(1, 0)
	UICorner.Parent = TextButton
	local UIGradient = Instance.new("UIGradient")
	UIGradient.Color = ColorSequence.new(Color3.fromRGB(30, 34, 60), Color3.fromRGB(6, 7, 13))
	UIGradient.Rotation = 90
	UIGradient.Parent = TextButton
	local UIScale = Instance.new("UIScale")
	UIScale.Parent = TextButton
	local Frame = Instance.new("Frame")
	Frame.AnchorPoint = Vector2.new(0.5, 0.5)
	Frame.Name = "Glow"
	Frame.Position = UDim2.fromScale(0.5, 0.5)
	Frame.ZIndex = 0
	Frame.BackgroundTransparency = 1
	Frame.Size = UDim2.new(1, 8, 1, 8)
	Frame.Parent = TextButton
	local UICorner2 = Instance.new("UICorner")
	UICorner2.CornerRadius = UDim.new(1, 0)
	UICorner2.Parent = Frame
	local UIStroke = Instance.new("UIStroke")
	UIStroke.Thickness = 5
	UIStroke.Transparency = 0.8
	UIStroke.Color = Color3.new(1, 1, 1)
	UIStroke.Parent = Frame
	local UIGradient2 = Instance.new("UIGradient")
	UIGradient2.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.fromRGB(60, 255, 130), 0)), ColorSequenceKeypoint.new(0.5, Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.fromRGB(200, 255, 60), 0)), ColorSequenceKeypoint.new(1, Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.fromRGB(255, 200, 50), 0)) })
	UIGradient2.Parent = UIStroke
	local Frame2 = Instance.new("Frame")
	Frame2.BackgroundTransparency = 1
	Frame2.Name = "Visual"
	Frame2.Size = UDim2.fromScale(1, 1)
	Frame2.Parent = TextButton
	local Frame3 = Instance.new("Frame")
	Frame3.AnchorPoint = Vector2.new(0.5, 0.5)
	Frame3.Name = "Ring1"
	Frame3.Position = UDim2.fromScale(0.5, 0.5)
	Frame3.BackgroundTransparency = 1
	Frame3.Size = UDim2.new(1, -5, 1, -5)
	Frame3.Parent = Frame2
	local UICorner3 = Instance.new("UICorner")
	UICorner3.CornerRadius = UDim.new(1, 0)
	UICorner3.Parent = Frame3
	local UIStroke2 = Instance.new("UIStroke")
	UIStroke2.Thickness = 3
	UIStroke2.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	UIStroke2.Color = Color3.new(1, 1, 1)
	UIStroke2.Parent = Frame3
	local UIGradient3 = Instance.new("UIGradient")
	UIGradient3.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.fromRGB(60, 255, 130), 0)), ColorSequenceKeypoint.new(0.5, Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.fromRGB(200, 255, 60), 0)), ColorSequenceKeypoint.new(1, Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.fromRGB(255, 200, 50), 0)) })
	UIGradient3.Transparency = NumberSequence.new({ NumberSequenceKeypoint.new(0, 0), NumberSequenceKeypoint.new(0.32, 0), NumberSequenceKeypoint.new(0.33, 1), NumberSequenceKeypoint.new(0.5, 1), NumberSequenceKeypoint.new(0.51, 0), NumberSequenceKeypoint.new(0.82, 0), NumberSequenceKeypoint.new(0.83, 1), NumberSequenceKeypoint.new(1, 1) })
	UIGradient3.Parent = UIStroke2
	local Frame4 = Instance.new("Frame")
	Frame4.AnchorPoint = Vector2.new(0.5, 0.5)
	Frame4.Name = "Ring2"
	Frame4.Position = UDim2.fromScale(0.5, 0.5)
	Frame4.BackgroundTransparency = 1
	Frame4.Size = UDim2.new(0.76, 0, 0.76, 0)
	Frame4.Parent = Frame2
	local UICorner4 = Instance.new("UICorner")
	UICorner4.CornerRadius = UDim.new(1, 0)
	UICorner4.Parent = Frame4
	local UIStroke3 = Instance.new("UIStroke")
	UIStroke3.Thickness = 2
	UIStroke3.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	UIStroke3.Color = Color3.new(1, 1, 1)
	UIStroke3.Parent = Frame4
	local UIGradient4 = Instance.new("UIGradient")
	UIGradient4.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.fromRGB(60, 255, 130), 0)), ColorSequenceKeypoint.new(0.5, Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.fromRGB(200, 255, 60), 0)), ColorSequenceKeypoint.new(1, Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.fromRGB(255, 200, 50), 0)) })
	UIGradient4.Transparency = NumberSequence.new({ NumberSequenceKeypoint.new(0, 0), NumberSequenceKeypoint.new(0.32, 0), NumberSequenceKeypoint.new(0.33, 1), NumberSequenceKeypoint.new(0.5, 1), NumberSequenceKeypoint.new(0.51, 0), NumberSequenceKeypoint.new(0.82, 0), NumberSequenceKeypoint.new(0.83, 1), NumberSequenceKeypoint.new(1, 1) })
	UIGradient4.Parent = UIStroke3
	local Frame5 = Instance.new("Frame")
	Frame5.AnchorPoint = Vector2.new(0.5, 0.5)
	Frame5.Name = "Body"
	Frame5.Position = UDim2.fromScale(0.5, 0.5)
	Frame5.BackgroundColor3 = Color3.new(1, 1, 1)
	Frame5.ZIndex = 3
	Frame5.BorderSizePixel = 0
	Frame5.Size = UDim2.fromOffset(22, 22)
	Frame5.Parent = Frame2
	local UICorner5 = Instance.new("UICorner")
	UICorner5.CornerRadius = UDim.new(1, 0)
	UICorner5.Parent = Frame5
	local UIGradient5 = Instance.new("UIGradient")
	UIGradient5.Color = ColorSequence.new(Color3.fromRGB(255, 214, 70), Color3.fromRGB(150, 215, 40))
	UIGradient5.Rotation = 45
	UIGradient5.Parent = Frame5
	local UIStroke4 = Instance.new("UIStroke")
	UIStroke4.Thickness = 1.5
	UIStroke4.Transparency = 0.45
	UIStroke4.Color = Color3.fromRGB(255, 255, 200)
	UIStroke4.Parent = Frame5
	local Frame6 = Instance.new("Frame")
	Frame6.AnchorPoint = Vector2.new(0.5, 0.5)
	Frame6.BackgroundColor3 = Color3.new(1, 1, 1)
	Frame6.BackgroundTransparency = 0.45
	Frame6.Position = UDim2.fromScale(0.34, 0.3)
	Frame6.Rotation = -35
	Frame6.ZIndex = 4
	Frame6.BorderSizePixel = 0
	Frame6.Size = UDim2.fromOffset(8, 4)
	Frame6.Parent = Frame5
	local UICorner6 = Instance.new("UICorner")
	UICorner6.CornerRadius = UDim.new(1, 0)
	UICorner6.Parent = Frame6
	local Frame7 = Instance.new("Frame")
	Frame7.AnchorPoint = Vector2.new(0.5, 0.5)
	Frame7.Name = "Spike1"
	Frame7.BackgroundColor3 = Color3.fromRGB(170, 235, 60)
	Frame7.ZIndex = 2
	Frame7.BorderSizePixel = 0
	Frame7.Size = UDim2.fromOffset(4, 8)
	Frame7.Parent = Frame2
	local UICorner7 = Instance.new("UICorner")
	UICorner7.CornerRadius = UDim.new(0, 2)
	UICorner7.Parent = Frame7
	local Frame8 = Instance.new("Frame")
	Frame8.AnchorPoint = Vector2.new(0.5, 0.5)
	Frame8.Name = "Spike2"
	Frame8.BackgroundColor3 = Color3.fromRGB(170, 235, 60)
	Frame8.ZIndex = 2
	Frame8.BorderSizePixel = 0
	Frame8.Size = UDim2.fromOffset(4, 8)
	Frame8.Parent = Frame2
	local UICorner8 = Instance.new("UICorner")
	UICorner8.CornerRadius = UDim.new(0, 2)
	UICorner8.Parent = Frame8
	local Frame9 = Instance.new("Frame")
	Frame9.AnchorPoint = Vector2.new(0.5, 0.5)
	Frame9.Name = "Spike3"
	Frame9.BackgroundColor3 = Color3.fromRGB(170, 235, 60)
	Frame9.ZIndex = 2
	Frame9.BorderSizePixel = 0
	Frame9.Size = UDim2.fromOffset(4, 8)
	Frame9.Parent = Frame2
	local UICorner9 = Instance.new("UICorner")
	UICorner9.CornerRadius = UDim.new(0, 2)
	UICorner9.Parent = Frame9
	local Frame10 = Instance.new("Frame")
	Frame10.AnchorPoint = Vector2.new(0.5, 0.5)
	Frame10.Name = "Spike4"
	Frame10.BackgroundColor3 = Color3.fromRGB(170, 235, 60)
	Frame10.ZIndex = 2
	Frame10.BorderSizePixel = 0
	Frame10.Size = UDim2.fromOffset(4, 8)
	Frame10.Parent = Frame2
	local UICorner10 = Instance.new("UICorner")
	UICorner10.CornerRadius = UDim.new(0, 2)
	UICorner10.Parent = Frame10
	local Frame11 = Instance.new("Frame")
	Frame11.AnchorPoint = Vector2.new(0.5, 0.5)
	Frame11.Name = "Spike5"
	Frame11.BackgroundColor3 = Color3.fromRGB(170, 235, 60)
	Frame11.ZIndex = 2
	Frame11.BorderSizePixel = 0
	Frame11.Size = UDim2.fromOffset(4, 8)
	Frame11.Parent = Frame2
	local UICorner11 = Instance.new("UICorner")
	UICorner11.CornerRadius = UDim.new(0, 2)
	UICorner11.Parent = Frame11
	local Frame12 = Instance.new("Frame")
	Frame12.AnchorPoint = Vector2.new(0.5, 0.5)
	Frame12.Name = "Spike6"
	Frame12.BackgroundColor3 = Color3.fromRGB(170, 235, 60)
	Frame12.ZIndex = 2
	Frame12.BorderSizePixel = 0
	Frame12.Size = UDim2.fromOffset(4, 8)
	Frame12.Parent = Frame2
	local UICorner12 = Instance.new("UICorner")
	UICorner12.CornerRadius = UDim.new(0, 2)
	UICorner12.Parent = Frame12
	local Frame13 = Instance.new("Frame")
	Frame13.AnchorPoint = Vector2.new(0.5, 0.5)
	Frame13.Name = "Spike7"
	Frame13.BackgroundColor3 = Color3.fromRGB(170, 235, 60)
	Frame13.ZIndex = 2
	Frame13.BorderSizePixel = 0
	Frame13.Size = UDim2.fromOffset(4, 8)
	Frame13.Parent = Frame2
	local UICorner13 = Instance.new("UICorner")
	UICorner13.CornerRadius = UDim.new(0, 2)
	UICorner13.Parent = Frame13
	local Frame14 = Instance.new("Frame")
	Frame14.AnchorPoint = Vector2.new(0.5, 0.5)
	Frame14.Name = "Spike8"
	Frame14.BackgroundColor3 = Color3.fromRGB(170, 235, 60)
	Frame14.ZIndex = 2
	Frame14.BorderSizePixel = 0
	Frame14.Size = UDim2.fromOffset(4, 8)
	Frame14.Parent = Frame2
	local UICorner14 = Instance.new("UICorner")
	UICorner14.CornerRadius = UDim.new(0, 2)
	UICorner14.Parent = Frame14
	local Frame15 = Instance.new("Frame")
	Frame15.AnchorPoint = Vector2.new(0.5, 0.5)
	Frame15.Name = "Spike9"
	Frame15.BackgroundColor3 = Color3.fromRGB(170, 235, 60)
	Frame15.ZIndex = 2
	Frame15.BorderSizePixel = 0
	Frame15.Size = UDim2.fromOffset(4, 8)
	Frame15.Parent = Frame2
	local UICorner15 = Instance.new("UICorner")
	UICorner15.CornerRadius = UDim.new(0, 2)
	UICorner15.Parent = Frame15
	local Frame16 = Instance.new("Frame")
	Frame16.AnchorPoint = Vector2.new(0.5, 0.5)
	Frame16.Name = "Spike10"
	Frame16.BackgroundColor3 = Color3.fromRGB(170, 235, 60)
	Frame16.ZIndex = 2
	Frame16.BorderSizePixel = 0
	Frame16.Size = UDim2.fromOffset(4, 8)
	Frame16.Parent = Frame2
	local UICorner16 = Instance.new("UICorner")
	UICorner16.CornerRadius = UDim.new(0, 2)
	UICorner16.Parent = Frame16
	local Frame17 = Instance.new("Frame")
	Frame17.AnchorPoint = Vector2.new(0.5, 0.5)
	Frame17.Name = "Sat"
	Frame17.BackgroundColor3 = Color3.new(1, 1, 1)
	Frame17.ZIndex = 5
	Frame17.BorderSizePixel = 0
	Frame17.Size = UDim2.fromOffset(6, 6)
	Frame17.Parent = Frame2
	local UICorner17 = Instance.new("UICorner")
	UICorner17.CornerRadius = UDim.new(1, 0)
	UICorner17.Parent = Frame17
	local UIStroke5 = Instance.new("UIStroke")
	UIStroke5.Thickness = 3
	UIStroke5.Transparency = 0.6
	UIStroke5.Color = Color3.fromRGB(160, 255, 255)
	UIStroke5.Parent = Frame17
	local Frame18 = Instance.new("Frame")
	Frame18.AnchorPoint = Vector2.new(0.5, 0.5)
	Frame18.Name = "StatusDot"
	Frame18.Position = UDim2.new(0.86, 0, 0.14, 0)
	Frame18.BackgroundColor3 = Color3.fromRGB(110, 115, 130)
	Frame18.ZIndex = 6
	Frame18.BorderSizePixel = 0
	Frame18.Size = UDim2.fromOffset(13, 13)
	Frame18.Parent = TextButton
	local UICorner18 = Instance.new("UICorner")
	UICorner18.CornerRadius = UDim.new(1, 0)
	UICorner18.Parent = Frame18
	local UIStroke6 = Instance.new("UIStroke")
	UIStroke6.Thickness = 2
	UIStroke6.Color = Color3.fromRGB(12, 14, 24)
	UIStroke6.Parent = Frame18
	UIGradient5.Color = ColorSequence.new(Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3):Lerp(Color3.new(1, 1, 1), 0.25), Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3))
	task.spawn(function(...)
		RunService.Heartbeat:Wait()
		Frame3.Rotation = 3.5
		Frame4.Rotation = 357.55
		UIGradient5.Rotation = 45.666666666666664
		Frame7.Position = UDim2.fromOffset(47.460790234314238, 31.137176427347583)
		Frame7.Rotation = 90.477464829275689
		Frame8.Position = UDim2.fromOffset(44.265287944307232, 40.807724914652503)
		Frame8.Rotation = 126.47746482927568
		Frame9.Position = UDim2.fromOffset(35.53567405291421, 45.365616221547604)
		Frame9.Rotation = 162.47746482927568
		Frame10.Position = UDim2.fromOffset(26.727553994879308, 43.785704987014171)
		Frame10.Rotation = 198.47746482927568
		Frame11.Position = UDim2.fromOffset(20.255378533537119, 38.670441930467177)
		Frame11.Rotation = 234.47746482927568
		Frame12.Position = UDim2.fromOffset(16.516442934777846, 30.879300897149502)
		Frame12.Rotation = 270.47746482927568
		Frame13.Position = UDim2.fromOffset(18.014802082322, 21.399360370193961)
		Frame13.Rotation = 306.47746482927568
		Frame14.Position = UDim2.fromOffset(25.982327560344007, 15.107774114142684)
		Frame14.Rotation = 342.47746482927573
		Frame15.Position = UDim2.fromOffset(35.93111366204694, 16.24316879258344)
		Frame15.Rotation = 378.47746482927568
		Frame16.Position = UDim2.fromOffset(42.269487805047589, 22.954862992192311)
		Frame16.Rotation = 414.47746482927568
		Frame17.Position = UDim2.fromOffset(58.981179886469285, 32.026436632747888)
		Frame2.Position = UDim2.fromOffset(0, 0.053323457338805794)
		UIStroke.Transparency = 0.75400249968751853
		UIStroke.Thickness = 5.0749687539060178
		UIGradient3.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.066666666666666666)), ColorSequenceKeypoint.new(0.5, Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.066666666666666666)), ColorSequenceKeypoint.new(1, Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.066666666666666666)) })
		UIGradient4.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.066666666666666666)), ColorSequenceKeypoint.new(0.5, Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.066666666666666666)), ColorSequenceKeypoint.new(1, Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.066666666666666666)) })
		UIGradient2.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.066666666666666666)), ColorSequenceKeypoint.new(0.5, Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.066666666666666666)), ColorSequenceKeypoint.new(1, Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.066666666666666666)) })
		Frame7.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.066666666666666666)
		Frame8.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.066666666666666666)
		Frame9.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.066666666666666666)
		Frame10.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.066666666666666666)
		Frame11.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.066666666666666666)
		Frame12.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.066666666666666666)
		Frame13.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.066666666666666666)
		Frame14.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.066666666666666666)
		Frame15.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.066666666666666666)
		Frame16.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.066666666666666666)
		Frame17.BackgroundColor3 = Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.066666666666666666):Lerp(Color3.new(1, 1, 1), 0.6)
		Frame18.BackgroundColor3 = Color3.fromRGB(60, 255, 130)
		Frame18.Size = UDim2.fromOffset(13.299500249940484, 13.299500249940484)
		local Frame19 = Instance.new("Frame")
		Frame19.AnchorPoint = Vector2.new(0.5, 0.5)
		Frame19.BackgroundTransparency = 1
		Frame19.Position = UDim2.fromScale(0.5, 0.5)
		Frame19.ZIndex = 0
		Frame19.Size = UDim2.fromOffset(54, 54)
		Frame19.Parent = TextButton
		local UICorner19 = Instance.new("UICorner")
		UICorner19.CornerRadius = UDim.new(1, 0)
		UICorner19.Parent = Frame19
		local UIStroke7 = Instance.new("UIStroke")
		UIStroke7.Thickness = 3
		UIStroke7.Transparency = 0.15
		UIStroke7.Color = Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3):Lerp(Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.5)
		UIStroke7.Parent = Frame19
		local tween = TweenService:Create(Frame19, TweenInfo.new(0.95, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Size = UDim2.fromOffset(124, 124) })
		tween:Play()
		local tween2 = TweenService:Create(UIStroke7, TweenInfo.new(0.95, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Thickness = 0.5, Transparency = 1 })
		tween2:Play()
		task.delay(1.1, function(...)
			Frame19:Destroy()
		end)
		RunService.Heartbeat:Wait()
		Frame3.Rotation = 7
		Frame4.Rotation = 355.1
		UIGradient5.Rotation = 46.333333333333329
		Frame7.Position = UDim2.fromOffset(47.861831056044281, 31.281056541836545)
		Frame7.Rotation = 90.954929658551379
		Frame8.Position = UDim2.fromOffset(44.436034799759092, 41.108217506388414)
		Frame8.Rotation = 126.95492965855138
		Frame9.Position = UDim2.fromOffset(35.495009141543058, 45.661254035439875)
		Frame9.Rotation = 162.95492965855135
		Frame10.Position = UDim2.fromOffset(26.521614718043267, 44.039487135915763)
		Frame10.Rotation = 198.95492965855135
		Frame11.Position = UDim2.fromOffset(19.870965897161575, 38.805687343583976)
		Frame11.Rotation = 234.95492965855138
		Frame12.Position = UDim2.fromOffset(16.069966363501564, 30.75114306332269)
		Frame12.Rotation = 270.95492965855135
		Frame13.Position = UDim2.fromOffset(17.757055895132844, 21.037048769824452)
		Frame13.Rotation = 306.95492965855135
		Frame14.Position = UDim2.fromOffset(26.015193635159726, 14.741187140875866)
		Frame14.Rotation = 342.95492965855135
		Frame15.Position = UDim2.fromOffset(36.143390195701379, 16.024251807441672)
		Frame15.Rotation = 378.95492965855135
		Frame16.Position = UDim2.fromOffset(42.572228880410648, 22.883464488096031)
		Frame16.Rotation = 414.95492965855135
		Frame17.Position = UDim2.fromOffset(58.924744845639509, 33.051493433070029)
		Frame2.Position = UDim2.fromOffset(0, 0.10658767187742879)
		UIStroke.Transparency = 0.74801999000238051
		UIStroke.Thickness = 5.1497501249702422
		UIGradient3.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.12888888888888889)), ColorSequenceKeypoint.new(0.5, Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.12888888888888889)), ColorSequenceKeypoint.new(1, Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.12888888888888889)) })
		UIGradient4.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.12888888888888889)), ColorSequenceKeypoint.new(0.5, Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.12888888888888889)), ColorSequenceKeypoint.new(1, Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.12888888888888889)) })
		UIGradient2.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.12888888888888889)), ColorSequenceKeypoint.new(0.5, Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.12888888888888889)), ColorSequenceKeypoint.new(1, Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.12888888888888889)) })
		Frame7.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.12888888888888889)
		Frame8.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.12888888888888889)
		Frame9.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.12888888888888889)
		Frame10.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.12888888888888889)
		Frame11.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.12888888888888889)
		Frame12.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.12888888888888889)
		Frame13.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.12888888888888889)
		Frame14.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.12888888888888889)
		Frame15.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.12888888888888889)
		Frame16.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.12888888888888889)
		Frame17.BackgroundColor3 = Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.12888888888888889):Lerp(Color3.new(1, 1, 1), 0.6)
		Frame18.BackgroundColor3 = Color3.fromRGB(60, 255, 130)
		Frame18.Size = UDim2.fromOffset(13.596007992385184, 13.596007992385184)
		RunService.Heartbeat:Wait()
		Frame3.Rotation = 10.5
		Frame4.Rotation = 352.65000000000003
		UIGradient5.Rotation = 46.999999999999993
		Frame7.Position = UDim2.fromOffset(48.22159194313366, 31.430629516799335)
		Frame7.Rotation = 91.432394487827054
		Frame8.Position = UDim2.fromOffset(44.571006693669332, 41.38798145454858)
		Frame8.Rotation = 127.43239448782705
		Frame9.Position = UDim2.fromOffset(35.439407848225073, 45.92250904544828)
		Frame9.Rotation = 163.43239448782705
		Frame10.Position = UDim2.fromOffset(26.321908193914918, 44.260227281290355)
		Frame10.Rotation = 199.43239448782705
		Frame11.Position = UDim2.fromOffset(19.509789846236831, 38.916980674002417)
		Frame11.Rotation = 235.43239448782705
		Frame12.Position = UDim2.fromOffset(15.659820490735559, 30.61641559552087)
		Frame12.Rotation = 271.43239448782708
		Frame13.Position = UDim2.fromOffset(17.535660762321186, 20.693667577070443)
		Frame13.Rotation = 307.43239448782708
		Frame14.Position = UDim2.fromOffset(26.065337438805201, 14.412754758474016)
		Frame14.Rotation = 343.43239448782708
		Frame15.Position = UDim2.fromOffset(36.347196898716334, 15.843169152311456)
		Frame15.Rotation = 379.43239448782708
		Frame16.Position = UDim2.fromOffset(42.849597411251949, 22.83539444064337)
		Frame16.Rotation = 415.43239448782708
		Frame17.Position = UDim2.fromOffset(58.830770742787507, 34.073792423440892)
		Frame2.Position = UDim2.fromOffset(0, 0.15973346663492505)
		UIStroke.Transparency = 0.74206742410316795
		UIStroke.Thickness = 5.2241571987103992
		UIGradient3.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.18696296296296297)), ColorSequenceKeypoint.new(0.5, Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.18696296296296297)), ColorSequenceKeypoint.new(1, Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.18696296296296297)) })
		UIGradient4.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.18696296296296297)), ColorSequenceKeypoint.new(0.5, Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.18696296296296297)), ColorSequenceKeypoint.new(1, Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.18696296296296297)) })
		UIGradient2.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.18696296296296297)), ColorSequenceKeypoint.new(0.5, Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.18696296296296297)), ColorSequenceKeypoint.new(1, Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.18696296296296297)) })
		Frame7.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.18696296296296297)
		Frame8.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.18696296296296297)
		Frame9.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.18696296296296297)
		Frame10.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.18696296296296297)
		Frame11.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.18696296296296297)
		Frame12.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.18696296296296297)
		Frame13.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.18696296296296297)
		Frame14.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.18696296296296297)
		Frame15.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.18696296296296297)
		Frame16.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.18696296296296297)
		Frame17.BackgroundColor3 = Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.18696296296296297):Lerp(Color3.new(1, 1, 1), 0.6)
		Frame18.BackgroundColor3 = Color3.fromRGB(60, 255, 130)
		Frame18.Size = UDim2.fromOffset(13.886560619984019, 13.886560619984019)
		RunService.Heartbeat:Wait()
		Frame3.Rotation = 14
		Frame4.Rotation = 350.20000000000005
		UIGradient5.Rotation = 47.666666666666657
		Frame7.Position = UDim2.fromOffset(48.543519440789829, 31.585000664323474)
		Frame7.Rotation = 91.909859317102743
		Frame8.Position = UDim2.fromOffset(44.67370009884209, 41.648464492442685)
		Frame8.Rotation = 127.90985931710274
		Frame9.Position = UDim2.fromOffset(35.370790717816803, 46.152745490755862)
		Frame9.Rotation = 163.90985931710276
		Frame10.Position = UDim2.fromOffset(26.127955439919159, 44.451641787794927)
		Frame10.Rotation = 199.90985931710276
		Frame11.Position = UDim2.fromOffset(19.169464131840705, 39.006906337204491)
		Frame11.Rotation = 235.90985931710273
		Frame12.Position = UDim2.fromOffset(15.282696804523788, 30.475895766424788)
		Frame12.Rotation = 271.9098593171027
		Frame13.Position = UDim2.fromOffset(17.34735881624853, 20.367935246323764)
		Frame13.Rotation = 307.9098593171027
		Frame14.Position = UDim2.fromOffset(26.130787142123868, 14.119314572772129)
		Frame14.Rotation = 343.9098593171027
		Frame15.Position = UDim2.fromOffset(36.542924035788189, 15.696070065265527)
		Frame15.Rotation = 379.90985931710276
		Frame16.Position = UDim2.fromOffset(43.10419526485915, 22.807880990935992)
		Frame16.Rotation = 415.90985931710276
		Frame17.Position = UDim2.fromOffset(58.699383906719319, 35.091959333641832)
		Frame2.Position = UDim2.fromOffset(0, 0.21270179619570251)
		UIStroke.Transparency = 0.73615968030459267
		UIStroke.Thickness = 5.298003996192592
		UIGradient3.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.24116543209876543)), ColorSequenceKeypoint.new(0.5, Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.24116543209876543)), ColorSequenceKeypoint.new(1, Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.24116543209876543)) })
		UIGradient4.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.24116543209876543)), ColorSequenceKeypoint.new(0.5, Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.24116543209876543)), ColorSequenceKeypoint.new(1, Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.24116543209876543)) })
		UIGradient2.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.24116543209876543)), ColorSequenceKeypoint.new(0.5, Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.24116543209876543)), ColorSequenceKeypoint.new(1, Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.24116543209876543)) })
		Frame7.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.24116543209876543)
		Frame8.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.24116543209876543)
		Frame9.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.24116543209876543)
		Frame10.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.24116543209876543)
		Frame11.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.24116543209876543)
		Frame12.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.24116543209876543)
		Frame13.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.24116543209876543)
		Frame14.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.24116543209876543)
		Frame15.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.24116543209876543)
		Frame16.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.24116543209876543)
		Frame17.BackgroundColor3 = Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.24116543209876543):Lerp(Color3.new(1, 1, 1), 0.6)
		Frame18.BackgroundColor3 = Color3.fromRGB(60, 255, 130)
		Frame18.Size = UDim2.fromOffset(14.168255026925952, 14.168255026925952)
		RunService.Heartbeat:Wait()
		Frame3.Rotation = 17.5
		Frame4.Rotation = 347.75000000000006
		UIGradient5.Rotation = 48.333333333333321
		Frame7.Position = UDim2.fromOffset(48.830723052212484, 31.743377038687051)
		Frame7.Rotation = 92.387324146378432
		Frame8.Position = UDim2.fromOffset(44.747273746549638, 41.891003797704016)
		Frame8.Rotation = 128.38732414637843
		Frame9.Position = UDim2.fromOffset(35.290863533675072, 46.355030008157911)
		Frame9.Rotation = 164.38732414637843
		Frame10.Position = UDim2.fromOffset(25.939285702697674, 44.617070848733484)
		Frame10.Rotation = 200.38732414637843
		Frame11.Position = UDim2.fromOffset(18.84783509945872, 39.07775488181791)
		Frame11.Rotation = 236.38732414637843
		Frame12.Position = UDim2.fromOffset(14.935637443430881, 30.330263936536458)
		Frame12.Rotation = 272.38732414637843
		Frame13.Position = UDim2.fromOffset(17.18922511527747, 20.05868869043946)
		Frame13.Rotation = 308.38732414637843
		Frame14.Position = UDim2.fromOffset(26.209776836380609, 13.857991207156676)
		Frame14.Rotation = 344.38732414637843
		Frame15.Position = UDim2.fromOffset(36.730961640461757, 15.579467224391385)
		Frame15.Rotation = 380.38732414637843
		Frame16.Position = UDim2.fromOffset(43.338399457987428, 22.798451776182041)
		Frame16.Rotation = 416.38732414637843
		Frame17.Position = UDim2.fromOffset(58.53076095994718, 36.104625448184038)
		Frame2.Position = UDim2.fromOffset(0, 0.26543381230946406)
		UIStroke.Transparency = 0.73031152488945716
		UIStroke.Thickness = 5.3711059388817848
		UIGradient3.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.29175440329218105)), ColorSequenceKeypoint.new(0.5, Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.29175440329218105)), ColorSequenceKeypoint.new(1, Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.29175440329218105)) })
		UIGradient4.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.29175440329218105)), ColorSequenceKeypoint.new(0.5, Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.29175440329218105)), ColorSequenceKeypoint.new(1, Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.29175440329218105)) })
		UIGradient2.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.29175440329218105)), ColorSequenceKeypoint.new(0.5, Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.29175440329218105)), ColorSequenceKeypoint.new(1, Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.29175440329218105)) })
		Frame7.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.29175440329218105)
		Frame8.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.29175440329218105)
		Frame9.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.29175440329218105)
		Frame10.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.29175440329218105)
		Frame11.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.29175440329218105)
		Frame12.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.29175440329218105)
		Frame13.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.29175440329218105)
		Frame14.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.29175440329218105)
		Frame15.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.29175440329218105)
		Frame16.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.29175440329218105)
		Frame17.BackgroundColor3 = Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.29175440329218105):Lerp(Color3.new(1, 1, 1), 0.6)
		Frame18.BackgroundColor3 = Color3.fromRGB(60, 255, 130)
		Frame18.Size = UDim2.fromOffset(14.438276615812608, 14.438276615812608)
		RunService.Heartbeat:Wait()
		Frame3.Rotation = 21
		Frame4.Rotation = 345.30000000000007
		UIGradient5.Rotation = 48.999999999999986
		Frame7.Position = UDim2.fromOffset(49.086009648232647, 31.905054820494041)
		Frame7.Rotation = 92.864788975654122
		Frame8.Position = UDim2.fromOffset(44.794583366246783, 42.116835552404304)
		Frame8.Rotation = 128.86478897565411
		Frame9.Position = UDim2.fromOffset(35.201140122378504, 46.532159368577098)
		Frame9.Rotation = 164.86478897565411
		Frame10.Position = UDim2.fromOffset(25.75543887059775, 44.759514797830974)
		Frame10.Rotation = 200.86478897565411
		Frame11.Position = UDim2.fromOffset(18.542961737122042, 39.131554188420253)
		Frame11.Rotation = 236.86478897565411
		Frame12.Position = UDim2.fromOffset(14.616000333754769, 30.180116666676835)
		Frame12.Rotation = 272.86478897565411
		Frame13.Position = UDim2.fromOffset(17.058632208447175, 19.764873211502696)
		Frame13.Rotation = 308.86478897565411
		Frame14.Position = UDim2.fromOffset(26.300724056148518, 13.626167956640778)
		Frame14.Rotation = 344.86478897565411
		Frame15.Position = UDim2.fromOffset(36.911697506875484, 15.490200930230213)
		Frame15.Rotation = 380.86478897565411
		Frame16.Position = UDim2.fromOffset(43.554381467388488, 22.80490329644509)
		Frame16.Rotation = 416.86478897565411
		Frame17.Position = UDim2.fromOffset(58.325128581256955, 37.110429446264341)
		Frame2.Position = UDim2.fromOffset(0, 0.31787092927209792)
		UIStroke.Transparency = 0.72453757520063911
		UIStroke.Thickness = 5.4432803099920095
		UIGradient3.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.33897077640603568)), ColorSequenceKeypoint.new(0.5, Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.33897077640603568)), ColorSequenceKeypoint.new(1, Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.33897077640603568)) })
		UIGradient4.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.33897077640603568)), ColorSequenceKeypoint.new(0.5, Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.33897077640603568)), ColorSequenceKeypoint.new(1, Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.33897077640603568)) })
		UIGradient2.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.33897077640603568)), ColorSequenceKeypoint.new(0.5, Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.33897077640603568)), ColorSequenceKeypoint.new(1, Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.33897077640603568)) })
		Frame7.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.33897077640603568)
		Frame8.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.33897077640603568)
		Frame9.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.33897077640603568)
		Frame10.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.33897077640603568)
		Frame11.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.33897077640603568)
		Frame12.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.33897077640603568)
		Frame13.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.33897077640603568)
		Frame14.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.33897077640603568)
		Frame15.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.33897077640603568)
		Frame16.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.33897077640603568)
		Frame17.BackgroundColor3 = Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.33897077640603568):Lerp(Color3.new(1, 1, 1), 0.6)
		Frame18.BackgroundColor3 = Color3.fromRGB(60, 255, 130)
		Frame18.Size = UDim2.fromOffset(14.693927420185107, 14.693927420185107)
		RunService.Heartbeat:Wait()
		Frame3.Rotation = 24.5
		Frame4.Rotation = 342.85000000000008
		UIGradient5.Rotation = 49.66666666666665
		Frame7.Position = UDim2.fromOffset(49.311914521690873, 32.069408275260827)
		Frame7.Rotation = 93.342253804929797
		Frame8.Position = UDim2.fromOffset(44.818212807244336, 42.327103784751813)
		Frame8.Rotation = 129.34225380492981
		Frame9.Position = UDim2.fromOffset(35.102962675407305, 46.686685535678166)
		Frame9.Rotation = 165.34225380492978
		Frame10.Position = UDim2.fromOffset(25.575967425578011, 44.881666820418801)
		Frame10.Rotation = 201.34225380492978
		Frame11.Position = UDim2.fromOffset(18.253097450393625, 39.170097460554693)
		Frame11.Rotation = 237.34225380492978
		Frame12.Position = UDim2.fromOffset(14.321427641927098, 30.025978235201343)
		Frame12.Rotation = 273.34225380492978
		Frame13.Position = UDim2.fromOffset(16.953218340312706, 19.485533120635431)
		Frame13.Rotation = 309.34225380492978
		Frame14.Position = UDim2.fromOffset(26.402209815809108, 13.421461152758226)
		Frame14.Rotation = 345.34225380492978
		Frame15.Position = UDim2.fromOffset(37.085515613132358, 15.425406925038175)
		Frame15.Rotation = 381.34225380492978
		Frame16.Position = UDim2.fromOffset(43.754124787021652, 22.825273463217854)
		Frame16.Rotation = 417.34225380492978
		Frame17.Position = UDim2.fromOffset(58.082763200985248, 38.108019231780354)
		Frame2.Position = UDim2.fromOffset(0, 0.36995488901487766)
		UIStroke.Transparency = 0.71885226310534578
		UIStroke.Thickness = 5.514346711183177
		UIGradient3.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.38303939131229997)), ColorSequenceKeypoint.new(0.5, Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.38303939131229997)), ColorSequenceKeypoint.new(1, Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.38303939131229997)) })
		UIGradient4.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.38303939131229997)), ColorSequenceKeypoint.new(0.5, Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.38303939131229997)), ColorSequenceKeypoint.new(1, Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.38303939131229997)) })
		UIGradient2.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.38303939131229997)), ColorSequenceKeypoint.new(0.5, Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.38303939131229997)), ColorSequenceKeypoint.new(1, Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.38303939131229997)) })
		Frame7.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.38303939131229997)
		Frame8.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.38303939131229997)
		Frame9.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.38303939131229997)
		Frame10.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.38303939131229997)
		Frame11.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.38303939131229997)
		Frame12.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.38303939131229997)
		Frame13.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.38303939131229997)
		Frame14.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.38303939131229997)
		Frame15.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.38303939131229997)
		Frame16.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.38303939131229997)
		Frame17.BackgroundColor3 = Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.38303939131229997):Lerp(Color3.new(1, 1, 1), 0.6)
		Frame18.BackgroundColor3 = Color3.fromRGB(60, 255, 130)
		Frame18.Size = UDim2.fromOffset(14.932653061713072, 14.932653061713072)
		RunService.Heartbeat:Wait()
		Frame3.Rotation = 28
		Frame4.Rotation = 340.40000000000009
		UIGradient5.Rotation = 50.333333333333314
		Frame7.Position = UDim2.fromOffset(49.51072940597323, 32.235880103279761)
		Frame7.Rotation = 93.819718634205486
		Frame8.Position = UDim2.fromOffset(44.820501909939722, 42.52286853347205)
		Frame8.Rotation = 129.81971863420549
		Frame9.Position = UDim2.fromOffset(34.997519859678803, 46.820938297193123)
		Frame9.Rotation = 165.81971863420549
		Frame10.Position = UDim2.fromOffset(25.400438006201675, 44.985942424960342)
		Frame10.Rotation = 201.81971863420549
		Frame11.Position = UDim2.fromOffset(17.976673411851152, 39.19496834089184)
		Frame11.Rotation = 237.81971863420549
		Frame12.Position = UDim2.fromOffset(14.049817224243903, 29.868310741296206)
		Frame12.Rotation = 273.81971863420551
		Frame13.Position = UDim2.fromOffset(16.870858930462546, 19.219803007438614)
		Frame13.Rotation = 309.81971863420551
		Frame14.Position = UDim2.fromOffset(26.51296088633319, 13.241696990563927)
		Frame14.Rotation = 345.81971863420546
		Frame15.Position = UDim2.fromOffset(37.252794903124439, 15.382487486157176)
		Frame15.Rotation = 381.81971863420546
		Frame16.Position = UDim2.fromOffset(43.939440886368331, 22.857816995150507)
		Frame16.Rotation = 417.81971863420546
		Frame17.Position = UDim2.fromOffset(57.803990629415821, 39.09605375094489)
		Frame2.Position = UDim2.fromOffset(0, 0.42162782582965613)
		UIStroke.Transparency = 0.71326979892296194
		UIStroke.Thickness = 5.5841275134629758
		UIGradient3.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.42417009855814664)), ColorSequenceKeypoint.new(0.5, Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.42417009855814664)), ColorSequenceKeypoint.new(1, Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.42417009855814664)) })
		UIGradient4.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.42417009855814664)), ColorSequenceKeypoint.new(0.5, Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.42417009855814664)), ColorSequenceKeypoint.new(1, Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.42417009855814664)) })
		UIGradient2.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.42417009855814664)), ColorSequenceKeypoint.new(0.5, Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.42417009855814664)), ColorSequenceKeypoint.new(1, Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.42417009855814664)) })
		Frame7.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.42417009855814664)
		Frame8.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.42417009855814664)
		Frame9.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.42417009855814664)
		Frame10.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.42417009855814664)
		Frame11.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.42417009855814664)
		Frame12.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.42417009855814664)
		Frame13.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.42417009855814664)
		Frame14.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.42417009855814664)
		Frame15.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.42417009855814664)
		Frame16.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.42417009855814664)
		Frame17.BackgroundColor3 = Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.42417009855814664):Lerp(Color3.new(1, 1, 1), 0.6)
		Frame18.BackgroundColor3 = Color3.fromRGB(60, 255, 130)
		Frame18.Size = UDim2.fromOffset(15.152068272698568, 15.152068272698568)
		RunService.Heartbeat:Wait()
		Frame3.Rotation = 31.5
		Frame4.Rotation = 337.9500000000001
		UIGradient5.Rotation = 50.999999999999979
		Frame7.Position = UDim2.fromOffset(49.684527746585715, 32.403973018100537)
		Frame7.Rotation = 94.297183463481176
		Frame8.Position = UDim2.fromOffset(44.803571457355254, 42.705113374686938)
		Frame8.Rotation = 130.29718346348116
		Frame9.Position = UDim2.fromOffset(34.885862959710259, 46.937045696772898)
		Frame9.Rotation = 166.29718346348119
		Frame10.Position = UDim2.fromOffset(25.228432643316545, 45.074506000209702)
		Frame10.Rotation = 202.29718346348119
		Frame11.Position = UDim2.fromOffset(17.712283345568846, 39.2075634508154)
		Frame11.Rotation = 238.29718346348119
		Frame12.Position = UDim2.fromOffset(13.799296786729808, 29.707522955285857)
		Frame12.Rotation = 274.29718346348119
		Frame13.Position = UDim2.fromOffset(16.809640998987703, 18.96689962105048)
		Frame13.Rotation = 310.29718346348119
		Frame14.Position = UDim2.fromOffset(26.631834068034813, 13.084890591713883)
		Frame14.Rotation = 346.29718346348119
		Frame15.Position = UDim2.fromOffset(37.413908363815892, 15.359085466309843)
		Frame15.Rotation = 382.29718346348119
		Frame16.Position = UDim2.fromOffset(44.111983711505466, 22.900983361023798)
		Frame16.Rotation = 418.29718346348119
		Frame17.Position = UDim2.fromOffset(57.489185618794835, 40.073204795056313)
		Frame2.Position = UDim2.fromOffset(0, 0.47283233065814328)
		UIStroke.Transparency = 0.70780413590665225
		UIStroke.Thickness = 5.6524483011668449
		UIGradient3.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.46255875865427021)), ColorSequenceKeypoint.new(0.5, Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.46255875865427021)), ColorSequenceKeypoint.new(1, Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.46255875865427021)) })
		UIGradient4.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.46255875865427021)), ColorSequenceKeypoint.new(0.5, Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.46255875865427021)), ColorSequenceKeypoint.new(1, Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.46255875865427021)) })
		UIGradient2.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.46255875865427021)), ColorSequenceKeypoint.new(0.5, Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.46255875865427021)), ColorSequenceKeypoint.new(1, Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.46255875865427021)) })
		Frame7.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.46255875865427021)
		Frame8.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.46255875865427021)
		Frame9.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.46255875865427021)
		Frame10.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.46255875865427021)
		Frame11.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.46255875865427021)
		Frame12.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.46255875865427021)
		Frame13.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.46255875865427021)
		Frame14.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.46255875865427021)
		Frame15.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.46255875865427021)
		Frame16.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.46255875865427021)
		Frame17.BackgroundColor3 = Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.46255875865427021):Lerp(Color3.new(1, 1, 1), 0.6)
		Frame18.BackgroundColor3 = Color3.fromRGB(60, 255, 130)
		Frame18.Size = UDim2.fromOffset(15.34998072888245, 15.34998072888245)
		RunService.Heartbeat:Wait()
		Frame3.Rotation = 35
		Frame4.Rotation = 335.50000000000011
		UIGradient5.Rotation = 51.666666666666643
		Frame7.Position = UDim2.fromOffset(49.835187487024356, 32.573242409206252)
		Frame7.Rotation = 94.774648292756865
		Frame8.Position = UDim2.fromOffset(44.769345504580585, 42.874752349689494)
		Frame8.Rotation = 130.77464829275686
		Frame9.Position = UDim2.fromOffset(34.768920268127, 47.03695247344271)
		Frame9.Rotation = 166.77464829275686
		Frame10.Position = UDim2.fromOffset(25.059549721228983, 45.149294751138051)
		Frame10.Rotation = 202.77464829275686
		Frame11.Position = UDim2.fromOffset(17.458669618939659, 39.209112620619671)
		Frame11.Rotation = 238.77464829275686
		Frame12.Position = UDim2.fromOffset(13.568200495679875, 29.543978058733437)
		Frame12.Rotation = 274.77464829275686
		Frame13.Position = UDim2.fromOffset(16.767840242235742, 18.72611432631669)
		Frame13.Rotation = 310.77464829275686
		Frame14.Position = UDim2.fromOffset(26.757802240947434, 12.949227098221371)
		Frame14.Rotation = 346.77464829275686
		Frame15.Position = UDim2.fromOffset(37.56922234389026, 15.353060985690954)
		Frame15.Rotation = 382.77464829275686
		Frame16.Position = UDim2.fromOffset(44.273262858833846, 22.953397001253634)
		Frame16.Rotation = 418.77464829275681
		Frame17.Position = UDim2.fromOffset(57.138771359553708, 41.038158786001283)
		Frame2.Position = UDim2.fromOffset(0, 0.52351151487384351)
		UIStroke.Transparency = 0.70246893536749555
		UIStroke.Thickness = 5.7191383079063041
		UIGradient3.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.49838817474398556)), ColorSequenceKeypoint.new(0.5, Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.49838817474398556)), ColorSequenceKeypoint.new(1, Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.49838817474398556)) })
		UIGradient4.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.49838817474398556)), ColorSequenceKeypoint.new(0.5, Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.49838817474398556)), ColorSequenceKeypoint.new(1, Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.49838817474398556)) })
		UIGradient2.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.49838817474398556)), ColorSequenceKeypoint.new(0.5, Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.49838817474398556)), ColorSequenceKeypoint.new(1, Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.49838817474398556)) })
		Frame7.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.49838817474398556)
		Frame8.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.49838817474398556)
		Frame9.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.49838817474398556)
		Frame10.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.49838817474398556)
		Frame11.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.49838817474398556)
		Frame12.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.49838817474398556)
		Frame13.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.49838817474398556)
		Frame14.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.49838817474398556)
		Frame15.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.49838817474398556)
		Frame16.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.49838817474398556)
		Frame17.BackgroundColor3 = Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.49838817474398556):Lerp(Color3.new(1, 1, 1), 0.6)
		Frame18.BackgroundColor3 = Color3.fromRGB(60, 255, 130)
		Frame18.Size = UDim2.fromOffset(15.524412954423688, 15.524412954423688)
		RunService.Heartbeat:Wait()
		Frame3.Rotation = 38.5
		Frame4.Rotation = 333.05000000000013
		UIGradient5.Rotation = 52.333333333333307
		Frame7.Position = UDim2.fromOffset(49.964411605215609, 32.743289960669621)
		Frame7.Rotation = 95.25211312203254
		Frame8.Position = UDim2.fromOffset(44.719571353885094, 43.032636330497525)
		Frame8.Rotation = 131.25211312203254
		Frame9.Position = UDim2.fromOffset(34.647509917930229, 47.122436696873891)
		Frame9.Rotation = 167.25211312203254
		Frame10.Position = UDim2.fromOffset(24.893404709514158, 45.212040277740059)
		Frame10.Rotation = 203.25211312203254
		Frame11.Position = UDim2.fromOffset(17.214710525080161, 39.200697049622008)
		Frame11.Rotation = 239.25211312203254
		Frame12.Position = UDim2.fromOffset(13.35504780451792, 29.378000401002712)
		Frame12.Rotation = 275.25211312203254
		Frame13.Position = UDim2.fromOffset(16.743900492912566, 18.496806100170758)
		Frame13.Rotation = 311.25211312203254
		Frame14.Position = UDim2.fromOffset(26.889941997686172, 12.833044610229294)
		Frame14.Rotation = 347.25211312203254
		Frame15.Position = UDim2.fromOffset(37.719096067448142, 15.362470509654413)
		Frame15.Rotation = 383.25211312203254
		Frame16.Position = UDim2.fromOffset(44.424655540530239, 23.013839587212711)
		Frame16.Rotation = 419.25211312203254
		Frame17.Position = UDim2.fromOffset(56.753218911416852, 41.989618542089687)
		Frame2.Position = UDim2.fromOffset(0, 0.57360907348578749)
		UIStroke.Transparency = 0.69727753252832092
		UIStroke.Thickness = 5.7840308433959891
		UIGradient3.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.53182896309438654)), ColorSequenceKeypoint.new(0.5, Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.53182896309438654)), ColorSequenceKeypoint.new(1, Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.53182896309438654)) })
		UIGradient4.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.53182896309438654)), ColorSequenceKeypoint.new(0.5, Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.53182896309438654)), ColorSequenceKeypoint.new(1, Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.53182896309438654)) })
		UIGradient2.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.53182896309438654)), ColorSequenceKeypoint.new(0.5, Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.53182896309438654)), ColorSequenceKeypoint.new(1, Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.53182896309438654)) })
		Frame7.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.53182896309438654)
		Frame8.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.53182896309438654)
		Frame9.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.53182896309438654)
		Frame10.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.53182896309438654)
		Frame11.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.53182896309438654)
		Frame12.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.53182896309438654)
		Frame13.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.53182896309438654)
		Frame14.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.53182896309438654)
		Frame15.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.53182896309438654)
		Frame16.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.53182896309438654)
		Frame17.BackgroundColor3 = Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.53182896309438654):Lerp(Color3.new(1, 1, 1), 0.6)
		Frame18.BackgroundColor3 = Color3.fromRGB(60, 255, 130)
		Frame18.Size = UDim2.fromOffset(15.673622080184305, 15.673622080184305)
		RunService.Heartbeat:Wait()
		Frame3.Rotation = 42
		Frame4.Rotation = 330.60000000000014
		UIGradient5.Rotation = 52.999999999999972
		Frame7.Position = UDim2.fromOffset(50.073746614209796, 32.913758111977714)
		Frame7.Rotation = 95.729577951308229
		Frame8.Position = UDim2.fromOffset(44.655837416426948, 43.179558858496279)
		Frame8.Rotation = 131.72957795130822
		Frame9.Position = UDim2.fromOffset(34.52235132909609, 47.195124769526004)
		Frame9.Rotation = 167.72957795130822
		Frame10.Position = UDim2.fromOffset(24.729630703930177, 45.264288034645091)
		Frame10.Rotation = 203.72957795130822
		Frame11.Position = UDim2.fromOffset(16.979408649090203, 39.183265610485051)
		Frame11.Rotation = 239.72957795130824
		Frame12.Position = UDim2.fromOffset(13.158524285307099, 29.209881384645758)
		Frame12.Rotation = 275.72957795130822
		Frame13.Position = UDim2.fromOffset(16.736415325327435, 18.27839503498021)
		Frame13.Rotation = 311.72957795130822
		Frame14.Position = UDim2.fromOffset(27.027422684417843, 12.734818798171499)
		Frame14.Rotation = 347.72957795130822
		Frame15.Position = UDim2.fromOffset(37.863881303234173, 15.385548071895053)
		Frame15.Rotation = 383.72957795130822
		Frame16.Position = UDim2.fromOffset(44.567417450827236, 23.081234102779483)
		Frame16.Rotation = 419.72957795130822
		Frame17.Position = UDim2.fromOffset(56.33304657015897, 42.926305021847988)
		Frame2.Position = UDim2.fromOffset(0, 0.62306934769384081)
		UIStroke.Transparency = 0.69224290319259563
		UIStroke.Thickness = 5.8469637100925533
		UIGradient3.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.56304036555476078)), ColorSequenceKeypoint.new(0.5, Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.56304036555476078)), ColorSequenceKeypoint.new(1, Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.56304036555476078)) })
		UIGradient4.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.56304036555476078)), ColorSequenceKeypoint.new(0.5, Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.56304036555476078)), ColorSequenceKeypoint.new(1, Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.56304036555476078)) })
		UIGradient2.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.56304036555476078)), ColorSequenceKeypoint.new(0.5, Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.56304036555476078)), ColorSequenceKeypoint.new(1, Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.56304036555476078)) })
		Frame7.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.56304036555476078)
		Frame8.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.56304036555476078)
		Frame9.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.56304036555476078)
		Frame10.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.56304036555476078)
		Frame11.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.56304036555476078)
		Frame12.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.56304036555476078)
		Frame13.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.56304036555476078)
		Frame14.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.56304036555476078)
		Frame15.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.56304036555476078)
		Frame16.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.56304036555476078)
		Frame17.BackgroundColor3 = Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.56304036555476078):Lerp(Color3.new(1, 1, 1), 0.6)
		Frame18.BackgroundColor3 = Color3.fromRGB(60, 255, 130)
		Frame18.Size = UDim2.fromOffset(15.796117257901679, 15.796117257901679)
		RunService.Heartbeat:Wait()
		Frame3.Rotation = 45.5
		Frame4.Rotation = 328.15000000000015
		UIGradient5.Rotation = 53.666666666666636
		Frame7.Position = UDim2.fromOffset(50.164599220383366, 33.084325260011916)
		Frame7.Rotation = 96.207042780583919
		Frame8.Position = UDim2.fromOffset(44.579589177338029, 43.316261489873796)
		Frame8.Rotation = 132.20704278058392
		Frame9.Position = UDim2.fromOffset(34.394075423437215, 47.256504951107487)
		Frame9.Rotation = 168.20704278058392
		Frame10.Position = UDim2.fromOffset(24.567878809100844, 45.307414885826276)
		Frame10.Rotation = 204.20704278058392
		Frame11.Position = UDim2.fromOffset(16.751880220665406, 39.157649489619011)
		Frame11.Rotation = 240.20704278058392
		Frame12.Position = UDim2.fromOffset(12.977464273774398, 29.039884579287971)
		Frame12.Rotation = 276.20704278058395
		Frame13.Position = UDim2.fromOffset(16.744111590612093, 18.070356317296138)
		Frame13.Rotation = 312.20704278058395
		Frame14.Position = UDim2.fromOffset(27.169496694124824, 12.653149035170433)
		Frame14.Rotation = 348.20704278058389
		Frame15.Position = UDim2.fromOffset(38.003922155798676, 15.420688426575779)
		Frame15.Rotation = 384.20704278058389
		Frame16.Position = UDim2.fromOffset(44.702692633057332, 23.154630555071968)
		Frame16.Rotation = 420.20704278058389
		Frame17.Position = UDim2.fromOffset(55.878819170863295, 43.846959043426786)
		Frame2.Position = UDim2.fromOffset(0, 0.67183738672608928)
		UIStroke.Transparency = 0.68737763131167529
		UIStroke.Thickness = 5.9077796086040593
		UIGradient3.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.5921710078511101)), ColorSequenceKeypoint.new(0.5, Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.5921710078511101)), ColorSequenceKeypoint.new(1, Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.5921710078511101)) })
		UIGradient4.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.5921710078511101)), ColorSequenceKeypoint.new(0.5, Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.5921710078511101)), ColorSequenceKeypoint.new(1, Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.5921710078511101)) })
		UIGradient2.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.5921710078511101)), ColorSequenceKeypoint.new(0.5, Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.5921710078511101)), ColorSequenceKeypoint.new(1, Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.5921710078511101)) })
		Frame7.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.5921710078511101)
		Frame8.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.5921710078511101)
		Frame9.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.5921710078511101)
		Frame10.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.5921710078511101)
		Frame11.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.5921710078511101)
		Frame12.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.5921710078511101)
		Frame13.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.5921710078511101)
		Frame14.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.5921710078511101)
		Frame15.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.5921710078511101)
		Frame16.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.5921710078511101)
		Frame17.BackgroundColor3 = Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.5921710078511101):Lerp(Color3.new(1, 1, 1), 0.6)
		Frame18.BackgroundColor3 = Color3.fromRGB(60, 255, 130)
		Frame18.Size = UDim2.fromOffset(15.890674556251579, 15.890674556251579)
		RunService.Heartbeat:Wait()
		Frame3.Rotation = 49
		Frame4.Rotation = 325.70000000000016
		UIGradient5.Rotation = 54.3333333333333
		Frame7.Position = UDim2.fromOffset(50.238251313939827, 33.254701612539321)
		Frame7.Rotation = 96.684507609859608
		Frame8.Position = UDim2.fromOffset(44.49214345923842, 43.443438679937486)
		Frame8.Rotation = 132.68450760985962
		Frame9.Position = UDim2.fromOffset(34.263233744988433, 47.307939546610882)
		Frame9.Rotation = 168.68450760985962
		Frame10.Position = UDim2.fromOffset(24.407818390593832, 45.342644947378389)
		Frame10.Rotation = 204.68450760985962
		Frame11.Position = UDim2.fromOffset(16.531345364041389, 39.124575335429292)
		Frame11.Rotation = 240.68450760985959
		Frame12.Position = UDim2.fromOffset(12.810835155268553, 28.86825015242195)
		Frame12.Rotation = 276.68450760985957
		Frame13.Position = UDim2.fromOffset(16.765834688352776, 17.872214652128129)
		Frame13.Rotation = 312.68450760985957
		Frame14.Position = UDim2.fromOffset(27.315490872946746, 12.58674590957526)
		Frame14.Rotation = 348.68450760985957
		Frame15.Position = UDim2.fromOffset(38.139554950163109, 15.466431934099619)
		Frame15.Rotation = 384.68450760985957
		Frame16.Position = UDim2.fromOffset(44.831522438966005, 23.23319314155329)
		Frame16.Rotation = 420.68450760985957
		Frame17.Position = UDim2.fromOffset(55.391147328617194, 44.750342977311163)
		Frame2.Position = UDim2.fromOffset(0, 0.71985900888959942)
		UIStroke.Transparency = 0.68269387753147703
		UIStroke.Thickness = 5.9663265308565361
		UIGradient3.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.61935960732770279)), ColorSequenceKeypoint.new(0.5, Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.61935960732770279)), ColorSequenceKeypoint.new(1, Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.61935960732770279)) })
		UIGradient4.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.61935960732770279)), ColorSequenceKeypoint.new(0.5, Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.61935960732770279)), ColorSequenceKeypoint.new(1, Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.61935960732770279)) })
		UIGradient2.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.61935960732770279)), ColorSequenceKeypoint.new(0.5, Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.61935960732770279)), ColorSequenceKeypoint.new(1, Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.61935960732770279)) })
		Frame7.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.61935960732770279)
		Frame8.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.61935960732770279)
		Frame9.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.61935960732770279)
		Frame10.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.61935960732770279)
		Frame11.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.61935960732770279)
		Frame12.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.61935960732770279)
		Frame13.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.61935960732770279)
		Frame14.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.61935960732770279)
		Frame15.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.61935960732770279)
		Frame16.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.61935960732770279)
		Frame17.BackgroundColor3 = Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.61935960732770279):Lerp(Color3.new(1, 1, 1), 0.6)
		Frame18.BackgroundColor3 = Color3.fromRGB(60, 255, 130)
		Frame18.Size = UDim2.fromOffset(15.95634918996538, 15.95634918996538)
		RunService.Heartbeat:Wait()
		Frame3.Rotation = 52.5
		Frame4.Rotation = 323.25000000000017
		UIGradient5.Rotation = 54.999999999999964
		Frame7.Position = UDim2.fromOffset(50.29587344980709, 33.424625613671957)
		Frame7.Rotation = 97.161972439135283
		Frame8.Position = UDim2.fromOffset(44.394701159687671, 43.561742236794949)
		Frame8.Rotation = 133.1619724391353
		Frame9.Position = UDim2.fromOffset(34.130306608272051, 47.350675886272867)
		Frame9.Rotation = 169.1619724391353
		Frame10.Position = UDim2.fromOffset(24.249137219655822, 45.371063892096146)
		Frame10.Rotation = 205.1619724391353
		Frame11.Position = UDim2.fromOffset(16.317119164042147, 39.084677068152438)
		Frame11.Rotation = 241.1619724391353
		Frame12.Position = UDim2.fromOffset(12.657723135847554, 28.69519869553606)
		Frame12.Rotation = 277.1619724391353
		Frame13.Position = UDim2.fromOffset(16.800535400498561, 17.683539104534155)
		Frame13.Rotation = 313.1619724391353
		Frame14.Position = UDim2.fromOffset(27.464798915228101, 12.534419990311051)
		Frame14.Rotation = 349.1619724391353
		Frame15.Position = UDim2.fromOffset(38.271108186053937, 15.521451004400795)
		Frame15.Rotation = 385.1619724391353
		Frame16.Position = UDim2.fromOffset(44.954853664047292, 23.316188718847819)
		Frame16.Rotation = 421.1619724391353
		Frame17.Position = UDim2.fromOffset(54.870686617666166, 45.635242410058453)
		Frame2.Position = UDim2.fromOffset(0, 0.76708086176672474)
		UIStroke.Transparency = 0.6782033487971999
		UIStroke.Thickness = 6.0224581400350008
		UIGradient3.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.64473563350585594)), ColorSequenceKeypoint.new(0.5, Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.64473563350585594)), ColorSequenceKeypoint.new(1, Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.64473563350585594)) })
		UIGradient4.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.64473563350585594)), ColorSequenceKeypoint.new(0.5, Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.64473563350585594)), ColorSequenceKeypoint.new(1, Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.64473563350585594)) })
		UIGradient2.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.64473563350585594)), ColorSequenceKeypoint.new(0.5, Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.64473563350585594)), ColorSequenceKeypoint.new(1, Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.64473563350585594)) })
		Frame7.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.64473563350585594)
		Frame8.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.64473563350585594)
		Frame9.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.64473563350585594)
		Frame10.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.64473563350585594)
		Frame11.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.64473563350585594)
		Frame12.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.64473563350585594)
		Frame13.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.64473563350585594)
		Frame14.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.64473563350585594)
		Frame15.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.64473563350585594)
		Frame16.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.64473563350585594)
		Frame17.BackgroundColor3 = Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.64473563350585594):Lerp(Color3.new(1, 1, 1), 0.6)
		Frame18.BackgroundColor3 = Color3.fromRGB(60, 255, 130)
		Frame18.Size = UDim2.fromOffset(15.992484959812163, 15.992484959812163)
		RunService.Heartbeat:Wait()
		Frame3.Rotation = 56
		Frame4.Rotation = 320.80000000000018
		UIGradient5.Rotation = 55.666666666666629
		Frame7.Position = UDim2.fromOffset(50.338536961943603, 33.593860870721201)
		Frame7.Rotation = 97.639437268410973
		Frame8.Position = UDim2.fromOffset(44.288358620494414, 43.67178537330026)
		Frame8.Rotation = 133.63943726841097
		Frame9.Position = UDim2.fromOffset(33.9957103834696, 47.38585621407389)
		Frame9.Rotation = 169.63943726841097
		Frame10.Position = UDim2.fromOffset(24.091541530090211, 45.393631872226827)
		Frame10.Rotation = 205.63943726841097
		Frame11.Position = UDim2.fromOffset(16.108603474163225, 39.038506488870844)
		Frame11.Rotation = 241.63943726841097
		Frame12.Position = UDim2.fromOffset(12.51732035785453, 28.520934515150721)
		Frame12.Rotation = 277.63943726841097
		Frame13.Position = UDim2.fromOffset(16.847258130868788, 17.503938331950408)
		Frame13.Rotation = 313.63943726841097
		Frame14.Position = UDim2.fromOffset(27.616874636170991, 12.495071729302481)
		Frame14.Rotation = 349.63943726841097
		Frame15.Position = UDim2.fromOffset(38.398902541676684, 15.584537938929207)
		Frame15.Rotation = 385.63943726841097
		Frame16.Position = UDim2.fromOffset(45.073545935529964, 23.402976434889982)
		Frame16.Rotation = 421.63943726841097
		Frame17.Position = UDim2.fromOffset(54.318136690129371, 46.500467776826682)
		Frame2.Position = UDim2.fromOffset(0, 0.81345048149008192)
		UIStroke.Transparency = 0.67391726909205718
		UIStroke.Thickness = 6.0760341363492838
		UIGradient3.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.66841992460546551)), ColorSequenceKeypoint.new(0.5, Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.66841992460546551)), ColorSequenceKeypoint.new(1, Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.66841992460546551)) })
		UIGradient4.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.66841992460546551)), ColorSequenceKeypoint.new(0.5, Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.66841992460546551)), ColorSequenceKeypoint.new(1, Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.66841992460546551)) })
		UIGradient2.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.66841992460546551)), ColorSequenceKeypoint.new(0.5, Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.66841992460546551)), ColorSequenceKeypoint.new(1, Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.66841992460546551)) })
		Frame7.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.66841992460546551)
		Frame8.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.66841992460546551)
		Frame9.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.66841992460546551)
		Frame10.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.66841992460546551)
		Frame11.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.66841992460546551)
		Frame12.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.66841992460546551)
		Frame13.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.66841992460546551)
		Frame14.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.66841992460546551)
		Frame15.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.66841992460546551)
		Frame16.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.66841992460546551)
		Frame17.BackgroundColor3 = Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.66841992460546551):Lerp(Color3.new(1, 1, 1), 0.6)
		Frame18.BackgroundColor3 = Color3.fromRGB(60, 255, 130)
		Frame18.Size = UDim2.fromOffset(15.998720809124515, 15.998720809124515)
		RunService.Heartbeat:Wait()
		Frame3.Rotation = 59.5
		Frame4.Rotation = 318.35000000000019
		UIGradient5.Rotation = 56.333333333333293
		Frame7.Position = UDim2.fromOffset(50.367224840433337, 33.762193519842747)
		Frame7.Rotation = 98.116902097686662
		Frame8.Position = UDim2.fromOffset(44.174117770982882, 43.774146384622142)
		Frame8.Rotation = 134.11690209768665
		Frame9.Position = UDim2.fromOffset(33.859804015610358, 47.414526590720385)
		Frame9.Rotation = 170.11690209768665
		Frame10.Position = UDim2.fromOffset(23.934756003504944, 45.411195201110402)
		Frame10.Rotation = 206.11690209768665
		Frame11.Position = UDim2.fromOffset(15.90527939919243, 38.986542810822506)
		Frame11.Rotation = 242.11690209768665
		Frame12.Position = UDim2.fromOffset(12.388913233042146, 28.345648450489524)
		Frame12.Rotation = 278.11690209768665
		Frame13.Position = UDim2.fromOffset(16.90513040927506, 17.33305618227773)
		Frame13.Rotation = 314.11690209768665
		Frame14.Position = UDim2.fromOffset(27.771226022861324, 12.467682395761148)
		Frame14.Rotation = 350.11690209768665
		Frame15.Position = UDim2.fromOffset(38.523250910395483, 15.654594028114854)
		Frame15.Rotation = 386.11690209768665
		Frame16.Position = UDim2.fromOffset(45.188378423095685, 23.492998400636736)
		Frame16.Rotation = 422.11690209768665
		Frame17.Position = UDim2.fromOffset(53.734240335461649, 47.344855960499274)
		Frame2.Position = UDim2.fromOffset(0, 0.85891635103033814)
		UIStroke.Transparency = 0.66984635138316473
		UIStroke.Thickness = 6.1269206077104386
		UIGradient3.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.69052526296510119)), ColorSequenceKeypoint.new(0.5, Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.69052526296510119)), ColorSequenceKeypoint.new(1, Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.69052526296510119)) })
		UIGradient4.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.69052526296510119)), ColorSequenceKeypoint.new(0.5, Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.69052526296510119)), ColorSequenceKeypoint.new(1, Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.69052526296510119)) })
		UIGradient2.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.69052526296510119)), ColorSequenceKeypoint.new(0.5, Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.69052526296510119)), ColorSequenceKeypoint.new(1, Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.69052526296510119)) })
		Frame7.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.69052526296510119)
		Frame8.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.69052526296510119)
		Frame9.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.69052526296510119)
		Frame10.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.69052526296510119)
		Frame11.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.69052526296510119)
		Frame12.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.69052526296510119)
		Frame13.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.69052526296510119)
		Frame14.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.69052526296510119)
		Frame15.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.69052526296510119)
		Frame16.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.69052526296510119)
		Frame17.BackgroundColor3 = Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.69052526296510119):Lerp(Color3.new(1, 1, 1), 0.6)
		Frame18.BackgroundColor3 = Color3.fromRGB(60, 255, 130)
		Frame18.Size = UDim2.fromOffset(15.974994431357405, 15.974994431357405)
		RunService.Heartbeat:Wait()
		Frame3.Rotation = 63
		Frame4.Rotation = 315.9000000000002
		UIGradient5.Rotation = 56.999999999999957
		Frame7.Position = UDim2.fromOffset(50.382841488433243, 33.929429974943723)
		Frame7.Rotation = 98.594366926962351
		Frame8.Position = UDim2.fromOffset(44.052895173079023, 43.869371977290363)
		Frame8.Rotation = 134.59436692696235
		Frame9.Position = UDim2.fromOffset(33.722894864232813, 47.437644907349693)
		Frame9.Rotation = 170.59436692696232
		Frame10.Position = UDim2.fromOffset(23.778523696352721, 45.424496920292455)
		Frame10.Rotation = 206.59436692696232
		Frame11.Position = UDim2.fromOffset(15.706700390901871, 38.929201223154656)
		Frame11.Rotation = 242.59436692696235
		Frame12.Position = UDim2.fromOffset(12.271871878683996, 28.169520272561222)
		Frame12.Rotation = 278.59436692696238
		Frame13.Position = UDim2.fromOffset(16.973353533375629, 17.170567634279614)
		Frame13.Rotation = 314.59436692696238
		Frame14.Position = UDim2.fromOffset(27.927409975048977, 12.451305946680378)
		Frame14.Rotation = 350.59436692696238
		Frame15.Position = UDim2.fromOffset(38.64445845662393, 15.730619775185904)
		Frame15.Rotation = 386.59436692696238
		Frame16.Position = UDim2.fromOffset(45.300055936395523, 23.585771290677407)
		Frame16.Rotation = 422.59436692696238
		Frame17.Position = UDim2.fromOffset(53.119782481926222, 48.167271855256146)
		Frame2.Position = UDim2.fromOffset(0, 0.90342795743205662)
		UIStroke.Transparency = 0.66600077084470199
		UIStroke.Thickness = 6.174990364441225
		UIGradient3.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.71115691210076115)), ColorSequenceKeypoint.new(0.5, Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.71115691210076115)), ColorSequenceKeypoint.new(1, Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.71115691210076115)) })
		UIGradient4.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.71115691210076115)), ColorSequenceKeypoint.new(0.5, Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.71115691210076115)), ColorSequenceKeypoint.new(1, Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.71115691210076115)) })
		UIGradient2.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.71115691210076115)), ColorSequenceKeypoint.new(0.5, Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.71115691210076115)), ColorSequenceKeypoint.new(1, Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.71115691210076115)) })
		Frame7.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.71115691210076115)
		Frame8.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.71115691210076115)
		Frame9.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.71115691210076115)
		Frame10.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.71115691210076115)
		Frame11.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.71115691210076115)
		Frame12.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.71115691210076115)
		Frame13.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.71115691210076115)
		Frame14.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.71115691210076115)
		Frame15.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.71115691210076115)
		Frame16.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.71115691210076115)
		Frame17.BackgroundColor3 = Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.71115691210076115):Lerp(Color3.new(1, 1, 1), 0.6)
		Frame18.BackgroundColor3 = Color3.fromRGB(60, 255, 130)
		Frame18.Size = UDim2.fromOffset(15.921542892634585, 15.921542892634585)
		RunService.Heartbeat:Wait()
		Frame3.Rotation = 66.5
		Frame4.Rotation = 313.45000000000022
		UIGradient5.Rotation = 57.666666666666622
		Frame7.Position = UDim2.fromOffset(50.38622146490934, 34.095395010608371)
		Frame7.Rotation = 99.071831756238026
		Frame8.Position = UDim2.fromOffset(43.925530083268555, 43.957980274128758)
		Frame8.Rotation = 135.07183175623803
		Frame9.Position = UDim2.fromOffset(33.585243940451534, 47.456088097373936)
		Frame9.Rotation = 171.07183175623803
		Frame10.Position = UDim2.fromOffset(23.62260591977801, 45.434186365949635)
		Frame10.Rotation = 207.07183175623803
		Frame11.Position = UDim2.fromOffset(15.512485900877817, 38.866840585655339)
		Frame11.Rotation = 243.07183175623803
		Frame12.Position = UDim2.fromOffset(12.165640553291514, 27.992720713271872)
		Frame12.Rotation = 279.071831756238
		Frame13.Position = UDim2.fromOffset(17.051194234053767, 17.016175058324741)
		Frame13.Rotation = 315.071831756238
		Frame14.Position = UDim2.fromOffset(28.085027656553066, 12.445061746554931)
		Frame14.Rotation = 351.071831756238
		Frame15.Position = UDim2.fromOffset(38.762822679778679, 15.811706129927323)
		Frame15.Rotation = 387.071831756238
		Frame16.Position = UDim2.fromOffset(45.409214467906452, 23.680878773827011)
		Frame16.Rotation = 423.071831756238
		Frame17.Position = UDim2.fromOffset(52.475589141420464, 48.966609892489558)
		Frame2.Position = UDim2.fromOffset(0, 0.94693584793400465)
		UIStroke.Transparency = 0.66239013942527514
		UIStroke.Thickness = 6.2201232571840608
		UIGradient3.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.7304131179607104)), ColorSequenceKeypoint.new(0.5, Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.7304131179607104)), ColorSequenceKeypoint.new(1, Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.7304131179607104)) })
		UIGradient4.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.7304131179607104)), ColorSequenceKeypoint.new(0.5, Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.7304131179607104)), ColorSequenceKeypoint.new(1, Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.7304131179607104)) })
		UIGradient2.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.7304131179607104)), ColorSequenceKeypoint.new(0.5, Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.7304131179607104)), ColorSequenceKeypoint.new(1, Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.7304131179607104)) })
		Frame7.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.7304131179607104)
		Frame8.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.7304131179607104)
		Frame9.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.7304131179607104)
		Frame10.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.7304131179607104)
		Frame11.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.7304131179607104)
		Frame12.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.7304131179607104)
		Frame13.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.7304131179607104)
		Frame14.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.7304131179607104)
		Frame15.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.7304131179607104)
		Frame16.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.7304131179607104)
		Frame17.BackgroundColor3 = Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.7304131179607104):Lerp(Color3.new(1, 1, 1), 0.6)
		Frame18.BackgroundColor3 = Color3.fromRGB(60, 255, 130)
		Frame18.Size = UDim2.fromOffset(15.838900263062243, 15.838900263062243)
		RunService.Heartbeat:Wait()
		Frame3.Rotation = 70
		Frame4.Rotation = 311.00000000000023
		UIGradient5.Rotation = 58.333333333333286
		Frame7.Position = UDim2.fromOffset(50.378137309047013, 34.259930135379882)
		Frame7.Rotation = 99.549296585513716
		Frame8.Position = UDim2.fromOffset(43.792791634952764, 44.040463518092622)
		Frame8.Rotation = 135.54929658551373
		Frame9.Position = UDim2.fromOffset(33.447070609848581, 47.470658625855762)
		Frame9.Rotation = 171.54929658551373
		Frame10.Position = UDim2.fromOffset(23.466782081224302, 45.440827836970819)
		Frame10.Rotation = 207.54929658551373
		Frame11.Position = UDim2.fromOffset(15.322315539627676, 38.799770342595572)
		Frame11.Rotation = 243.5492965855137
		Frame12.Position = UDim2.fromOffset(12.069728998650753, 27.815413167735414)
		Frame12.Rotation = 279.54929658551373
		Frame13.Position = UDim2.fromOffset(17.137977261499152, 16.869604776920291)
		Frame13.Rotation = 315.54929658551373
		Frame14.Position = UDim2.fromOffset(28.243720386651699, 12.448128057214177)
		Frame14.Rotation = 351.54929658551373
		Frame15.Position = UDim2.fromOffset(38.878633477346582, 15.897026627440605)
		Frame15.Rotation = 387.54929658551373
		Frame16.Position = UDim2.fromOffset(45.516426234595826, 23.77796468532906)
		Frame16.Rotation = 423.54929658551373
		Frame17.Position = UDim2.fromOffset(51.802526299073236, 49.741795527013053)
		Frame2.Position = UDim2.fromOffset(0, 0.98939168491157925)
		UIStroke.Transparency = 0.65902348182305226
		UIStroke.Thickness = 6.2622064772118442
		UIGradient3.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.74838557676332973)), ColorSequenceKeypoint.new(0.5, Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.74838557676332973)), ColorSequenceKeypoint.new(1, Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.74838557676332973)) })
		UIGradient4.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.74838557676332973)), ColorSequenceKeypoint.new(0.5, Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.74838557676332973)), ColorSequenceKeypoint.new(1, Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.74838557676332973)) })
		UIGradient2.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.74838557676332973)), ColorSequenceKeypoint.new(0.5, Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.74838557676332973)), ColorSequenceKeypoint.new(1, Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.74838557676332973)) })
		Frame7.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.74838557676332973)
		Frame8.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.74838557676332973)
		Frame9.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.74838557676332973)
		Frame10.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.74838557676332973)
		Frame11.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.74838557676332973)
		Frame12.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.74838557676332973)
		Frame13.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.74838557676332973)
		Frame14.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.74838557676332973)
		Frame15.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.74838557676332973)
		Frame16.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.74838557676332973)
		Frame17.BackgroundColor3 = Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.74838557676332973):Lerp(Color3.new(1, 1, 1), 0.6)
		Frame18.BackgroundColor3 = Color3.fromRGB(60, 255, 130)
		Frame18.Size = UDim2.fromOffset(15.727892280477045, 15.727892280477045)
		RunService.Heartbeat:Wait()
		Frame3.Rotation = 73.5
		Frame4.Rotation = 308.55000000000024
		UIGradient5.Rotation = 58.99999999999995
		Frame7.Position = UDim2.fromOffset(50.359306533143354, 34.422892216693398)
		Frame7.Rotation = 100.02676141478941
		Frame8.Position = UDim2.fromOffset(43.655385234354306, 44.117290496697436)
		Frame8.Rotation = 136.02676141478941
		Frame9.Position = UDim2.fromOffset(33.308556821999808, 47.482090328512214)
		Frame9.Rotation = 172.02676141478941
		Frame10.Position = UDim2.fromOffset(23.310849494997932, 45.444908456666418)
		Frame10.Rotation = 208.02676141478941
		Frame11.Position = UDim2.fromOffset(15.135923695752975, 38.728256734503177)
		Frame11.Rotation = 244.02676141478941
		Frame12.Position = UDim2.fromOffset(11.983704604007265, 27.637755108125912)
		Frame12.Rotation = 280.02676141478941
		Frame13.Position = UDim2.fromOffset(17.233078799403948, 16.730603905826136)
		Frame13.Rotation = 316.02676141478941
		Frame14.Position = UDim2.fromOffset(28.403166008406039, 12.459736225801219)
		Frame14.Rotation = 352.02676141478941
		Frame15.Position = UDim2.fromOffset(38.992173200011052, 15.985830337320021)
		Frame15.Rotation = 388.02676141478941
		Frame16.Position = UDim2.fromOffset(45.622204267202676, 23.876726861743755)
		Frame16.Rotation = 424.02676141478941
		Frame17.Position = UDim2.fromOffset(51.101498749106412, 50.491786681565983)
		Frame2.Position = UDim2.fromOffset(0, 1.0307482995803057)
		UIStroke.Transparency = 0.65590921292871784
		UIStroke.Thickness = 6.3011348383910253
		UIGradient3.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.76515987164577437)), ColorSequenceKeypoint.new(0.5, Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.76515987164577437)), ColorSequenceKeypoint.new(1, Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.76515987164577437)) })
		UIGradient4.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.76515987164577437)), ColorSequenceKeypoint.new(0.5, Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.76515987164577437)), ColorSequenceKeypoint.new(1, Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.76515987164577437)) })
		UIGradient2.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.76515987164577437)), ColorSequenceKeypoint.new(0.5, Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.76515987164577437)), ColorSequenceKeypoint.new(1, Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.76515987164577437)) })
		Frame7.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.76515987164577437)
		Frame8.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.76515987164577437)
		Frame9.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.76515987164577437)
		Frame10.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.76515987164577437)
		Frame11.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.76515987164577437)
		Frame12.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.76515987164577437)
		Frame13.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.76515987164577437)
		Frame14.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.76515987164577437)
		Frame15.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.76515987164577437)
		Frame16.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.76515987164577437)
		Frame17.BackgroundColor3 = Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.76515987164577437):Lerp(Color3.new(1, 1, 1), 0.6)
		Frame18.BackgroundColor3 = Color3.fromRGB(60, 255, 130)
		Frame18.Size = UDim2.fromOffset(15.589628099946623, 15.589628099946623)
		RunService.Heartbeat:Wait()
		Frame3.Rotation = 77
		Frame4.Rotation = 306.10000000000025
		UIGradient5.Rotation = 59.666666666666615
		Frame7.Position = UDim2.fromOffset(50.330397862591681, 34.5841523231582)
		Frame7.Rotation = 100.50422624406509
		Frame8.Position = UDim2.fromOffset(43.513958253789191, 44.188908707457578)
		Frame8.Rotation = 136.50422624406508
		Frame9.Position = UDim2.fromOffset(33.169850920646525, 47.491053665807314)
		Frame9.Rotation = 172.50422624406508
		Frame10.Position = UDim2.fromOffset(23.154623167492744, 45.446845310725173)
		Frame10.Rotation = 208.50422624406508
		Frame11.Position = UDim2.fromOffset(14.953094573236605, 38.652528378355164)
		Frame11.Rotation = 244.50422624406508
		Frame12.Position = UDim2.fromOffset(11.907185316452669, 27.459899243145209)
		Frame12.Rotation = 280.50422624406508
		Frame13.Position = UDim2.fromOffset(17.335920623878529, 16.598937457814241)
		Frame13.Rotation = 316.50422624406508
		Frame14.Position = UDim2.fromOffset(28.563075677659871, 12.479165505412666)
		Frame14.Rotation = 352.50422624406508
		Frame15.Position = UDim2.fromOffset(39.103716693414725, 16.077435538008565)
		Frame15.Rotation = 388.50422624406508
		Frame16.Position = UDim2.fromOffset(45.727006591667191, 23.976911568071252)
		Frame16.Rotation = 424.50422624406508
		Frame17.Position = UDim2.fromOffset(50.373448878525608, 51.21557514767153)
		Frame2.Position = UDim2.fromOffset(0, 1.0709597444007459)
		UIStroke.Transparency = 0.65305511679262773
		UIStroke.Thickness = 6.3368110400921527
		UIGradient3.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.78081588020272275)), ColorSequenceKeypoint.new(0.5, Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.78081588020272275)), ColorSequenceKeypoint.new(1, Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.78081588020272275)) })
		UIGradient4.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.78081588020272275)), ColorSequenceKeypoint.new(0.5, Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.78081588020272275)), ColorSequenceKeypoint.new(1, Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.78081588020272275)) })
		UIGradient2.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.78081588020272275)), ColorSequenceKeypoint.new(0.5, Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.78081588020272275)), ColorSequenceKeypoint.new(1, Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.78081588020272275)) })
		Frame7.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.78081588020272275)
		Frame8.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.78081588020272275)
		Frame9.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.78081588020272275)
		Frame10.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.78081588020272275)
		Frame11.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.78081588020272275)
		Frame12.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.78081588020272275)
		Frame13.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.78081588020272275)
		Frame14.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.78081588020272275)
		Frame15.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.78081588020272275)
		Frame16.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.78081588020272275)
		Frame17.BackgroundColor3 = Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.78081588020272275):Lerp(Color3.new(1, 1, 1), 0.6)
		Frame18.BackgroundColor3 = Color3.fromRGB(60, 255, 130)
		Frame18.Size = UDim2.fromOffset(15.425489211458771, 15.425489211458771)
		RunService.Heartbeat:Wait()
		Frame3.Rotation = 80.5
		Frame4.Rotation = 303.65000000000026
		UIGradient5.Rotation = 60.333333333333279
		Frame7.Position = UDim2.fromOffset(50.29203679416608, 34.743594753798696)
		Frame7.Rotation = 100.98169107334078
		Frame8.Position = UDim2.fromOffset(43.369105097717728, 44.255746283548561)
		Frame8.Rotation = 136.98169107334078
		Frame9.Position = UDim2.fromOffset(33.031071082446786, 47.49816045155773)
		Frame9.Rotation = 172.98169107334076
		Frame10.Position = UDim2.fromOffset(22.997935561519068, 45.446991935601822)
		Frame10.Rotation = 208.98169107334076
		Frame11.Position = UDim2.fromOffset(14.773657608793172, 38.572781279218489)
		Frame11.Rotation = 244.98169107334076
		Frame12.Position = UDim2.fromOffset(11.839833228987853, 27.281994453402682)
		Frame12.Rotation = 280.98169107334076
		Frame13.Position = UDim2.fromOffset(17.445964931951735, 16.4743856923393)
		Frame13.Rotation = 316.98169107334076
		Frame14.Position = UDim2.fromOffset(28.723191022529353, 12.505738448796095)
		Frame14.Rotation = 352.98169107334076
		Frame15.Position = UDim2.fromOffset(39.213531322532823, 16.171224039534152)
		Frame15.Rotation = 388.98169107334076
		Frame16.Position = UDim2.fromOffset(45.831240043312491, 24.078308454254234)
		Frame16.Rotation = 424.98169107334076
		Frame17.Position = UDim2.fromOffset(49.61935540027514, 51.912187940965069)
		Frame2.Position = UDim2.fromOffset(0, 1.1099813441265924)
		UIStroke.Transparency = 0.65046832716873748
		UIStroke.Thickness = 6.369145910390781
		UIGradient3.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.79542815485587459)), ColorSequenceKeypoint.new(0.5, Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.79542815485587459)), ColorSequenceKeypoint.new(1, Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.79542815485587459)) })
		UIGradient4.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.79542815485587459)), ColorSequenceKeypoint.new(0.5, Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.79542815485587459)), ColorSequenceKeypoint.new(1, Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.79542815485587459)) })
		UIGradient2.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.79542815485587459)), ColorSequenceKeypoint.new(0.5, Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.79542815485587459)), ColorSequenceKeypoint.new(1, Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.79542815485587459)) })
		Frame7.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.79542815485587459)
		Frame8.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.79542815485587459)
		Frame9.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.79542815485587459)
		Frame10.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.79542815485587459)
		Frame11.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.79542815485587459)
		Frame12.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.79542815485587459)
		Frame13.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.79542815485587459)
		Frame14.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.79542815485587459)
		Frame15.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.79542815485587459)
		Frame16.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.79542815485587459)
		Frame17.BackgroundColor3 = Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.79542815485587459):Lerp(Color3.new(1, 1, 1), 0.6)
		Frame18.BackgroundColor3 = Color3.fromRGB(60, 255, 130)
		Frame18.Size = UDim2.fromOffset(15.237115636530161, 15.237115636530161)
		RunService.Heartbeat:Wait()
		Frame3.Rotation = 84
		Frame4.Rotation = 301.20000000000027
		UIGradient5.Rotation = 60.999999999999943
		Frame7.Position = UDim2.fromOffset(50.244810537130448, 34.901116227339386)
		Frame7.Rotation = 101.45915590261646
		Frame8.Position = UDim2.fromOffset(43.221371709421987, 44.318213697764264)
		Frame8.Rotation = 137.45915590261646
		Frame9.Position = UDim2.fromOffset(32.8923084268121, 47.503968109986147)
		Frame9.Rotation = 173.45915590261646
		Frame10.Position = UDim2.fromOffset(22.840636343121215, 45.445644223912282)
		Frame10.Rotation = 209.45915590261649
		Frame11.Position = UDim2.fromOffset(14.597483234801174, 38.489183329699266)
		Frame11.Rotation = 245.45915590261646
		Frame12.Position = UDim2.fromOffset(11.781348784431326, 27.104186529663281)
		Frame12.Rotation = 281.45915590261643
		Frame13.Position = UDim2.fromOffset(17.562709771941591, 16.356741695517456)
		Frame13.Rotation = 317.45915590261643
		Frame14.Position = UDim2.fromOffset(28.883281628633934, 12.538816820839447)
		Frame14.Rotation = 353.45915590261649
		Frame15.Position = UDim2.fromOffset(39.321876975828609, 16.266636085445278)
		Frame15.Rotation = 389.45915590261649
		Frame16.Position = UDim2.fromOffset(45.935263750777828, 24.180745985012184)
		Frame16.Rotation = 425.45915590261649
		Frame17.Position = UDim2.fromOffset(48.840232037560241, 52.580688609171141)
		Frame2.Position = UDim2.fromOffset(0, 1.1477697454392364)
		UIStroke.Transparency = 0.64815530968393276
		UIStroke.Thickness = 6.3980586289508397
		UIGradient3.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.80906627786548291)), ColorSequenceKeypoint.new(0.5, Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.80906627786548291)), ColorSequenceKeypoint.new(1, Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.80906627786548291)) })
		UIGradient4.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.80906627786548291)), ColorSequenceKeypoint.new(0.5, Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.80906627786548291)), ColorSequenceKeypoint.new(1, Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.80906627786548291)) })
		UIGradient2.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.80906627786548291)), ColorSequenceKeypoint.new(0.5, Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.80906627786548291)), ColorSequenceKeypoint.new(1, Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.80906627786548291)) })
		Frame7.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.80906627786548291)
		Frame8.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.80906627786548291)
		Frame9.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.80906627786548291)
		Frame10.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.80906627786548291)
		Frame11.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.80906627786548291)
		Frame12.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.80906627786548291)
		Frame13.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.80906627786548291)
		Frame14.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.80906627786548291)
		Frame15.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.80906627786548291)
		Frame16.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.80906627786548291)
		Frame17.BackgroundColor3 = Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.80906627786548291):Lerp(Color3.new(1, 1, 1), 0.6)
		Frame18.BackgroundColor3 = Color3.fromRGB(60, 255, 130)
		Frame18.Size = UDim2.fromOffset(15.026389541653453, 15.026389541653453)
		RunService.Heartbeat:Wait()
		Frame3.Rotation = 87.5
		Frame4.Rotation = 298.75000000000028
		UIGradient5.Rotation = 61.666666666666607
		Frame7.Position = UDim2.fromOffset(50.189272395662513, 35.056625207707874)
		Frame7.Rotation = 101.93662073189215
		Frame8.Position = UDim2.fromOffset(43.07125957934587, 44.376705261760762)
		Frame8.Rotation = 137.93662073189216
		Frame9.Position = UDim2.fromOffset(32.753629834485842, 47.50898351016091)
		Frame9.Rotation = 173.93662073189216
		Frame10.Position = UDim2.fromOffset(22.682592113384029, 45.443045806553421)
		Frame10.Rotation = 209.93662073189216
		Frame11.Position = UDim2.fromOffset(14.424478956601675, 38.401878347596778)
		Frame11.Rotation = 245.93662073189216
		Frame12.Position = UDim2.fromOffset(11.731465539376529, 26.926618737966258)
		Frame12.Rotation = 281.93662073189216
		Frame13.Position = UDim2.fromOffset(17.68568501464943, 16.245809175869752)
		Frame13.Rotation = 317.93662073189216
		Frame14.Position = UDim2.fromOffset(29.043142810182118, 12.577797980430091)
		Frame14.Rotation = 353.93662073189211
		Frame15.Position = UDim2.fromOffset(39.429006047379723, 16.363165771643693)
		Frame15.Rotation = 389.93662073189211
		Frame16.Position = UDim2.fromOffset(46.039392323392526, 24.284087293058654)
		Frame16.Rotation = 425.93662073189211
		Frame17.Position = UDim2.fromOffset(48.037126161105263, 53.220178490970376)
		Frame2.Position = UDim2.fromOffset(0, 1.1842829651136593)
		UIStroke.Transparency = 0.64612184567732966
		UIStroke.Thickness = 6.4234769290333791
		UIGradient3.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.82179519267445067)), ColorSequenceKeypoint.new(0.5, Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.82179519267445067)), ColorSequenceKeypoint.new(1, Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.82179519267445067)) })
		UIGradient4.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.82179519267445067)), ColorSequenceKeypoint.new(0.5, Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.82179519267445067)), ColorSequenceKeypoint.new(1, Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.82179519267445067)) })
		UIGradient2.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.82179519267445067)), ColorSequenceKeypoint.new(0.5, Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.82179519267445067)), ColorSequenceKeypoint.new(1, Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.82179519267445067)) })
		Frame7.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.82179519267445067)
		Frame8.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.82179519267445067)
		Frame9.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.82179519267445067)
		Frame10.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.82179519267445067)
		Frame11.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.82179519267445067)
		Frame12.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.82179519267445067)
		Frame13.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.82179519267445067)
		Frame14.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.82179519267445067)
		Frame15.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.82179519267445067)
		Frame16.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.82179519267445067)
		Frame17.BackgroundColor3 = Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.82179519267445067):Lerp(Color3.new(1, 1, 1), 0.6)
		Frame18.BackgroundColor3 = Color3.fromRGB(60, 255, 130)
		Frame18.Size = UDim2.fromOffset(14.795416432311869, 14.795416432311869)
		RunService.Heartbeat:Wait()
		Frame3.Rotation = 91
		Frame4.Rotation = 296.3000000000003
		UIGradient5.Rotation = 62.333333333333272
		Frame7.Position = UDim2.fromOffset(50.125945645636364, 35.210041344675972)
		Frame7.Rotation = 102.41408556116784
		Frame8.Position = UDim2.fromOffset(42.919229310000034, 44.431600436560011)
		Frame8.Rotation = 138.41408556116784
		Frame9.Position = UDim2.fromOffset(32.615080508188875, 47.513666422215707)
		Frame9.Rotation = 174.41408556116784
		Frame10.Position = UDim2.fromOffset(22.523686126997376, 45.439392965080543)
		Frame10.Rotation = 210.41408556116784
		Frame11.Position = UDim2.fromOffset(14.254585715934226, 38.310989696827974)
		Frame11.Rotation = 246.41408556116784
		Frame12.Position = UDim2.fromOffset(11.689945437841711, 26.749432233005269)
		Frame12.Rotation = 282.41408556116784
		Frame13.Position = UDim2.fromOffset(17.814448810320823, 16.141400462277144)
		Frame13.Rotation = 318.41408556116784
		Frame14.Position = UDim2.fromOffset(29.20259363138015, 12.622111686655824)
		Frame14.Rotation = 354.41408556116784
		Frame15.Position = UDim2.fromOffset(39.535163396029851, 16.460356926024339)
		Frame15.Rotation = 390.41408556116784
		Frame16.Position = UDim2.fromOffset(46.143898772642352, 24.388226411218287)
		Frame16.Rotation = 426.41408556116784
		Frame17.Position = UDim2.fromOffset(47.211117381179626, 53.829797924064408)
		Frame2.Position = UDim2.fromOffset(0, 1.2194804366621437)
		UIStroke.Transparency = 0.64437301774993672
		UIStroke.Thickness = 6.4453372781257894
		UIGradient3.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.83367551316282063)), ColorSequenceKeypoint.new(0.5, Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.83367551316282063)), ColorSequenceKeypoint.new(1, Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.83367551316282063)) })
		UIGradient4.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.83367551316282063)), ColorSequenceKeypoint.new(0.5, Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.83367551316282063)), ColorSequenceKeypoint.new(1, Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.83367551316282063)) })
		UIGradient2.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.83367551316282063)), ColorSequenceKeypoint.new(0.5, Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.83367551316282063)), ColorSequenceKeypoint.new(1, Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.83367551316282063)) })
		Frame7.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.83367551316282063)
		Frame8.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.83367551316282063)
		Frame9.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.83367551316282063)
		Frame10.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.83367551316282063)
		Frame11.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.83367551316282063)
		Frame12.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.83367551316282063)
		Frame13.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.83367551316282063)
		Frame14.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.83367551316282063)
		Frame15.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.83367551316282063)
		Frame16.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.83367551316282063)
		Frame17.BackgroundColor3 = Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.83367551316282063):Lerp(Color3.new(1, 1, 1), 0.6)
		Frame18.BackgroundColor3 = Color3.fromRGB(60, 255, 130)
		Frame18.Size = UDim2.fromOffset(14.546504115464394, 14.546504115464394)
		RunService.Heartbeat:Wait()
		Frame3.Rotation = 94.5
		Frame4.Rotation = 293.85000000000031
		UIGradient5.Rotation = 62.999999999999936
		Frame7.Position = UDim2.fromOffset(50.055326953889541, 35.361295011001339)
		Frame7.Rotation = 102.89155039044353
		Frame8.Position = UDim2.fromOffset(42.765703786808551, 44.483264969327202)
		Frame8.Rotation = 138.89155039044351
		Frame9.Position = UDim2.fromOffset(32.476686304790704, 47.518432635605578)
		Frame9.Rotation = 174.89155039044351
		Frame10.Position = UDim2.fromOffset(22.363817998748743, 45.434839122301057)
		Frame10.Rotation = 210.89155039044351
		Frame11.Position = UDim2.fromOffset(14.087774515009617, 38.216623531926388)
		Frame11.Rotation = 246.89155039044351
		Frame12.Position = UDim2.fromOffset(11.656574549157053, 26.572766338852148)
		Frame12.Rotation = 282.89155039044351
		Frame13.Position = UDim2.fromOffset(17.948584481698539, 16.043334691516918)
		Frame13.Rotation = 318.89155039044351
		Frame14.Position = UDim2.fromOffset(29.361475146528214, 12.671217288308764)
		Frame14.Rotation = 354.89155039044351
		Frame15.Position = UDim2.fromOffset(39.640586281348213, 16.5577993984434)
		Frame15.Rotation = 390.89155039044351
		Frame16.Position = UDim2.fromOffset(46.249017195590952, 24.493084843853442)
		Frame16.Rotation = 426.89155039044351
		Frame17.Position = UDim2.fromOffset(46.36331609628445, 54.40872740081457)
		Frame2.Position = UDim2.fromOffset(0, 1.2533230554039734)
		UIStroke.Transparency = 0.64291319706080086
		UIStroke.Thickness = 6.463585036739989
		UIGradient3.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.84476381228529929)), ColorSequenceKeypoint.new(0.5, Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.84476381228529929)), ColorSequenceKeypoint.new(1, Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.84476381228529929)) })
		UIGradient4.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.84476381228529929)), ColorSequenceKeypoint.new(0.5, Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.84476381228529929)), ColorSequenceKeypoint.new(1, Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.84476381228529929)) })
		UIGradient2.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.84476381228529929)), ColorSequenceKeypoint.new(0.5, Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.84476381228529929)), ColorSequenceKeypoint.new(1, Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.84476381228529929)) })
		Frame7.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.84476381228529929)
		Frame8.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.84476381228529929)
		Frame9.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.84476381228529929)
		Frame10.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.84476381228529929)
		Frame11.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.84476381228529929)
		Frame12.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.84476381228529929)
		Frame13.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.84476381228529929)
		Frame14.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.84476381228529929)
		Frame15.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.84476381228529929)
		Frame16.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.84476381228529929)
		Frame17.BackgroundColor3 = Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.84476381228529929):Lerp(Color3.new(1, 1, 1), 0.6)
		Frame18.BackgroundColor3 = Color3.fromRGB(60, 255, 130)
		Frame18.Size = UDim2.fromOffset(14.282139640701491, 14.282139640701491)
		RunService.Heartbeat:Wait()
		Frame3.Rotation = 98
		Frame4.Rotation = 291.40000000000032
		UIGradient5.Rotation = 63.6666666666666
		Frame7.Position = UDim2.fromOffset(49.977889383662017, 35.510326919605056)
		Frame7.Rotation = 103.3690152197192
		Frame8.Position = UDim2.fromOffset(42.611070999296786, 44.532051870533422)
		Frame8.Rotation = 139.36901521971919
		Frame9.Position = UDim2.fromOffset(32.338455865012328, 47.523656775889542)
		Frame9.Rotation = 175.36901521971922
		Frame10.Position = UDim2.fromOffset(22.202903398629243, 45.429498954018548)
		Frame10.Rotation = 211.36901521971922
		Frame11.Position = UDim2.fromOffset(13.924043278211268, 38.118871702166039)
		Frame11.Rotation = 247.36901521971922
		Frame12.Position = UDim2.fromOffset(11.631159229047821, 26.39675871406558)
		Frame12.Rotation = 283.36901521971924
		Frame13.Position = UDim2.fromOffset(18.087697808329398, 15.951436173607817)
		Frame13.Rotation = 319.36901521971924
		Frame14.Position = UDim2.fromOffset(29.519648830659754, 12.724601259273072)
		Frame14.Rotation = 355.36901521971919
		Frame15.Position = UDim2.fromOffset(39.745504276792417, 16.655125715605131)
		Frame15.Rotation = 391.36901521971919
		Frame16.Position = UDim2.fromOffset(46.354945245559186, 24.598608442393033)
		Frame16.Rotation = 427.36901521971919
		Frame17.Position = UDim2.fromOffset(45.494862000450681, 54.956188669900953)
		Frame2.Position = UDim2.fromOffset(0, 1.2857732219110578)
		UIStroke.Transparency = 0.64174603240138484
		UIStroke.Thickness = 6.4781745949826899
		UIGradient3.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.85511289146627933)), ColorSequenceKeypoint.new(0.5, Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.85511289146627933)), ColorSequenceKeypoint.new(1, Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.85511289146627933)) })
		UIGradient4.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.85511289146627933)), ColorSequenceKeypoint.new(0.5, Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.85511289146627933)), ColorSequenceKeypoint.new(1, Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.85511289146627933)) })
		UIGradient2.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.85511289146627933)), ColorSequenceKeypoint.new(0.5, Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.85511289146627933)), ColorSequenceKeypoint.new(1, Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.85511289146627933)) })
		Frame7.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.85511289146627933)
		Frame8.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.85511289146627933)
		Frame9.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.85511289146627933)
		Frame10.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.85511289146627933)
		Frame11.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.85511289146627933)
		Frame12.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.85511289146627933)
		Frame13.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.85511289146627933)
		Frame14.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.85511289146627933)
		Frame15.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.85511289146627933)
		Frame16.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.85511289146627933)
		Frame17.BackgroundColor3 = Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.85511289146627933):Lerp(Color3.new(1, 1, 1), 0.6)
		Frame18.BackgroundColor3 = Color3.fromRGB(60, 255, 130)
		Frame18.Size = UDim2.fromOffset(14.004964450467716, 14.004964450467716)
		RunService.Heartbeat:Wait()
		Frame3.Rotation = 101.5
		Frame4.Rotation = 288.95000000000033
		UIGradient5.Rotation = 64.333333333333272
		Frame7.Position = UDim2.fromOffset(49.894085025887399, 35.657087806255035)
		Frame7.Rotation = 103.84648004899489
		Frame8.Position = UDim2.fromOffset(42.455686552533791, 44.578302244768018)
		Frame8.Rotation = 139.84648004899489
		Frame9.Position = UDim2.fromOffset(32.200382563586665, 47.529674853100758)
		Frame9.Rotation = 175.84648004899489
		Frame10.Position = UDim2.fromOffset(22.040873735853161, 45.423452160333866)
		Frame10.Rotation = 211.84648004899489
		Frame11.Position = UDim2.fromOffset(13.763413930691563, 38.017814347565434)
		Frame11.Rotation = 247.84648004899489
		Frame12.Position = UDim2.fromOffset(11.613522666845796, 26.221545416421577)
		Frame12.Rotation = 283.84648004899486
		Frame13.Position = UDim2.fromOffset(18.231414661632709, 15.86553292398553)
		Frame13.Rotation = 319.84648004899486
		Frame14.Position = UDim2.fromOffset(29.676995175704693, 12.781775045663569)
		Frame14.Rotation = 355.84648004899486
		Frame15.Position = UDim2.fromOffset(39.850139160978507, 16.752008060037454)
		Frame15.Rotation = 391.84648004899486
		Frame16.Position = UDim2.fromOffset(46.461846413014662, 24.704764553677009)
		Frame16.Rotation = 427.84648004899486
		Frame17.Position = UDim2.fromOffset(44.606922551155435, 55.471445782520853)
		Frame2.Position = UDim2.fromOffset(0, 1.3167948837812045)
		UIStroke.Transparency = 0.64087444107548941
		UIStroke.Thickness = 6.4890694865563825
		UIGradient3.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.86477203203519404)), ColorSequenceKeypoint.new(0.5, Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.86477203203519404)), ColorSequenceKeypoint.new(1, Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.86477203203519404)) })
		UIGradient4.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.86477203203519404)), ColorSequenceKeypoint.new(0.5, Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.86477203203519404)), ColorSequenceKeypoint.new(1, Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.86477203203519404)) })
		UIGradient2.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.86477203203519404)), ColorSequenceKeypoint.new(0.5, Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.86477203203519404)), ColorSequenceKeypoint.new(1, Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.86477203203519404)) })
		Frame7.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.86477203203519404)
		Frame8.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.86477203203519404)
		Frame9.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.86477203203519404)
		Frame10.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.86477203203519404)
		Frame11.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.86477203203519404)
		Frame12.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.86477203203519404)
		Frame13.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.86477203203519404)
		Frame14.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.86477203203519404)
		Frame15.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.86477203203519404)
		Frame16.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.86477203203519404)
		Frame17.BackgroundColor3 = Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.86477203203519404):Lerp(Color3.new(1, 1, 1), 0.6)
		Frame18.BackgroundColor3 = Color3.fromRGB(60, 255, 130)
		Frame18.Size = UDim2.fromOffset(13.717747987641948, 13.717747987641948)
		RunService.Heartbeat:Wait()
		Frame3.Rotation = 105
		Frame4.Rotation = 286.50000000000034
		UIGradient5.Rotation = 64.999999999999943
		Frame7.Position = UDim2.fromOffset(49.804347292398916, 35.801538164948731)
		Frame7.Rotation = 104.32394487827058
		Frame8.Position = UDim2.fromOffset(42.299875904699135, 44.622345987669881)
		Frame8.Rotation = 140.32394487827059
		Frame9.Position = UDim2.fromOffset(32.062446300054162, 47.536786571641258)
		Frame9.Rotation = 176.32394487827059
		Frame10.Position = UDim2.fromOffset(21.877675831790853, 45.416746930831543)
		Frame10.Rotation = 212.32394487827059
		Frame11.Position = UDim2.fromOffset(13.605929675203971, 37.913522215639873)
		Frame11.Rotation = 248.32394487827057
		Frame12.Position = UDim2.fromOffset(11.603501785336892, 26.047260880907526)
		Frame12.Rotation = 284.32394487827059
		Frame13.Position = UDim2.fromOffset(18.379378954144798, 15.785455352265204)
		Frame13.Rotation = 320.32394487827059
		Frame14.Position = UDim2.fromOffset(29.833412429959477, 12.842273193566317)
		Frame14.Rotation = 356.32394487827059
		Frame15.Position = UDim2.fromOffset(39.954704788383125, 16.848155536466884)
		Frame15.Rotation = 392.32394487827059
		Frame16.Position = UDim2.fromOffset(46.569852137466782, 24.811539413339307)
		Frame16.Rotation = 428.32394487827059
		Frame17.Position = UDim2.fromOffset(43.700691399916167, 55.953806081720188)
		Frame2.Position = UDim2.fromOffset(0, 1.3463535756926344)
		UIStroke.Transparency = 0.64030060160751345
		UIStroke.Thickness = 6.4962424799060816
		UIGradient3.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.87378722989951441)), ColorSequenceKeypoint.new(0.5, Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.87378722989951441)), ColorSequenceKeypoint.new(1, Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.87378722989951441)) })
		UIGradient4.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.87378722989951441)), ColorSequenceKeypoint.new(0.5, Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.87378722989951441)), ColorSequenceKeypoint.new(1, Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.87378722989951441)) })
		UIGradient2.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.87378722989951441)), ColorSequenceKeypoint.new(0.5, Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.87378722989951441)), ColorSequenceKeypoint.new(1, Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.87378722989951441)) })
		Frame7.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.87378722989951441)
		Frame8.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.87378722989951441)
		Frame9.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.87378722989951441)
		Frame10.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.87378722989951441)
		Frame11.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.87378722989951441)
		Frame12.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.87378722989951441)
		Frame13.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.87378722989951441)
		Frame14.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.87378722989951441)
		Frame15.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.87378722989951441)
		Frame16.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.87378722989951441)
		Frame17.BackgroundColor3 = Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.87378722989951441):Lerp(Color3.new(1, 1, 1), 0.6)
		Frame18.BackgroundColor3 = Color3.fromRGB(60, 255, 130)
		Frame18.Size = UDim2.fromOffset(13.423360024179603, 13.423360024179603)
		RunService.Heartbeat:Wait()
		Frame3.Rotation = 108.5
		Frame4.Rotation = 284.05000000000035
		UIGradient5.Rotation = 65.666666666666615
		Frame7.Position = UDim2.fromOffset(49.709092903847036, 35.943648024724496)
		Frame7.Rotation = 104.80140970754627
		Frame8.Position = UDim2.fromOffset(42.143936362997437, 44.664502360701334)
		Frame8.Rotation = 140.80140970754627
		Frame9.Position = UDim2.fromOffset(31.924615147921269, 47.545257428792553)
		Frame9.Rotation = 176.80140970754627
		Frame10.Position = UDim2.fromOffset(21.713271581588575, 45.409403134306025)
		Frame10.Rotation = 212.80140970754627
		Frame11.Position = UDim2.fromOffset(13.451652450402598, 37.806058724751203)
		Frame11.Rotation = 248.80140970754627
		Frame12.Position = UDim2.fromOffset(11.600944462968535, 25.874037823210195)
		Frame12.Rotation = 284.80140970754627
		Frame13.Position = UDim2.fromOffset(18.531250869865588, 15.711035098024686)
		Frame13.Rotation = 320.80140970754621
		Frame14.Position = UDim2.fromOffset(29.988815461156353, 12.905651728942392)
		Frame14.Rotation = 356.80140970754621
		Frame15.Position = UDim2.fromOffset(40.059406941143862, 16.943311692644251)
		Frame15.Rotation = 392.80140970754621
		Frame16.Position = UDim2.fromOffset(46.679063769181042, 24.918935759588738)
		Frame16.Rotation = 428.80140970754621
		Frame17.Position = UDim2.fromOffset(42.777386787672249, 56.402621133527994)
		Frame2.Position = UDim2.fromOffset(0, 1.3744164576952407)
		UIStroke.Transparency = 0.64002594829727721
		UIStroke.Thickness = 6.4996756462840359
		UIGradient3.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.88220141457288015)), ColorSequenceKeypoint.new(0.5, Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.88220141457288015)), ColorSequenceKeypoint.new(1, Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.88220141457288015)) })
		UIGradient4.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.88220141457288015)), ColorSequenceKeypoint.new(0.5, Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.88220141457288015)), ColorSequenceKeypoint.new(1, Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.88220141457288015)) })
		UIGradient2.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.88220141457288015)), ColorSequenceKeypoint.new(0.5, Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.88220141457288015)), ColorSequenceKeypoint.new(1, Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.88220141457288015)) })
		Frame7.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.88220141457288015)
		Frame8.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.88220141457288015)
		Frame9.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.88220141457288015)
		Frame10.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.88220141457288015)
		Frame11.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.88220141457288015)
		Frame12.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.88220141457288015)
		Frame13.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.88220141457288015)
		Frame14.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.88220141457288015)
		Frame15.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.88220141457288015)
		Frame16.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.88220141457288015)
		Frame17.BackgroundColor3 = Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.88220141457288015):Lerp(Color3.new(1, 1, 1), 0.6)
		Frame18.BackgroundColor3 = Color3.fromRGB(60, 255, 130)
		Frame18.Size = UDim2.fromOffset(13.124741987299872, 13.124741987299872)
		RunService.Heartbeat:Wait()
		Frame3.Rotation = 112
		Frame4.Rotation = 281.60000000000036
		UIGradient5.Rotation = 66.333333333333286
		Frame7.Position = UDim2.fromOffset(49.608723602176049, 36.083396758001939)
		Frame7.Rotation = 105.27887453682195
		Frame8.Position = UDim2.fromOffset(41.988138866854953, 44.705080454789361)
		Frame8.Rotation = 141.27887453682195
		Frame9.Position = UDim2.fromOffset(31.786846877725637, 47.555320626339238)
		Frame9.Rotation = 177.27887453682195
		Frame10.Position = UDim2.fromOffset(21.547637604085089, 45.401415260375302)
		Frame10.Rotation = 213.27887453682195
		Frame11.Position = UDim2.fromOffset(13.300660555562018, 37.695481797213326)
		Frame11.Rotation = 249.27887453682195
		Frame12.Position = UDim2.fromOffset(11.605707051031104, 25.702007079679575)
		Frame12.Rotation = 285.27887453682195
		Frame13.Position = UDim2.fromOffset(18.686705345791655, 15.642104004665322)
		Frame13.Rotation = 321.27887453682195
		Frame14.Position = UDim2.fromOffset(30.143134725676386, 12.971486763718396)
		Frame14.Rotation = 357.27887453682195
		Frame15.Position = UDim2.fromOffset(40.164443163899449, 17.037252265056754)
		Frame15.Rotation = 393.27887453682195
		Frame16.Position = UDim2.fromOffset(46.789554397708415, 25.026970645552062)
		Frame16.Rotation = 429.27887453682195
		Frame17.Position = UDim2.fromOffset(41.838249907111255, 56.817287598642174)
		Frame2.Position = UDim2.fromOffset(0, 1.4009523516960409)
		UIStroke.Transparency = 0.64005116763501935
		UIStroke.Thickness = 6.4993604045622577
		UIGradient3.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.89005465360135483)), ColorSequenceKeypoint.new(0.5, Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.89005465360135483)), ColorSequenceKeypoint.new(1, Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.89005465360135483)) })
		UIGradient4.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.89005465360135483)), ColorSequenceKeypoint.new(0.5, Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.89005465360135483)), ColorSequenceKeypoint.new(1, Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.89005465360135483)) })
		UIGradient2.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.89005465360135483)), ColorSequenceKeypoint.new(0.5, Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.89005465360135483)), ColorSequenceKeypoint.new(1, Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.89005465360135483)) })
		Frame7.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.89005465360135483)
		Frame8.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.89005465360135483)
		Frame9.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.89005465360135483)
		Frame10.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.89005465360135483)
		Frame11.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.89005465360135483)
		Frame12.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.89005465360135483)
		Frame13.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.89005465360135483)
		Frame14.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.89005465360135483)
		Frame15.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.89005465360135483)
		Frame16.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.89005465360135483)
		Frame17.BackgroundColor3 = Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.89005465360135483):Lerp(Color3.new(1, 1, 1), 0.6)
		Frame18.BackgroundColor3 = Color3.fromRGB(60, 255, 130)
		Frame18.Size = UDim2.fromOffset(12.824877569717259, 12.824877569717259)
		RunService.Heartbeat:Wait()
		Frame3.Rotation = 115.5
		Frame4.Rotation = 279.15000000000038
		UIGradient5.Rotation = 66.999999999999957
		Frame7.Position = UDim2.fromOffset(49.503627614843701, 36.22077291177515)
		Frame7.Rotation = 105.75633936609763
		Frame8.Position = UDim2.fromOffset(41.832729584364408, 44.74437955320434)
		Frame8.Rotation = 141.75633936609765
		Frame9.Position = UDim2.fromOffset(31.649090367607116, 47.567178817437849)
		Frame9.Rotation = 177.75633936609762
		Frame10.Position = UDim2.fromOffset(21.380764879525287, 45.392755137352765)
		Frame10.Rotation = 213.75633936609762
		Frame11.Position = UDim2.fromOffset(13.153046428236742, 37.581845482915952)
		Frame11.Rotation = 249.75633936609762
		Frame12.Position = UDim2.fromOffset(11.617652161024843, 25.531297393644625)
		Frame12.Rotation = 285.75633936609762
		Frame13.Position = UDim2.fromOffset(18.845430777560232, 15.578493222979331)
		Frame13.Rotation = 321.75633936609768
		Frame14.Position = UDim2.fromOffset(30.296315328468687, 13.039373304325697)
		Frame14.Rotation = 357.75633936609768
		Frame15.Position = UDim2.fromOffset(40.270002583826198, 17.129783123020964)
		Frame15.Rotation = 393.75633936609768
		Frame16.Position = UDim2.fromOffset(46.901370562555059, 25.135673430847319)
		Frame16.Rotation = 429.75633936609768
		Frame17.Position = UDim2.fromOffset(40.884543234141248, 57.19724804349481)
		Frame2.Position = UDim2.fromOffset(0, 1.4259317760982968)
		UIStroke.Transparency = 0.64037619658552969
		UIStroke.Thickness = 6.4952975426808788
		UIGradient3.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.89738434336126449)), ColorSequenceKeypoint.new(0.5, Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.89738434336126449)), ColorSequenceKeypoint.new(1, Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.89738434336126449)) })
		UIGradient4.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.89738434336126449)), ColorSequenceKeypoint.new(0.5, Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.89738434336126449)), ColorSequenceKeypoint.new(1, Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.89738434336126449)) })
		UIGradient2.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.89738434336126449)), ColorSequenceKeypoint.new(0.5, Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.89738434336126449)), ColorSequenceKeypoint.new(1, Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.89738434336126449)) })
		Frame7.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.89738434336126449)
		Frame8.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.89738434336126449)
		Frame9.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.89738434336126449)
		Frame10.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.89738434336126449)
		Frame11.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.89738434336126449)
		Frame12.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.89738434336126449)
		Frame13.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.89738434336126449)
		Frame14.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.89738434336126449)
		Frame15.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.89738434336126449)
		Frame16.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.89738434336126449)
		Frame17.BackgroundColor3 = Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.89738434336126449):Lerp(Color3.new(1, 1, 1), 0.6)
		Frame18.BackgroundColor3 = Color3.fromRGB(60, 255, 130)
		Frame18.Size = UDim2.fromOffset(12.526762917570254, 12.526762917570254)
		RunService.Heartbeat:Wait()
		Frame3.Rotation = 119
		Frame4.Rotation = 276.70000000000039
		UIGradient5.Rotation = 67.666666666666629
		Frame7.Position = UDim2.fromOffset(49.394180895561163, 36.355774054077102)
		Frame7.Rotation = 106.23380419537332
		Frame8.Position = UDim2.fromOffset(41.677931345264582, 44.782689403432599)
		Frame8.Rotation = 142.23380419537332
		Frame9.Position = UDim2.fromOffset(31.511286913252782, 47.581005708705938)
		Frame9.Rotation = 178.23380419537332
		Frame10.Position = UDim2.fromOffset(21.212658374507335, 45.38337444807037)
		Frame10.Rotation = 214.2338041953733
		Frame11.Position = UDim2.fromOffset(13.00891456280273, 37.465201392097136)
		Frame11.Rotation = 250.23380419537332
		Frame12.Position = UDim2.fromOffset(11.636646699755712, 25.36203515697715)
		Frame12.Rotation = 286.2338041953733
		Frame13.Position = UDim2.fromOffset(19.007127924685307, 15.520032436576152)
		Frame13.Rotation = 322.2338041953733
		Frame14.Position = UDim2.fromOffset(30.448316160050815, 13.108924240985665)
		Frame14.Rotation = 358.2338041953733
		Frame15.Position = UDim2.fromOffset(40.376265718191917, 17.220738387419757)
		Frame15.Rotation = 394.2338041953733
		Frame16.Position = UDim2.fromOffset(47.014533859785054, 25.245083935291536)
		Frame16.Rotation = 430.2338041953733
		Frame17.Position = UDim2.fromOffset(39.917548830752246, 57.541991689606661)
		Frame2.Position = UDim2.fromOffset(0, 1.4493269785558101)
		UIStroke.Transparency = 0.64100022274570367
		UIStroke.Thickness = 6.4874972156787027
		UIGradient3.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.90422538713718015)), ColorSequenceKeypoint.new(0.5, Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.90422538713718015)), ColorSequenceKeypoint.new(1, Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.90422538713718015)) })
		UIGradient4.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.90422538713718015)), ColorSequenceKeypoint.new(0.5, Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.90422538713718015)), ColorSequenceKeypoint.new(1, Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.90422538713718015)) })
		UIGradient2.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.90422538713718015)), ColorSequenceKeypoint.new(0.5, Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.90422538713718015)), ColorSequenceKeypoint.new(1, Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.90422538713718015)) })
		Frame7.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.90422538713718015)
		Frame8.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.90422538713718015)
		Frame9.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.90422538713718015)
		Frame10.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.90422538713718015)
		Frame11.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.90422538713718015)
		Frame12.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.90422538713718015)
		Frame13.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.90422538713718015)
		Frame14.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.90422538713718015)
		Frame15.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.90422538713718015)
		Frame16.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.90422538713718015)
		Frame17.BackgroundColor3 = Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.90422538713718015):Lerp(Color3.new(1, 1, 1), 0.6)
		Frame18.BackgroundColor3 = Color3.fromRGB(60, 255, 130)
		Frame18.Size = UDim2.fromOffset(12.233376693919505, 12.233376693919505)
		RunService.Heartbeat:Wait()
		Frame3.Rotation = 122.5
		Frame4.Rotation = 274.2500000000004
		UIGradient5.Rotation = 68.3333333333333
		Frame7.Position = UDim2.fromOffset(49.28074816415667, 36.488406629112191)
		Frame7.Rotation = 106.71126902464901
		Frame8.Position = UDim2.fromOffset(41.523944931321495, 44.820290407224093)
		Frame8.Rotation = 142.71126902464903
		Frame9.Position = UDim2.fromOffset(31.373371447545043, 47.596947535538462)
		Frame9.Rotation = 178.71126902464903
		Frame10.Position = UDim2.fromOffset(21.043336653574642, 45.373207062938761)
		Frame10.Rotation = 214.71126902464903
		Frame11.Position = UDim2.fromOffset(12.868379559115347, 37.345599953998921)
		Frame11.Rotation = 250.71126902464903
		Frame12.Position = UDim2.fromOffset(11.662560131796443, 25.194344114930651)
		Frame12.Rotation = 286.71126902464903
		Frame13.Position = UDim2.fromOffset(19.171508993167826, 15.46654920179901)
		Frame13.Rotation = 322.71126902464903
		Frame14.Position = UDim2.fromOffset(30.599109098591065, 13.179769497890714)
		Frame14.Rotation = 358.71126902464903
		Frame15.Position = UDim2.fromOffset(40.483404271867904, 17.30997870285006)
		Frame15.Rotation = 394.71126902464903
		Frame16.Position = UDim2.fromOffset(47.129042456940461, 25.355250739640212)
		Frame16.Rotation = 430.71126902464903
		Frame17.Position = UDim2.fromOffset(38.938566621548219, 57.851055100223533)
		Frame2.Position = UDim2.fromOffset(0, 1.4711119668060084)
		UIStroke.Transparency = 0.64192168637512759
		UIStroke.Thickness = 6.4759789203109053
		UIGradient3.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.91061036132803486)), ColorSequenceKeypoint.new(0.5, Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.91061036132803486)), ColorSequenceKeypoint.new(1, Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.91061036132803486)) })
		UIGradient4.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.91061036132803486)), ColorSequenceKeypoint.new(0.5, Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.91061036132803486)), ColorSequenceKeypoint.new(1, Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.91061036132803486)) })
		UIGradient2.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.91061036132803486)), ColorSequenceKeypoint.new(0.5, Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.91061036132803486)), ColorSequenceKeypoint.new(1, Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.91061036132803486)) })
		Frame7.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.91061036132803486)
		Frame8.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.91061036132803486)
		Frame9.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.91061036132803486)
		Frame10.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.91061036132803486)
		Frame11.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.91061036132803486)
		Frame12.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.91061036132803486)
		Frame13.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.91061036132803486)
		Frame14.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.91061036132803486)
		Frame15.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.91061036132803486)
		Frame16.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.91061036132803486)
		Frame17.BackgroundColor3 = Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.91061036132803486):Lerp(Color3.new(1, 1, 1), 0.6)
		Frame18.BackgroundColor3 = Color3.fromRGB(60, 255, 130)
		Frame18.Size = UDim2.fromOffset(11.947650316931139, 11.947650316931139)
		RunService.Heartbeat:Wait()
		Frame3.Rotation = 126
		Frame4.Rotation = 271.80000000000041
		UIGradient5.Rotation = 68.999999999999972
		Frame7.Position = UDim2.fromOffset(49.163683766199711, 36.618685815331418)
		Frame7.Rotation = 107.1887338539247
		Frame8.Position = UDim2.fromOffset(41.370950242791068, 44.85745373745727)
		Frame8.Rotation = 143.1887338539247
		Frame9.Position = UDim2.fromOffset(31.235273678874339, 47.615124426861442)
		Frame9.Rotation = 179.1887338539247
		Frame10.Position = UDim2.fromOffset(20.872831476871802, 45.362171207366245)
		Frame10.Rotation = 215.1887338539247
		Frame11.Position = UDim2.fromOffset(12.731564291689686, 37.223091516456165)
		Frame11.Rotation = 251.1887338539247
		Frame12.Position = UDim2.fromOffset(11.69526295082597, 25.028345041508558)
		Frame12.Rotation = 287.1887338539247
		Frame13.Position = UDim2.fromOffset(19.338296875334827, 15.417868395199473)
		Frame13.Rotation = 323.18873385392465
		Frame14.Position = UDim2.fromOffset(30.748678266533396, 13.251555326117444)
		Frame14.Rotation = 359.1887338539247
		Frame15.Position = UDim2.fromOffset(40.591580927320479, 17.397389644214801)
		Frame15.Rotation = 395.1887338539247
		Frame16.Position = UDim2.fromOffset(47.244872527370617, 25.466229620032287)
		Frame16.Rotation = 431.1887338539247
		Frame17.Position = UDim2.fromOffset(37.948912646266429, 58.124022803311433)
		Frame2.Position = UDim2.fromOffset(0, 1.4912625375475625)
		UIStroke.Transparency = 0.6431382842946165
		UIStroke.Thickness = 6.4607714463172927
		UIGradient3.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.91656967057283256)), ColorSequenceKeypoint.new(0.5, Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.91656967057283256)), ColorSequenceKeypoint.new(1, Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.91656967057283256)) })
		UIGradient4.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.91656967057283256)), ColorSequenceKeypoint.new(0.5, Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.91656967057283256)), ColorSequenceKeypoint.new(1, Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.91656967057283256)) })
		UIGradient2.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.91656967057283256)), ColorSequenceKeypoint.new(0.5, Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.91656967057283256)), ColorSequenceKeypoint.new(1, Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.91656967057283256)) })
		Frame7.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.91656967057283256)
		Frame8.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.91656967057283256)
		Frame9.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.91656967057283256)
		Frame10.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.91656967057283256)
		Frame11.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.91656967057283256)
		Frame12.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.91656967057283256)
		Frame13.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.91656967057283256)
		Frame14.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.91656967057283256)
		Frame15.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.91656967057283256)
		Frame16.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.91656967057283256)
		Frame17.BackgroundColor3 = Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.91656967057283256):Lerp(Color3.new(1, 1, 1), 0.6)
		Frame18.BackgroundColor3 = Color3.fromRGB(60, 255, 130)
		Frame18.Size = UDim2.fromOffset(11.672438670115438, 11.672438670115438)
		RunService.Heartbeat:Wait()
		Frame3.Rotation = 129.5
		Frame4.Rotation = 269.35000000000042
		UIGradient5.Rotation = 69.666666666666643
		Frame7.Position = UDim2.fromOffset(49.043332371244752, 36.746635381511155)
		Frame7.Rotation = 107.66619868320039
		Frame8.Position = UDim2.fromOffset(41.219107357666431, 44.894441389956967)
		Frame8.Rotation = 143.66619868320038
		Frame9.Position = UDim2.fromOffset(31.096919155864917, 47.635631673892576)
		Frame9.Rotation = 179.66619868320038
		Frame10.Position = UDim2.fromOffset(20.701187383318135, 45.350171478715922)
		Frame10.Rotation = 215.66619868320038
		Frame11.Position = UDim2.fromOffset(12.598598190869112, 37.097727299972831)
		Frame11.Rotation = 251.66619868320041
		Frame12.Position = UDim2.fromOffset(11.734625343042907, 24.86415539192884)
		Frame12.Rotation = 287.66619868320038
		Frame13.Position = UDim2.fromOffset(19.507224528630942, 15.373811762034645)
		Frame13.Rotation = 323.66619868320038
		Frame14.Position = UDim2.fromOffset(30.897019332538445, 13.323943722645325)
		Frame14.Rotation = 359.66619868320038
		Frame15.Position = UDim2.fromOffset(40.700949129650922, 17.482880240844466)
		Frame15.Rotation = 395.66619868320038
		Frame16.Position = UDim2.fromOffset(47.361979613875796, 25.578082104395847)
		Frame16.Rotation = 431.66619868320038
		Frame17.Position = UDim2.fromOffset(36.949917290633365, 58.360527850073034)
		Frame2.Position = UDim2.fromOffset(0, 1.5097563033304533)
		UIStroke.Transparency = 0.64464697564296403
		UIStroke.Thickness = 6.4419128044629499
		UIGradient3.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.92213169253464378)), ColorSequenceKeypoint.new(0.5, Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.92213169253464378)), ColorSequenceKeypoint.new(1, Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.92213169253464378)) })
		UIGradient4.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.92213169253464378)), ColorSequenceKeypoint.new(0.5, Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.92213169253464378)), ColorSequenceKeypoint.new(1, Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.92213169253464378)) })
		UIGradient2.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.92213169253464378)), ColorSequenceKeypoint.new(0.5, Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.92213169253464378)), ColorSequenceKeypoint.new(1, Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.92213169253464378)) })
		Frame7.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.92213169253464378)
		Frame8.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.92213169253464378)
		Frame9.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.92213169253464378)
		Frame10.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.92213169253464378)
		Frame11.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.92213169253464378)
		Frame12.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.92213169253464378)
		Frame13.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.92213169253464378)
		Frame14.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.92213169253464378)
		Frame15.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.92213169253464378)
		Frame16.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.92213169253464378)
		Frame17.BackgroundColor3 = Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.92213169253464378):Lerp(Color3.new(1, 1, 1), 0.6)
		Frame18.BackgroundColor3 = Color3.fromRGB(60, 255, 130)
		Frame18.Size = UDim2.fromOffset(11.410491577274517, 11.410491577274517)
		RunService.Heartbeat:Wait()
		Frame3.Rotation = 133
		Frame4.Rotation = 266.90000000000043
		UIGradient5.Rotation = 70.333333333333314
		Frame7.Position = UDim2.fromOffset(48.920029526943964, 36.872287536603785)
		Frame7.Rotation = 108.14366351247608
		Frame8.Position = UDim2.fromOffset(41.068557498625111, 44.93150617792584)
		Frame8.Rotation = 144.14366351247608
		Frame9.Position = UDim2.fromOffset(30.958230265186778, 47.658540915979316)
		Frame9.Rotation = 180.14366351247608
		Frame10.Position = UDim2.fromOffset(20.52846125881036, 45.337100726236912)
		Frame10.Rotation = 216.14366351247608
		Frame11.Position = UDim2.fromOffset(12.469615628406718, 36.969560218513706)
		Frame11.Rotation = 252.14366351247608
		Frame12.Position = UDim2.fromOffset(11.780516027355315, 24.70188893813922)
		Frame12.Rotation = 288.14366351247611
		Frame13.Position = UDim2.fromOffset(19.678034476770257, 15.334197559612971)
		Frame13.Rotation = 324.14366351247605
		Frame14.Position = UDim2.fromOffset(31.044138850691834, 13.396611960256148)
		Frame14.Rotation = 360.14366351247605
		Frame15.Position = UDim2.fromOffset(40.811652869269942, 17.566381603090591)
		Frame15.Rotation = 396.14366351247605
		Frame16.Position = UDim2.fromOffset(47.480299930480641, 25.690874140474577)
		Frame16.Rotation = 432.14366351247605
		Frame17.Position = UDim2.fromOffset(35.942923497935439, 58.56025230823473)
		Frame2.Position = UDim2.fromOffset(0, 1.5265727174286134)
		UIStroke.Transparency = 0.64644398947751025
		UIStroke.Thickness = 6.4194501315311214
		UIGradient3.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.92732291303233416)), ColorSequenceKeypoint.new(0.5, Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.92732291303233416)), ColorSequenceKeypoint.new(1, Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.92732291303233416)) })
		UIGradient4.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.92732291303233416)), ColorSequenceKeypoint.new(0.5, Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.92732291303233416)), ColorSequenceKeypoint.new(1, Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.92732291303233416)) })
		UIGradient2.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.92732291303233416)), ColorSequenceKeypoint.new(0.5, Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.92732291303233416)), ColorSequenceKeypoint.new(1, Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.92732291303233416)) })
		Frame7.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.92732291303233416)
		Frame8.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.92732291303233416)
		Frame9.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.92732291303233416)
		Frame10.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.92732291303233416)
		Frame11.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.92732291303233416)
		Frame12.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.92732291303233416)
		Frame13.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.92732291303233416)
		Frame14.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.92732291303233416)
		Frame15.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.92732291303233416)
		Frame16.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.92732291303233416)
		Frame17.BackgroundColor3 = Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.92732291303233416):Lerp(Color3.new(1, 1, 1), 0.6)
		Frame18.BackgroundColor3 = Color3.fromRGB(60, 255, 130)
		Frame18.Size = UDim2.fromOffset(11.164426327171839, 11.164426327171839)
		RunService.Heartbeat:Wait()
		Frame3.Rotation = 136.5
		Frame4.Rotation = 264.45000000000044
		UIGradient5.Rotation = 70.999999999999986
		Frame7.Position = UDim2.fromOffset(48.794102084820707, 36.995682769763981)
		Frame7.Rotation = 108.62112834175176
		Frame8.Position = UDim2.fromOffset(40.919423920973202, 44.968891676203015)
		Frame8.Rotation = 144.62112834175176
		Frame9.Position = UDim2.fromOffset(30.819127168175875, 47.683901255215297)
		Frame9.Rotation = 180.62112834175176
		Frame10.Position = UDim2.fromOffset(20.354721889041226, 45.32284180584287)
		Frame10.Rotation = 216.62112834175176
		Frame11.Position = UDim2.fromOffset(12.344754400748677, 36.838645578063755)
		Frame11.Rotation = 252.62112834175176
		Frame12.Position = UDim2.fromOffset(11.832801258398263, 24.541655392789025)
		Frame12.Rotation = 288.62112834175173
		Frame13.Position = UDim2.fromOffset(19.850478418178518, 15.298840289641387)
		Frame13.Rotation = 324.62112834175173
		Frame14.Position = UDim2.fromOffset(31.190053629991983, 13.469252214369707)
		Frame14.Rotation = 360.62112834175178
		Frame15.Position = UDim2.fromOffset(40.923826464785918, 17.647845638016506)
		Frame15.Rotation = 396.62112834175178
		Frame16.Position = UDim2.fromOffset(47.599751610152779, 25.804674866383703)
		Frame16.Rotation = 432.62112834175178
		Frame17.Position = UDim2.fromOffset(34.929284963708604, 58.722927689440979)
		Frame2.Position = UDim2.fromOffset(0, 1.5416930966675091)
		UIStroke.Transparency = 0.64852483419953577
		UIStroke.Thickness = 6.3934395725058035
		UIGradient3.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.93216805216351184)), ColorSequenceKeypoint.new(0.5, Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.93216805216351184)), ColorSequenceKeypoint.new(1, Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.93216805216351184)) })
		UIGradient4.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.93216805216351184)), ColorSequenceKeypoint.new(0.5, Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.93216805216351184)), ColorSequenceKeypoint.new(1, Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.93216805216351184)) })
		UIGradient2.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.93216805216351184)), ColorSequenceKeypoint.new(0.5, Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.93216805216351184)), ColorSequenceKeypoint.new(1, Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.93216805216351184)) })
		Frame7.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.93216805216351184)
		Frame8.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.93216805216351184)
		Frame9.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.93216805216351184)
		Frame10.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.93216805216351184)
		Frame11.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.93216805216351184)
		Frame12.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.93216805216351184)
		Frame13.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.93216805216351184)
		Frame14.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.93216805216351184)
		Frame15.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.93216805216351184)
		Frame16.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.93216805216351184)
		Frame17.BackgroundColor3 = Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.93216805216351184):Lerp(Color3.new(1, 1, 1), 0.6)
		Frame18.BackgroundColor3 = Color3.fromRGB(60, 255, 130)
		Frame18.Size = UDim2.fromOffset(10.936701522448073, 10.936701522448073)
		RunService.Heartbeat:Wait()
		Frame3.Rotation = 140
		Frame4.Rotation = 262.00000000000045
		UIGradient5.Rotation = 71.666666666666657
		Frame7.Position = UDim2.fromOffset(48.665868512174242, 37.116869677527447)
		Frame7.Rotation = 109.09859317102746
		Frame8.Position = UDim2.fromOffset(40.771812733418436, 45.006832122142306)
		Frame8.Rotation = 145.09859317102746
		Frame9.Position = UDim2.fromOffset(30.679528681144799, 47.711740310282963)
		Frame9.Rotation = 181.09859317102746
		Frame10.Position = UDim2.fromOffset(20.180049496611989, 45.307269220211651)
		Frame10.Rotation = 217.09859317102746
		Frame11.Position = UDim2.fromOffset(12.224154304087197, 36.705041662966451)
		Frame11.Rotation = 253.09859317102746
		Frame12.Position = UDim2.fromOffset(11.891343979637089, 24.383560026572713)
		Frame12.Rotation = 289.09859317102746
		Frame13.Position = UDim2.fromOffset(20.024316928029517, 15.267550514023258)
		Frame13.Rotation = 325.09859317102746
		Frame14.Position = UDim2.fromOffset(31.3347901280817, 13.541571274040823)
		Frame14.Rotation = 361.09859317102746
		Frame15.Position = UDim2.fromOffset(41.037594348655475, 17.727243842333611)
		Frame15.Rotation = 397.09859317102746
		Frame16.Position = UDim2.fromOffset(47.720235905364135, 25.919555475709164)
		Frame16.Rotation = 433.09859317102746
		Frame17.Position = UDim2.fromOffset(33.910364315973794, 58.848335310181582)
		Frame2.Position = UDim2.fromOffset(0, 1.5551006421813007)
		UIStroke.Transparency = 0.65088430878091819
		UIStroke.Thickness = 6.3639461402385216
		UIGradient3.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.93669018201927767)), ColorSequenceKeypoint.new(0.5, Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.93669018201927767)), ColorSequenceKeypoint.new(1, Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.93669018201927767)) })
		UIGradient4.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.93669018201927767)), ColorSequenceKeypoint.new(0.5, Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.93669018201927767)), ColorSequenceKeypoint.new(1, Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.93669018201927767)) })
		UIGradient2.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.93669018201927767)), ColorSequenceKeypoint.new(0.5, Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.93669018201927767)), ColorSequenceKeypoint.new(1, Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.93669018201927767)) })
		Frame7.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.93669018201927767)
		Frame8.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.93669018201927767)
		Frame9.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.93669018201927767)
		Frame10.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.93669018201927767)
		Frame11.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.93669018201927767)
		Frame12.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.93669018201927767)
		Frame13.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.93669018201927767)
		Frame14.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.93669018201927767)
		Frame15.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.93669018201927767)
		Frame16.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.93669018201927767)
		Frame17.BackgroundColor3 = Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.93669018201927767):Lerp(Color3.new(1, 1, 1), 0.6)
		Frame18.BackgroundColor3 = Color3.fromRGB(60, 255, 130)
		Frame18.Size = UDim2.fromOffset(10.729592514076209, 10.729592514076209)
		RunService.Heartbeat:Wait()
		Frame3.Rotation = 143.5
		Frame4.Rotation = 259.55000000000047
		UIGradient5.Rotation = 72.333333333333329
		Frame7.Position = UDim2.fromOffset(48.535639103387389, 37.235904775635795)
		Frame7.Rotation = 109.57605800030314
		Frame8.Position = UDim2.fromOffset(40.625813662176895, 45.045552279505806)
		Frame8.Rotation = 145.57605800030314
		Frame9.Position = UDim2.fromOffset(30.539353103526086, 47.74206521882504)
		Frame9.Rotation = 181.57605800030314
		Frame10.Position = UDim2.fromOffset(20.004535262218543, 45.290250653428302)
		Frame10.Rotation = 217.57605800030314
		Frame11.Position = UDim2.fromOffset(12.107955795950001, 36.568810219132054)
		Frame11.Rotation = 253.57605800030314
		Frame12.Position = UDim2.fromOffset(11.95600311489309, 24.227703283418347)
		Frame12.Rotation = 289.57605800030314
		Frame13.Position = UDim2.fromOffset(20.199319241423666, 15.240134748824063)
		Frame13.Rotation = 325.57605800030314
		Frame14.Position = UDim2.fromOffset(31.47838386404597, 13.613290325413594)
		Frame14.Rotation = 361.57605800030314
		Frame15.Position = UDim2.fromOffset(41.153070858096854, 17.804566162112302)
		Frame15.Rotation = 397.57605800030314
		Frame16.Position = UDim2.fromOffset(47.841638347550571, 26.035588170143065)
		Frame16.Rotation = 433.57605800030314
		Frame17.Position = UDim2.fromOffset(32.887531283464533, 58.93630658576653)
		Frame2.Position = UDim2.fromOffset(0, 1.5667804580765214)
		UIStroke.Transparency = 0.65351651576399505
		UIStroke.Thickness = 6.3310435529500619
		UIGradient3.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.94091083655132579)), ColorSequenceKeypoint.new(0.5, Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.94091083655132579)), ColorSequenceKeypoint.new(1, Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.94091083655132579)) })
		UIGradient4.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.94091083655132579)), ColorSequenceKeypoint.new(0.5, Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.94091083655132579)), ColorSequenceKeypoint.new(1, Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.94091083655132579)) })
		UIGradient2.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.94091083655132579)), ColorSequenceKeypoint.new(0.5, Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.94091083655132579)), ColorSequenceKeypoint.new(1, Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.94091083655132579)) })
		Frame7.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.94091083655132579)
		Frame8.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.94091083655132579)
		Frame9.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.94091083655132579)
		Frame10.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.94091083655132579)
		Frame11.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.94091083655132579)
		Frame12.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.94091083655132579)
		Frame13.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.94091083655132579)
		Frame14.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.94091083655132579)
		Frame15.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.94091083655132579)
		Frame16.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.94091083655132579)
		Frame17.BackgroundColor3 = Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.94091083655132579):Lerp(Color3.new(1, 1, 1), 0.6)
		Frame18.BackgroundColor3 = Color3.fromRGB(60, 255, 130)
		Frame18.Size = UDim2.fromOffset(10.545168666806763, 10.545168666806763)
		RunService.Heartbeat:Wait()
		Frame3.Rotation = 147
		Frame4.Rotation = 257.10000000000048
		UIGradient5.Rotation = 73
		Frame7.Position = UDim2.fromOffset(48.403716102819416, 37.352852293468203)
		Frame7.Rotation = 110.05352282957882
		Frame8.Position = UDim2.fromOffset(40.481500767714991, 45.085267271393064)
		Frame8.Rotation = 146.05352282957884
		Frame9.Position = UDim2.fromOffset(30.398518997340123, 47.774863596598806)
		Frame9.Rotation = 182.05352282957881
		Frame10.Position = UDim2.fromOffset(19.828280829802424, 45.271648408275325)
		Frame10.Rotation = 218.05352282957881
		Frame11.Position = UDim2.fromOffset(11.996298738719879, 36.430016842392924)
		Frame11.Rotation = 254.05352282957881
		Frame12.Position = UDim2.fromOffset(12.026632987592247, 24.074180397595569)
		Frame12.Rotation = 290.05352282957881
		Frame13.Position = UDim2.fromOffset(20.37526310638254, 15.216395431363953)
		Frame13.Rotation = 326.05352282957881
		Frame14.Position = UDim2.fromOffset(31.620878845869104, 13.684144796909919)
		Frame14.Rotation = 362.05352282957881
		Frame15.Position = UDim2.fromOffset(41.270360033700584, 17.879819910046557)
		Frame15.Rotation = 398.05352282957881
		Frame16.Position = UDim2.fromOffset(47.963829870753457, 26.152845193511826)
		Frame16.Rotation = 434.05352282957881
		Frame17.Position = UDim2.fromOffset(31.862160854309021, 58.986723256953411)
		Frame2.Position = UDim2.fromOffset(0, 1.5767195679815367)
		UIStroke.Transparency = 0.65641487600213511
		UIStroke.Thickness = 6.2948140499733096
		Frame18.BackgroundColor3 = Color3.fromRGB(60, 255, 130)
		Frame18.Size = UDim2.fromOffset(10.385272682759233, 10.385272682759233)
		RunService.Heartbeat:Wait()
		Frame3.Rotation = 150.5
		Frame4.Rotation = 254.65000000000049
		UIGradient5.Rotation = 73.666666666666671
		Frame7.Position = UDim2.fromOffset(48.270393750476337, 37.467783949463033)
		Frame7.Rotation = 110.53098765885451
		Frame8.Position = UDim2.fromOffset(40.338933122336826, 45.126182387871253)
		Frame8.Rotation = 146.53098765885451
		Frame9.Position = UDim2.fromOffset(30.256945920910013, 47.81010446070772)
		Frame9.Rotation = 182.53098765885451
		Frame10.Position = UDim2.fromOffset(19.651397795675507, 45.251320753277575)
		Frame10.Rotation = 218.53098765885451
		Frame11.Position = UDim2.fromOffset(11.889321221037505, 36.288731279565241)
		Frame11.Rotation = 254.53098765885449
		Frame12.Position = UDim2.fromOffset(12.103082857897967, 23.923081016456312)
		Frame12.Rotation = 290.53098765885449
		Frame13.Position = UDim2.fromOffset(20.551934696354657, 15.196130955614713)
		Frame13.Rotation = 326.53098765885449
		Frame14.Position = UDim2.fromOffset(31.762327008838398, 13.753884256329439)
		Frame14.Rotation = 362.53098765885449
		Frame15.Position = UDim2.fromOffset(41.38955542809191, 17.953028732184094)
		Frame15.Rotation = 398.53098765885449
		Frame16.Position = UDim2.fromOffset(48.086667904018654, 26.27139794181435)
		Frame16.Rotation = 434.53098765885449
		Frame17.Position = UDim2.fromOffset(30.835631427642085, 58.99951754892254)
		Frame2.Position = UDim2.fromOffset(0, 1.5849069294634006)
		UIStroke.Transparency = 0.65957214510418027
		UIStroke.Thickness = 6.2553481861977449
		UIGradient3.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.94852677317359935)), ColorSequenceKeypoint.new(0.5, Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.94852677317359935)), ColorSequenceKeypoint.new(1, Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.94852677317359935)) })
		UIGradient4.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.94852677317359935)), ColorSequenceKeypoint.new(0.5, Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.94852677317359935)), ColorSequenceKeypoint.new(1, Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.94852677317359935)) })
		UIGradient2.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.94852677317359935)), ColorSequenceKeypoint.new(0.5, Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.94852677317359935)), ColorSequenceKeypoint.new(1, Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.94852677317359935)) })
		Frame7.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.94852677317359935)
		Frame8.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.94852677317359935)
		Frame9.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.94852677317359935)
		Frame10.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.94852677317359935)
		Frame11.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.94852677317359935)
		Frame12.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.94852677317359935)
		Frame13.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.94852677317359935)
		Frame14.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.94852677317359935)
		Frame15.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.94852677317359935)
		Frame16.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.94852677317359935)
		Frame17.BackgroundColor3 = Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.94852677317359935):Lerp(Color3.new(1, 1, 1), 0.6)
		Frame18.BackgroundColor3 = Color3.fromRGB(60, 255, 130)
		Frame18.Size = UDim2.fromOffset(10.25150218975163, 10.25150218975163)
		RunService.Heartbeat:Wait()
		Frame3.Rotation = 154
		Frame4.Rotation = 252.2000000000005
		UIGradient5.Rotation = 74.333333333333343
		Frame7.Position = UDim2.fromOffset(48.135958260748311, 37.580778706295668)
		Frame7.Rotation = 111.0084524881302
		Frame8.Position = UDim2.fromOffset(40.198155455837636, 45.168492873634698)
		Frame8.Rotation = 147.00845248813019
		Frame9.Position = UDim2.fromOffset(30.114555119248489, 47.847739123326356)
		Frame9.Rotation = 183.00845248813022
		Frame10.Position = UDim2.fromOffset(19.474007181749123, 45.229123185721491)
		Frame10.Rotation = 219.00845248813022
		Frame11.Position = UDim2.fromOffset(11.787158453539064, 36.145027649142889)
		Frame11.Rotation = 255.00845248813022
		Frame12.Position = UDim2.fromOffset(12.185196568657013, 23.774488832192475)
		Frame12.Rotation = 291.00845248813022
		Frame13.Position = UDim2.fromOffset(20.729128572855828, 15.179135771275307)
		Frame13.Rotation = 327.00845248813022
		Frame14.Position = UDim2.fromOffset(31.902787661806247, 13.822272350865923)
		Frame14.Rotation = 363.00845248813022
		Frame15.Position = UDim2.fromOffset(41.510739926907569, 18.024231617060359)
		Frame15.Rotation = 399.00845248813022
		Frame16.Position = UDim2.fromOffset(48.209997436480819, 26.391316144556324)
		Frame16.Rotation = 435.00845248813022
		Frame17.Position = UDim2.fromOffset(29.809322960631768, 58.974672262386221)
		Frame2.Position = UDim2.fromOffset(0, 1.5913334462960906)
		UIStroke.Transparency = 0.66298043154164921
		UIStroke.Thickness = 6.2127446057293838
		Frame18.BackgroundColor3 = Color3.fromRGB(60, 255, 130)
		Frame18.Size = UDim2.fromOffset(10.145193778331448, 10.145193778331448)
		RunService.Heartbeat:Wait()
		Frame3.Rotation = 157.5
		Frame4.Rotation = 249.75000000000051
		UIGradient5.Rotation = 75.000000000000014
		Frame7.Position = UDim2.fromOffset(48.000687743680928, 37.691922504926)
		Frame7.Rotation = 111.48591731740589
		Frame8.Position = UDim2.fromOffset(40.05919877554436, 45.212383700701729)
		Frame8.Rotation = 147.48591731740589
		Frame9.Position = UDim2.fromOffset(29.97127017311, 47.887702061530206)
		Frame9.Rotation = 183.48591731740589
		Frame10.Position = UDim2.fromOffset(19.296238893123075, 45.204909616080386)
		Frame10.Rotation = 219.48591731740589
		Frame11.Position = UDim2.fromOffset(11.689941735821954, 35.998984587991465)
		Frame11.Rotation = 255.48591731740589
		Frame12.Position = UDim2.fromOffset(12.27281229177273, 23.628481225693896)
		Frame12.Rotation = 291.48591731740589
		Frame13.Position = UDim2.fromOffset(20.906647689710837, 15.16520054207842)
		Frame13.Rotation = 327.48591731740589
		Frame14.Position = UDim2.fromOffset(32.04232693878344, 13.889086781806736)
		Frame14.Rotation = 363.48591731740589
		Frame15.Position = UDim2.fromOffset(41.633985584246084, 18.093481941103498)
		Frame15.Rotation = 399.48591731740589
		Frame16.Position = UDim2.fromOffset(48.333652058467329, 26.512667113251027)
		Frame16.Rotation = 435.48591731740584
		Frame17.Position = UDim2.fromOffset(28.784615113411402, 58.912220796709718)
		Frame2.Position = UDim2.fromOffset(0, 1.5959919785664873)
		UIStroke.Transparency = 0.66663121637344958
		UIStroke.Thickness = 6.1671097953318803
		UIGradient3.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.95516110018677991)), ColorSequenceKeypoint.new(0.5, Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.95516110018677991)), ColorSequenceKeypoint.new(1, Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.95516110018677991)) })
		UIGradient4.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.95516110018677991)), ColorSequenceKeypoint.new(0.5, Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.95516110018677991)), ColorSequenceKeypoint.new(1, Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.95516110018677991)) })
		UIGradient2.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.95516110018677991)), ColorSequenceKeypoint.new(0.5, Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.95516110018677991)), ColorSequenceKeypoint.new(1, Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.95516110018677991)) })
		Frame7.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.95516110018677991)
		Frame8.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.95516110018677991)
		Frame9.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.95516110018677991)
		Frame10.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.95516110018677991)
		Frame11.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.95516110018677991)
		Frame12.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.95516110018677991)
		Frame13.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.95516110018677991)
		Frame14.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.95516110018677991)
		Frame15.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.95516110018677991)
		Frame16.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.95516110018677991)
		Frame17.BackgroundColor3 = Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.95516110018677991):Lerp(Color3.new(1, 1, 1), 0.6)
		Frame18.BackgroundColor3 = Color3.fromRGB(60, 255, 130)
		Frame18.Size = UDim2.fromOffset(10.067409647004707, 10.067409647004707)
		RunService.Heartbeat:Wait()
		Frame3.Rotation = 161
		Frame4.Rotation = 247.30000000000052
		UIGradient5.Rotation = 75.666666666666686
		Frame7.Position = UDim2.fromOffset(47.86485207749471, 37.801307976944813)
		Frame7.Rotation = 111.96338214668158
		Frame8.Position = UDim2.fromOffset(39.922080966248906, 45.258029330851649)
		Frame8.Rotation = 147.96338214668157
		Frame9.Position = UDim2.fromOffset(29.827017608327626, 47.929911768105)
		Frame9.Rotation = 183.96338214668157
		Frame10.Position = UDim2.fromOffset(19.118231160415377, 45.178533478579041)
		Frame10.Rotation = 219.96338214668157
		Frame11.Position = UDim2.fromOffset(11.59779749192192, 35.850685329918903)
		Frame11.Rotation = 255.96338214668157
		Frame12.Position = UDim2.fromOffset(12.365762367230698, 23.485128925313052)
		Frame12.Rotation = 291.96338214668157
		Frame13.Position = UDim2.fromOffset(21.084303431133389, 15.154112359040315)
		Frame13.Rotation = 327.96338214668157
		Frame14.Position = UDim2.fromOffset(32.181017253842214, 13.954119306385067)
		Frame14.Rotation = 363.96338214668157
		Frame15.Position = UDim2.fromOffset(41.759353474638843, 18.160846545019503)
		Frame15.Rotation = 399.96338214668157
		Frame16.Position = UDim2.fromOffset(48.457454981414017, 26.635515053468385)
		Frame16.Rotation = 435.96338214668157
		Frame17.Position = UDim2.fromOffset(27.762885394411033, 58.812247105012617)
		Frame2.Position = UDim2.fromOffset(0, 1.598877350606879)
		UIStroke.Transparency = 0.67051537453879373
		UIStroke.Thickness = 6.1185578182650779
		Frame18.BackgroundColor3 = Color3.fromRGB(60, 255, 130)
		Frame18.Size = UDim2.fromOffset(10.018926989099604, 10.018926989099604)
		RunService.Heartbeat:Wait()
		Frame3.Rotation = 164.5
		Frame4.Rotation = 244.85000000000053
		UIGradient5.Rotation = 76.333333333333357
		Frame7.Position = UDim2.fromOffset(47.728712740378661, 37.909034134934927)
		Frame7.Rotation = 112.44084697595727
		Frame8.Position = UDim2.fromOffset(39.786807374797341, 45.30559347221287)
		Frame8.Rotation = 148.44084697595727
		Frame9.Position = UDim2.fromOffset(29.681727466733602, 47.974271587535469)
		Frame9.Rotation = 184.44084697595724
		Frame10.Position = UDim2.fromOffset(18.940129967338628, 45.149848772014025)
		Frame10.Rotation = 220.44084697595727
		Frame11.Position = UDim2.fromOffset(11.510846371927453, 35.700217721567341)
		Frame11.Rotation = 256.44084697595724
		Frame12.Position = UDim2.fromOffset(12.463873227546479, 23.344495683087228)
		Frame12.Rotation = 292.44084697595724
		Frame13.Position = UDim2.fromOffset(21.26191567658282, 15.145655004511983)
		Frame13.Rotation = 328.4408469759573
		Frame14.Position = UDim2.fromOffset(32.318936757760468, 14.017175759903864)
		Frame14.Rotation = 364.4408469759573
		Frame15.Position = UDim2.fromOffset(41.886893563468995, 18.226404836627932)
		Frame15.Rotation = 400.4408469759573
		Frame16.Position = UDim2.fromOffset(48.581220038889498, 26.759920437256273)
		Frame16.Rotation = 436.4408469759573
		Frame17.Position = UDim2.fromOffset(26.745507308581306, 58.674885581311173)
		Frame2.Position = UDim2.fromOffset(0, 1.5999863567451698)
		UIStroke.Transparency = 0.67462319766509871
		UIStroke.Thickness = 6.0672100291862643
		UIGradient3.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.96094033616270602)), ColorSequenceKeypoint.new(0.5, Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.96094033616270602)), ColorSequenceKeypoint.new(1, Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.96094033616270602)) })
		UIGradient4.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.96094033616270602)), ColorSequenceKeypoint.new(0.5, Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.96094033616270602)), ColorSequenceKeypoint.new(1, Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.96094033616270602)) })
		UIGradient2.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.96094033616270602)), ColorSequenceKeypoint.new(0.5, Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.96094033616270602)), ColorSequenceKeypoint.new(1, Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.96094033616270602)) })
		Frame7.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.96094033616270602)
		Frame8.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.96094033616270602)
		Frame9.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.96094033616270602)
		Frame10.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.96094033616270602)
		Frame11.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.96094033616270602)
		Frame12.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.96094033616270602)
		Frame13.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.96094033616270602)
		Frame14.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.96094033616270602)
		Frame15.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.96094033616270602)
		Frame16.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.96094033616270602)
		Frame17.BackgroundColor3 = Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.96094033616270602):Lerp(Color3.new(1, 1, 1), 0.6)
		Frame18.BackgroundColor3 = Color3.fromRGB(60, 255, 130)
		Frame18.Size = UDim2.fromOffset(10.000230227307696, 10.000230227307696)
		RunService.Heartbeat:Wait()
		Frame3.Rotation = 168
		Frame4.Rotation = 242.40000000000055
		UIGradient5.Rotation = 77.000000000000028
		Frame7.Position = UDim2.fromOffset(47.592522608951043, 38.01520604082414)
		Frame7.Rotation = 112.91831180523295
		Frame8.Position = UDim2.fromOffset(39.653371383424883, 45.355228834134)
		Frame8.Rotation = 148.91831180523295
		Frame9.Position = UDim2.fromOffset(29.535333839688953, 48.020670540755447)
		Frame9.Rotation = 184.91831180523295
		Frame10.Position = UDim2.fromOffset(18.762088464152242, 45.118711034402892)
		Frame10.Rotation = 220.91831180523295
		Frame11.Position = UDim2.fromOffset(11.429202417655947, 35.547674180690606)
		Frame11.Rotation = 256.91831180523297
		Frame12.Position = UDim2.fromOffset(12.566965400890762, 23.2066379707307)
		Frame12.Rotation = 292.91831180523297
		Frame13.Position = UDim2.fromOffset(21.439312885979916, 15.13960926302061)
		Frame13.Rotation = 328.91831180523297
		Frame14.Position = UDim2.fromOffset(32.456168795246711, 14.078076091851838)
		Frame14.Rotation = 364.91831180523292
		Frame15.Position = UDim2.fromOffset(42.016644597638908, 18.29024791630799)
		Frame15.Rotation = 400.91831180523292
		Frame16.Position = UDim2.fromOffset(48.704752670573825, 26.885939433141992)
		Frame16.Rotation = 436.91831180523292
		Frame17.Position = UDim2.fromOffset(25.733848510999302, 58.500320879853305)
		Frame2.Position = UDim2.fromOffset(0, 1.5993177648664083)
		UIStroke.Transparency = 0.67894441833386199
		UIStroke.Thickness = 6.0131947708267237
		Frame18.BackgroundColor3 = Color3.fromRGB(60, 255, 130)
		Frame18.Size = UDim2.fromOffset(10.01150617349248, 10.01150617349248)
		RunService.Heartbeat:Wait()
		Frame3.Rotation = 171.5
		Frame4.Rotation = 239.95000000000056
		UIGradient5.Rotation = 77.6666666666667
		Frame7.Position = UDim2.fromOffset(47.456525730199573, 38.119934452444383)
		Frame7.Rotation = 113.39577663450864
		Frame8.Position = UDim2.fromOffset(39.521754975313591, 45.40707688420153)
		Frame8.Rotation = 149.39577663450865
		Frame9.Position = UDim2.fromOffset(29.387775365016832, 48.068984141675557)
		Frame9.Rotation = 185.39577663450865
		Frame10.Position = UDim2.fromOffset(18.584266367740224, 45.084978254558713)
		Frame10.Rotation = 221.39577663450862
		Frame11.Position = UDim2.fromOffset(11.352972290575096, 35.393151601547871)
		Frame11.Rotation = 257.39577663450859
		Frame12.Position = UDim2.fromOffset(12.674853586580287, 23.071604697487242)
		Frame12.Rotation = 293.39577663450859
		Frame13.Position = UDim2.fromOffset(21.616332199453211, 15.135753275010238)
		Frame13.Rotation = 329.39577663450865
		Frame14.Position = UDim2.fromOffset(32.592801361950094, 14.136654410289932)
		Frame14.Rotation = 365.39577663450865
		Frame15.Position = UDim2.fromOffset(42.148634018154468, 18.352477721837325)
		Frame15.Rotation = 401.39577663450865
		Frame16.Position = UDim2.fromOffset(48.827850890625925, 27.013623391250242)
		Frame16.Rotation = 437.39577663450865
		Frame17.Position = UDim2.fromOffset(24.729268968338229, 58.288787666889021)
		Frame2.Position = UDim2.fromOffset(0, 1.596872317781677)
		UIStroke.Transparency = 0.68346823574385973
		UIStroke.Thickness = 5.9566470532017526
		UIGradient3.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.96597469283506843)), ColorSequenceKeypoint.new(0.5, Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.96597469283506843)), ColorSequenceKeypoint.new(1, Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.96597469283506843)) })
		UIGradient4.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.96597469283506843)), ColorSequenceKeypoint.new(0.5, Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.96597469283506843)), ColorSequenceKeypoint.new(1, Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.96597469283506843)) })
		UIGradient2.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.96597469283506843)), ColorSequenceKeypoint.new(0.5, Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.96597469283506843)), ColorSequenceKeypoint.new(1, Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.96597469283506843)) })
		Frame7.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.96597469283506843)
		Frame8.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.96597469283506843)
		Frame9.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.96597469283506843)
		Frame10.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.96597469283506843)
		Frame11.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.96597469283506843)
		Frame12.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.96597469283506843)
		Frame13.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.96597469283506843)
		Frame14.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.96597469283506843)
		Frame15.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.96597469283506843)
		Frame16.BackgroundColor3 = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.96597469283506843)
		Frame17.BackgroundColor3 = Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18):Lerp(Color3.fromHSV(0.47241090059280394, 0.62352943420410156, 1):Lerp(Color3.new(1, 1, 1), 0.3), 0.96597469283506843):Lerp(Color3.new(1, 1, 1), 0.6)
		Frame18.BackgroundColor3 = Color3.fromRGB(60, 255, 130)
		Frame18.Size = UDim2.fromOffset(10.052642162127006, 10.052642162127006)
		RunService.Heartbeat:Wait()
		Frame3.Rotation = 175
		Frame4.Rotation = 237.50000000000057
		UIGradient5.Rotation = 78.333333333333371
		Frame7.Position = UDim2.fromOffset(47.320957073176665, 38.223335448727781)
		Frame7.Rotation = 113.87324146378432
		Frame8.Position = UDim2.fromOffset(39.391929295293231, 45.461267611009667)
		Frame8.Rotation = 149.87324146378432
		Frame9.Position = UDim2.fromOffset(29.238995687941816, 48.119075207986711)
		Frame9.Rotation = 185.87324146378432
		Frame10.Position = UDim2.fromOffset(18.406829349181077, 45.048511723270536)
		Frame10.Rotation = 221.87324146378432
		Frame11.Position = UDim2.fromOffset(11.282254560374913, 35.236751211850311)
		Frame11.Rotation = 257.87324146378432
		Frame12.Position = UDim2.fromOffset(12.787346797009072, 22.939436951723806)
		Frame12.Rotation = 293.87324146378432
		Frame13.Position = UDim2.fromOffset(21.79281954632922, 15.13386292969977)
		Frame13.Rotation = 329.87324146378432
		Frame14.Position = UDim2.fromOffset(32.728926560786768, 14.192759029305194)
		Frame14.Rotation = 365.87324146378432
		Frame15.Position = UDim2.fromOffset(42.2828778961577, 18.413206189968221)
		Frame15.Rotation = 401.87324146378432
		Frame16.Position = UDim2.fromOffset(48.950306241501416, 27.143018381354487)
		Frame16.Rotation = 437.87324146378432
		Frame17.Position = UDim2.fromOffset(23.733119130672613, 58.040570305209982)
		Frame2.Position = UDim2.fromOffset(0, 1.5926527324028239)
		UIStroke.Transparency = 0.68818334270752546
		UIStroke.Thickness = 5.897708216155932
		Frame18.BackgroundColor3 = Color3.fromRGB(60, 255, 130)
		Frame18.Size = UDim2.fromOffset(10.123227176010589, 10.123227176010589)
		RunService.Heartbeat:Wait()
		-- [envlog] stopped after 50 waits
	end)
	TextButton.MouseEnter:Connect(function(arg9)
		local tween3 = TweenService:Create(UIScale, TweenInfo.new(0.18, Enum.EasingStyle.Quad), { Scale = 1.08 })
		tween3:Play()
	end)
	TextButton.MouseLeave:Connect(function(arg10)
		local tween4 = TweenService:Create(UIScale, TweenInfo.new(0.18, Enum.EasingStyle.Quad), { Scale = 1 })
		tween4:Play()
	end)
	TextButton.InputBegan:Connect(function(input, gameProcessed)
	end)
	TextButton.InputChanged:Connect(function(input2, gameProcessed2)
	end)
	UserInputService.InputChanged:Connect(function(input3, gameProcessed3)
	end)
	TextButton.MouseButton1Click:Connect(function()
		UIScale.Scale = 0.8
		local tween5 = TweenService:Create(UIScale, TweenInfo.new(0.35, Enum.EasingStyle.Back, Enum.EasingDirection.Out), { Scale = 1 })
		tween5:Play()
		local Frame21 = Instance.new("Frame")
		Frame21.AnchorPoint = Vector2.new(0.5, 0.5)
		Frame21.BackgroundTransparency = 1
		Frame21.Position = UDim2.fromScale(0.5, 0.5)
		Frame21.ZIndex = 0
		Frame21.Size = UDim2.fromOffset(54, 54)
		Frame21.Parent = TextButton
		local UICorner21 = Instance.new("UICorner")
		UICorner21.CornerRadius = UDim.new(1, 0)
		UICorner21.Parent = Frame21
		local UIStroke9 = Instance.new("UIStroke")
		UIStroke9.Thickness = 3
		UIStroke9.Transparency = 0.15
		UIStroke9.Color = Color3.fromHSV(0.63241090059280392, 0.62352943420410156, 1):Lerp(Color3.new(0, 0, 0), 0.18)
		UIStroke9.Parent = Frame21
		local tween6 = TweenService:Create(Frame21, TweenInfo.new(0.95, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Size = UDim2.fromOffset(124, 124) })
		tween6:Play()
		local tween7 = TweenService:Create(UIStroke9, TweenInfo.new(0.95, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Thickness = 0.5, Transparency = 1 })
		tween7:Play()
		task.delay(1.1, function(...)
		end)
		Window:Minimize()
	end)
	local Stats = game:GetService("Stats")
	local hui3 = gethui()
	local children66 = hui3:GetChildren()
	for i109, v109 in ipairs(children66) do
	end
	local ScreenGui2 = Instance.new("ScreenGui")
	ScreenGui2.Name = "DurianStatsHud"
	ScreenGui2.ResetOnSpawn = false
	ScreenGui2.IgnoreGuiInset = true
	ScreenGui2.Parent = hui3
	local Frame20 = Instance.new("Frame")
	Frame20.Name = "Pill"
	Frame20.AnchorPoint = Vector2.new(1, 0)
	Frame20.Position = UDim2.new(1, -12, 0, 10)
	Frame20.Size = UDim2.fromOffset(0, 24)
	Frame20.AutomaticSize = Enum.AutomaticSize.X
	Frame20.BackgroundColor3 = Color3.fromRGB(10, 12, 20)
	Frame20.BackgroundTransparency = 0.3
	Frame20.Active = true
	Frame20.Parent = ScreenGui2
	local UICorner20 = Instance.new("UICorner")
	UICorner20.CornerRadius = UDim.new(1, 0)
	UICorner20.Parent = Frame20
	local UIStroke8 = Instance.new("UIStroke")
	UIStroke8.Thickness = 1.5
	UIStroke8.Transparency = 0.35
	UIStroke8.Parent = Frame20
	local UIPadding = Instance.new("UIPadding")
	UIPadding.PaddingLeft = UDim.new(0, 10)
	UIPadding.PaddingRight = UDim.new(0, 10)
	UIPadding.Parent = Frame20
	local TextLabel = Instance.new("TextLabel")
	TextLabel.BackgroundTransparency = 1
	TextLabel.Size = UDim2.fromOffset(0, 24)
	TextLabel.AutomaticSize = Enum.AutomaticSize.X
	TextLabel.RichText = true
	TextLabel.Font = Enum.Font.GothamBold
	TextLabel.TextSize = 12
	TextLabel.TextColor3 = Color3.fromRGB(235, 240, 250)
	TextLabel.Text = "FPS --"
	TextLabel.Parent = Frame20
	UIStroke8.Color = Color3.fromHSV(0.55241090059280396, 0.62352943420410156, 1)
	Stats.Network.ServerStatsItem["Data Ping"]:GetValue()
	Stats:GetTotalMemoryUsageMb()
	-- [envlog] error: protected:3427: attempt to compare userdata <= number
end)
require(ReplicatedStorage.Shared.DurianConfig)
require(ReplicatedStorage.Shared.RubberConfig)
task.spawn(function(...)
	task.wait(1)
	task.wait(1)
	-- [envlog] the statements above repeat forever (loop)
end)
task.spawn(function(...)
	task.wait(1)
	local tagged3 = CollectionService:GetTagged("DurianFruit")
	for i110, v110 in ipairs(tagged3) do
		local BasePart = v110:FindFirstChildWhichIsA("BasePart", true)
		BasePart:FindFirstChild("Harvest")
		local PriceTag = BasePart:FindFirstChild("PriceTag")
		PriceTag:Destroy()
	end
	task.wait(1)
	-- [envlog] the statements above repeat forever (loop)
end)
task.spawn(function(...)
	task.wait(0.5)
	workspace:FindFirstChild("Map")
	local Bases19 = workspace.Map:FindFirstChild("Bases")
	local children67 = Bases19:GetChildren()
	for i112, v112 in ipairs(children67) do
		local Items7 = v112:FindFirstChild("Items")
		local children68 = Items7:GetChildren()
		for i113, v113 in ipairs(children68) do
			v113.Name:match("^FarmPlot")
			v113:FindFirstChild("Slots")
			local children69 = v113.Slots:GetChildren()
			for i114, v114 in ipairs(children69) do
				local Fruits = v114:FindFirstChild("Fruits")
				local descendants = Fruits:GetDescendants()
				for i115, v115 in ipairs(descendants) do
					v115:GetAttribute("Unripe")
					local Grow = v115.Parent:FindFirstChild("Grow")
					local Pct = Grow:FindFirstChild("Pct")
					Pct.Text:match("(%d+)%%")
					v115.Parent:FindFirstChild("RipeHighlight")
					v115.Parent.RipeHighlight:Destroy()
					v115.Parent:FindFirstChild("RipenessPercentTag")
					v115.Parent.RipenessPercentTag:Destroy()
				end
			end
		end
	end
	local players = Players:GetPlayers()
	for i116, v116 in ipairs(players) do
		local Head = v116.Character:FindFirstChild("Head")
		local PlayerNameTag = Head:FindFirstChild("PlayerNameTag")
		v116.Character:FindFirstChild("PlayerHighlight")
		v116.Character.PlayerHighlight:Destroy()
		PlayerNameTag:Destroy()
	end
	task.wait(0.5)
	workspace:FindFirstChild("Map")
	local Bases20 = workspace.Map:FindFirstChild("Bases")
	local children70 = Bases20:GetChildren()
	for i117, v117 in ipairs(children70) do
		local Items8 = v117:FindFirstChild("Items")
		local children71 = Items8:GetChildren()
		for i118, v118 in ipairs(children71) do
			v118.Name:match("^FarmPlot")
			v118:FindFirstChild("Slots")
			local children72 = v118.Slots:GetChildren()
			for i119, v119 in ipairs(children72) do
				local Fruits2 = v119:FindFirstChild("Fruits")
				local descendants2 = Fruits2:GetDescendants()
				for i120, v120 in ipairs(descendants2) do
					v120:GetAttribute("Unripe")
					local Grow2 = v120.Parent:FindFirstChild("Grow")
					local Pct2 = Grow2:FindFirstChild("Pct")
					Pct2.Text:match("(%d+)%%")
					v120.Parent:FindFirstChild("RipeHighlight")
					v120.Parent.RipeHighlight:Destroy()
					v120.Parent:FindFirstChild("RipenessPercentTag")
					v120.Parent.RipenessPercentTag:Destroy()
				end
			end
		end
	end
	local players2 = Players:GetPlayers()
	for i121, v121 in ipairs(players2) do
		local Head2 = v121.Character:FindFirstChild("Head")
		local PlayerNameTag2 = Head2:FindFirstChild("PlayerNameTag")
		v121.Character:FindFirstChild("PlayerHighlight")
		v121.Character.PlayerHighlight:Destroy()
		PlayerNameTag2:Destroy()
	end
	task.wait(0.5)
	-- [envlog] the statements above repeat forever (loop)
end)
local hui4 = gethui()
local DurianDiagHUD = hui4:FindFirstChild("DurianDiagHUD")
DurianDiagHUD:Destroy()
local StarterGui = game:GetService("StarterGui")
warn("[ScriptUsers] executor นี้ไม่มี request/http_request")
