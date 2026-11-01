local Players = game:GetService("Players")
local player = Players.LocalPlayer

if game.PlaceId ~= 131481383443764 then
    player:Kick()
    return
end

-- Ui
local ok, Flexozy = pcall(function()
    return loadstring(game:HttpGet("https://vault.pandauth.com/vss/0cbbf6b6324c2e1c"))()
end)

if not ok or not Flexozy then
    warn("[CIPHER HUB] ไม่สามารถโหลด UI ได้: " .. tostring(Flexozy))
    return
end

local Players = game:GetService("Players")
local Workspace = game:GetService("Workspace")
local RunService = game:GetService("RunService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local CoreGui = game:GetService("CoreGui")

local LocalPlayer = Players.LocalPlayer
local Camera = Workspace.CurrentCamera

-- เกมบางเกมสร้างกล้องใหม่ตอนเกิด/ฉากเปลี่ยน ถ้าใช้กล้องตัวเก่าจะหาเป้าไม่เจอ
Workspace:GetPropertyChangedSignal("CurrentCamera"):Connect(function()
    if Workspace.CurrentCamera then
        Camera = Workspace.CurrentCamera
    end
end)

local Config = {
    SilentAim = false,
    FOV = 180,
    MaxDistance = 800,
    AimPart = "Head",
    TeamCheck = false,
    WallCheck = false,
    ShowFOV = false,
    ShowTracer = false,
    SkipFriends = false,
    KeybindNotify = true,
    InfStamina = false,

    InvMode = false, -- false | "slots" (5 ช่อง) | "all" (ทั้งหมด)
    INV_ALL_MAX = 60,
    InvDistance = 150,

    INV_MAX_SLOTS = 5,
    INV_SLOT_W = 44,
    INV_SLOT_H = 54,
    INV_SPACING = 4,
    INV_PADDING = 6,
    INV_ICON_SIZE = 26,
    INV_OFFSET_Y = -2.5,
}

-- state ของระบบ ESP ใหม่
local S = {
    enemies = {},
    esp_names = false,
    esp_boxes = false,
    esp_box_type = "Normal",
    esp_healthbar = false,
    esp_distance = false,
    esp_skeleton = false,
    esp_tracers = false,
    esp_tracer_origin = "Bottom",
    esp_range = 1000,
    esp_name_color = Color3.fromRGB(255, 255, 255),
    esp_box_color = Color3.fromRGB(255, 255, 255),
    esp_distance_color = Color3.fromRGB(255, 255, 255),
    esp_skeleton_color = Color3.fromRGB(255, 255, 255),
    esp_tracer_color = Color3.fromRGB(255, 255, 255),
    esp_data = {},
}

local InvData = {}

-- ESP แต่ละอย่างทำงานอิสระ ไม่ต้องมีสวิตช์หลัก
local function AnyESP()
    return S.esp_names
        or S.esp_boxes
        or S.esp_healthbar
        or S.esp_distance
        or S.esp_skeleton
        or S.esp_tracers
end
local CurrentTarget = nil
local TargetCount = 0
local Hooked = false

local Tg = {} -- เก็บ Toggle ไว้ให้ปุ่มลัดเรียกใช้

-- ===== รายชื่อข้าม (ไม่ล็อกเพื่อน / ผู้เล่นที่เลือก) =====
local SkipSet = {}          -- [ชื่อผู้เล่น] = true
local FriendCache = {}      -- [UserId] = true/false
local SkipOptionToName = {} -- ข้อความในตัวเลือก -> ชื่อผู้เล่นจริง
local SkipDropdown

local function RefreshFriend(player)
    task.spawn(function()
        local ok, res = pcall(function()
            return LocalPlayer:IsFriendsWith(player.UserId)
        end)

        FriendCache[player.UserId] = ok and res == true
    end)
end

local function IsSkipped(player)
    if SkipSet[player.Name] then
        return true
    end

    if Config.SkipFriends and FriendCache[player.UserId] then
        return true
    end

    return false
end

-- รันส่วนที่เสี่ยง error แบบแยกตัว: ถ้าพังจะแจ้งใน Console แต่สคริปต์ส่วนที่เหลือยังโหลดต่อ
local function Safe(name, fn)
    local ok, err = pcall(fn)

    if not ok then
        warn("[CipherHUB] " .. name .. " error: " .. tostring(err))
    end
end

local function MakeDrawing(kind, props)
    local ok, obj = pcall(function()
        return Drawing.new(kind)
    end)

    if not ok or not obj then
        return nil
    end

    -- ตั้งทีละค่า: ค่าไหน executor ไม่รองรับก็ข้าม ไม่ทำให้พังทั้งก้อน
    for k, v in pairs(props) do
        pcall(function()
            obj[k] = v
        end)
    end

    return obj
end

local function ProtectParent(gui)
    pcall(function()
        gui.Parent = CoreGui
    end)

    if not gui.Parent then
        gui.Parent = LocalPlayer:WaitForChild("PlayerGui")
    end
end

local function IsWallBlocked(fromPos, toPos, ignoreChar)
    local params = RaycastParams.new()
    params.FilterType = Enum.RaycastFilterType.Exclude
    params.FilterDescendantsInstances = {LocalPlayer.Character, Camera}

    local result = Workspace:Raycast(fromPos, toPos - fromPos, params)

    if result then
        return not result.Instance:IsDescendantOf(ignoreChar)
    end

    return false
end

-- ========== Shooting System / Projectile Hook ==========

Config.HitChance = 100
Config.Center = "กลางจอ"
Config.Prediction = true
Config.SilentDebug = true -- true = พิมพ์ข้อมูลการยิงแต่ละนัดใน Console (F9) เพื่อหาสาเหตุดาเมจไม่เข้า / ปิดได้โดยเปลี่ยนเป็น false
Config.NoRecoil = false
Config.NoSpread = false

local UserInputService = game:GetService("UserInputService")
local GuiService = game:GetService("GuiService")

local function GetAimCenter()
    Camera = Workspace.CurrentCamera or Camera
    if Config.Center == "เมาส์" and not UserInputService.TouchEnabled then
        -- GetMouseLocation เป็นพิกัดหน้าจอ; แปลงให้ตรงกับ WorldToViewportPoint
        local mouse = UserInputService:GetMouseLocation()
        local insetTopLeft = GuiService:GetGuiInset()
        return mouse - insetTopLeft
    end
    return Camera and Camera.ViewportSize / 2 or Vector2.zero
end

local function GetTarget()
    if not Config.SilentAim then
        CurrentTarget, TargetCount = nil, 0
        return nil
    end
    Camera = Workspace.CurrentCamera or Camera
    if not Camera then CurrentTarget, TargetCount = nil, 0; return nil end

    local myChar = LocalPlayer.Character
    local myRoot = myChar and (myChar:FindFirstChild("HumanoidRootPart") or myChar:FindFirstChild("UpperTorso") or myChar:FindFirstChild("Torso"))
    if not myRoot then CurrentTarget, TargetCount = nil, 0; return nil end

    local center = GetAimCenter()
    local bestDistance, bestPlayer, bestPart, count = nil, nil, nil, 0
    for _, other in ipairs(Players:GetPlayers()) do
        if other ~= LocalPlayer and not IsSkipped(other) then
            local char = other.Character
            local humanoid = char and char:FindFirstChildOfClass("Humanoid")
            local root = char and char:FindFirstChild("HumanoidRootPart")
            local partName = Config.AimPart
            if partName == "สุ่มหัว / ลำตัว" then partName = (math.random(1, 2) == 1 and "Head" or "UpperTorso") end
            local part = char and (char:FindFirstChild(partName) or char:FindFirstChild("Head") or char:FindFirstChild("HumanoidRootPart"))
            local sameTeam = Config.TeamCheck and LocalPlayer.Team and other.Team == LocalPlayer.Team and not LocalPlayer.Neutral and not other.Neutral
            if humanoid and humanoid.Health > 0 and root and part and not char:FindFirstChildOfClass("ForceField") and not sameTeam then
                if (root.Position - myRoot.Position).Magnitude <= Config.MaxDistance then
                    local point, onScreen = Camera:WorldToViewportPoint(part.Position)
                    if onScreen and point.Z > 0 then
                        local distance = (Vector2.new(point.X, point.Y) - center).Magnitude
                        if distance <= Config.FOV and (not bestDistance or distance < bestDistance) then
                            local blocked = Config.WallCheck and IsWallBlocked(Camera.CFrame.Position, part.Position, char)
                            if not blocked then
                                count += 1
                                bestDistance, bestPlayer, bestPart = distance, other, part
                            end
                        end
                    end
                end
            end
        end
    end
    CurrentTarget, TargetCount = bestPlayer, count
    return bestPart
end

local function InterceptPoint(part, origin, speed, acceleration)
    local point = part.Position
    if not Config.Prediction or type(speed) ~= "number" or speed <= 0 then return point end
    local root = part.Parent and part.Parent:FindFirstChild("HumanoidRootPart")
    local velocity = root and root.AssemblyLinearVelocity or part.AssemblyLinearVelocity
    acceleration = typeof(acceleration) == "Vector3" and acceleration or Vector3.zero
    local t = math.min((point - origin).Magnitude / speed, 2)
    for _ = 1, 3 do
        point = part.Position + velocity * t - acceleration * (0.5 * t * t)
        t = math.min((point - origin).Magnitude / speed, 2)
    end
    return point
end

local HookedHandlers = setmetatable({}, {__mode = "k"})
local HookOriginals = setmetatable({}, {__mode = "k"})
local hookWarned = false
local hookCallCount = 0
local hookStatus = "ยังไม่ Hook"

local function ResolveProjectileHandler()
    local ok, handler = pcall(function()
        local modules = ReplicatedStorage:FindFirstChild("Modules")
        local mod = modules and modules:FindFirstChild("ProjectileHandler")
        if mod then return require(mod) end
        return nil
    end)
    if ok and type(handler) == "table" and type(handler.SimulateProjectile) == "function" then return handler end
    for _, d in ipairs(ReplicatedStorage:GetDescendants()) do
        if d:IsA("ModuleScript") and string.find(string.lower(d.Name), "projectile", 1, true) then
            local ok2, res = pcall(require, d)
            if ok2 and type(res) == "table" and type(res.SimulateProjectile) == "function" then return res end
        end
    end
    return nil
end

local silentDebugCount = 0
local silentErrWarned = false
local noSpreadCount = 0

-- ===== ตัวช่วยอ่านข้อมูลการยิง =====
local Shot = {}

-- หาตารางทิศทางกระสุน (ตารางที่มีแต่ Vector3) ในอาร์กิวเมนต์ของ SimulateProjectile
function Shot.Slots(args)
    local slots = {}
    for _, i in ipairs({4, 6, 7}) do
        if type(args[i]) == "table" then
            local valid, count = true, 0
            for _, value in pairs(args[i]) do
                if typeof(value) ~= "Vector3" then valid = false; break end
                count += 1
            end
            if valid and count > 0 then table.insert(slots, i) end
        end
    end
    return slots
end

-- จุดที่กระสุนออกจากปากกระบอก
function Shot.Origin(args, handle)
    local firePoint = args[5] and typeof(args[5]) == "Instance" and args[5]:FindFirstChild("GunFirePoint") or args[8]
    local origin = typeof(firePoint) == "Instance" and firePoint:IsA("Attachment") and firePoint.WorldPosition or nil
    if not origin and handle and handle:IsA("BasePart") then origin = handle.Position end
    return origin
end

-- จุดที่ครอสแฮร์ชี้อยู่ (ยิงเรย์จากกล้อง ไม่นับตัวเราเอง)
function Shot.Crosshair(origin)
    Camera = Workspace.CurrentCamera or Camera
    if not Camera then return nil end
    local pos
    if Config.Center == "เมาส์" and not UserInputService.TouchEnabled then
        pos = UserInputService:GetMouseLocation()
    else
        pos = Camera.ViewportSize / 2
    end
    local ray = Camera:ViewportPointToRay(pos.X, pos.Y)
    local params = RaycastParams.new()
    params.FilterType = Enum.RaycastFilterType.Exclude
    params.FilterDescendantsInstances = {LocalPlayer.Character}
    params.RespectCanCollide = true
    local result = Workspace:Raycast(ray.Origin, ray.Direction * 2000, params)
    local point = result and result.Position or (ray.Origin + ray.Direction * 1000)
    -- ถ้าจุดที่ได้อยู่ชิด/อยู่หลังปากกระบอก ให้ใช้จุดไกลบนเส้นเล็งแทน
    local delta = point - origin
    if delta.Magnitude < 1 or delta:Dot(ray.Direction) <= 0 then
        point = ray.Origin + ray.Direction * 1000
    end
    return point
end

-- เขียนทิศทางใหม่ลงทุกตาราง โดยคงความยาว (ความเร็วกระสุน) เดิมไว้
function Shot.Apply(args, slots, dir)
    for _, i in ipairs(slots) do
        local dirs = table.clone(args[i])
        for k, v in pairs(dirs) do
            if typeof(v) == "Vector3" then dirs[k] = dir * v.Magnitude end
        end
        args[i] = dirs
    end
end

-- แก้ทิศทางกระสุน (SilentAim / ไม่มีกระสุนกระจาย) แยกออกมาเพื่อครอบด้วย pcall
-- ถ้าส่วนนี้พังจะไม่ทำให้ปืนยิงไม่ออก
local function RedirectShot(args, handle)
    local slots = Shot.Slots(args)
    local origin = Shot.Origin(args, handle)
    if not origin or #slots == 0 then return end

    local redirected = false

    -- 1) SilentAim: เล็งเข้าหาเป้าหมายใน FOV
    if Config.SilentAim and math.random(1, 100) <= math.clamp(tonumber(Config.HitChance) or 100, 0, 100) then
        local targetPart = GetTarget()
        local chosenPlayer = CurrentTarget
        if targetPart and chosenPlayer and targetPart.Parent and chosenPlayer.Character == targetPart.Parent
            and not (Config.WallCheck and IsWallBlocked(origin, targetPart.Position, targetPart.Parent)) then
            local physics = type(args[13]) == "table" and args[13] or {}
            local aimPos = InterceptPoint(targetPart, origin, physics[1], physics[2])
            local delta = aimPos - origin
            if delta.Magnitude > 0.01 then
                local dir = delta.Unit

                if Config.SilentDebug then
                    silentDebugCount += 1
                    pcall(function()
                        local cam = Workspace.CurrentCamera
                        local angle = cam and math.deg(math.acos(math.clamp(cam.CFrame.LookVector:Dot(dir), -1, 1))) or 0
                        local root = targetPart.Parent:FindFirstChild("HumanoidRootPart")
                        local moving = root and root.AssemblyLinearVelocity.Magnitude or 0
                        local wall = IsWallBlocked(origin, targetPart.Position, targetPart.Parent)
                        local ping = 0
                        pcall(function() ping = game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue() end)
                        print(string.format("[SilentAim] #%d %s | ระยะ %.0f | เป้าวิ่ง %.0f stud/s | มุมจากกล้อง %.0f° | กำแพงขวาง: %s | ping %.0fms",
                            silentDebugCount, targetPart.Name, delta.Magnitude, moving, angle, wall and "มี" or "ไม่มี", ping))
                        if silentDebugCount <= 3 then
                            for _, i in ipairs(slots) do
                                local n, first = 0, nil
                                for _, v in pairs(args[i]) do n += 1; first = first or v end
                                print(string.format("[SilentAim]   args[%d] = ตาราง Vector3 %d ตัว | ตัวแรกยาว %.2f", i, n, first and first.Magnitude or 0))
                            end
                        end
                    end)
                end

                Shot.Apply(args, slots, dir)
                redirected = true
            end
        end
    end

    -- 2) ไม่มีกระสุนกระจาย: ถ้า SilentAim ไม่ได้แก้ทิศ ให้ทุกเม็ดพุ่งตรงไปที่ครอสแฮร์
    if not redirected and Config.NoSpread then
        local point = Shot.Crosshair(origin)
        if point then
            local delta = point - origin
            if delta.Magnitude > 1 then
                Shot.Apply(args, slots, delta.Unit)
                noSpreadCount += 1
                if Config.SilentDebug and noSpreadCount <= 3 then
                    local pellets = 0
                    for _, i in ipairs(slots) do for _ in pairs(args[i]) do pellets += 1 end end
                    print(string.format("[NoSpread] #%d ปรับทิศกระสุน %d เม็ด ให้ตรงครอสแฮร์", noSpreadCount, pellets))
                end
            end
        end
    end
end

-- ===== ลดแรงดีดปืน (No Recoil) =====
-- วิธีทำงาน: หาค่าตัวเลขที่ชื่อมีคำว่า recoil ในข้อมูลปืน (Attribute / Value / ModuleScript ในปืน
-- และตารางใน memory ถ้า executor มี getgc) แล้วตั้งเป็น 0 พร้อมจำค่าเดิมไว้คืนตอนปิด
local Recoil = { saved = {}, scanned = setmetatable({}, {__mode = "k"}), token = 0, found = 0, names = {}, lastGC = 0 }
local RECOIL_SKIP = { "recover", "reset", "return", "speed", "decay", "damp", "time", "delay", "cooldown", "enable", "use", "sound", "anim" }

function Recoil.IsKey(key)
    if type(key) ~= "string" then return false end
    if not string.find(key, "[Rr][Ee][Cc][Oo][Ii][Ll]") then return false end
    local k = string.lower(key)
    for _, bad in ipairs(RECOIL_SKIP) do
        if string.find(k, bad, 1, true) then return false end
    end
    return true
end

function Recoil.Zero(v)
    local t = typeof(v)
    if t == "number" then return 0 end
    if t == "Vector3" then return Vector3.zero end
    if t == "Vector2" then return Vector2.zero end
    return nil
end

function Recoil.Note(name)
    if #Recoil.names < 12 and not table.find(Recoil.names, name) then table.insert(Recoil.names, name) end
end

-- ตั้งค่าตัวเลข/เวกเตอร์ทุกตัวในตาราง (ชั้นเดียว) เป็น 0
function Recoil.ZeroAll(tbl)
    local n = 0
    for k, v in next, tbl do
        local z = Recoil.Zero(v)
        if z ~= nil and v ~= z then
            if pcall(rawset, tbl, k, z) then
                table.insert(Recoil.saved, {tbl, k, v})
                n += 1
            end
        end
    end
    return n
end

function Recoil.ZeroTable(tbl, depth, seen)
    if seen[tbl] then return 0 end
    seen[tbl] = true
    local hits, subs
    local ok = pcall(function()
        for k, v in next, tbl do
            if Recoil.IsKey(k) then
                hits = hits or {}
                hits[#hits + 1] = k
            elseif depth > 0 and type(v) == "table" then
                subs = subs or {}
                subs[#subs + 1] = v
            end
        end
    end)
    if not ok then return 0 end
    local n = 0
    if hits then
        for _, k in ipairs(hits) do
            local v = rawget(tbl, k)
            local z = Recoil.Zero(v)
            if z ~= nil then
                if v ~= z and pcall(rawset, tbl, k, z) then
                    table.insert(Recoil.saved, {tbl, k, v})
                    Recoil.Note(tostring(k))
                    n += 1
                end
            elseif type(v) == "table" then
                local c = Recoil.ZeroAll(v)
                if c > 0 then Recoil.Note(tostring(k)) end
                n += c
            end
        end
    end
    if subs then
        for _, sub in ipairs(subs) do n += Recoil.ZeroTable(sub, depth - 1, seen) end
    end
    return n
end

function Recoil.ZeroInstance(inst)
    local n = 0
    pcall(function()
        for name, val in pairs(inst:GetAttributes()) do
            if Recoil.IsKey(name) then
                local z = Recoil.Zero(val)
                if z ~= nil and val ~= z then
                    inst:SetAttribute(name, z)
                    table.insert(Recoil.saved, {inst, name, val, "attr"})
                    Recoil.Note(name)
                    n += 1
                end
            end
        end
    end)
    if inst:IsA("ValueBase") and Recoil.IsKey(inst.Name) then
        pcall(function()
            local val = inst.Value
            local z = Recoil.Zero(val)
            if z ~= nil and val ~= z then
                inst.Value = z
                table.insert(Recoil.saved, {inst, "Value", val, "value"})
                Recoil.Note(inst.Name)
                n += 1
            end
        end)
    end
    return n
end

function Recoil.Restore()
    for i = #Recoil.saved, 1, -1 do
        local e = Recoil.saved[i]
        pcall(function()
            if e[4] == "attr" then e[1]:SetAttribute(e[2], e[3])
            elseif e[4] == "value" then e[1].Value = e[3]
            else rawset(e[1], e[2], e[3]) end
        end)
    end
    table.clear(Recoil.saved)
    table.clear(Recoil.scanned)
    Recoil.found = 0
end

function Recoil.ScanTool(tool)
    local n = Recoil.ZeroInstance(tool)
    for _, d in ipairs(tool:GetDescendants()) do
        n += Recoil.ZeroInstance(d)
        if d:IsA("ModuleScript") then
            local ok, mod = pcall(require, d)
            if ok and type(mod) == "table" then n += Recoil.ZeroTable(mod, 3, {}) end
        end
    end
    return n
end

function Recoil.ScanGC()
    if typeof(getgc) ~= "function" then return 0 end
    local ok, gc = pcall(getgc, true)
    if not ok or type(gc) ~= "table" then return 0 end
    local n, seen = 0, {}
    for i, obj in ipairs(gc) do
        if type(obj) == "table" then n += Recoil.ZeroTable(obj, 0, seen) end
        if i % 3000 == 0 then
            task.wait()
            if not Config.NoRecoil then break end
        end
    end
    return n
end

function Recoil.Start()
    Recoil.token += 1
    local token = Recoil.token
    task.spawn(function()
        local firstRun = true
        while Config.NoRecoil and Recoil.token == token do
            local newTool = false
            local function scan(tool)
                if tool:IsA("Tool") and not Recoil.scanned[tool] then
                    Recoil.scanned[tool] = true
                    newTool = true
                    table.clear(Recoil.names)
                    local n = Recoil.ScanTool(tool)
                    Recoil.found += n
                    if n > 0 then
                        print(string.format("[Recoil] %s: ปรับค่า recoil %d รายการ (%s)", tool.Name, n, table.concat(Recoil.names, ", ")))
                    else
                        print(string.format("[Recoil] %s: ไม่พบค่า recoil ในตัวปืน (จะลองหาใน memory ต่อ)", tool.Name))
                    end
                end
            end
            local char = LocalPlayer.Character
            if char then for _, c in ipairs(char:GetChildren()) do scan(c) end end
            local bp = LocalPlayer:FindFirstChildOfClass("Backpack")
            if bp then for _, c in ipairs(bp:GetChildren()) do scan(c) end end

            if (firstRun or newTool) and os.clock() - Recoil.lastGC > 8 then
                firstRun = false
                Recoil.lastGC = os.clock()
                task.wait(1)
                if Config.NoRecoil and Recoil.token == token then
                    table.clear(Recoil.names)
                    local n = Recoil.ScanGC()
                    Recoil.found += n
                    if typeof(getgc) ~= "function" then
                        print("[Recoil] executor นี้ไม่มี getgc จึงหาค่า recoil ได้เฉพาะในตัวปืน")
                    else
                        print(string.format("[Recoil] memory: ปรับค่า recoil %d รายการ (%s)", n, table.concat(Recoil.names, ", ")))
                    end
                end
            end
            task.wait(2)
        end
    end)
end

local function HookProjectile()
    local handler = ResolveProjectileHandler()
    if not handler then
        hookStatus = "ไม่พบ ProjectileHandler"
        if not hookWarned then
            hookWarned = true
            warn("[CipherHUB] ไม่พบ ProjectileHandler / SimulateProjectile (เกมอาจใช้ระบบยิงแบบอื่น)")
        end
        return false
    end
    local existing = HookedHandlers[handler]
    if existing and handler.SimulateProjectile == existing then
        Hooked, hookStatus = true, "Hook สำเร็จ"
        return true
    end

    local original = handler.SimulateProjectile
    local function wrapper(...)
        hookCallCount += 1
        local args = table.pack(...)
        local tool, handle
        for _, i in ipairs({2, 3}) do
            local item = args[i]
            if typeof(item) == "Instance" then
                if item:IsA("Tool") then tool = item elseif item:IsA("BasePart") then handle = item end
            end
        end
        local localShot = tool and LocalPlayer.Character and tool:IsDescendantOf(LocalPlayer.Character) and args[15] ~= nil
        if localShot and (Config.SilentAim or Config.NoSpread) then
            local okAim, errAim = pcall(RedirectShot, args, handle)
            if not okAim and not silentErrWarned then
                silentErrWarned = true
                warn("[SilentAim] เกิดข้อผิดพลาด (ยิงต่อได้ตามปกติ): " .. tostring(errAim))
            end
        end
        if hookCallCount <= 3 then
            print(string.format("[Flexozy] SimulateProjectile Hook ทำงาน #%d | เปิดระบบ: %s | เป้าหมาย: %s", hookCallCount, tostring(Config.SilentAim), CurrentTarget and CurrentTarget.Name or "ไม่มี"))
        end
        return original(table.unpack(args, 1, args.n))
    end
    handler.SimulateProjectile = wrapper
    HookedHandlers[handler] = wrapper
    HookOriginals[handler] = original
    Hooked, hookWarned, hookStatus = true, false, "Hook สำเร็จ"
    print("[Flexozy] ProjectileHandler Hooked")
    return true
end

local hookLoopToken = 0
local function EnsureHook()
    hookLoopToken += 1
    local token = hookLoopToken
    task.spawn(function()
        while Config.SilentAim and not Hooked and hookLoopToken == token do
            if HookProjectile() then break end
            task.wait(3)
        end
    end)
end

-- ========== Tool / Inventory helpers ==========

local function GetToolIcon(tool)
    if not tool or not tool:IsA("Tool") then
        return ""
    end

    local ok, texId = pcall(function()
        return tool.TextureId
    end)

    if ok and texId and texId ~= "" then
        return texId
    end

    local attr = tool:GetAttribute("Icon")
        or tool:GetAttribute("IconId")
        or tool:GetAttribute("Image")

    if attr then
        if typeof(attr) == "number" then
            return "rbxassetid://" .. attr
        elseif typeof(attr) == "string" and attr ~= "" then
            return attr
        end
    end

    for _, obj in ipairs(tool:GetDescendants()) do
        if obj:IsA("Decal") or obj:IsA("Texture") then
            if obj.Texture and obj.Texture ~= "" then
                return obj.Texture
            end
        end
    end

    local handle = tool:FindFirstChild("Handle")

    if handle and handle:IsA("BasePart") then
        local texture = handle:FindFirstChildOfClass("Texture")

        if texture and texture.Texture and texture.Texture ~= "" then
            return texture.Texture
        end

        local decal = handle:FindFirstChildOfClass("Decal")

        if decal and decal.Texture and decal.Texture ~= "" then
            return decal.Texture
        end
    end

    return ""
end

local function GetInventoryList(player, data)
    local equipped = {}
    local backpack = {}

    if player.Character then
        for _, child in ipairs(player.Character:GetChildren()) do
            if child:IsA("Tool") then
                table.insert(equipped, {
                    Name = child.Name,
                    Icon = GetToolIcon(child),
                    Tool = child
                })
            end
        end
    end

    local bp = player:FindFirstChild("Backpack")

    if bp then
        for _, child in ipairs(bp:GetChildren()) do
            if child:IsA("Tool") then
                table.insert(backpack, {
                    Name = child.Name,
                    Icon = GetToolIcon(child),
                    Tool = child
                })
            end
        end
    end

    if data and data.EquippedOrder then
        table.sort(equipped, function(a, b)
            local oa = data.EquippedOrder[a.Tool] or 0
            local ob = data.EquippedOrder[b.Tool] or 0
            return oa > ob
        end)
    end

    return equipped, backpack
end

-- ========== Infinite Stamina (สเตมิน่าไม่ลด) ==========
-- หาค่าสเตมิน่าที่เก็บในฝั่งผู้เล่น (Attribute หรือ NumberValue/IntValue ของ Player/Character)
-- แล้วคืนค่ากลับทันทีที่เกมลดมัน ใช้ไม่ได้ถ้าเกมเก็บสเตมิน่าไว้ในตัวแปรของสคริปต์หรือเซิร์ฟเวอร์เป็นคนคุม

local StaminaKeywords = {"stamina"}
local StaminaIgnore = {"max", "regen", "drain", "cost", "rate", "delay", "cooldown", "speed", "mult", "time"}
local StaminaEntries = setmetatable({}, {__mode = "k"})
local StaminaToken = 0

local function NameHas(name, list)
    local lower = string.lower(name)

    for _, kw in ipairs(list) do
        if kw ~= "" and string.find(lower, kw, 1, true) then
            return true
        end
    end

    return false
end

local function IsStaminaName(name)
    return NameHas(name, StaminaKeywords) and not NameHas(name, StaminaIgnore)
end

-- ค่าสูงสุดของสเตมิน่า (ถ้าเกมมี MaxStamina / StaminaMax ฯลฯ ข้างๆ)
local function FindMaxFor(owner, name, isAttr)
    if not owner then return nil end

    local names = {"Max" .. name, name .. "Max", "Max_" .. name, name .. "_Max"}

    for _, n in ipairs(names) do
        if isAttr then
            local v = owner:GetAttribute(n)

            if typeof(v) == "number" then
                return v
            end
        else
            local child = owner:FindFirstChild(n)

            if child and child:IsA("ValueBase") and typeof(child.Value) == "number" then
                return child.Value
            end
        end
    end

    return nil
end

local function HookStaminaAttr(owner, name)
    local bucket = StaminaEntries[owner]

    if not bucket then
        bucket = {}
        StaminaEntries[owner] = bucket
    end

    if bucket[name] then return false end

    local entry = {max = 0}
    bucket[name] = entry

    local function restore()
        local v = owner:GetAttribute(name)
        if typeof(v) ~= "number" then return end

        if v > entry.max then
            entry.max = v
        end

        local target = FindMaxFor(owner, name, true) or entry.max

        if v < target then
            owner:SetAttribute(name, target)
        end
    end

    entry.conn = owner:GetAttributeChangedSignal(name):Connect(restore)
    restore()

    return true
end

local function HookStaminaValue(inst)
    local bucket = StaminaEntries[inst]
    if bucket then return false end

    local entry = {max = 0}
    StaminaEntries[inst] = {Value = entry}

    local function restore()
        local v = inst.Value
        if typeof(v) ~= "number" then return end

        if v > entry.max then
            entry.max = v
        end

        local target = FindMaxFor(inst.Parent, inst.Name, false) or entry.max

        if inst:IsA("IntValue") then
            target = math.floor(target)
        end

        if v < target then
            inst.Value = target
        end
    end

    entry.conn = inst:GetPropertyChangedSignal("Value"):Connect(restore)
    restore()

    return true
end

local function ScanStaminaInstance(inst)
    local added = 0

    for name, value in pairs(inst:GetAttributes()) do
        if typeof(value) == "number" and IsStaminaName(name) then
            if HookStaminaAttr(inst, name) then
                added += 1
            end
        end
    end

    if (inst:IsA("NumberValue") or inst:IsA("IntValue")) and IsStaminaName(inst.Name) then
        if HookStaminaValue(inst) then
            added += 1
        end
    end

    return added
end

local function ForEachPlayerInstance(fn)
    local function tree(root)
        fn(root)

        for _, d in ipairs(root:GetDescendants()) do
            fn(d)
        end
    end

    fn(LocalPlayer)

    -- ข้าม PlayerGui (เป็นแค่ UI ไม่ใช่ตัวเก็บค่าจริง และมีของเยอะ)
    for _, child in ipairs(LocalPlayer:GetChildren()) do
        if not child:IsA("PlayerGui") then
            tree(child)
        end
    end

    if LocalPlayer.Character then
        tree(LocalPlayer.Character)
    end
end

local function CountStamina()
    local n = 0

    for _, bucket in pairs(StaminaEntries) do
        for _, entry in pairs(bucket) do
            if entry.conn and entry.conn.Connected then
                n += 1
            end
        end
    end

    return n
end

local function ScanStamina()
    ForEachPlayerInstance(ScanStaminaInstance)
end

local StaminaOnLock -- ตั้งค่าภายหลังใน UI เพื่อแจ้งเตือนเมื่อล็อกเจอ

local dbg: any = debug

-- ========== วิธี A: ล็อก upvalue ของฟังก์ชันที่ผูกกับปุ่มวิ่ง ==========
-- ดัดแปลงจากสคริปต์เดิม (ล็อก upvalue ตำแหน่งที่ 6 ตายตัวที่ MobileGUI.MobileButtons.RunButton)
-- ตอนนี้: หาปุ่มวิ่งเองแบบยืดหยุ่น + หาตำแหน่ง upvalue ของสเตมิน่าอัตโนมัติ (หรือกำหนดเองได้)

local ST = {
    max = 100,
    index = 0, -- 0 = อัตโนมัติ
    stats = setmetatable({}, {__mode = "k"}),
}

local function StaminaSupported()
    return typeof(getconnections) == "function"
        and typeof(dbg) == "table"
        and typeof(dbg.setupvalue) == "function"
        and (typeof(dbg.getupvalue) == "function" or typeof(dbg.getupvalues) == "function")
end

-- คืนตาราง [ตำแหน่ง] = ค่า ของ upvalue ทั้งหมดในฟังก์ชัน
local function GetUpvalues(fn)
    local out = {}

    if typeof(dbg.getupvalues) == "function" then
        local ok, t = pcall(dbg.getupvalues, fn)

        if ok and typeof(t) == "table" then
            for i, v in pairs(t) do
                out[i] = v
            end

            return out
        end
    end

    if typeof(dbg.getupvalue) == "function" then
        for i = 1, 60 do
            local ok, a, b = pcall(dbg.getupvalue, fn, i)

            if not ok or (a == nil and b == nil) then break end

            local v = a

            -- executor บางตัวคืน (ชื่อ, ค่า) แบบ Lua มาตรฐาน
            if typeof(a) == "string" and b ~= nil then
                v = b
            end

            out[i] = v
        end
    end

    return out
end

local function FindRunButtons()
    local buttons, seen = {}, {}

    local function add(b)
        if b and not seen[b] and b:IsA("GuiButton") then
            seen[b] = true
            table.insert(buttons, b)
        end
    end

    local pg = LocalPlayer:FindFirstChildOfClass("PlayerGui")
    if not pg then return buttons end

    -- เส้นทางเดิมของสคริปต์เพื่อน
    local mg = pg:FindFirstChild("MobileGUI")
    local mb = mg and mg:FindFirstChild("MobileButtons")
    add(mb and mb:FindFirstChild("RunButton"))

    -- ค้นหาแบบยืดหยุ่น: ปุ่มที่ชื่อมี run / sprint (เผื่อเกมย้ายหรือเปลี่ยนชื่อ)
    for _, d in ipairs(pg:GetDescendants()) do
        if d:IsA("GuiButton") then
            local n = string.lower(d.Name)

            if string.find(n, "run", 1, true) or string.find(n, "sprint", 1, true) then
                add(d)
            end
        end

        if #buttons >= 12 then break end
    end

    return buttons
end

local RunButtonSignals = {"MouseButton1Click", "MouseButton1Down", "Activated", "TouchTap", "MouseButton1Up"}

local function CollectRunFunctions()
    local fns, seen = {}, {}

    for _, btn in ipairs(FindRunButtons()) do
        for _, sig in ipairs(RunButtonSignals) do
            local ok, conns = pcall(function()
                return getconnections(btn[sig])
            end)

            if ok and typeof(conns) == "table" then
                for _, c in ipairs(conns) do
                    local fn = c.Function

                    if typeof(fn) == "function" and not seen[fn] then
                        seen[fn] = true
                        table.insert(fns, fn)
                    end
                end
            end
        end
    end

    return fns
end

local function StaminaTick(fns)
    for _, fn in ipairs(fns) do
        local ups = GetUpvalues(fn)
        local st = ST.stats[fn]

        if not st then
            st = {}
            ST.stats[fn] = st
        end

        if ST.index > 0 then
            -- กำหนดตำแหน่งเอง (เหมือนสคริปต์เดิมที่ใช้ตำแหน่ง 6)
            local v = ups[ST.index]

            if typeof(v) == "number" and v < ST.max then
                pcall(dbg.setupvalue, fn, ST.index, ST.max)
            end
        else
            for idx, v in pairs(ups) do
                if typeof(v) == "number" then
                    if v < 0 or v > ST.max then
                        st[idx] = nil
                    else
                        local e = st[idx]

                        if not e then
                            st[idx] = {last = v, seenMax = v, changes = 0, decreases = 0, locked = false}
                        else
                            if v ~= e.last then
                                e.changes += 1

                                if v < e.last then
                                    e.decreases += 1
                                end

                                e.last = v
                            end

                            if v > e.seenMax then
                                e.seenMax = v
                            end

                            -- ตัวแปรที่ขึ้นลงในช่วง 0..max และเคยลดลง = น่าจะเป็นสเตมิน่า
                            if not e.locked
                                and e.changes >= 2
                                and e.decreases >= 1
                                and e.seenMax >= ST.max * 0.9 then

                                e.locked = true

                                if StaminaOnLock then
                                    StaminaOnLock(idx)
                                end
                            end

                            if e.locked and v < ST.max then
                                pcall(dbg.setupvalue, fn, idx, ST.max)
                            end
                        end
                    end
                end
            end
        end
    end
end

local function StopStamina()
    StaminaToken += 1
    ST.stats = setmetatable({}, {__mode = "k"})

    for inst, bucket in pairs(StaminaEntries) do
        for _, entry in pairs(bucket) do
            if entry.conn then
                entry.conn:Disconnect()
            end
        end

        StaminaEntries[inst] = nil
    end
end

-- คืน (จำนวนฟังก์ชันของปุ่มวิ่งที่พบ, จำนวนค่า Attribute/Value ที่ล็อกอยู่)
local function StartStamina()
    StopStamina()

    local token = StaminaToken
    local fns = {}

    if StaminaSupported() then
        local ok, res = pcall(CollectRunFunctions)

        if ok then
            fns = res
        end
    end

    pcall(ScanStamina)

    task.spawn(function()
        local lastScan = os.clock()

        while StaminaToken == token do
            -- สแกนซ้ำทุก 2 วินาที เผื่อตัวละครเกิดใหม่ / เกมสร้างปุ่มหรือค่าทีหลัง
            if os.clock() - lastScan >= 2 then
                lastScan = os.clock()
                pcall(ScanStamina)

                if StaminaSupported() then
                    local ok, res = pcall(CollectRunFunctions)

                    if ok then
                        fns = res
                    end
                end
            end

            if #fns > 0 then
                pcall(StaminaTick, fns)
            end

            task.wait(0.05)
        end
    end)

    return #fns, CountStamina()
end

-- ========== Auto Farm (ระบบฟาร์มจากไฟล์ใหม่; ใช้ UI Flexozy เดิม) ==========
local FarmAPI = {}
do
local Players = game:GetService("Players")
local RS = game:GetService("ReplicatedStorage")
local RunService = game:GetService("RunService")
local UIS = game:GetService("UserInputService")
local Http = game:GetService("HttpService")
local player = Players.LocalPlayer
local previous = getgenv().__SentorumSailueat
if previous and type(previous.Cleanup) == "function" then pcall(previous.Cleanup) end
do
    local test = getgenv().__UndergroundTest
    if type(test) == "table" and type(test.Cleanup) == "function" then pcall(test.Cleanup) end
end
local defaults = {ConstructionTask = "เจาะพื้น", ConstructionCollect = true, ConstructionCollectAt = 1000, MechanicCollect = true, MechanicCollectAt = 1000, AutoFarm = false, FarmMode = "กวาดพื้น", AutoSellTrash = true, SellTrashAt = 10, OpenOnLoad = true, AutoMinimize = false, MinimizeDelay = 3, AutoSave = true, ToggleKey = "RightShift", Width = 700}
local config = table.clone(defaults)
local limits = {ConstructionCollectAt = {1, 100000}, MechanicCollectAt = {1, 100000}, SellTrashAt = {1, 1000}, MinimizeDelay = {0, 15}, Width = {640, 900}}
local keyNames = {}
for _, key in ipairs(Enum.KeyCode:GetEnumItems()) do if key.Name ~= "Unknown" then keyNames[key.Name] = true end end
local choices = {}
choices.FarmMode = {"กวาดพื้น", "คุ้ยขยะ", "งานก่อสร้าง", "งานซ่อมรถ"}
choices.ConstructionTask = {"ตอกตะปู", "เชื่อมเหล็ก", "เจาะพื้น"}
local extraJobs = {Mechanic = {Known = false, Hired = false, Earnings = 0}}
local sellConfig = require(RS.Job["ขยะ"]:WaitForChild("SellConfig"))
local farmState = {Busy = false, Epoch = 0, Status = "ปิดอยู่", Rounds = 0, Earned = 0, Loot = previous and previous.Farm and table.clone(previous.Farm.Loot) or {}}
local stopFarm
local workAudit = {Capacity = 192, Count = 0, Next = 1, Events = {}}
local function recordWork(event, round, detail)
    round = round or farmState.Round or farmState.CancelRound
    local character = player.Character
    local humanoid = character and character:FindFirstChildOfClass("Humanoid")
    workAudit.Events[workAudit.Next] = {At = os.clock(), Event = event,
        Kind = round and round.Kind or farmState.Kind, Id = round and tostring(round.Id) or nil,
        Epoch = farmState.Epoch, Busy = farmState.Busy, Pending = farmState.Pending == true,
        Cancelling = farmState.Cancelling == true, HP = humanoid and humanoid.Health or nil,
        Age = round and round.At and os.clock() - round.At or nil, Detail = detail}
    workAudit.Next = workAudit.Next % workAudit.Capacity + 1
    workAudit.Count = math.min(workAudit.Count + 1, workAudit.Capacity)
end
local function readWorkAudit()
    local result = {}
    local first = workAudit.Count == workAudit.Capacity and workAudit.Next or 1
    for offset = 0, workAudit.Count - 1 do
        local row = workAudit.Events[(first + offset - 1) % workAudit.Capacity + 1]
        local copy = table.clone(row)
        if type(copy.Detail) == "table" then copy.Detail = table.clone(copy.Detail) end
        result[#result + 1] = copy
    end
    return result
end
local function persistWorkAudit(reason)
    pcall(function()
        makefolder("Sentorum/Sailueatarchiwa/diagnostics")
        writefile("Sentorum/Sailueatarchiwa/diagnostics/work-last-" .. player.UserId .. ".json",
            Http:JSONEncode({Format = 1, Reason = reason, PlaceId = game.PlaceId,
                PlaceVersion = game.PlaceVersion, CapturedAt = os.time(), Events = readWorkAudit()}))
    end)
end
local runScript, runHumanoid, runAction, runningOwned
local runSearchAt = 0
local function nativeSprint(enabled)
    local script = player.PlayerGui:FindFirstChild("RunSystem")
    local humanoid = player.Character and player.Character:FindFirstChildOfClass("Humanoid")
    if script ~= runScript or humanoid ~= runHumanoid then
        runScript, runHumanoid, runAction, runningOwned = script, humanoid, nil, false
        runSearchAt = 0
    end
    if not script or not humanoid then return end
    if not enabled then
        if runAction and runningOwned and not UIS:IsKeyDown(Enum.KeyCode.LeftShift) then runAction("RunBind", Enum.UserInputState.End) end
        runningOwned = false
        return
    end
    if UIS:IsKeyDown(Enum.KeyCode.LeftShift) or script:GetAttribute("BlockStamina") == true or humanoid.WalkSpeed <= 0 then return end
    if runAction and debug.getupvalue(runAction, 5) ~= humanoid then runAction = nil runSearchAt = 0 end
    if not runAction then
        local now = os.clock()
        if now < runSearchAt then return end
        runSearchAt = now + 2
        for _, fn in ipairs(filtergc("function", {Constants = {"RunBind", "BlockStamina"}, IgnoreExecutor = true}, false)) do
            if getfenv(fn).script == script and debug.info(fn, "a") == 2 then
                local values = debug.getupvalues(fn)
                if values[1] == player and values[5] == humanoid and type(values[2]) == "number" and type(values[6]) == "number" and type(values[3]) == "boolean" and type(values[4]) == "boolean" then runAction = fn break end
            end
        end
    end
    if not runAction or debug.getupvalue(runAction, 3) or debug.getupvalue(runAction, 4) then return end
    runAction("RunBind", Enum.UserInputState.Begin)
    runningOwned = debug.getupvalue(runAction, 4) == true
end
local profilePath = "Sentorum/Sailueatarchiwa/" .. player.UserId .. ".json"
local stopped, applying, ready = false, false, false
local window, saveStatus = nil, "ยังไม่ได้บันทึก"
local controls, connections = {}, {}
local dirtyAt = nil
local function cleanSettings(data)
    local result = table.clone(defaults)
    if type(data) ~= "table" then return result end
    for key, default in pairs(defaults) do
        local v = data[key]
        if type(v) == type(default) then
            if type(v) == "boolean" then result[key] = v
            elseif key == "BurrowDepth" and v == v and math.abs(v) < math.huge then result[key] = math.clamp(v, 0.1, 0.3)
            elseif limits[key] and v == v and math.abs(v) < math.huge then result[key] = math.floor(math.clamp(v, limits[key][1], limits[key][2]))
            elseif choices[key] and table.find(choices[key], v) then result[key] = v
            elseif key == "ToggleKey" and keyNames[v] then result[key] = v end
        end
    end
    return result
end
local function loadSettings()
    if not isfile(profilePath) then return false end
    local ok, data = pcall(function() return Http:JSONDecode(readfile(profilePath)) end)
    if not ok or type(data) ~= "table" or data.Version ~= 1 or data.PlaceId ~= game.PlaceId then saveStatus = "ไฟล์ตั้งค่าไม่ถูกต้อง" return false end
    config = cleanSettings(data.Settings)
    saveStatus = "โหลดค่าที่บันทึกแล้ว"
    return true
end
local function saveSettings()
    local ok = pcall(function()
        makefolder("Sentorum/Sailueatarchiwa")
        writefile(profilePath, Http:JSONEncode({Version = 1, PlaceId = game.PlaceId, Settings = config}))
    end)
    saveStatus = ok and "บันทึกแล้ว" or "บันทึกไม่สำเร็จ"
    if ok then dirtyAt = nil end
    return ok
end
loadSettings()
local function changed(key, value)
    if applying then return end
    config[key] = value
    if ready then dirtyAt = os.clock() end
end
local function connect(signal, fn)
    local connection = signal:Connect(fn)
    connections[#connections + 1] = connection
    return connection
end
local descriptionCache = setmetatable({}, {__mode = "k"})
local function setDescription(control, text)
    if not control or descriptionCache[control] == text then return end
    if control.Set then
        control:Set(text)
    elseif control.SetDesc then
        control:SetDesc(text)
    end
    descriptionCache[control] = text
end
local networkClient = game:GetService("NetworkClient")
connect(networkClient.ChildRemoved, function(child)
    if child.Name == "ClientReplicator" then
        recordWork("network_disconnected")
        persistWorkAudit("network_disconnected")
    end
end)
local function itemCount(name)
    local count = 0
    for _, parent in ipairs({player.Backpack, player.Character}) do
        if parent then
            for _, item in ipairs(parent:GetChildren()) do
                if item:IsA("Tool") and item.Name == name then count += tonumber(item:GetAttribute("ItemAmount")) or 1 end
            end
        end
    end
    return count
end
local function resumeWorkInputs(round)
    if not round or not round.InputConnections then return end
    for _, connection in ipairs(round.InputConnections) do pcall(function() connection:Enable() end) end
    round.InputConnections = nil
    if farmState.InputRound == round then farmState.InputRound = nil end
end
local function pauseWorkInputs(round)
    if round.InputConnections then return end
    local gui = player.PlayerGui:FindFirstChild("MiniGameUI")
    local script = gui and gui:FindFirstChild("Minigameclient")
    local names = {NailSite = "NailFrame", WeldSite = "WeldFrame", DrillSite = "DrillFrame", SweepSite = "SweepFrame", TrashDigSite = "TrashFrame", EngineSite = "EngineFrame"}
    local frame = gui and names[round.Kind] and gui:FindFirstChild(names[round.Kind])
    assert(script and frame, "ยังไม่พบตัวรับ input ของงาน")
    local paused = {}
    round.InputConnections = paused
    farmState.InputRound = round
    local function pause(signal, checkFrame)
        for _, connection in ipairs(getconnections(signal)) do
            local fn = connection.Function
            if type(fn) == "function" and getfenv(fn).script == script and connection.Enabled ~= false then
                local selected = not checkFrame
                if checkFrame then
                    for _, value in pairs(debug.getupvalues(fn)) do
                        if typeof(value) == "Instance" and (value == frame or value:IsDescendantOf(frame)) then selected = true break end
                    end
                end
                if selected then
                    assert(type(connection.Disable) == "function" and type(connection.Enable) == "function", "executor ไม่รองรับการพัก input เฉพาะงาน")
                    connection:Disable()
                    paused[#paused + 1] = connection
                end
            end
        end
    end
    pause(RunService.Heartbeat, true)
    for _, signal in ipairs({UIS.InputBegan, UIS.InputChanged, UIS.InputEnded}) do pause(signal, true) end
    local objects = frame:GetDescendants()
    objects[#objects + 1] = frame
    for _, object in ipairs(objects) do
        if object:IsA("GuiObject") then
            pause(object.InputBegan, false)
            pause(object.InputChanged, false)
            pause(object.InputEnded, false)
            if object:IsA("GuiButton") then
                pause(object.MouseButton1Click, false)
                pause(object.MouseButton1Down, false)
                pause(object.MouseButton1Up, false)
            end
        end
    end
    assert(#paused > 0, "ยังแยกตัวรับ input ของงานไม่ได้")
end
local workClearScript, workClearCallback, workClearRetryAt = nil, nil, 0
local function clearWorkUI()
    local gui = player.PlayerGui:FindFirstChild("MiniGameUI")
    local script = gui and gui:FindFirstChild("Minigameclient")
    if not script then return end
    if workClearScript ~= script then workClearScript, workClearCallback, workClearRetryAt = script, nil, 0 end
    if not workClearCallback and os.clock() >= workClearRetryAt then
        workClearRetryAt = os.clock() + 2
        for _, connection in ipairs(getconnections(RS.Job.Construction.MiniGameDone.OnClientEvent)) do
            local fn = connection.Function
            if type(fn) == "function" and getfenv(fn).script == script then
                for _, value in pairs(debug.getupvalues(fn)) do
                    if type(value) == "function" and getfenv(value).script == script and debug.info(value, "n") == "ClearConns" and debug.info(value, "a") == 0 then workClearCallback = value break end
                end
            end
            if workClearCallback then break end
        end
    end
    if workClearCallback then
        local ok = pcall(workClearCallback)
        if not ok then workClearCallback = nil end
    end
    gui.Enabled = false
end
local function completeNailRound(round, keepGoing)
    local gui = player.PlayerGui:FindFirstChild("MiniGameUI")
    local frame = gui and gui:FindFirstChild("NailFrame")
    local native = gui and gui:FindFirstChild("Minigameclient")
    if not frame or not native then return false end
    local deadline = os.clock() + 15
    local nextHitAt = os.clock() + 1
    while gui.Enabled and frame.Visible and os.clock() < deadline do
        if not keepGoing() then return false end
        for _, button in ipairs(frame:GetChildren()) do
            if button:IsA("GuiButton") then
                local color = button.BackgroundColor3
                if color.R > .9 and color.G > .6 and color.B < .4 and os.clock() >= nextHitAt then
                    for _, connection in ipairs(getconnections(button.MouseButton1Click)) do
                        local callback = connection.Function
                        if type(callback) == "function" and getfenv(callback).script == native then
                            local ok, err = pcall(callback)
                            if not ok then error(err, 0) end
                            break
                        end
                    end
                    nextHitAt = os.clock() + 1
                    break
                end
            end
        end
        task.wait(.05)
    end
    round.NativeDone = not gui.Enabled
    return round.NativeDone
end
local farmMovement = {}
function farmMovement.Stop()
    if farmMovement.Character == player.Character then player:Move(Vector3.zero, false) end
    farmMovement.Character, farmMovement.Humanoid, farmMovement.Target = nil, nil, nil
end
local function farmMove(humanoid, destination)
    local character = player.Character
    local root = character and character:FindFirstChild("HumanoidRootPart")
    if not root or humanoid.Parent ~= character or humanoid.Health <= 0 then farmMovement.Stop() return end
    local offset = destination - root.Position
    if offset.X * offset.X + offset.Z * offset.Z < .04 then farmMovement.Stop() return end
    farmMovement.Character, farmMovement.Humanoid, farmMovement.Target = character, humanoid, destination
    farmMovement.Expires = os.clock() + .5
end
function farmMovement.Step()
    if not farmMovement.Target then return end
    local character, humanoid = farmMovement.Character, farmMovement.Humanoid
    local root = character and character:FindFirstChild("HumanoidRootPart")
    if stopped or farmState.Round or character ~= player.Character or not root or humanoid.Health <= 0 or humanoid.WalkSpeed <= 0 or os.clock() >= farmMovement.Expires then farmMovement.Stop() return end
    local offset = farmMovement.Target - root.Position
    local direction = Vector3.new(offset.X, 0, offset.Z)
    if direction.Magnitude <= .2 then farmMovement.Stop() return end
    player:Move(direction.Unit, false)
end
RunService:BindToRenderStep("SentorumFarmMovement" .. player.UserId, Enum.RenderPriority.Input.Value + 1, farmMovement.Step)
stopFarm = function()
    farmMovement.Stop()
    recordWork("stop_requested")
    farmState.Recovery = nil
    nativeSprint(false)
    farmState.Cancelling = true
    farmState.Epoch += 1
    if farmState.Round then
        local round = farmState.Round
        farmState.CancelRound = round
        farmState.Round = nil
        if round.Kind ~= "NailSite" then clearWorkUI() end
    end
    if farmState.Controls then farmState.Controls:Enable() farmState.Controls = nil end
    local c = player.Character
    local h, r = c and c:FindFirstChildOfClass("Humanoid"), c and c:FindFirstChild("HumanoidRootPart")
    if farmState.Busy and h and r then farmMove(h, r.Position) end
    farmState.Status = "ปิดอยู่"
end
local constructionKinds = {NailSite = "ตอกตะปู", WeldSite = "เชื่อมเหล็ก", DrillSite = "เจาะพื้น"}
local constructionTime = {NailSite = 5.3, WeldSite = 8.3, DrillSite = 8.3, EngineSite = 5.3}
local constructionState = {Known = false, Hired = false, Earnings = 0, Revision = 0, Level = 1}
local function closeConstructionUI()
    local gui = player.PlayerGui:FindFirstChild("ConstructionUI")
    local main = gui and gui:FindFirstChild("MainFrame")
    local header = main and main:FindFirstChild("Header")
    local close = header and header:FindFirstChild("CloseBtn")
    if gui and gui.Enabled and close then
        for _, connection in ipairs(getconnections(close.MouseButton1Click)) do
            if type(connection.Function) == "function" then pcall(connection.Function) end
        end
    end
end
connect(RS.Job.Construction.OpenJobGUI.OnClientEvent, function(hired, earnings)
    constructionState.Known = true
    constructionState.Hired = hired == true
    constructionState.Earnings = tonumber(earnings) or 0
end)
connect(RS.Job.Construction.UpdateEarnings.OnClientEvent, function(earnings)
    if type(earnings) == "number" then
        constructionState.Earnings = earnings
        constructionState.Revision += 1
    end
end)
connect(player.CharacterAdded, function() constructionState.Known = false constructionState.Hired = false end)
connect(RS.Job.Construction.UpdateLevel.OnClientEvent, function(level)
    if type(level) == "number" then constructionState.Level = level end
end)
connect(RS.Job.Construction.ChallengeKeyUpdate.OnClientEvent, function(key)
    local round = farmState.Round or farmState.CancelRound
    if round then round.Key = key recordWork("challenge_updated", round, {HasKey = key ~= nil}) end
end)
connect(RS.Job.Construction.MiniGame.OnClientEvent, function(kind, id, key, options)
    recordWork("round_received", {Kind = kind, Id = id}, {Accepted = farmState.Busy and kind == farmState.Kind,
        HasKey = key ~= nil, TargetCount = type(options) == "table" and options.targetCount or nil,
        TimeLimit = type(options) == "table" and options.timeLimit or nil})
    if farmState.Busy and kind == farmState.Kind then
        farmState.Pending = false
        farmState.Round = {Kind = kind, Id = id, Key = key, Options = options, At = os.clock()}
    end
end)
connect(RS.Job.Construction.MiniGameDone.OnClientEvent, function(kind, id)
    recordWork("native_done_received", {Kind = kind, Id = id})
    farmState.LastNativeDone = {Kind = kind, Id = id, At = os.clock()}
end)
local function farmLootCount()
    table.clear(farmState.Loot)
    local count = 0
    for _, parent in ipairs({player.Backpack, player.Character}) do
        for _, item in ipairs(parent:GetChildren()) do
            if item:IsA("Tool") and sellConfig[item.Name] then
                farmState.Loot[item.Name] = (farmState.Loot[item.Name] or 0) + 1
                count += 1
            end
        end
    end
    return count
end
local trashRetryAfter = {}
local function trashAvailable(prompt)
    local part = prompt.Parent
    if not part or not part:IsA("BasePart") or not prompt.Enabled then return false end
    if prompt.ActionText ~= "Dirty" then return true end
    for _, other in ipairs(Players:GetPlayers()) do
        if other ~= player then
            local character = other.Character
            local humanoid = character and character:FindFirstChildOfClass("Humanoid")
            local root = character and character:FindFirstChild("HumanoidRootPart")
            if humanoid and humanoid.Health > 0 and root then
                local delta = root.Position - part.Position
                if math.abs(delta.Y) <= 5 and delta.X * delta.X + delta.Z * delta.Z <= 36 then return false end
            end
        end
    end
    return true
end
local function walkSeller(prompt, humanoid, root, active, waitFor)
    local anchor = prompt.Parent
    if not anchor or not anchor:IsA("BasePart") or not prompt.Enabled then return false end
    local npc = anchor:FindFirstAncestorOfClass("Model")
    local canJump = prompt.ActionText ~= "selling"
    local bodyModel = npc and npc:FindFirstChildOfClass("Humanoid") and npc
    local ignored = {root.Parent}
    if bodyModel then ignored[#ignored + 1] = bodyModel else ignored[#ignored + 1] = anchor end
    for _, other in ipairs(Players:GetPlayers()) do
        if other.Character then ignored[#ignored + 1] = other.Character end
    end
    local params = RaycastParams.new()
    params.FilterType = Enum.RaycastFilterType.Exclude
    params.FilterDescendantsInstances = ignored
    params.RespectCanCollide = true
    local height = humanoid.HipHeight + root.Size.Y / 2 + (humanoid.RigType == Enum.HumanoidRigType.R6 and 2 or 0)
    local site = npc and constructionKinds[npc.Name] ~= nil
    local radius = math.min(site and 2.8 or 4, prompt.MaxActivationDistance - .8)
    if radius < 2 then return false end
    local function humanoidFloor(part)
        local ancestor = part
        while ancestor and ancestor ~= workspace do
            if ancestor:IsA("Model") and ancestor:FindFirstChildOfClass("Humanoid") then return true end
            ancestor = ancestor.Parent
        end
        return false
    end
    local function clearStandingSpace(stand)
        for _, y in ipairs({-1, .5, 1.5}) do
            for _, direction in ipairs({Vector3.new(1, 0, 0), Vector3.new(0, 0, 1), Vector3.new(.7, 0, .7), Vector3.new(.7, 0, -.7)}) do
                local center = stand + Vector3.new(0, y, 0)
                if workspace:Raycast(center - direction, direction * 2, params) then return false end
            end
        end
        return true
    end
    local goals = {}
    for _, offset in ipairs({Vector3.new(0, 0, radius), Vector3.new(0, 0, -radius), Vector3.new(radius, 0, 0), Vector3.new(-radius, 0, 0)}) do
        local point = anchor.CFrame:PointToWorldSpace(offset)
        local origin = site and Vector3.new(point.X, math.min(point.Y + 4, root.Position.Y + 1), point.Z) or point + Vector3.new(0, 4, 0)
        local hit = workspace:Raycast(origin, Vector3.new(0, -24, 0), params)
        if hit and hit.Normal.Y >= .6 then
            local stand = hit.Position + Vector3.new(0, height, 0)
            if not humanoidFloor(hit.Instance) and (canJump or math.abs(stand.Y - anchor.Position.Y) <= 1.5) and (stand - anchor.Position).Magnitude <= prompt.MaxActivationDistance and clearStandingSpace(stand) then goals[#goals + 1] = {Floor = hit.Position, Stand = stand} end
        end
    end
    table.sort(goals, function(a, b) return (root.Position - a.Stand).Magnitude < (root.Position - b.Stand).Magnitude end)
    local floorParams = RaycastParams.new()
    floorParams.FilterType = Enum.RaycastFilterType.Exclude
    floorParams.FilterDescendantsInstances = {root.Parent}
    floorParams.RespectCanCollide = true
    local function interactionReady()
        if not prompt.Parent or not prompt.Enabled or (root.Position - anchor.Position).Magnitude > prompt.MaxActivationDistance - .5 then return false end
        if not canJump and math.abs(root.Position.Y - anchor.Position.Y) > 1.5 then return false end
        local floor = workspace:Raycast(root.Position, Vector3.new(0, -height - 1.5, 0), floorParams)
        if not floor or floor.Normal.Y < .6 or humanoidFloor(floor.Instance) then return false end
        if prompt.RequiresLineOfSight then
            local head = root.Parent:FindFirstChild("Head")
            local origin = head and head.Position or root.Position
            if workspace:Raycast(origin, anchor.Position - origin, params) then return false end
        end
        return true
    end
    local function reached(goal)
        if site or not canJump then return interactionReady() end
        local delta = root.Position - goal.Stand
        if delta.X * delta.X + delta.Z * delta.Z > 4 or math.abs(delta.Y) > 1.5 then return false end
        local hit = workspace:Raycast(root.Position, Vector3.new(0, -height - 1.5, 0), floorParams)
        return hit ~= nil and hit.Normal.Y >= .6 and not humanoidFloor(hit.Instance)
    end
    if interactionReady() then
        local floor = workspace:Raycast(root.Position, Vector3.new(0, -height - 1.5, 0), floorParams)
        if floor and floor.Normal.Y >= .6 and not humanoidFloor(floor.Instance) then
            nativeSprint(false)
            farmMove(humanoid, root.Position)
            return true
        end
    end
    local function moveToward(destination, seconds, arrived)
        local lastPosition, lastMoved = root.Position, os.clock()
        local bestDistance, lastProgress = (root.Position - destination).Magnitude, os.clock()
        local stalled = false
        local result = waitFor(seconds, function()
            if arrived() then return true end
            local now = os.clock()
            local delta = root.Position - lastPosition
            local distance = (root.Position - destination).Magnitude
            if delta.X * delta.X + delta.Z * delta.Z >= .16 then lastPosition, lastMoved = root.Position, now end
            if distance < bestDistance - .3 then bestDistance, lastProgress = distance, now end
            if now - lastMoved >= .9 or now - lastProgress >= 1.5 then
                stalled = true
                return true
            end
            nativeSprint(true)
            farmMove(humanoid, destination)
            return false
        end)
        if stalled then farmMove(humanoid, root.Position) end
        return result and not stalled and arrived()
    end
    local function flat(vector)
        return Vector3.new(vector.X, 0, vector.Z)
    end
    local function corridorHit(from, destination)
        local direction = flat(destination - from)
        if direction.Magnitude < .1 then return nil end
        local side = Vector3.new(-direction.Z, 0, direction.X).Unit * .85
        for _, y in ipairs({-1, .5, 1.5}) do
            for _, offset in ipairs({Vector3.zero, side, -side}) do
                local hit = workspace:Raycast(from + offset + Vector3.new(0, y, 0), direction, params)
                if hit then return hit end
            end
        end
        return nil
    end
    local function groundPoint(point)
        local hit = workspace:Raycast(Vector3.new(point.X, root.Position.Y + 2, point.Z), Vector3.new(0, -height - 8, 0), params)
        if not hit or hit.Normal.Y < .6 then return nil end
        local stand = hit.Position + Vector3.new(0, height, 0)
        if math.abs(stand.Y - root.Position.Y) > 4 or not clearStandingSpace(stand) then return nil end
        local direction = flat(stand - root.Position)
        local steps = math.max(1, math.ceil(direction.Magnitude / 2))
        for i = 1, steps do
            local sample = root.Position + direction * (i / steps)
            local floor = workspace:Raycast(sample + Vector3.new(0, 2, 0), Vector3.new(0, -height - 6, 0), params)
            if not floor or floor.Normal.Y < .6 or math.abs(floor.Position.Y - hit.Position.Y) > 3 then return nil end
        end
        return {Floor = hit.Position, Stand = stand}
    end
    local function followPath(goal)
        if reached(goal) then return true end
        local path = game:GetService("PathfindingService"):CreatePath({AgentRadius = canJump and 1 or 1.5, AgentHeight = 5, AgentCanJump = canJump, WaypointSpacing = 4})
        path:ComputeAsync(root.Position, goal.Floor)
        if not active() then error("cancelled", 0) end
        if path.Status ~= Enum.PathStatus.Success then return false, corridorHit(root.Position, goal.Stand), goal.Stand end
        for waypointIndex, waypoint in ipairs(path:GetWaypoints()) do
            if reached(goal) then return true end
            if not prompt.Parent or not prompt.Enabled then return false end
            local startDelta = root.Position - waypoint.Position
            if waypointIndex == 1 and startDelta.X * startDelta.X + startDelta.Z * startDelta.Z < 4 then continue end
            local jumping = canJump and waypoint.Action == Enum.PathWaypointAction.Jump and (root.Position - anchor.Position).Magnitude > 6
            local stand = waypoint.Position + Vector3.new(0, height, 0)
            local obstacle = canJump and not jumping and corridorHit(root.Position, stand)
            if jumping then humanoid.Jump = true end
            if not moveToward(waypoint.Position, 5, function()
                local delta = root.Position - waypoint.Position
                return reached(goal) or (delta.X * delta.X + delta.Z * delta.Z < 4 and math.abs(delta.Y - height) < 1.5)
            end) then return false, obstacle or corridorHit(root.Position, stand), stand end
        end
        local arrived = reached(goal) or moveToward(goal.Stand, 3, function() return reached(goal) end)
        return arrived, not arrived and corridorHit(root.Position, goal.Stand), goal.Stand
    end
    local recoveryTrail, recoveries = {}, 0
    local routeStatus = farmState.Status
    local function recoveryStatus(phase)
        if farmState.Busy and not farmState.Round then
            farmState.Status = phase == "retreat" and "ติดขอบ — ถอยออกก่อน" or "เดินอ้อมกลับไปเป้าหมายเดิม"
            farmState.Navigation = {Phase = phase, Recoveries = recoveries}
        end
    end
    local function recover(goal, obstacle, blockedDestination)
        if reached(goal) then return true end
        recoveries += 1
        nativeSprint(false)
        humanoid.Jump = false
        farmMove(humanoid, root.Position)
        local desired = flat((blockedDestination or goal.Stand) - root.Position)
        if desired.Magnitude < .1 then desired = flat(goal.Stand - root.Position) end
        if desired.Magnitude < .1 then return false end
        desired = desired.Unit
        local away = obstacle and flat(obstacle.Normal) or -desired
        if away.Magnitude < .1 then away = -desired else away = away.Unit end
        local side = Vector3.new(-away.Z, 0, away.X)
        local retreats = {}
        for _, direction in ipairs({away, away + side * .6, away - side * .6, -desired}) do
            for _, distance in ipairs({3, 4.5}) do
                local point = groundPoint(root.Position + direction.Unit * distance)
                if point and not corridorHit(root.Position, point.Stand) then retreats[#retreats + 1] = point end
            end
        end
        table.sort(retreats, function(a, b) return (a.Stand - root.Position).Magnitude < (b.Stand - root.Position).Magnitude end)
        recoveryStatus("retreat")
        local retreated = false
        for i, point in ipairs(retreats) do
            if i > 2 then break end
            if moveToward(point.Stand, 1.4, function() return flat(root.Position - point.Stand).Magnitude <= .9 end) then retreated = true break end
        end
        if not retreated then return false end
        if reached(goal) then return true end
        local candidates = {}
        if obstacle and obstacle.Instance:IsA("BasePart") then
            local part = obstacle.Instance
            for _, x in ipairs({-part.Size.X / 2 - 2, part.Size.X / 2 + 2}) do
                for _, z in ipairs({-part.Size.Z / 2 - 2, part.Size.Z / 2 + 2}) do
                    candidates[#candidates + 1] = part.CFrame:PointToWorldSpace(Vector3.new(x, 0, z))
                end
            end
        end
        for _, sign in ipairs({-1, 1}) do
            for _, distance in ipairs({4, 7, 10}) do candidates[#candidates + 1] = root.Position + side * distance * sign end
        end
        local choices = {}
        for _, candidate in ipairs(candidates) do
            local distance = flat(candidate - root.Position).Magnitude
            if distance >= 2 and distance <= 24 then
                local point = groundPoint(candidate)
                if point and not corridorHit(root.Position, point.Stand) then
                    local score = distance + flat(point.Stand - goal.Stand).Magnitude
                    for _, old in ipairs(recoveryTrail) do if flat(point.Stand - old).Magnitude < 3 then score += 100 end end
                    choices[#choices + 1] = {Point = point, Score = score}
                end
            end
        end
        table.sort(choices, function(a, b) return a.Score < b.Score end)
        recoveryStatus("detour")
        for i, choice in ipairs(choices) do
            if i > 2 then break end
            recoveryTrail[#recoveryTrail + 1] = choice.Point.Stand
            if moveToward(choice.Point.Stand, 3, function() return flat(root.Position - choice.Point.Stand).Magnitude <= 1 end) then return true end
        end
        return false
    end
    for attempt, goal in ipairs(goals) do
        if site and attempt > 2 then break end
        if not active() then error("cancelled", 0) end
        if canJump and flat(root.Position - goal.Stand).Magnitude <= 12 and not corridorHit(root.Position, goal.Stand) then
            moveToward(goal.Stand, 3, function() return reached(goal) end)
        end
        local below = workspace:Raycast(root.Position, Vector3.new(0, -height - 1.5, 0), floorParams)
        if bodyModel and below and below.Instance:IsDescendantOf(bodyModel) and (root.Position - goal.Stand).Magnitude <= 10 then
            waitFor(4, function() farmMove(humanoid, goal.Stand) return reached(goal) end)
        end
        for routeAttempt = 1, canJump and 3 or 1 do
            if reached(goal) then break end
            local arrived, obstacle, destination = followPath(goal)
            if arrived then break end
            if not canJump or routeAttempt == 3 or recoveries >= 3 or not recover(goal, obstacle, destination) then break end
            if farmState.Busy and not farmState.Round then
                farmState.Status = routeStatus
                farmState.Navigation = {Phase = "route", Recoveries = recoveries}
            end
        end
        if reached(goal) then
            nativeSprint(false)
            humanoid.Jump = false
            farmMove(humanoid, root.Position)
            if farmState.Busy then farmState.Navigation = {Phase = "arrived", Recoveries = recoveries} end
            return true
        end
    end
    nativeSprint(false)
    farmMove(humanoid, root.Position)
    return false
end
local function exitSpawnRoom(humanoid, root, active, waitFor)
    local teleports = workspace:FindFirstChild("จุด Tp")
    local school = teleports and teleports:FindFirstChild("โรงเรียน")
    local inside = school and school:FindFirstChild("TP,Patum01")
    local outside = school and school:FindFirstChild("TP,Patum02")
    if not inside or (root.Position - inside.Position).Magnitude > 60 then return true end
    local insidePosition = inside.Position
    local prompt = inside:FindFirstChildWhichIsA("ProximityPrompt")
    if not prompt or not prompt.Enabled then return false end
    farmState.Status = "เดินไปประตูออกจากห้อง"
    if not walkSeller(prompt, humanoid, root, active, waitFor) and (root.Position - insidePosition).Magnitude > prompt.MaxActivationDistance + 2 then return false end
    nativeSprint(false)
    if not waitFor(2, function()
        if (root.Position - insidePosition).Magnitude <= prompt.MaxActivationDistance - .4 then return true end
        farmMove(humanoid, insidePosition)
        return false
    end) then return false end
    farmMove(humanoid, root.Position)
    if not active() or (root.Position - inside.Position).Magnitude > prompt.MaxActivationDistance then return false end
    farmState.Status = "ใช้ประตูออกจากห้อง"
    fireproximityprompt(prompt)
    local exited = waitFor(6, function()
        if outside and outside.Parent then return (root.Position - outside.Position).Magnitude <= 15 end
        return (root.Position - insidePosition).Magnitude > 60
    end)
    if exited then farmMove(humanoid, root.Position) waitFor(.3) end
    return exited
end
local function scheduleFarmRecovery(reason, round, character, retryDelay)
    local now = os.clock()
    farmState.RecoveryFailures = math.min((farmState.RecoveryFailures or 0) + 1, 4)
    local delay = retryDelay or math.min(10 * 2 ^ (farmState.RecoveryFailures - 1), 60)
    local limit = round and round.Options and tonumber(round.Options.timeLimit) or 90
    if not limit or limit ~= limit or limit <= 0 or limit == math.huge then limit = 90 end
    farmState.Recovery = {Reason = tostring(reason):sub(1, 180), Round = round, Character = character,
        RetryAt = now + delay, ExpiresAt = round and (round.At + limit + 3) or now + delay,
        Started = now}
    farmState.Status = "พักฟาร์ม — " .. farmState.Recovery.Reason .. " | จะตรวจและทำต่ออัตโนมัติ"
    recordWork("recovery_scheduled", round, {Delay = delay, Reason = farmState.Recovery.Reason})
end
local function farmRecoveryReady()
    local recovery = farmState.Recovery
    if not recovery then return true end
    if not config.AutoFarm then farmState.Recovery = nil return false end
    local now = os.clock()
    local character = player.Character
    local humanoid = character and character:FindFirstChildOfClass("Humanoid")
    if not humanoid or humanoid.Health <= 0 or not character:FindFirstChild("HumanoidRootPart") then
        farmState.Status = "พักฟาร์ม — รอเกิดใหม่แล้วทำต่ออัตโนมัติ"
        return false
    end
    if not networkClient:FindFirstChildOfClass("ClientReplicator") then
        farmState.Status = "พักฟาร์ม — การเชื่อมต่อเซิร์ฟเวอร์ยังไม่พร้อม"
        return false
    end
    local round, done = recovery.Round, farmState.LastNativeDone
    local acknowledged = round and (round.NativeDone or (done and done.At >= round.At
        and done.Kind == round.Kind and (done.Id == nil or done.Id == round.Id)))
    local released = character ~= recovery.Character or not round or acknowledged or now >= recovery.ExpiresAt
    if now < recovery.RetryAt or not released or humanoid.WalkSpeed <= 0 then
        farmState.Status = humanoid.WalkSpeed <= 0 and "พักฟาร์ม — รอเกมคืนการเดิน" or not released and "พักฟาร์ม — รอจบรอบเดิม" or ("ลองใหม่ใน " .. math.max(0, math.ceil(recovery.RetryAt - now)) .. " วิ | " .. recovery.Reason)
        return false
    end
    farmState.Recovery = nil
    recordWork("recovery_ready", round, {Acknowledged = acknowledged == true})
    farmState.Status = "ฟื้นฟาร์ม — กำลังหาจุดงานใหม่"
    return true
end
do
    local mechanic = RS.Job:FindFirstChild("mechanic")
    local state = extraJobs.Mechanic
    if mechanic then
        connect(mechanic.OpenJobGUI.OnClientEvent, function(hired, earnings)
            state.Known, state.Hired, state.Earnings = true, hired == true, tonumber(earnings) or 0
        end)
        connect(mechanic.UpdateEarnings.OnClientEvent, function(earnings)
            if type(earnings) == "number" then state.Earnings = earnings end
        end)
        connect(mechanic.LoadBar.OnClientEvent, function(show, duration)
            if show and type(duration) == "number" and duration > 0 and duration < 180 then
                state.LoadUntil = os.clock() + duration
                recordWork("mechanic_loading", nil, {Duration = duration})
            end
        end)
        connect(player.CharacterAdded, function() state.Known, state.Hired, state.LoadUntil = false, false, nil end)
    end
    local function holdPrompt(prompt, humanoid, root, waitFor)
        assert(prompt and prompt.Parent and prompt.Enabled, "จุดงานยังไม่พร้อม")
        nativeSprint(false)
        if (root.Position - prompt.Parent.Position).Magnitude > prompt.MaxActivationDistance - 1 then
            waitFor(2, function()
                if (root.Position - prompt.Parent.Position).Magnitude <= prompt.MaxActivationDistance - 1 then return true end
                farmMove(humanoid, prompt.Parent.Position)
                return false
            end)
        end
        farmMove(humanoid, root.Position)
        waitFor(.35)
        local triggered = false
        local signal = prompt.Triggered:Connect(function(who)
            if who == nil or who == player then triggered = true end
        end)
        local ok, err = pcall(function()
            assert((root.Position - prompt.Parent.Position).Magnitude <= prompt.MaxActivationDistance - .2, "ยังไม่เข้าระยะจุดงาน")
            prompt:InputHoldBegin()
            assert(waitFor(prompt.HoldDuration + 1.5, function()
                if triggered or farmState.Round then return true end
                assert(prompt.Parent and prompt.Enabled, "จุดงานเปลี่ยนระหว่างกด")
                assert((root.Position - prompt.Parent.Position).Magnitude <= prompt.MaxActivationDistance - .2, "ออกนอกระยะจุดงาน")
                return false
            end), "ยังไม่ยืนยันการกดจุดงาน")
        end)
        pcall(function() prompt:InputHoldEnd() end)
        signal:Disconnect()
        if not ok then error(err, 0) end
    end
    local function closeNative(guiName, path)
        local gui = player.PlayerGui:FindFirstChild(guiName)
        local owner = gui and gui:FindFirstChildWhichIsA("LocalScript")
        local button = gui
        for _, name in ipairs(path) do button = button and button:FindFirstChild(name) end
        if owner and button then
            for _, connection in ipairs(getconnections(button.MouseButton1Click)) do
                if type(connection.Function) == "function" and getfenv(connection.Function).script == owner then
                    pcall(connection.Function)
                    break
                end
            end
        end
    end
    extraJobs.WalkMechanic = function(prompt, humanoid, root, active, waitFor)
        humanoid.Jump = false
        if not waitFor(3, function() return humanoid.FloorMaterial ~= Enum.Material.Air and math.abs(root.AssemblyLinearVelocity.Y) < 1 end) then return false end
        local anchor = prompt and prompt.Parent
        if not anchor or not anchor:IsA("BasePart") or not prompt.Enabled then return false end
        local area = workspace.Job:FindFirstChild("ซ่อมรถ")
        local vehicles = area and area:FindFirstChild("งาน")
        local bounds
        if vehicles then
            for _, car in ipairs(vehicles:GetChildren()) do
                if car:IsA("Model") and car.Name == "Car" then
                    local cf, size = car:GetBoundingBox()
                    for _, x in ipairs({-size.X / 2, size.X / 2}) do
                        for _, z in ipairs({-size.Z / 2, size.Z / 2}) do
                            local v = cf:PointToWorldSpace(Vector3.new(x, 0, z))
                            if not bounds then bounds = {MinX = v.X, MaxX = v.X, MinZ = v.Z, MaxZ = v.Z} end
                            bounds.MinX, bounds.MaxX = math.min(bounds.MinX, v.X), math.max(bounds.MaxX, v.X)
                            bounds.MinZ, bounds.MaxZ = math.min(bounds.MinZ, v.Z), math.max(bounds.MaxZ, v.Z)
                        end
                    end
                end
            end
        end
        if not bounds then return walkSeller(prompt, humanoid, root, active, waitFor) end
        local function inside(v, margin)
            margin = margin or .9
            return v.X > bounds.MinX - margin and v.X < bounds.MaxX + margin and v.Z > bounds.MinZ - margin and v.Z < bounds.MaxZ + margin
        end
        if inside(root.Position, -.25) then
            farmState.Status = "ตัวละครอยู่ในแนวตัวถังรถ — ต้องออกด้านนอกก่อนเดินต่อ"
            return false
        end
        local ignored = {root.Parent}
        local npc = anchor:FindFirstAncestorOfClass("Model")
        if npc and npc:FindFirstChildOfClass("Humanoid") then ignored[#ignored + 1] = npc else ignored[#ignored + 1] = anchor end
        for _, other in ipairs(Players:GetPlayers()) do if other.Character then ignored[#ignored + 1] = other.Character end end
        local params = RaycastParams.new()
        params.FilterType, params.RespectCanCollide = Enum.RaycastFilterType.Exclude, true
        params.FilterDescendantsInstances = ignored
        local height = humanoid.HipHeight + root.Size.Y / 2 + (humanoid.RigType == Enum.HumanoidRigType.R6 and 2 or 0)
        local function ground(v)
            if inside(v) then return nil end
            local hit = workspace:Raycast(Vector3.new(v.X, root.Position.Y + 2, v.Z), Vector3.new(0, -height - 7, 0), params)
            if not hit or hit.Normal.Y < .65 then return nil end
            local point = hit.Position + Vector3.new(0, height, 0)
            if point.Y - root.Position.Y > 1.75 or root.Position.Y - point.Y > 6 then return nil end
            return point
        end
        local function clear(a, b)
            local delta = Vector3.new(b.X - a.X, 0, b.Z - a.Z)
            local distance = delta.Magnitude
            if distance < .1 then return true end
            local side = Vector3.new(-delta.Z, 0, delta.X).Unit * .95
            local samples = math.max(1, math.ceil(distance / 2))
            for i = 0, samples do
                local v = a:Lerp(b, i / samples)
                if i > 0 and (inside(v) or not ground(v)) then return false end
            end
            for _, y in ipairs({-1, .4, 1.3}) do
                for _, offset in ipairs({Vector3.zero, side, -side}) do
                    if workspace:Raycast(a + offset + Vector3.new(0, y, 0), b - a, params) then return false end
                end
            end
            return true
        end
        local function inRange()
            return not inside(root.Position, -.25) and (root.Position - anchor.Position).Magnitude <= prompt.MaxActivationDistance - .2
        end
        if inRange() then farmMove(humanoid, root.Position) return true end
        if (root.Position - anchor.Position).Magnitude > 100 then
            local entries = {
                Vector3.new(bounds.MinX - 16, root.Position.Y, math.clamp(root.Position.Z, bounds.MinZ - 8, bounds.MaxZ + 8)),
                Vector3.new(bounds.MaxX + 20, root.Position.Y, math.clamp(root.Position.Z, bounds.MinZ - 8, bounds.MaxZ + 8)),
                Vector3.new(math.clamp(root.Position.X, bounds.MinX - 12, bounds.MaxX + 20), root.Position.Y, bounds.MinZ - 20),
                Vector3.new(math.clamp(root.Position.X, bounds.MinX - 12, bounds.MaxX + 20), root.Position.Y, bounds.MaxZ + 20)
            }
            table.sort(entries, function(a, b) return (a - root.Position).Magnitude < (b - root.Position).Magnitude end)
            local entry, path
            for _, candidate in ipairs(entries) do
                local point = ground(candidate)
                if point then
                    local route = game:GetService("PathfindingService"):CreatePath({AgentRadius = 1.5, AgentHeight = 5, AgentCanJump = true, WaypointSpacing = 5})
                    route:ComputeAsync(root.Position, point - Vector3.new(0, height, 0))
                    assert(active(), "cancelled")
                    if route.Status == Enum.PathStatus.Success then entry, path = point, route break end
                end
            end
            farmState.Navigation = {Phase = "mechanic_approach", Entry = entry and tostring(entry), Path = path and tostring(path.Status) or "NoPath"}
            if not path then return false end
            local deadline = os.clock() + math.clamp((root.Position - entry).Magnitude / 8 + 30, 60, 240)
            for _, point in ipairs(path:GetWaypoints()) do
                assert(active(), "cancelled")
                if os.clock() >= deadline then return false end
                farmState.Navigation.Waypoint = tostring(point.Position)
                if point.Action == Enum.PathWaypointAction.Jump then humanoid.Jump = true end
                if not waitFor(5, function()
                    if (Vector3.new(root.Position.X, 0, root.Position.Z) - Vector3.new(point.Position.X, 0, point.Position.Z)).Magnitude < 2 then return true end
                    nativeSprint(true)
                    farmMove(humanoid, point.Position)
                    return false
                end) then farmState.Navigation.Phase = "mechanic_approach_stuck" return false end
            end
        end
        local nodes = {{Point = root.Position}}
        local function add(point, goal)
            point = ground(point)
            if not point then return end
            if goal and (point - anchor.Position).Magnitude > prompt.MaxActivationDistance - .2 then return end
            nodes[#nodes + 1] = {Point = point, Goal = goal}
        end
        local radius = prompt.MaxActivationDistance - .4
        for _, v in ipairs({Vector3.new(radius, 0, 0), Vector3.new(-radius, 0, 0), Vector3.new(0, 0, radius), Vector3.new(0, 0, -radius)}) do add(anchor.CFrame:PointToWorldSpace(v), true) end
        for _, x in ipairs({bounds.MinX - 2.5, bounds.MaxX + 2.5}) do
            for _, z in ipairs({bounds.MinZ - 2.5, bounds.MaxZ + 2.5}) do add(Vector3.new(x, root.Position.Y, z), false) end
        end
        for _, x in ipairs({bounds.MinX - 3, bounds.MaxX + 3}) do
            for z = bounds.MinZ - 12, bounds.MaxZ + 12, 5 do add(Vector3.new(x, root.Position.Y, z), false) end
        end
        for _, z in ipairs({bounds.MinZ - 8, bounds.MaxZ + 8}) do
            for x = bounds.MinX - 10, bounds.MaxX + 10, 5 do add(Vector3.new(x, root.Position.Y, z), false) end
        end
        for _, distance in ipairs({4, 8, 12}) do
            for _, direction in ipairs({Vector3.new(1, 0, 0), Vector3.new(-1, 0, 0), Vector3.new(0, 0, 1), Vector3.new(0, 0, -1), Vector3.new(1, 0, 1), Vector3.new(-1, 0, 1), Vector3.new(1, 0, -1), Vector3.new(-1, 0, -1)}) do
                add(anchor.Position + direction * distance, false)
            end
        end
        for _, distance in ipairs({4, 8, 12}) do
            for _, direction in ipairs({Vector3.new(1, 0, 0), Vector3.new(-1, 0, 0), Vector3.new(0, 0, 1), Vector3.new(0, 0, -1), Vector3.new(1, 0, 1), Vector3.new(-1, 0, 1), Vector3.new(1, 0, -1), Vector3.new(-1, 0, -1)}) do
                add(root.Position + direction * distance, false)
            end
        end
        local costs, previous, seen, edges = {[1] = 0}, {}, {}, {}
        local target
        for _ = 1, #nodes do
            assert(active(), "cancelled")
            local current
            for i in ipairs(nodes) do if not seen[i] and costs[i] and (not current or costs[i] < costs[current]) then current = i end end
            if not current then break end
            if nodes[current].Goal then target = current break end
            seen[current], edges[current] = true, edges[current] or {}
            for i, node in ipairs(nodes) do
                if not seen[i] then
                    local valid = edges[i] and edges[i][current]
                    if valid == nil then valid = clear(nodes[current].Point, node.Point) end
                    edges[current][i] = valid
                    local cost = costs[current] + (nodes[current].Point - node.Point).Magnitude
                    if valid and (not costs[i] or cost < costs[i]) then costs[i], previous[i] = cost, current end
                end
            end
            task.wait()
        end
        farmState.Navigation = {Phase = target and "mechanic_route" or "mechanic_no_route", Nodes = #nodes, Bounds = bounds, Goals = {}}
        for _, node in ipairs(nodes) do if node.Goal then table.insert(farmState.Navigation.Goals, tostring(node.Point)) end end
        if not target then return false end
        local route = {}
        while target ~= 1 do table.insert(route, 1, nodes[target].Point) target = previous[target] end
        farmState.Status = "เดินอ้อมตัวถังรถไปจุดงาน"
        for _, point in ipairs(route) do
            local best, progressed = math.huge, os.clock()
            if not waitFor(12, function()
                assert(prompt.Parent and prompt.Enabled, "จุดงานรถเปลี่ยน")
                local distance = (Vector3.new(root.Position.X, 0, root.Position.Z) - Vector3.new(point.X, 0, point.Z)).Magnitude
                if distance < 1 then return true end
                if inside(root.Position, -.25) then return false end
                if distance < best - .2 then best, progressed = distance, os.clock() end
                assert(os.clock() - progressed < 2, "ทางอ้อมรถติดสิ่งกีดขวาง")
                nativeSprint(true)
                farmMove(humanoid, point)
                return false
            end) then return false end
        end
        nativeSprint(false)
        if not inRange() and (root.Position - anchor.Position).Magnitude < prompt.MaxActivationDistance + 1.5 then
            waitFor(2, function()
                if inRange() then return true end
                farmMove(humanoid, anchor.Position)
                return false
            end)
        end
        farmMove(humanoid, root.Position)
        return inRange()
    end
    extraJobs.RunMechanic = function(humanoid, root, active, waitFor, cash)
        assert(mechanic, "เกมรุ่นนี้ไม่มีระบบงานรถ")
        local folder = workspace.Job:FindFirstChild("ซ่อมรถ")
        assert(folder, "พื้นที่ซ่อมรถยังไม่โหลด")
        assert(exitSpawnRoom(humanoid, root, active, waitFor), "ยังออกจากห้องไม่ได้")
        local foreman, site
        local sites = {}
        state.SiteRetry = state.SiteRetry or setmetatable({}, {__mode = "k"})
        for _, prompt in ipairs(folder:GetDescendants()) do
            if prompt:IsA("ProximityPrompt") and prompt.Parent:IsA("BasePart") then
                if prompt.ActionText == "Car repair work" then foreman = prompt
                elseif prompt.Enabled and prompt.Parent.Parent.Name == "EngineSite" then
                    if not state.SiteRetry[prompt] or os.clock() >= state.SiteRetry[prompt] then sites[#sites + 1] = prompt end
                end
            end
        end
        assert(foreman, "ยังไม่พบผู้รับงานรถ")
        local function visit()
            farmState.Status = "เดินไปผู้รับงานรถ"
            if (root.Position - foreman.Parent.Position).Magnitude > 128 then
                pcall(function() player:RequestStreamAroundAsync(foreman.Parent.Position, 2) end)
                assert(active(), "cancelled")
            end
            assert(extraJobs.WalkMechanic(foreman, humanoid, root, active, waitFor), "ยังเดินถึงผู้รับงานรถไม่ได้")
            state.Known = false
            local held, holdError = pcall(holdPrompt, foreman, humanoid, root, waitFor)
            if not held then
                assert(active(), "cancelled")
                assert((root.Position - foreman.Parent.Position).Magnitude <= foreman.MaxActivationDistance - .2, tostring(holdError))
                local fired = pcall(fireproximityprompt, foreman)
                assert(fired, tostring(holdError))
            end
            assert(waitFor(6, function() return state.Known end), "ยังไม่ยืนยันสถานะงานรถ")
        end
        if not state.Hired then
            visit()
            if not state.Hired then
                local hired, earnings = mechanic.Hire:InvokeServer()
                assert(hired == true, "รับงานรถไม่สำเร็จ อาจมีงานอื่นค้างอยู่")
                state.Hired, state.Earnings = true, tonumber(earnings) or 0
            end
            closeNative("mechanicUI", {"MainFrame", "Header", "CloseBtn"})
            waitFor(.35)
        end
        local function collect()
            visit()
            local before = cash.Value
            local collected, amount = mechanic.Collect:InvokeServer()
            assert(collected == true and tonumber(amount) and amount > 0, "ยังรับเงินงานรถไม่ได้")
            assert(waitFor(5, function() return cash.Value > before end), "เงินงานรถยังไม่เข้า")
            state.Earnings = 0
            closeNative("mechanicUI", {"MainFrame", "Header", "CloseBtn"})
            waitFor(.35)
            return cash.Value - before
        end
        if config.MechanicCollect and state.Earnings >= config.MechanicCollectAt then return collect() end
        table.sort(sites, function(a, b) return (root.Position - a.Parent.Position).Magnitude < (root.Position - b.Parent.Position).Magnitude end)
        for i = 1, math.min(3, #sites) do
            farmState.Status = "เดินไปซ่อมเครื่องยนต์"
            local candidate = sites[i]
            if extraJobs.WalkMechanic(candidate, humanoid, root, active, waitFor) then site = candidate break end
            state.SiteRetry[candidate] = os.clock() + 45
        end
        assert(site, "ยังไม่มีจุดซ่อมเครื่องยนต์ที่เดินถึง — รอแล้วหาใหม่")
        local earningsBefore = state.Earnings
        state.LoadUntil = nil
        farmState.Kind, farmState.Round, farmState.Pending = "EngineSite", nil, true
        holdPrompt(site, humanoid, root, waitFor)
        local started = os.clock()
        assert(waitFor(185, function()
            if farmState.Round then return true end
            local deadline = math.max(started + 10, (state.LoadUntil or started) + 6)
            assert(os.clock() < deadline, "งานรถยังไม่ส่งรอบงาน")
            farmState.Status = "รอเกมเตรียมงานซ่อมเครื่องยนต์"
            return false
        end), "งานรถยังไม่ส่งรอบงาน")
        local round = farmState.Round
        assert(round.Kind == "EngineSite", "ได้รับรอบงานรถไม่ตรงชนิด")
        pauseWorkInputs(round)
        farmState.Status = "กำลังซ่อมเครื่องยนต์"
        waitFor(5.3, function()
            if round.Key ~= nil then RS.Job.Construction.MiniGameInput:FireServer(round.Key) end
            return false
        end)
        if not round.NativeDone then RS.Job.Construction.MiniGameDone:FireServer(round.Kind, round.Id) end
        farmState.Round, farmState.Pending = nil, false
        assert(waitFor(6, function() return state.Earnings > earningsBefore end), "ยังไม่ยืนยันค่าจ้างซ่อมรถ")
        resumeWorkInputs(round)
        clearWorkUI()
        if config.MechanicCollect and state.Earnings >= config.MechanicCollectAt then return collect() end
        farmState.Status = "สะสมค่าจ้างซ่อมรถ " .. state.Earnings .. "/" .. config.MechanicCollectAt
        return 0
    end

end

local function farmCycle()
    if farmState.Recovery then return end
    local saleUI = player.PlayerGui:FindFirstChild("SaleUI")
    if farmState.Busy or (saleUI and saleUI.Enabled) then return end
    local c = player.Character
    local h, r = c and c:FindFirstChildOfClass("Humanoid"), c and c:FindFirstChild("HumanoidRootPart")
    if not h or h.Health <= 0 or not r then farmState.Status = "รอเกิดใหม่" return end
    local mode = config.FarmMode
        local epoch = farmState.Epoch
    local function enabled() return config.AutoFarm end
    local retryStart, attemptedPrompt, failureRound = false, nil, nil
    local function active() return not stopped and enabled() and farmState.Epoch == epoch and player.Character == c and h.Health > 0 and r.Parent end
    farmState.Busy = true
    farmState.Cancelling = false
    farmState.Kind = mode == "กวาดพื้น" and "SweepSite" or mode == "งานก่อสร้าง" and "ConstructionPending" or "TrashDigSite"
    local cash = player.leaderstats.Cash
    local beforeCash = cash.Value
    local function waitFor(seconds, predicate)
        local deadline = os.clock() + seconds
        repeat
            if not active() then error("cancelled", 0) end
            if predicate and predicate() then return true end
            task.wait(.1)
        until os.clock() >= deadline
        if predicate then return predicate() end
        return true
    end
    local function walk(prompt)
        if prompt.ActionText == "selling" or mode == "งานก่อสร้าง" then return walkSeller(prompt, h, r, active, waitFor) end
        if not active() or not prompt.Parent then error("cancelled", 0) end
        if not trashAvailable(prompt) then return false end
        if (r.Position - prompt.Parent.Position).Magnitude <= 4 then return true end
        local path = game:GetService("PathfindingService"):CreatePath({AgentRadius = 1.5, AgentHeight = 5, AgentCanJump = true, WaypointSpacing = 6})
        local offsets = prompt.ActionText == "selling" and {4, -4, 7, -7} or {0, 2, -2}
        for _, offset in ipairs(offsets) do
            path:ComputeAsync(r.Position, (prompt.Parent.CFrame * CFrame.new(0, 0, offset)).Position)
            if not active() then error("cancelled", 0) end
            if path.Status == Enum.PathStatus.Success then break end
        end
        if path.Status ~= Enum.PathStatus.Success then return false end
        local deadline = os.clock() + 120
        for _, point in ipairs(path:GetWaypoints()) do
            if not trashAvailable(prompt) then return false end
            if (r.Position - prompt.Parent.Position).Magnitude <= 4.5 then return true end
            if os.clock() > deadline then return false end
            if point.Action == Enum.PathWaypointAction.Jump then h.Jump = true end
            nativeSprint(true)
            farmMove(h, point.Position)
            if not waitFor(5, function() nativeSprint(true) farmMove(h, point.Position) return not trashAvailable(prompt) or (r.Position - point.Position).Magnitude < 3.5 or (r.Position - prompt.Parent.Position).Magnitude <= 4.5 end) or not trashAvailable(prompt) then return false end
        end
        return trashAvailable(prompt) and (r.Position - prompt.Parent.Position).Magnitude <= 5
    end
    local function inventory()
        local result = {}
        for _, parent in ipairs({player.Backpack, c}) do
            for _, item in ipairs(parent:GetChildren()) do
                if item:IsA("Tool") then result[item.Name] = (result[item.Name] or 0) + (tonumber(item:GetAttribute("ItemAmount")) or 1) end
            end
        end
        return result
    end
    local ok, err = pcall(function()
        if mode == "งานซ่อมรถ" then
            farmState.Earned += extraJobs.RunMechanic(h, r, active, waitFor, cash)
            farmState.Rounds += 1
            return
        end
        if h.WalkSpeed <= 0 then
            for _, name in ipairs({"Shopsell", "GunShopGui"}) do
                local gui = player.PlayerGui:FindFirstChild(name)
                local close = gui and gui.Enabled and gui:FindFirstChild("Close", true)
                if close then for _, connection in ipairs(getconnections(close.MouseButton1Click)) do if type(connection.Function) == "function" then pcall(connection.Function) end end end
            end
            if not waitFor(12, function() return h.WalkSpeed > 0 end) then error("ตัวละครยังติดงานหรือหน้าต่างร้าน", 0) end
        end
        assert(exitSpawnRoom(h, r, active, waitFor), "ยังออกจากห้องไม่ได้")
        local folder = workspace.Job:FindFirstChild(mode == "งานก่อสร้าง" and "งานก่อสร้าง" or mode == "กวาดพื้น" and "ทำความสะอาด" or "ขยะ")
        assert(folder, "ยังไม่พบจุดงาน")
        local function visitForeman()
            local nearest, distance = nil, math.huge
            for _, prompt in ipairs(folder:GetDescendants()) do
                if prompt:IsA("ProximityPrompt") and prompt.ActionText == "Construction work" and prompt.Parent:IsA("BasePart") then
                    local d = (r.Position - prompt.Parent.Position).Magnitude
                    if d < distance then nearest, distance = prompt, d end
                end
            end
            assert(nearest, "ยังไม่พบคนรับงานก่อสร้าง")
            farmState.Status = "เดินไปคนรับงานก่อสร้าง"
            if not walkSeller(nearest, h, r, active, waitFor) then
                farmState.Status = "ทางไปคนรับงานติด — รอแล้วหาเส้นใหม่"
                return false
            end
            constructionState.Known = false
            fireproximityprompt(nearest)
            assert(waitFor(4, function() return constructionState.Known end), "ยังไม่ยืนยันสถานะงานก่อสร้าง")
            return true
        end
        if mode == "งานก่อสร้าง" and not constructionState.Hired then
            if not visitForeman() then waitFor(2) return end
            if not constructionState.Hired then
                farmState.Status = "รับงานก่อสร้าง"
                local hired, earnings = RS.Job.Construction.Hire:InvokeServer()
                assert(hired == true, "ยังรับงานก่อสร้างไม่ได้")
                constructionState.Hired = true
                constructionState.Earnings = tonumber(earnings) or 0
            end
            closeConstructionUI()
            waitFor(.35)
        end
        local beforeEarnings = constructionState.Earnings
        local candidates = {}
        local jobObjects = folder:GetDescendants()
        local trashCenter, nearestTrash = nil, math.huge
        if mode == "คุ้ยขยะ" then
            for _, prompt in ipairs(jobObjects) do
                if prompt:IsA("ProximityPrompt") and prompt.ActionText == "Dirty" and trashAvailable(prompt) and (not trashRetryAfter[prompt] or os.clock() >= trashRetryAfter[prompt]) then
                    local distance = (r.Position - prompt.Parent.Position).Magnitude
                    if distance < nearestTrash then nearestTrash, trashCenter = distance, prompt.Parent.Position end
                end
            end
        end
        for _, prompt in ipairs(jobObjects) do
            if prompt:IsA("ProximityPrompt") and trashAvailable(prompt) and (not trashRetryAfter[prompt] or os.clock() >= trashRetryAfter[prompt]) then
                local kind = prompt.Parent.Parent.Name
                local selected = constructionKinds[kind] and config.ConstructionTask == constructionKinds[kind]
                if (mode == "งานก่อสร้าง" and selected) or (mode == "กวาดพื้น") or (mode == "คุ้ยขยะ" and prompt.ActionText == "Dirty" and trashCenter and (prompt.Parent.Position - trashCenter).Magnitude <= 100) then candidates[#candidates + 1] = prompt end
            end
        end
        table.sort(candidates, function(a, b) return (r.Position - a.Parent.Position).Magnitude < (r.Position - b.Parent.Position).Magnitude end)
        local destination
        for i = 1, math.min(8, #candidates) do
            farmState.Status = "เดินไปจุด" .. mode
            local prompt = candidates[i]
            if walk(prompt) and trashAvailable(prompt) then destination = prompt break end
            if mode == "งานก่อสร้าง" or mode == "คุ้ยขยะ" then
                trashRetryAfter[prompt] = os.clock() + 12
                farmState.Status = mode == "คุ้ยขยะ" and "ทางไปกองนี้ติด — ลองกองใกล้กัน" or "ทางไปจุดนี้ติด — เปลี่ยนจุดก่อสร้าง"
            end
        end
        if not destination and (mode == "คุ้ยขยะ" or mode == "งานก่อสร้าง") then
            farmState.Status = mode == "งานก่อสร้าง" and "รอจุดก่อสร้างที่ว่างและเดินถึงได้" or (#candidates > 0 and "ทางไปกลุ่มนี้ติด — เลือกกลุ่มที่พร้อมถัดไป" or "ยังไม่มีกองพร้อมทำ — ตรวจกลุ่มอื่นต่อ")
            nativeSprint(false)
            waitFor(1)
            return
        end
        assert(destination, "ไม่มีจุดงานที่เดินถึงได้")
        farmState.Round = nil
        if mode == "งานก่อสร้าง" then farmState.Kind = destination.Parent.Parent.Name end
        local before = inventory()
        farmState.Pending = true
        nativeSprint(false)
        if not trashAvailable(destination) then
            farmState.Pending = false
            farmState.Status = "กองขยะมีคนแล้ว — หาจุดใหม่"
            return
        end
        attemptedPrompt = destination
        recordWork("start_requested", nil, {Prompt = destination:GetFullName(), Hold = destination.HoldDuration,
            Distance = (r.Position - destination.Parent.Position).Magnitude})
        if mode == "งานก่อสร้าง" or mode == "คุ้ยขยะ" then
            local triggered = false
            local listener = destination.Triggered:Connect(function(who)
                if who == nil or who == player then triggered = true end
            end)
            local held, holdError = pcall(function()
                assert(destination.Parent and destination.Enabled, "จุดงานไม่พร้อม")
                assert((r.Position - destination.Parent.Position).Magnitude <= destination.MaxActivationDistance - .2, "ยังไม่เข้าระยะเริ่มงาน")
                farmMove(h, r.Position)
                waitFor(.35)
                farmState.Status = mode == "คุ้ยขยะ" and "กดค้างเริ่มคุ้ยขยะ" or "กดค้างเริ่มงานก่อสร้าง"
                destination:InputHoldBegin()
                local didTrigger = waitFor(destination.HoldDuration + 1, function()
                    if triggered or farmState.Round then return true end
                    assert(destination.Parent and destination.Enabled, "จุดงานเปลี่ยนระหว่างกดค้าง")
                    assert((r.Position - destination.Parent.Position).Magnitude <= destination.MaxActivationDistance - .2, "ออกนอกระยะระหว่างกดค้าง")
                    return false
                end)
                assert(didTrigger, "ปุ่มเริ่มงานยังไม่ยืนยัน")
            end)
            pcall(function() destination:InputHoldEnd() end)
            listener:Disconnect()
            if not held then
                farmState.Pending = triggered or farmState.Round ~= nil
                retryStart = true
                error(holdError, 0)
            end
        else
            fireproximityprompt(destination)
        end
        farmState.Status = "กำลัง" .. mode
        if not waitFor(18, function() return farmState.Round ~= nil end) then
            retryStart = mode == "คุ้ยขยะ" or mode == "งานก่อสร้าง"
            recordWork("start_timeout")
            local gui = player.PlayerGui:FindFirstChild("MiniGameUI")
            if h.WalkSpeed > 0 and (not gui or not gui.Enabled) then farmState.Pending = false end
            error("งานยังไม่เริ่ม", 0)
        end
        local round = farmState.Round
        failureRound = round
        pauseWorkInputs(round)
        if round.Kind == "NailSite" then
            farmState.Status = "กำลังตอกตะปู"
            assert(completeNailRound(round, active), "มินิเกมตะปูยังไม่จบ")
        elseif constructionKinds[round.Kind] then
            assert(round.Key ~= nil, "งานไม่ส่งรหัสยืนยัน")
            farmState.Status = "กำลัง" .. constructionKinds[round.Kind]
            local deadline = os.clock() + constructionTime[round.Kind]
            repeat
                if not active() then error("cancelled", 0) end
                RS.Job.Construction.MiniGameInput:FireServer(round.Key)
                task.wait(round.Kind == "NailSite" and .3 or .05)
            until os.clock() >= deadline
        elseif round.Kind == "SweepSite" then
            assert(round.Key ~= nil, "งานไม่ส่งรหัสยืนยัน")
            local deadline = os.clock() + 1.3
            while os.clock() < deadline do
                if not active() then error("cancelled", 0) end
                RS.Job.Construction.MiniGameInput:FireServer(round.Key)
                task.wait(.05)
            end
        else
            local count = round.Options and round.Options.targetCount
            assert(type(count) == "number" and count % 1 == 0 and count >= 1 and count <= 20, "จำนวนของในงานไม่ถูกต้อง")
            for i = 1, count do
                farmState.Status = "คุ้ยขยะ " .. i .. "/" .. count
                waitFor(8.2, function()
                    if round.Key ~= nil then RS.Job.Construction.MiniGameInput:FireServer(round.Key) end
                    return false
                end)
                recordWork("trash_progress_sent", round, {Index = i, TargetCount = count})
                RS.Job["ขยะ"].TrashDigProgress:FireServer(round.Id)
            end
            if os.clock() - round.At < 15.2 then waitFor(15.2 - (os.clock() - round.At)) end
            recordWork("trash_result_sent", round, {Success = true})
            RS.Job["ขยะ"].DigResult:FireServer(true)
            waitFor(.5)
        end
        if not round.NativeDone then recordWork("done_sent", round, {Path = "normal"}) RS.Job.Construction.MiniGameDone:FireServer(round.Kind, round.Id) end
        farmState.Round = nil
        local received = waitFor(5, function()
            if constructionKinds[round.Kind] then return constructionState.Earnings > beforeEarnings end
            if round.Kind == "SweepSite" then return cash.Value > beforeCash end
            if cash.Value > beforeCash then return true end
            for name, amount in pairs(inventory()) do if amount > (before[name] or 0) then return true end end
            return false
        end)
        recordWork("reward_checked", round, {Received = received})
        clearWorkUI()
        if not received then
            recordWork("reward_unconfirmed", round, {BeforeCash = beforeCash, AfterCash = cash.Value,
                BeforeItems = before, AfterItems = inventory()})
            if attemptedPrompt then trashRetryAfter[attemptedPrompt] = os.clock() + 45 end
            scheduleFarmRecovery("ยังตรวจไม่พบรางวัล", round, c)
            return
        end
        farmState.RecoveryFailures = 0
        if mode == "งานก่อสร้าง" and config.ConstructionCollect and constructionState.Earnings >= config.ConstructionCollectAt and visitForeman() then
            farmState.Status = "รับเงินงานก่อสร้าง"
            local beforeCollect = cash.Value
            local collected, amount = RS.Job.Construction.Collect:InvokeServer()
            assert(collected == true and type(amount) == "number" and amount > 0, "รับเงินงานก่อสร้างยังไม่ยืนยัน")
            assert(waitFor(5, function() return cash.Value > beforeCollect end), "เงินก่อสร้างยังไม่เข้ากระเป๋า")
            constructionState.Earnings = 0
            closeConstructionUI()
            waitFor(.35)
        end
        if mode ~= "งานก่อสร้าง" and config.AutoSellTrash and farmLootCount() >= config.SellTrashAt then
            local sellers = {}
            for _, prompt in ipairs(workspace.Job["ขยะ"]:GetDescendants()) do if prompt:IsA("ProximityPrompt") and prompt.Enabled and prompt.ActionText == "selling" and prompt.Parent:IsA("BasePart") then sellers[#sellers + 1] = prompt end end
            table.sort(sellers, function(a, b) return (r.Position - a.Parent.Position).Magnitude < (r.Position - b.Parent.Position).Magnitude end)
            farmState.Status = "เดินไปขายของ"
            local seller
            for i = 1, math.min(4, #sellers) do if walk(sellers[i]) then seller = sellers[i] break end end
            assert(seller, "ยังเดินไปจุดขายไม่ได้")
            farmState.Selling = true
            nativeSprint(false)
            fireproximityprompt(seller)
            waitFor(1)
            h:UnequipTools()
            farmLootCount()
            local items = {}
            for name, amount in pairs(farmState.Loot) do local count = math.min(amount, itemCount(name)) if count > 0 then items[name] = count end end
            if next(items) then
                local beforeSale = cash.Value
                RS.Job["ขยะ"].SellItems:FireServer(items)
                assert(waitFor(5, function() return cash.Value > beforeSale end), "ขายยังไม่ยืนยัน — หยุดส่งซ้ำ")
                table.clear(farmState.Loot)
            end
            local gui = player.PlayerGui:FindFirstChild("Shopsell")
            local close = gui and gui.Enabled and gui:FindFirstChild("Close", true)
            if close then for _, connection in ipairs(getconnections(close.MouseButton1Click)) do if type(connection.Function) == "function" then pcall(connection.Function) end end end
            assert(waitFor(3, function() return (not gui or not gui.Enabled) and h.WalkSpeed > 0 end), "ร้านยังไม่คืนการเดินหลังขาย")
            farmState.Selling = false
        end
        farmState.Rounds += 1
        farmState.Earned += math.max(0, cash.Value - beforeCash)
        farmState.Status = "จบรอบ — กำลังหาจุดถัดไป"
    end)
    recordWork(ok and "cycle_body_finished" or "cycle_body_error", nil, {Error = not ok and tostring(err):sub(1, 240) or nil})
    local failed = not ok and active()
    if not ok and farmState.Pending and not stopped and player.Character == c and h.Health > 0 then
        farmState.Status = "รอยกเลิกงานที่กำลังเริ่ม"
        local deadline = os.clock() + 18
        repeat task.wait(.1) until farmState.Round or stopped or player.Character ~= c or h.Health <= 0 or os.clock() >= deadline
    end
    farmState.Pending = false
    if not ok and farmState.Round then stopFarm() end
    if not ok and farmState.CancelRound and player.Character == c and h.Health > 0 then
        local round = farmState.CancelRound
        farmState.Status = "จบงานที่ค้างก่อนหยุด"
        if round.Kind == "NailSite" then
            completeNailRound(round, function() return not stopped and player.Character == c and h.Health > 0 end)
        elseif (round.Kind == "SweepSite" or constructionKinds[round.Kind] or round.Kind == "EngineSite") and round.Key ~= nil then
            local deadline = os.clock() + (constructionTime[round.Kind] or 1.3)
            repeat RS.Job.Construction.MiniGameInput:FireServer(round.Key) task.wait(.05) until os.clock() >= deadline or player.Character ~= c or h.Health <= 0
        elseif round.Kind == "TrashDigSite" then
            recordWork("trash_result_sent", round, {Success = false})
            RS.Job["ขยะ"].DigResult:FireServer(false)
            local deadline = round.At + 15.2
            while os.clock() < deadline and player.Character == c and h.Health > 0 do task.wait(.1) end
        end
        if player.Character == c and h.Health > 0 then
            if not round.NativeDone then recordWork("done_sent", round, {Path = "cancel"}) RS.Job.Construction.MiniGameDone:FireServer(round.Kind, round.Id) end
            local deadline = os.clock() + 3
            repeat task.wait(.1) until h.WalkSpeed > 0 or os.clock() >= deadline
        end
        farmState.CancelRound = nil
        clearWorkUI()
        farmState.Status = "ปิดอยู่"
    end
    if farmState.Selling then
        local gui = player.PlayerGui:FindFirstChild("Shopsell")
        local close = gui and gui.Enabled and gui:FindFirstChild("Close", true)
        if close then for _, connection in ipairs(getconnections(close.MouseButton1Click)) do if type(connection.Function) == "function" then pcall(connection.Function) end end end
        farmState.Selling = false
    end
    resumeWorkInputs(farmState.InputRound)
    if farmState.Controls then farmState.Controls:Enable() farmState.Controls = nil end
    if player.Character == c and r.Parent then farmMove(h, r.Position) end
    if failed then
        if retryStart and config.AutoFarm and not stopped and player.Character == c and h.Health > 0 then
            if attemptedPrompt then trashRetryAfter[attemptedPrompt] = os.clock() + 45 end
            farmState.Status = mode == "งานก่อสร้าง" and "จุดงานยังไม่พร้อม — ข้ามไปจุดอื่น" or "กองนี้ยังไม่เริ่มงาน — พักแล้วหากองอื่น"
            nativeSprint(false)
            task.wait(2)
        elseif mode == "คราฟปืน" then
        elseif config.AutoFarm then
            if attemptedPrompt then trashRetryAfter[attemptedPrompt] = os.clock() + 45 end
            scheduleFarmRecovery(err, failureRound, c, mode == "งานซ่อมรถ" and not failureRound and 1 or nil)
        else
            stopFarm()
            changed("AutoFarm", false)
            farmState.SyncToggle = true
            farmState.Status = tostring(err)
        end
    end
    farmMovement.Stop()
    farmState.Busy = false
    persistWorkAudit("cycle_finished")
end

local function cleanup()
    if stopped then return end
    recordWork("cleanup")
    persistWorkAudit("cleanup")
    stopped = true
    farmMovement.Stop()
    RunService:UnbindFromRenderStep("SentorumFarmMovement" .. player.UserId)
    stopFarm()
    resumeWorkInputs(farmState.InputRound)
    for handler, wrapper in pairs(HookedHandlers) do
        pcall(function()
            if handler.SimulateProjectile == wrapper and HookOriginals[handler] then
                handler.SimulateProjectile = HookOriginals[handler]
            end
        end)
    end
    if config.AutoSave and dirtyAt then saveSettings() end
    for _, connection in ipairs(connections) do pcall(function() connection:Disconnect() end) end
    if window then pcall(function() window:Destroy() end) end
end
if STATE then STATE.onCleanup(cleanup) end
getgenv().__SentorumSailueat = {Config = function() return config end, Cleanup = cleanup, WorkAudit = readWorkAudit, FarmLootCount = farmLootCount, NativeSprint = nativeSprint, WalkSeller = walkSeller, ExitSpawnRoom = exitSpawnRoom, Construction = constructionState, Farm = farmState, StopFarm = stopFarm, Controls = controls, Save = saveSettings, CleanSettings = cleanSettings}

    -- API สำหรับเชื่อมกับ UI เดิม โดยไม่สร้างหน้าต่าง/แถบสถานะฟาร์มชุดใหม่
    FarmAPI.JobNames = table.clone(choices.FarmMode)
    FarmAPI.Config = config
    FarmAPI.Changed = changed
    FarmAPI.Farm = {Job = config.FarmMode}
    function FarmAPI.SetNotify(fn) end
    function FarmAPI.SetJob(name)
        if table.find(choices.FarmMode, name) then
            stopFarm()
            config.FarmMode = name
            FarmAPI.Farm.Job = name
            changed("FarmMode", name)
        end
    end
    function FarmAPI.StopSprint() nativeSprint(false) end
    function FarmAPI.Start()
        if stopped then return end
        if not config.AutoFarm then
            stopFarm()
            config.AutoFarm = true
            changed("AutoFarm", true)
        end
    end
    function FarmAPI.Stop()
        config.AutoFarm = false
        changed("AutoFarm", false)
        stopFarm()
    end
    task.spawn(function()
        while not stopped do
            if not config.AutoFarm and farmState.Busy and not farmState.Cancelling then
                stopFarm()
            elseif config.AutoFarm and not farmState.Busy and farmRecoveryReady() then
                task.spawn(farmCycle)
            end
            if config.AutoSave and dirtyAt and os.clock() - dirtyAt >= 1.5 then saveSettings() end
            task.wait(0.25)
        end
    end)
end

-- ========== ESP System (ระบบใหม่) ==========

-- ESPHolder = ที่แสดง ESP ทั้งหมด (แต่ละส่วนสั่ง Visible ตามสวิตช์ทุกเฟรม ไม่มีการย้ายไปมา)
local ESPHolder = Instance.new("ScreenGui")
ESPHolder.Name = "\000"
ESPHolder.IgnoreGuiInset = true
ESPHolder.ResetOnSpawn = false
ESPHolder.Enabled = true
ProtectParent(ESPHolder)

-- เส้น ESP ใช้ GUI Frame เป็นหลัก ไม่พึ่ง Drawing API ของ executor
-- รองรับ From / To / Color / Thickness / Transparency / Visible / Remove เหมือน Drawing.Line
local function NewESPLine(color, thickness)
    local frame = Instance.new("Frame")
    frame.Name = "FlexozyESPLine"
    frame.AnchorPoint = Vector2.new(0.5, 0.5)
    frame.BorderSizePixel = 0
    frame.BackgroundColor3 = color or Color3.new(1, 1, 1)
    frame.BackgroundTransparency = 0
    frame.Size = UDim2.fromOffset(0, thickness or 1)
    frame.Visible = false
    frame.ZIndex = 20
    frame.Parent = ESPHolder

    local state = {
        From = Vector2.zero,
        To = Vector2.zero,
        Color = color or Color3.new(1, 1, 1),
        Thickness = thickness or 1,
        Transparency = 0,
        Visible = false,
        _frame = frame,
    }
    local methods = {
        Remove = function(self)
            if self._frame then self._frame:Destroy(); self._frame = nil end
        end,
    }
    return setmetatable({}, {
        __index = function(_, key)
            if methods[key] then return methods[key] end
            return state[key]
        end,
        __newindex = function(_, key, value)
            state[key] = value
            local f = state._frame
            if not f then return end
            if key == "Color" then f.BackgroundColor3 = value
            elseif key == "Thickness" then
                f.Size = UDim2.fromOffset(f.AbsoluteSize.X, math.max(1, tonumber(value) or 1))
            elseif key == "Transparency" then f.BackgroundTransparency = math.clamp(tonumber(value) or 0, 0, 1)
            elseif key == "Visible" then f.Visible = value == true
            elseif key == "From" or key == "To" then
                local a, b = state.From, state.To
                local delta = b - a
                f.Position = UDim2.fromOffset((a.X + b.X) / 2, (a.Y + b.Y) / 2)
                f.Size = UDim2.fromOffset(delta.Magnitude, math.max(1, tonumber(state.Thickness) or 1))
                f.Rotation = math.deg(math.atan2(delta.Y, delta.X))
            end
        end,
    })
end

local skeletonR15 = {
    {"Head", "UpperTorso"}, {"UpperTorso", "LowerTorso"},
    {"UpperTorso", "LeftUpperArm"}, {"UpperTorso", "RightUpperArm"},
    {"LeftUpperArm", "LeftLowerArm"}, {"RightUpperArm", "RightLowerArm"},
    {"LowerTorso", "LeftUpperLeg"}, {"LowerTorso", "RightUpperLeg"},
    {"LeftUpperLeg", "LeftLowerLeg"}, {"RightUpperLeg", "RightLowerLeg"},
}

local skeletonR6 = {
    {"Head", "Torso"},
    {"Torso", "Left Arm"}, {"Torso", "Right Arm"},
    {"Torso", "Left Leg"}, {"Torso", "Right Leg"},
}

local function GetSkeletonPairs(char)
    if char:FindFirstChild("UpperTorso") then
        return skeletonR15
    end

    return skeletonR6
end

-- แปลงตำแหน่งโลก -> พิกัดหน้าจอสำหรับ Drawing (ไม่ตัดทิ้งเมื่ออยู่นอกจอ ขอแค่อยู่หน้ากล้อง)
local function project(pos)
    local v = Camera:WorldToViewportPoint(pos)
    return Vector2.new(v.X, v.Y), v.Z > 0
end

local TracerOrigins = {
    ["ตัวเรา"] = "Self",
    ["บนกลางจอ"] = "Top",
    ["ล่างกลางจอ"] = "Bottom",
    ["กลางจอ"] = "Center",
}

local ESPFont = Font.new(
    "rbxasset://fonts/families/Inconsolata.ttf",
    Enum.FontWeight.Regular,
    Enum.FontStyle.Normal
)

local function worldToViewport(pos)
    local vs = Camera.ViewportSize
    local rel = Camera.CFrame:PointToObjectSpace(pos)
    local ar = vs.X / vs.Y
    local hh = -rel.Z * math.tan(math.rad(Camera.FieldOfView / 2))
    local hw = ar * hh
    local d = rel - Vector3.new(-hw, hh, rel.Z)
    local x = d.X / (hw * 2)
    local y = -d.Y / (hh * 2)
    local on = -rel.Z > 0 and x >= 0 and x <= 1 and y >= 0 and y <= 1
    return Vector3.new(x * vs.X, y * vs.Y, -rel.Z), on
end

-- รายชื่อศัตรูที่ ESP จะแสดง
-- ถ้าเกมมี Attribute "Match" จะใช้ตามแมตช์ ถ้าไม่มีจะใช้ผู้เล่นทุกคน (เคารพ "เช็คทีม")
task.spawn(function()
    while task.wait(0.1) do
        if AnyESP() then
            local list = {}
            local mm = LocalPlayer:GetAttribute("Match")

            for _, p in ipairs(Players:GetPlayers()) do
                if p ~= LocalPlayer then
                    local c = p.Character
                    local h = c and c:FindFirstChildOfClass("Humanoid")

                    if h and h.Health > 0 then
                        local ok

                        if mm then
                            ok = mm == p:GetAttribute("Match")
                        else
                            ok = not (
                                Config.TeamCheck
                                and p.Team
                                and LocalPlayer.Team
                                and p.Team == LocalPlayer.Team
                            )
                        end

                        if ok then
                            table.insert(list, p)
                        end
                    end
                end
            end

            S.enemies = list
        end
    end
end)

local function createESP(player)
    if player == LocalPlayer then return end
    if S.esp_data[player.Name] then return end

    local d = {
        player = player,
        objects = {},
        drawings = {},
        cornerLines = {},
        tracer = nil,
        info = {character = nil, humanoid = nil, rootpart = nil}
    }

    S.esp_data[player.Name] = d

    local function new(cls, props)
        local i = Instance.new(cls)
        for k, v in pairs(props) do
            i[k] = v
        end
        return i
    end

    d.objects.holder = new("Frame", {
        Name = "\000",
        BackgroundTransparency = 1,
        Position = UDim2.fromOffset(0, 0),
        Size = UDim2.fromOffset(0, 0),
        BorderSizePixel = 0,
        Parent = ESPHolder
    })

    d.objects.name = new("TextLabel", {
        FontFace = ESPFont,
        TextColor3 = S.esp_name_color,
        Text = player.DisplayName .. " (@" .. player.Name .. ")",
        TextStrokeTransparency = 0,
        AnchorPoint = Vector2.new(0, 1),
        Size = UDim2.new(1, 0, 0, 0),
        BackgroundTransparency = 1,
        Position = UDim2.new(0, 0, 0, -5),
        BorderSizePixel = 0,
        AutomaticSize = Enum.AutomaticSize.Y,
        TextSize = 9,
        Parent = d.objects.holder
    })

    d.objects.box_outline = new("UIStroke", {
        LineJoinMode = Enum.LineJoinMode.Miter,
        Enabled = false,
        Parent = d.objects.holder
    })

    d.objects.box_handler = new("Frame", {
        Name = "\000",
        BackgroundTransparency = 1,
        Position = UDim2.new(0, 1, 0, 1),
        Size = UDim2.new(1, -2, 1, -2),
        BorderSizePixel = 0,
        Visible = false,
        Parent = d.objects.holder
    })

    d.objects.box_color = new("UIStroke", {
        Color = S.esp_box_color,
        LineJoinMode = Enum.LineJoinMode.Miter,
        Parent = d.objects.box_handler
    })

    -- กล่องแบบ Corner: วาดเส้นมุมทั้ง 4 ด้าน
    d.objects.corners = new("Frame", {
        Name = "\000",
        BackgroundTransparency = 1,
        Position = UDim2.new(0, 0, 0, 0),
        Size = UDim2.new(1, 0, 1, 0),
        BorderSizePixel = 0,
        Visible = false,
        Parent = d.objects.holder
    })

    local cornerDefs = {
        {Vector2.new(0, 0)}, {Vector2.new(1, 0)},
        {Vector2.new(0, 1)}, {Vector2.new(1, 1)},
    }

    for _, def in ipairs(cornerDefs) do
        local a = def[1]

        local h = new("Frame", {
            BackgroundColor3 = S.esp_box_color,
            BorderSizePixel = 0,
            AnchorPoint = a,
            Position = UDim2.fromScale(a.X, a.Y),
            Size = UDim2.new(0.3, 0, 0, 1),
            Parent = d.objects.corners
        })

        local v = new("Frame", {
            BackgroundColor3 = S.esp_box_color,
            BorderSizePixel = 0,
            AnchorPoint = a,
            Position = UDim2.fromScale(a.X, a.Y),
            Size = UDim2.new(0, 1, 0.3, 0),
            Parent = d.objects.corners
        })

        table.insert(d.cornerLines, h)
        table.insert(d.cornerLines, v)
    end

    d.objects.healthbar_holder = new("Frame", {
        AnchorPoint = Vector2.new(1, 0),
        Name = "\000",
        Position = UDim2.new(0, -3, 0, -1),
        BorderColor3 = Color3.fromRGB(0, 0, 0),
        Size = UDim2.new(0, 4, 1, 2),
        BorderSizePixel = 0,
        BackgroundColor3 = Color3.fromRGB(0, 0, 0),
        Visible = false,
        Parent = d.objects.holder
    })

    d.objects.healthbar = new("Frame", {
        Name = "\000",
        Position = UDim2.new(0, 1, 0, 1),
        BorderColor3 = Color3.fromRGB(0, 0, 0),
        Size = UDim2.new(1, -2, 1, -2),
        BorderSizePixel = 0,
        BackgroundColor3 = Color3.fromRGB(255, 255, 255),
        Parent = d.objects.healthbar_holder
    })

    new("UIGradient", {
        Rotation = 90,
        Color = ColorSequence.new({
            ColorSequenceKeypoint.new(0, Color3.fromRGB(0, 255, 0)),
            ColorSequenceKeypoint.new(0.33, Color3.fromRGB(255, 255, 0)),
            ColorSequenceKeypoint.new(0.66, Color3.fromRGB(255, 165, 0)),
            ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 0, 0))
        }),
        Parent = d.objects.healthbar
    })

    d.objects.distance = new("TextLabel", {
        FontFace = ESPFont,
        TextColor3 = S.esp_distance_color,
        Text = "0st",
        TextStrokeTransparency = 0,
        Name = "\000",
        Size = UDim2.new(1, 0, 0, 0),
        BackgroundTransparency = 1,
        Position = UDim2.new(0, 0, 1, 5),
        BorderSizePixel = 0,
        AutomaticSize = Enum.AutomaticSize.Y,
        TextSize = 9,
        Visible = false,
        Parent = d.objects.holder
    })

    -- ใช้ GUI line แทน Drawing เพื่อให้โครงกระดูกและเส้นโยงแสดงได้บน executor ที่ไม่มี Drawing
    for _ = 1, #skeletonR15 do
        table.insert(d.drawings, NewESPLine(S.esp_skeleton_color, 1))
    end

    d.tracer = NewESPLine(S.esp_tracer_color, 1.5)

    function d.update_character()
        local c = player.Character

        if not c then
            d.info.character = nil
            d.info.humanoid = nil
            d.info.rootpart = nil
            return
        end

        d.info.character = c
        d.info.humanoid = c:FindFirstChildOfClass("Humanoid")
        d.info.rootpart = c:FindFirstChild("HumanoidRootPart")
    end

    d.update_character()
end

local function removeESP(player)
    local d = S.esp_data[player.Name]
    if not d then return end

    if d.tracer then
        pcall(function() d.tracer:Remove() end)
    end

    for _, v in ipairs(d.drawings) do
        pcall(function() v:Remove() end)
    end

    for _, v in pairs(d.objects) do
        if typeof(v) == "Instance" then
            pcall(function() v:Destroy() end)
        end
    end

    S.esp_data[player.Name] = nil
end

-- อัปเดตเฉพาะสี (การแสดง/ซ่อนแต่ละส่วนทำทุกเฟรมใน updateESP)
local function refreshESPTheme()
    for _, d in pairs(S.esp_data) do
        d.objects.name.TextColor3 = S.esp_name_color
        d.objects.box_color.Color = S.esp_box_color
        d.objects.distance.TextColor3 = S.esp_distance_color

        for _, line in ipairs(d.cornerLines) do
            line.BackgroundColor3 = S.esp_box_color
        end

        for _, v in ipairs(d.drawings) do
            v.Color = S.esp_skeleton_color
        end

        if d.tracer then
            d.tracer.Color = S.esp_tracer_color
        end
    end
end

local function hideESP(d)
    d.objects.holder.Visible = false

    for _, v in ipairs(d.drawings) do
        v.Visible = false
    end

    if d.tracer then
        d.tracer.Visible = false
    end
end

local function calcBox(hrp)
    if not hrp then return nil, nil, false, nil end

    local top = hrp.Position + hrp.CFrame.UpVector * 1.8 + Camera.CFrame.UpVector
    local bot = hrp.Position - hrp.CFrame.UpVector * 2.5
    local bot2 = bot - Camera.CFrame.UpVector
    local dist = (hrp.Position - Camera.CFrame.Position).Magnitude
    local sT, onT = worldToViewport(top)
    local sB, onB = worldToViewport(bot2)

    local w = math.max(math.floor(math.abs(sT.X - sB.X)), 3)
    local h = math.max(math.floor(math.max(math.abs(sB.Y - sT.Y), w / 2)), 3)
    local size = Vector2.new(math.floor(math.max(h / 1.5, w)), h)
    local pos = Vector2.new(
        math.floor(sT.X * 0.5 + sB.X * 0.5 - size.X * 0.5),
        math.floor(math.min(sT.Y, sB.Y))
    )

    return size, pos, onT and onB, dist
end

local lastESPError

local function updateESP(d, myHrp)
    if d.player.Character ~= d.info.character then
        d.update_character()
    end

    local c = d.info.character
    local h = d.info.humanoid

    if not c or not h or h.Health <= 0 or not h.RootPart then
        hideESP(d)
        return
    end

    local size, pos, on, dist = calcBox(h.RootPart)

    if not size or dist > S.esp_range then
        hideESP(d)
        return
    end

    -- โครงกระดูก
    local list = S.esp_skeleton and GetSkeletonPairs(c) or nil

    for i, dr in ipairs(d.drawings) do
        local pr = list and list[i]
        local pa = pr and c:FindFirstChild(pr[1])
        local pb = pr and c:FindFirstChild(pr[2])
        local shown = false

        if pa and pb then
            local from, fa = project(pa.Position)
            local to, fb = project(pb.Position)

            if fa and fb then
                dr.From = from
                dr.To = to
                shown = true
            end
        end

        dr.Visible = shown
    end

    -- เส้นโยง
    local tracerShown = false

    if S.esp_tracers and d.tracer then
        local target, front = project(h.RootPart.Position)

        if front then
            local vs = Camera.ViewportSize
            local origin = S.esp_tracer_origin
            local from

            if origin == "Top" then
                from = Vector2.new(vs.X / 2, 0)
            elseif origin == "Center" then
                from = Vector2.new(vs.X / 2, vs.Y / 2)
            elseif origin == "Self" and myHrp then
                local selfPos, selfFront = project(myHrp.Position)
                from = selfFront and selfPos or Vector2.new(vs.X / 2, vs.Y)
            else
                from = Vector2.new(vs.X / 2, vs.Y)
            end

            d.tracer.From = from
            d.tracer.To = target
            tracerShown = true
        end
    end

    if d.tracer then
        d.tracer.Visible = tracerShown
    end

    -- ชื่อ / กล่อง / เลือด / ระยะ (ตั้งค่าตามสวิตช์ทุกเฟรม)
    local o = d.objects
    local isCorner = S.esp_box_type == "Corner"

    o.holder.Visible = on

    if on then
        o.holder.Position = UDim2.fromOffset(pos.X, pos.Y)
        o.holder.Size = UDim2.fromOffset(size.X, size.Y)

        o.name.Visible = S.esp_names
        o.box_handler.Visible = S.esp_boxes and not isCorner
        o.box_outline.Enabled = S.esp_boxes and not isCorner
        o.corners.Visible = S.esp_boxes and isCorner
        o.healthbar_holder.Visible = S.esp_healthbar
        o.distance.Visible = S.esp_distance

        if S.esp_distance then
            o.distance.Text = math.round(dist or 0) .. "st"
        end

        if S.esp_healthbar then
            local maxHealth = h.MaxHealth
            local pct = maxHealth > 0 and math.clamp(h.Health / maxHealth, 0, 1) or 0

            o.healthbar.Size = UDim2.new(1, -2, pct, -2)
            o.healthbar.Position = UDim2.new(0, 1, 1 - pct, 1)
        end
    end
end

RunService.RenderStepped:Connect(function()
    if not AnyESP() then
        for _, d in pairs(S.esp_data) do
            hideESP(d)
        end
        return
    end

    local char = LocalPlayer.Character
    local myHrp = char and char:FindFirstChild("HumanoidRootPart")
    local active = {}

    for _, p in ipairs(S.enemies) do
        active[p.Name] = true
    end

    for _, p in ipairs(S.enemies) do
        if p ~= LocalPlayer and not S.esp_data[p.Name] then
            local ok, err = pcall(function()
                createESP(p)
                refreshESPTheme()
            end)

            if not ok and err ~= lastESPError then
                lastESPError = err
                warn("[CipherHUB] ESP create error: " .. tostring(err))
            end

            break
        end
    end

    -- แยก pcall ทีละคน: ถ้าคนใดคนหนึ่ง error คนอื่นยังอัปเดตตามปกติ
    for _, p in ipairs(S.enemies) do
        if p ~= LocalPlayer then
            local d = S.esp_data[p.Name]

            if d then
                local ok, err = pcall(updateESP, d, myHrp)

                if not ok then
                    pcall(hideESP, d)

                    if err ~= lastESPError then
                        lastESPError = err
                        warn("[CipherHUB] ESP error: " .. tostring(err))
                    end
                end
            end
        end
    end

    for name, d in pairs(S.esp_data) do
        if not active[name] then
            removeESP(d.player)
        end
    end
end)

-- ========== UI ==========

local WinOpts = {
    Title = "CIPHER HUB",
    SubTitle = "สายเลือดอาชีวะ",
    Monogram = "CH",
    Logo = "https://raw.githubusercontent.com/mawinno/cipher-hub-assets/main/Cipher%20Hub%20Logo.png",
    Size = Vector2.new(720, 520),
    ToggleKey = Enum.KeyCode.RightControl,
    StatsPill = true,
    Accent = "Cyan",
    ConfigName = "CipherHUB",
    Folder = "CipherHUB",
    AutoSave = false,
    Language = "TH",
    LanguageScope = "All"
}

local Win
do
    local okWin, resWin = pcall(function()
        return Flexozy:CreateWindow(WinOpts)
    end)

    if okWin and resWin then
        Win = resWin
    else
        warn("[CIPHER HUB] CreateWindow ล้มเหลวด้วย Accent=" .. tostring(WinOpts.Accent) .. ": " .. tostring(resWin))
        -- ลองใหม่โดยไม่ระบุสี Accent (ใช้ค่าเริ่มต้นของ library)
        WinOpts.Accent = nil
        Win = Flexozy:CreateWindow(WinOpts)
    end
end

-- คำแปลภาษาอังกฤษของข้อความในสคริปต์ (รูปแบบ: [อังกฤษ] = ไทย)
Win:AddTranslations({
    ["Toggle auto aim on/off"] = "เปิด/ปิดการเล็งอัตโนมัติ",
    ["Max distance"] = "ระยะสูงสุด",
    ["Aim part"] = "จุดล็อก",
    ["Wall check"] = "เช็คกำแพง",
    ["Used by SilentAim and inventory"] = "ใช้กับ SilentAim และกระเป๋า",
    ["Team check"] = "เช็คทีม",
    ["Used by SilentAim, ESP and inventory"] = "ใช้กับ SilentAim, ESP และกระเป๋า",
    ["Show FOV"] = "แสดง FOV",
    ["Show the FOV circle on screen"] = "แสดงวงกลม FOV บนหน้าจอ",
    ["Target line"] = "เส้นชี้เป้า",
    ["Line from screen center to the enemy"] = "แสดงเส้นจากกลางจอไปหาศัตรู",
    ["Re-hook Aimlock"] = "รีฮุก Aimlock",
    ["Press to hook again"] = "กดเพื่อฮุกใหม่",
    ["Re-hooked"] = "รีฮุกเรียบร้อย",
    ["ProjectileHandler not found, see Console (F9)"] = "ไม่พบ ProjectileHandler ดู Console (F9)",
    ["Names"] = "ชื่อ",
    ["Boxes"] = "กล่อง",
    ["Box type"] = "ประเภทกล่อง",
    ["Normal"] = "ปกติ",
    ["Corner"] = "มุม",
    ["Health"] = "เลือด",
    ["Distance"] = "ระยะ",
    ["Skeleton"] = "โครงกระดูก",
    ["Tracers"] = "เส้นโยง",
    ["Tracer origin"] = "จุดเริ่มเส้นโยง",
    ["Self"] = "ตัวเรา",
    ["Top center"] = "บนกลางจอ",
    ["Bottom center"] = "ล่างกลางจอ",
    ["Screen center"] = "กลางจอ",
    ["ESP range"] = "ระยะแสดง ESP",
    ["Show 5 item slots"] = "แสดงไอเทม 5 ช่อง",
    ["Show every item"] = "แสดงไอเทมทุกชิ้น",
    ["Skip friends"] = "ข้ามเพื่อน",
    ["Never target people on your friends list"] = "ไม่ล็อกคนที่เป็นเพื่อนของคุณ",
    ["Skip players"] = "ข้ามผู้เล่น",
    ["Clear skip list"] = "ล้างรายชื่อข้าม",
    ["Stop skipping everyone"] = "ยกเลิกการข้ามทุกคน",
    ["ESP (all)"] = "ESP ทั้งหมด",
    ["Reset all keybinds"] = "รีเซ็ตคีย์ลัดทั้งหมด",
    ["Infinite stamina"] = "สเตมิน่าไม่ลด",
    ["Choose job"] = "เลือกงาน",
    ["Auto farm"] = "ฟาร์มอัตโนมัติ",
    ["Walks to NPCs, plays mini-games and sells for you (walking only, no teleport)"] = "เดินหา NPC + เล่นมินิเกม + ขายของให้อัตโนมัติ (เดินล้วน ไม่วาร์ป)",
    ["Auto mini-games"] = "เล่นมินิเกมอัตโนมัติ",
    ["Off = you play, farming waits until the mini-game closes"] = "ปิด = คุณเล่นเอง ฟาร์มจะรอจนมินิเกมปิด",
    ["Auto sell"] = "ขายของอัตโนมัติ",
    ["Sprint while walking"] = "วิ่งตอนเดิน",
    ["Avoid walls"] = "หลบกำแพง",
    ["Walks around walls with pathfinding; if stuck, jumps and re-plans the path"] = "เดินอ้อมกำแพงด้วย Pathfinding ถ้าเดินติดจะกระโดดแล้วคำนวณเส้นทางใหม่",
    ["Holds Shift automatically while walking to job spots"] = "กด Shift ให้อัตโนมัติระหว่างเดินไปจุดงาน",
    ["Used by the trash job. Off = sell manually"] = "ใช้กับงานเก็บขยะ ปิด = ขายเอง",
    ["Delay between spots"] = "หน่วงเวลาระหว่างจุด",
    ["Job search range"] = "ระยะค้นหาจุดงาน",
    ["Rest after each job"] = "พักหลังเสร็จงาน",
    ["Only works on maps with the same job folders as the original map"] = "ใช้ได้เฉพาะแมพที่มีโฟลเดอร์งานเหมือนแมพสายเลือดอาชีวะ",
    ["Stamina stays full while running"] = "วิ่งแล้วสเตมิน่าไม่ลด",
    ["Clear every hotkey you set"] = "ล้างปุ่มลัดที่ตั้งไว้ทุกอัน",
    ["All keybinds were reset"] = "รีเซ็ตคีย์ลัดทั้งหมดแล้ว",
    ["Notify on hotkey"] = "แจ้งเตือนเมื่อกดปุ่มลัด",
    ["Click a box and press a key | Esc = cancel | Backspace = clear"] = "คลิกช่องแล้วกดปุ่มที่ต้องการ | Esc = ยกเลิก | Backspace = ล้างปุ่ม",
    ["Inventory range"] = "ระยะแสดงกระเป๋า",
})

Win:Section("Main")

local HomeTab = Win:Tab({
    Title = "Home",
    Subtitle = "Map & Server Info",
    Icon = Flexozy.Icons.Grid
})

Safe("BuildHome", function()
    Win:BuildHome(HomeTab)
end)

-- การ์ด Discord: ไอคอน/ชื่อเซิร์ฟเวอร์ + ออนไลน์/ออฟไลน์/สมาชิก + ปุ่มเข้าร่วม
Safe("BuildDiscord", function()
    Win:BuildDiscord(HomeTab, "https://discord.gg/F4xdxhYkB")
end)

local AimTab = Win:Tab({
    Title = "Aim",
    Subtitle = "Silent Aim Settings",
    Icon = Flexozy.Icons.Sword
})

local AimGroupL = AimTab:Group("Aim Settings", "Left")
local AimGroupR = AimTab:Group("Aim Extra", "Right")

Tg.SilentAim = AimGroupL:Toggle("SilentAim", "เปิด/ปิดการเล็งอัตโนมัติ", false, function(state)
    Config.SilentAim = state

    if state then
        EnsureHook()
    end
end, "SilentAim")

AimGroupL:Slider("FOV", 60, 400, 180, "px", function(value)
    Config.FOV = value
end, 1, "FOV")

AimGroupL:Slider("ระยะสูงสุด", 50, 2000, 800, "studs", function(value)
    Config.MaxDistance = value
end, 50, "MaxDistance")

AimGroupL:Dropdown("ตำแหน่งยิง", {
    "Head",
    "UpperTorso",
    "สุ่มหัว / ลำตัว"
}, "Head", function(value)
    Config.AimPart = value
end, "AimPart")

AimGroupL:Slider("โอกาสเปลี่ยนทิศกระสุน", 0, 100, 100, "%", function(value)
    Config.HitChance = value
end, 1, "HitChance")

AimGroupL:Dropdown("จุดศูนย์กลาง FOV", {"กลางจอ", "เมาส์"}, "กลางจอ", function(value)
    Config.Center = value
end, "AimCenter")

AimGroupL:Toggle("Prediction", "คาดการณ์ตำแหน่งเป้าหมายที่กำลังเคลื่อนที่", true, function(state)
    Config.Prediction = state
end, "Prediction")

AimGroupR:Toggle("เช็คกำแพง", "ใช้กับ SilentAim และกระเป๋า", false, function(state)
    Config.WallCheck = state
end, "WallCheck")

AimGroupR:Toggle("เช็คทีม", "ใช้กับ SilentAim, ESP และกระเป๋า", false, function(state)
    Config.TeamCheck = state
end, "TeamCheck")

Tg.ShowFOV = AimGroupR:Toggle("แสดง FOV", "แสดงวงกลม FOV บนหน้าจอ", false, function(state)
    Config.ShowFOV = state
end, "ShowFOV")

Tg.TargetLine = AimGroupR:Toggle("เส้นชี้เป้า", "แสดงเส้นจากกลางจอไปหาศัตรู", false, function(state)
    Config.ShowTracer = state
end, "ShowTracer")

AimGroupR:Button("รีฮุกระบบยิง", "ค้นหา ProjectileHandler และติดตั้ง Hook ใหม่", function()
    Hooked = false
    hookStatus = "กำลังค้นหา Hook..."

    task.spawn(function()
        local ok = HookProjectile()

        Win:Notify({
            Title = "CipherHUB",
            Content = ok and "Hook สำเร็จ" or "ไม่พบ ProjectileHandler ดู Console (F9)",
            Duration = 3,
            Type = ok and "Success" or "Warning"
        })
    end)
end)

Safe("SkipList", function()
local SkipGroup = AimTab:Group("Skip List", "Left")

local function BuildSkipOptions()
    local opts = {}
    table.clear(SkipOptionToName)

    for _, p in ipairs(Players:GetPlayers()) do
        if p ~= LocalPlayer then
            local label = p.DisplayName .. " (@" .. p.Name .. ")"
            SkipOptionToName[label] = p.Name
            table.insert(opts, label)
        end
    end

    table.sort(opts)

    return opts
end

local function SyncSkipSet(list)
    table.clear(SkipSet)

    for _, label in ipairs(list) do
        local name = SkipOptionToName[label]

        if name then
            SkipSet[name] = true
        end
    end
end

local AvatarCache = {}

local function LoadAvatar(userId, image)
    local cached = AvatarCache[userId]

    if cached then
        image.Image = cached
        return
    end

    task.spawn(function()
        local ok, content = pcall(function()
            return Players:GetUserThumbnailAsync(
                userId,
                Enum.ThumbnailType.HeadShot,
                Enum.ThumbnailSize.Size48x48
            )
        end)

        if ok and content then
            AvatarCache[userId] = content

            if image.Parent then
                image.Image = content
            end
        end
    end)
end

-- ใส่รูปโปรไฟล์หน้าชื่อผู้เล่นแต่ละแถวในรายการ (ต้องเรียกใหม่ทุกครั้งที่ Refresh)
local function DecorateSkipList()
    if not SkipDropdown or not SkipDropdown.Instance then return end

    local list = SkipDropdown.Instance:FindFirstChildOfClass("ScrollingFrame")
    if not list then return end

    for _, btn in ipairs(list:GetChildren()) do
        if btn:IsA("TextButton") and not btn:FindFirstChild("Avatar") then
            local lbl = btn:FindFirstChildOfClass("TextLabel")
            local name = lbl and SkipOptionToName[lbl.Text]
            local plr = name and Players:FindFirstChild(name)

            if plr then
                lbl.Position = UDim2.fromOffset(36, 0)
                lbl.Size = UDim2.new(1, -56, 1, 0)

                local img = Instance.new("ImageLabel")
                img.Name = "Avatar"
                img.Position = UDim2.fromOffset(8, 4)
                img.Size = UDim2.fromOffset(20, 20)
                img.BackgroundColor3 = Color3.fromRGB(30, 30, 38)
                img.BorderSizePixel = 0
                img.Parent = btn

                Instance.new("UICorner", img).CornerRadius = UDim.new(1, 0)

                LoadAvatar(plr.UserId, img)
            end
        end
    end
end

local function RefreshSkipList()
    if not SkipDropdown then return end

    SkipDropdown.Refresh(BuildSkipOptions())
    SyncSkipSet(SkipDropdown.Get())
    DecorateSkipList()
end

SkipGroup:Toggle("ข้ามเพื่อน", "ไม่ล็อกคนที่เป็นเพื่อนของคุณ", false, function(state)
    Config.SkipFriends = state
end, "SkipFriends")

SkipDropdown = SkipGroup:Dropdown({
    Title = "ข้ามผู้เล่น",
    Options = BuildSkipOptions(),
    Default = {},
    Multi = true,
    Callback = function(list)
        SyncSkipSet(list)
    end,
    Flag = "SkipPlayers"
})

DecorateSkipList()

SkipGroup:Button("ล้างรายชื่อข้าม", "ยกเลิกการข้ามทุกคน", function()
    SkipDropdown.Set({})
end)

for _, p in ipairs(Players:GetPlayers()) do
    if p ~= LocalPlayer then
        RefreshFriend(p)
    end
end

Players.PlayerAdded:Connect(function(p)
    RefreshFriend(p)
    task.delay(0.2, RefreshSkipList)
end)

Players.PlayerRemoving:Connect(function()
    task.delay(0.2, RefreshSkipList)
end)
end)

-- ========== หมวดหมู่: การต่อสู้ (อยู่ใต้ Aim) ==========
Safe("CombatTab", function()
    local CombatTab = Win:Tab({
        Title = "การต่อสู้",
        Subtitle = "Combat",
        Icon = Flexozy.Icons.Zap or Flexozy.Icons.Sword
    })

    local CombatGroup = CombatTab:Group("ฟังก์ชันต่อสู้", "Left")

    Tg.NoRecoil = CombatGroup:Toggle(
        "ลดแรงดีดปืน",
        "ปิดแรงดีด/แรงสั่นของจอตอนยิง (ทดลอง: ได้ผลแค่ถ้าเกมเก็บค่า recoil ไว้ในข้อมูลปืน)",
        false,
        function(state)
            Config.NoRecoil = state
            if state then
                Recoil.Start()
            else
                Recoil.token += 1
                Recoil.Restore()
            end
        end,
        "NoRecoil"
    )

    Tg.NoSpread = CombatGroup:Toggle(
        "ไม่มีกระสุนกระจาย",
        "กระสุนพุ่งตรงไปที่ครอสแฮร์ทุกนัด ลูกซองไม่กระจาย",
        false,
        function(state)
            Config.NoSpread = state
            if state then EnsureHook() end
        end,
        "NoSpread"
    )
end)

local VisualTab = Win:Tab({
    Title = "ESP",
    Subtitle = "ESP & Overlay",
    Icon = 10734942565
})

local VisualGroupL = VisualTab:Group("ESP Settings", "Left")
local VisualGroupR = VisualTab:Group("ESP Extra", "Right")
local VisualGroupInv = VisualTab:Group("Inventory", "Left")

Tg.Names = VisualGroupL:Toggle("ชื่อ", nil, false, function(state)
    S.esp_names = state
    refreshESPTheme()
end, "ESPNames")

Tg.Boxes = VisualGroupL:Toggle("กล่อง", nil, false, function(state)
    S.esp_boxes = state
    refreshESPTheme()
end, "ESPBoxes")

VisualGroupL:Dropdown("ประเภทกล่อง", {"Normal", "Corner"}, "Normal", function(value)
    S.esp_box_type = value
    refreshESPTheme()
end, "ESPBoxType")

Tg.Health = VisualGroupL:Toggle("เลือด", nil, false, function(state)
    S.esp_healthbar = state
    refreshESPTheme()
end, "ESPHealth")

Tg.Distance = VisualGroupR:Toggle("ระยะ", nil, false, function(state)
    S.esp_distance = state
    refreshESPTheme()
end, "ESPDistance")

Tg.Skeleton = VisualGroupR:Toggle("โครงกระดูก", nil, false, function(state)
    S.esp_skeleton = state
    refreshESPTheme()
end, "ESPSkeleton")

Tg.Tracers = VisualGroupR:Toggle("เส้นโยง", nil, false, function(state)
    S.esp_tracers = state
    refreshESPTheme()
end, "ESPTracers")

VisualGroupR:Dropdown("จุดเริ่มเส้นโยง", {
    "ตัวเรา",
    "บนกลางจอ",
    "ล่างกลางจอ",
    "กลางจอ"
}, "ล่างกลางจอ", function(value)
    S.esp_tracer_origin = TracerOrigins[value] or "Bottom"
end, "ESPTracerOrigin")

VisualGroupR:Slider("ระยะแสดง ESP", 50, 3000, 1000, "studs", function(value)
    S.esp_range = value
end, 50, "ESPRange")

local InvToggleSlots, InvToggleAll

local function ApplyInvMode(mode)
    Config.InvMode = mode

    for _, data in pairs(InvData) do
        data.LastInvUpdate = 0

        if data.InvGui then
            data.InvGui.Enabled = false
        end

        if data.AllGui then
            data.AllGui.Enabled = false
        end
    end
end

-- เปิดอันใดอันหนึ่งได้ทีละอัน: เปิดอันใหม่ → อันเก่าปิดเอง
InvToggleSlots = VisualGroupInv:Toggle("Inventory", "แสดงไอเทม 5 ช่อง", false, function(state)
    if state then
        if InvToggleAll then
            InvToggleAll.Set(false, true)
        end

        ApplyInvMode("slots")
    elseif Config.InvMode == "slots" then
        ApplyInvMode(false)
    end
end, "Inventory")

InvToggleAll = VisualGroupInv:Toggle("Inventory (All)", "แสดงไอเทมทุกชิ้น", false, function(state)
    if state then
        if InvToggleSlots then
            InvToggleSlots.Set(false, true)
        end

        ApplyInvMode("all")
    elseif Config.InvMode == "all" then
        ApplyInvMode(false)
    end
end, "InventoryAll")

VisualGroupInv:Slider("ระยะแสดงกระเป๋า", 20, 1000, 150, "studs", function(value)
    Config.InvDistance = value
end, 10, "InvDistance")

Safe("PlayerTab", function()
local PlayerTab = Win:Tab({
    Title = "Player",
    Subtitle = "Movement & Stats",
    Icon = Flexozy.Icons.Refresh
})

local StaminaGroup = PlayerTab:Group("Stamina", "Left")

StaminaOnLock = function(idx)
    Win:Notify({
        Title = "Flexozy",
        Content = "ล็อกสเตมิน่าแล้ว (upvalue ตำแหน่ง " .. idx .. ")",
        Duration = 3,
        Type = "Success"
    })
end

Tg.InfStamina = StaminaGroup:Toggle("สเตมิน่าไม่ลด", "วิ่งแล้วสเตมิน่าไม่ลด", false, function(state)
    Config.InfStamina = state

    if state then
        local nFns, nVals = StartStamina()

        if nFns + nVals > 0 then
            Win:Notify({
                Title = "Flexozy",
                Content = string.format("พบปุ่มวิ่ง %d ฟังก์ชัน | ค่า Attribute %d ค่า (วิ่งสักครู่เพื่อให้ระบบจับค่า)", nFns, nVals),
                Duration = 4,
                Type = "Success"
            })
        elseif not StaminaSupported() then
            Win:Notify({
                Title = "Flexozy",
                Content = "executor ไม่รองรับ getconnections/debug ใช้ได้แค่แบบ Attribute",
                Duration = 4,
                Type = "Warning"
            })
        else
            Win:Notify({
                Title = "Flexozy",
                Content = "ยังไม่พบปุ่มวิ่งหรือค่าสเตมิน่า (สแกนต่อเรื่อยๆ) ลองวิ่งสักครู่",
                Duration = 4,
                Type = "Warning"
            })
        end
    else
        StopStamina()
    end
end, "InfStamina")
end)

Safe("FarmTab", function()
    local FarmTab = Win:Tab({
        Title = "Farm",
        Subtitle = "Auto job farm",
        Icon = Flexozy.Icons.Teleport
    })

    local FarmGroup = FarmTab:Group("Auto Farm", "Left")
    local FarmSet = FarmTab:Group("Farm Settings", "Right")
    local selectedFarmJob = nil
    local farmSettingControls = {
        construction = {},
        mechanic = {},
        trash = {},
    }

    local function setControlVisible(control, visible)
        if not control then return end
        if control.Instance then
            pcall(function() control.Instance.Visible = visible end)
        elseif control.Main then
            pcall(function() control.Main.Visible = visible end)
        end
    end

    local function addFarmSetting(category, control)
        farmSettingControls[category][#farmSettingControls[category] + 1] = control
        setControlVisible(control, false)
        return control
    end

    local function syncFarmSettings()
        local mode = selectedFarmJob
        for _, control in ipairs(farmSettingControls.construction) do
            setControlVisible(control, mode == "งานก่อสร้าง")
        end
        for _, control in ipairs(farmSettingControls.mechanic) do
            setControlVisible(control, mode == "งานซ่อมรถ")
        end
        for _, control in ipairs(farmSettingControls.trash) do
            setControlVisible(control, mode == "กวาดพื้น" or mode == "คุ้ยขยะ")
        end
    end

    FarmGroup:Dropdown("เลือกงานฟาร์ม", FarmAPI.JobNames, FarmAPI.Farm.Job, function(value)
        FarmAPI.SetJob(value)
        selectedFarmJob = value
        syncFarmSettings()
    end, "FarmJob")

    Tg.Farm = FarmGroup:Toggle("ฟาร์มอัตโนมัติ", "เดินทำงานตามโหมดที่เลือก", FarmAPI.Config.AutoFarm, function(state)
        if state then FarmAPI.Start() else FarmAPI.Stop() end
    end, "AutoFarm")

    addFarmSetting("trash", FarmGroup:Toggle("ขายของอัตโนมัติ", "ใช้กับโหมดกวาดพื้น/คุ้ยขยะ", FarmAPI.Config.AutoSellTrash, function(state)
        FarmAPI.Config.AutoSellTrash = state
        FarmAPI.Changed("AutoSellTrash", state)
    end, "FarmAutoSell"))

    addFarmSetting("construction", FarmSet:Dropdown("งานก่อสร้างที่ต้องการ", {"ตอกตะปู", "เชื่อมเหล็ก", "เจาะพื้น"}, FarmAPI.Config.ConstructionTask, function(value)
        FarmAPI.Config.ConstructionTask = value
        FarmAPI.Changed("ConstructionTask", value)
    end, "ConstructionTask"))

    addFarmSetting("construction", FarmSet:Toggle("รับเงินก่อสร้างอัตโนมัติ", "ไปรับค่าจ้างเมื่อถึงจำนวนที่ตั้งไว้", FarmAPI.Config.ConstructionCollect, function(state)
        FarmAPI.Config.ConstructionCollect = state
        FarmAPI.Changed("ConstructionCollect", state)
    end, "ConstructionCollect"))

    addFarmSetting("construction", FarmSet:Slider("รับเงินเมื่อสะสมครบ", 1, 100000, FarmAPI.Config.ConstructionCollectAt, "บาท", function(value)
        FarmAPI.Config.ConstructionCollectAt = value
        FarmAPI.Changed("ConstructionCollectAt", value)
    end, 1, "ConstructionCollectAt"))

    addFarmSetting("mechanic", FarmSet:Toggle("รับเงินงานซ่อมรถอัตโนมัติ", "ไปรับค่าจ้างซ่อมรถตามจำนวนที่ตั้งไว้", FarmAPI.Config.MechanicCollect, function(state)
        FarmAPI.Config.MechanicCollect = state
        FarmAPI.Changed("MechanicCollect", state)
    end, "MechanicCollect"))

    addFarmSetting("mechanic", FarmSet:Slider("รับเงินซ่อมรถเมื่อสะสมครบ", 1, 100000, FarmAPI.Config.MechanicCollectAt, "บาท", function(value)
        FarmAPI.Config.MechanicCollectAt = value
        FarmAPI.Changed("MechanicCollectAt", value)
    end, 1, "MechanicCollectAt"))

    addFarmSetting("trash", FarmSet:Slider("ขายของเมื่อสะสมครบ", 1, 1000, FarmAPI.Config.SellTrashAt, "ชิ้น", function(value)
        FarmAPI.Config.SellTrashAt = value
        FarmAPI.Changed("SellTrashAt", value)
    end, 1, "SellTrashAt"))

    -- แสดงเฉพาะการตั้งค่าที่ตรงกับประเภทงานที่เลือก
    syncFarmSettings()
end)

Safe("KeybindsTab", function()
local KeyTab = Win:Tab({
    Title = "Keybinds",
    Subtitle = "PC hotkeys",
    Icon = 10723416765
})

local KeyGroupAim = KeyTab:Group("Aim", "Left")
local KeyGroupInv = KeyTab:Group("Inventory", "Left")
local KeyGroupPlayer = KeyTab:Group("Player", "Left")
local KeyGroupESP = KeyTab:Group("ESP", "Right")
local KeyGroupOpt = KeyTab:Group("Options", "Right")

local function NotifyKey(title, on)
    if not Config.KeybindNotify then return end

    Win:Notify({
        Title = "Flexozy",
        Content = title .. ": " .. (on and "ON" or "OFF"),
        Duration = 1.5,
        Type = on and "Success" or "Info"
    })
end

local KeyObjects = {}

-- ผูกปุ่มลัดกับ Toggle (กดแล้วสลับเปิด/ปิด และสวิตช์ใน UI เปลี่ยนตาม)
local function BindToggle(group, title, toggle, flag)
    local kb = group:Keybind({
        Title = title,
        Default = Enum.KeyCode.Unknown,
        Flag = "Key_" .. flag,
        Callback = function()
            local new = not toggle.Get()
            toggle.Set(new)
            NotifyKey(title, new)
        end
    })

    table.insert(KeyObjects, kb)
end

BindToggle(KeyGroupAim, "SilentAim", Tg.SilentAim, "SilentAim")
BindToggle(KeyGroupAim, "แสดง FOV", Tg.ShowFOV, "ShowFOV")
BindToggle(KeyGroupAim, "เส้นชี้เป้า", Tg.TargetLine, "TargetLine")

BindToggle(KeyGroupInv, "Inventory", InvToggleSlots, "Inventory")
BindToggle(KeyGroupInv, "Inventory (All)", InvToggleAll, "InventoryAll")

BindToggle(KeyGroupPlayer, "สเตมิน่าไม่ลด", Tg.InfStamina, "InfStamina")
BindToggle(KeyGroupPlayer, "ฟาร์มอัตโนมัติ", Tg.Farm, "AutoFarm")

table.insert(KeyObjects, KeyGroupESP:Keybind({
    Title = "ESP ทั้งหมด",
    Default = Enum.KeyCode.Unknown,
    Flag = "Key_ESPAll",
    Callback = function()
        local on = not AnyESP()

        for _, k in ipairs({"Names", "Boxes", "Health", "Distance", "Skeleton", "Tracers"}) do
            Tg[k].Set(on)
        end

        NotifyKey("ESP ทั้งหมด", on)
    end
}))

BindToggle(KeyGroupESP, "ชื่อ", Tg.Names, "Names")
BindToggle(KeyGroupESP, "กล่อง", Tg.Boxes, "Boxes")
BindToggle(KeyGroupESP, "เลือด", Tg.Health, "Health")
BindToggle(KeyGroupESP, "ระยะ", Tg.Distance, "Distance")
BindToggle(KeyGroupESP, "โครงกระดูก", Tg.Skeleton, "Skeleton")
BindToggle(KeyGroupESP, "เส้นโยง", Tg.Tracers, "Tracers")

KeyGroupOpt:Toggle("แจ้งเตือนเมื่อกดปุ่มลัด", nil, true, function(state)
    Config.KeybindNotify = state
end, "KeybindNotify")

KeyGroupOpt:Button("รีเซ็ตคีย์ลัดทั้งหมด", "ล้างปุ่มลัดที่ตั้งไว้ทุกอัน", function()
    for _, kb in ipairs(KeyObjects) do
        kb.Set(Enum.KeyCode.Unknown)
    end

    Win:Notify({
        Title = "Flexozy",
        Content = "รีเซ็ตคีย์ลัดทั้งหมดแล้ว",
        Duration = 2,
        Type = "Success"
    })
end)

KeyGroupOpt:Label("คลิกช่องแล้วกดปุ่มที่ต้องการ | Esc = ยกเลิก | Backspace = ล้างปุ่ม")
end)

-- หมวด "หนีตำรวจ" สร้างตรงนี้เพื่อให้อยู่เหนือ Settings (ใส่ฟังก์ชันจริงทีหลังท้ายไฟล์)
local PoliceTab
Safe("PoliceTabCreate", function()
    PoliceTab = Win:Tab({
        Title = "หนีตำรวจ",
        Subtitle = "Escape Police",
        Icon = Flexozy.Icons.Skull
    })
end)

local SettingsTab = Win:Tab({
    Title = "Settings",
    Subtitle = "Interface options",
    Icon = Flexozy.Icons.Settings
})

Safe("BuildSettings", function()
    Win:BuildSettings(SettingsTab)
end)

-- ========== Overlay (FOV / Tracer / Inventory) ==========

local OverlayGui = Instance.new("ScreenGui")
OverlayGui.Name = "FLEXOZY_UI_OVERLAY"
OverlayGui.ResetOnSpawn = false
OverlayGui.IgnoreGuiInset = true
ProtectParent(OverlayGui)

local FOVCircle = Instance.new("Frame")
FOVCircle.AnchorPoint = Vector2.new(0.5, 0.5)
FOVCircle.Position = UDim2.new(0.5, 0, 0.5, 0)
FOVCircle.Size = UDim2.new(0, Config.FOV * 2, 0, Config.FOV * 2)
FOVCircle.BackgroundTransparency = 1
FOVCircle.Visible = false
FOVCircle.Parent = OverlayGui

Instance.new("UICorner", FOVCircle).CornerRadius = UDim.new(1, 0)
Instance.new("UIStroke", FOVCircle).Color = Color3.fromRGB(80, 180, 255)

-- เส้นชี้เป้า: เส้นบาง 1px สีชมพู + เงาจางๆ + จุดวงกลมที่ตัวเป้าหมาย
-- ใช้ Drawing ถ้า executor รองรับ ถ้าไม่รองรับ (หรือตั้งค่าไม่ได้) จะใช้ Frame แทนอัตโนมัติ
local AIM_COLOR = Color3.fromRGB(236, 72, 153)

local AimLineShadow = MakeDrawing("Line", {Color = Color3.fromRGB(0, 0, 0), Thickness = 3, Transparency = 0.45, Visible = false})
local AimLine = MakeDrawing("Line", {Color = AIM_COLOR, Thickness = 1, Transparency = 1, Visible = false})
local AimDotShadow = MakeDrawing("Circle", {Color = Color3.fromRGB(0, 0, 0), Radius = 4, NumSides = 24, Filled = true, Transparency = 0.45, Visible = false})
local AimDot = MakeDrawing("Circle", {Color = AIM_COLOR, Radius = 2.5, NumSides = 24, Filled = true, Transparency = 1, Visible = false})

local UseDrawingAim = AimLineShadow ~= nil and AimLine ~= nil and AimDotShadow ~= nil and AimDot ~= nil

local AimFrameLine = Instance.new("Frame")
AimFrameLine.AnchorPoint = Vector2.new(0.5, 0.5)
AimFrameLine.BackgroundColor3 = AIM_COLOR
AimFrameLine.BorderSizePixel = 0
AimFrameLine.Visible = false
AimFrameLine.Parent = OverlayGui

local AimFrameDot = Instance.new("Frame")
AimFrameDot.AnchorPoint = Vector2.new(0.5, 0.5)
AimFrameDot.Size = UDim2.fromOffset(6, 6)
AimFrameDot.BackgroundColor3 = AIM_COLOR
AimFrameDot.BorderSizePixel = 0
AimFrameDot.Visible = false
AimFrameDot.Parent = OverlayGui

Instance.new("UICorner", AimFrameDot).CornerRadius = UDim.new(1, 0)

if not UseDrawingAim then
    warn("[CipherHUB] Drawing ใช้ไม่ได้บน executor นี้ เส้นชี้เป้าจะใช้ Frame แทน")
end

local function HideAimLine()
    if UseDrawingAim then
        AimLineShadow.Visible = false
        AimLine.Visible = false
        AimDotShadow.Visible = false
        AimDot.Visible = false
    else
        AimFrameLine.Visible = false
        AimFrameDot.Visible = false
    end
end

local function ShowAimLine(center, target)
    local delta = target - center
    local dist = delta.Magnitude

    -- เว้นช่องว่างรอบกลางจอและรอบจุดเป้า เส้นจะไม่รกเป้าเล็ง
    local showLine = dist > 18
    local from, to

    if showLine then
        local dir = delta.Unit
        from = center + dir * 10
        to = target - dir * 5
    end

    if UseDrawingAim then
        if showLine then
            AimLineShadow.From = from
            AimLineShadow.To = to
            AimLine.From = from
            AimLine.To = to
        end

        AimLineShadow.Visible = showLine
        AimLine.Visible = showLine

        AimDotShadow.Position = target
        AimDot.Position = target
        AimDotShadow.Visible = true
        AimDot.Visible = true
    else
        if showLine then
            local mid = (from + to) / 2

            AimFrameLine.Size = UDim2.fromOffset((to - from).Magnitude, 1)
            AimFrameLine.Position = UDim2.fromOffset(mid.X, mid.Y)
            AimFrameLine.Rotation = math.deg(math.atan2(delta.Y, delta.X))
        end

        AimFrameLine.Visible = showLine
        AimFrameDot.Position = UDim2.fromOffset(target.X, target.Y)
        AimFrameDot.Visible = true
    end
end

local TargetInfo = Instance.new("Frame")
TargetInfo.Size = UDim2.new(0, 280, 0, 24)
TargetInfo.Position = UDim2.new(0.5, -140, 0.15, 0)
TargetInfo.BackgroundColor3 = Color3.fromRGB(14, 15, 22)
TargetInfo.BackgroundTransparency = 0.15
TargetInfo.Visible = false
TargetInfo.Parent = OverlayGui

Instance.new("UICorner", TargetInfo).CornerRadius = UDim.new(0, 6)

local TargetLabel = Instance.new("TextLabel")
TargetLabel.Size = UDim2.new(1, 0, 1, 0)
TargetLabel.BackgroundTransparency = 1
TargetLabel.Font = Enum.Font.GothamBold
TargetLabel.TextColor3 = Color3.new(1, 1, 1)
TargetLabel.TextSize = 11
TargetLabel.Text = "FOV: 0"
TargetLabel.Parent = TargetInfo

-- ========== Inventory UI (5 fixed slots) ==========

local SLOT_STYLE = {
    held = {
        bg = Color3.fromRGB(20, 43, 37), bgT = 0.05,
        stroke = Color3.fromRGB(65, 235, 160), strokeT = 0, thick = 1.5,
        text = Color3.fromRGB(130, 255, 195),
    },
    bag = {
        bg = Color3.fromRGB(24, 28, 40), bgT = 0.1,
        stroke = Color3.fromRGB(100, 125, 160), strokeT = 0.25, thick = 1,
        text = Color3.fromRGB(225, 230, 245),
    },
    empty = {
        bg = Color3.fromRGB(16, 19, 28), bgT = 0.5,
        stroke = Color3.fromRGB(70, 80, 100), strokeT = 0.65, thick = 1,
        text = Color3.fromRGB(110, 120, 140),
    },
}

local function BuildInventoryGui(parent, count)
    local cols = Config.INV_MAX_SLOTS
    count = count or cols
    local rows = math.max(1, math.ceil(count / cols))
    local total = rows * cols
    local sw, sh = Config.INV_SLOT_W, Config.INV_SLOT_H
    local gap, pad = Config.INV_SPACING, Config.INV_PADDING

    local rowW = cols * sw + (cols - 1) * gap
    local rowH = rows * sh + (rows - 1) * gap
    local width = rowW + pad * 2
    local height = rowH + pad * 2

    local gui = Instance.new("BillboardGui")
    gui.Name = "InventoryGui"
    gui.Size = UDim2.fromOffset(width, height)
    gui.StudsOffset = Vector3.new(0, Config.INV_OFFSET_Y, 0)
    gui.AlwaysOnTop = true
    gui.ClipsDescendants = false
    gui.Enabled = false
    gui.Parent = parent

    local frame = Instance.new("Frame")
    frame.Size = UDim2.fromScale(1, 1)
    frame.BackgroundColor3 = Color3.fromRGB(10, 13, 21)
    frame.BackgroundTransparency = 0.1
    frame.BorderSizePixel = 0
    frame.Parent = gui

    Instance.new("UICorner", frame).CornerRadius = UDim.new(0, 10)

    local frameStroke = Instance.new("UIStroke")
    frameStroke.Color = Color3.fromRGB(90, 115, 155)
    frameStroke.Transparency = 0.2
    frameStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
    frameStroke.Parent = frame

    local row = Instance.new("Frame")
    row.Position = UDim2.fromOffset(pad, pad)
    row.Size = UDim2.fromOffset(rowW, rowH)
    row.BackgroundTransparency = 1
    row.Parent = frame

    local layout = Instance.new("UIGridLayout")
    layout.CellSize = UDim2.fromOffset(sw, sh)
    layout.CellPadding = UDim2.fromOffset(gap, gap)
    layout.FillDirection = Enum.FillDirection.Horizontal
    layout.FillDirectionMaxCells = cols
    layout.SortOrder = Enum.SortOrder.LayoutOrder
    layout.HorizontalAlignment = Enum.HorizontalAlignment.Left
    layout.VerticalAlignment = Enum.VerticalAlignment.Top
    layout.Parent = row

    local slots = {}

    for i = 1, total do
        local slot = Instance.new("Frame")
        slot.LayoutOrder = i
        slot.Size = UDim2.fromOffset(sw, sh)
        slot.BorderSizePixel = 0
        slot.Parent = row

        Instance.new("UICorner", slot).CornerRadius = UDim.new(0, 8)

        local stroke = Instance.new("UIStroke")
        stroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
        stroke.Parent = slot

        local index = Instance.new("TextLabel")
        index.BackgroundTransparency = 1
        index.Position = UDim2.fromOffset(4, 2)
        index.Size = UDim2.fromOffset(14, 10)
        index.Font = Enum.Font.GothamBold
        index.TextSize = 8
        index.Text = tostring(i)
        index.TextXAlignment = Enum.TextXAlignment.Left
        index.ZIndex = 3
        index.Parent = slot

        local iconSize = Config.INV_ICON_SIZE

        local icon = Instance.new("ImageLabel")
        icon.AnchorPoint = Vector2.new(0.5, 0)
        icon.Position = UDim2.new(0.5, 0, 0, 7)
        icon.Size = UDim2.fromOffset(iconSize, iconSize)
        icon.BackgroundTransparency = 1
        icon.ScaleType = Enum.ScaleType.Fit
        icon.Visible = false
        icon.Parent = slot

        local letter = Instance.new("TextLabel")
        letter.AnchorPoint = Vector2.new(0.5, 0)
        letter.Position = UDim2.new(0.5, 0, 0, 7)
        letter.Size = UDim2.fromOffset(iconSize, iconSize)
        letter.BackgroundTransparency = 1
        letter.Font = Enum.Font.GothamBlack
        letter.TextSize = 20
        letter.Text = ""
        letter.Visible = false
        letter.Parent = slot

        local name = Instance.new("TextLabel")
        name.AnchorPoint = Vector2.new(0.5, 1)
        name.Position = UDim2.new(0.5, 0, 1, -4)
        name.Size = UDim2.new(1, -6, 0, 12)
        name.BackgroundTransparency = 1
        name.Font = Enum.Font.GothamMedium
        name.TextSize = 9
        name.TextTruncate = Enum.TextTruncate.AtEnd
        name.TextXAlignment = Enum.TextXAlignment.Center
        name.Text = ""
        name.Parent = slot

        slots[i] = {
            Frame = slot, Stroke = stroke, Index = index,
            Icon = icon, Letter = letter, Name = name,
        }
    end

    return gui, slots, rows
end

local function SetSlot(s, tool, state)
    local st = SLOT_STYLE[state]

    s.Frame.BackgroundColor3 = st.bg
    s.Frame.BackgroundTransparency = st.bgT
    s.Stroke.Color = st.stroke
    s.Stroke.Transparency = st.strokeT
    s.Stroke.Thickness = st.thick
    s.Index.TextColor3 = st.text
    s.Index.TextTransparency = state == "empty" and 0.5 or 0.3

    if not tool then
        s.Icon.Visible = false
        s.Letter.Visible = false
        s.Name.Text = ""
        return
    end

    local iconId = GetToolIcon(tool)
    s.Name.Text = tool.Name
    s.Name.TextColor3 = st.text

    if iconId ~= "" then
        s.Icon.Image = iconId
        s.Icon.Visible = true
        s.Letter.Visible = false
    else
        s.Icon.Visible = false
        s.Letter.Text = string.upper(string.sub(tool.Name, 1, 1))
        s.Letter.TextColor3 = st.stroke
        s.Letter.Visible = true
    end
end

local function GetInv(player)
    local d = InvData[player]

    if not d then
        d = {
            LastInvUpdate = 0,
            EquippedOrder = {},
            EquippedCounter = 0,
        }
        InvData[player] = d
    end

    return d
end

local function EnsureInvGui(d)
    if not d.InvGui then
        d.InvGui, d.InvSlots = BuildInventoryGui(OverlayGui, Config.INV_MAX_SLOTS)
    end
end

local function EnsureAllGui(d)
    if not d.AllGui then
        d.AllGui, d.AllSlots, d.AllRows = BuildInventoryGui(OverlayGui, Config.INV_MAX_SLOTS)
    end
end

local function HideInv(d)
    if d.InvGui then
        d.InvGui.Enabled = false
    end

    if d.AllGui then
        d.AllGui.Enabled = false
    end
end

local function RemoveInv(player)
    local d = InvData[player]
    if not d then return end

    if d.InvGui then
        pcall(function() d.InvGui:Destroy() end)
    end

    if d.AllGui then
        pcall(function() d.AllGui:Destroy() end)
    end

    InvData[player] = nil
end

local function UpdatePlayerInventory(player, data, force)
    local mode = Config.InvMode
    if not mode or not data then return end

    local gui = mode == "slots" and data.InvGui or data.AllGui
    if not gui then return end

    local now = os.clock()
    if not force and now - data.LastInvUpdate < 0.25 then return end
    data.LastInvUpdate = now

    local equipped, backpack = GetInventoryList(player, data)
    local combined = {}

    for _, item in ipairs(equipped) do
        table.insert(combined, {Tool = item.Tool, Held = true})
    end

    for _, item in ipairs(backpack) do
        table.insert(combined, {Tool = item.Tool, Held = false})
    end

    local slots

    if mode == "slots" then
        slots = data.InvSlots
    else
        -- โหมดทั้งหมด: เพิ่มแถวตามจำนวนไอเทม (แถวละ 5 ช่อง)
        local cols = Config.INV_MAX_SLOTS
        local count = math.min(#combined, Config.INV_ALL_MAX)
        local rows = math.max(1, math.ceil(count / cols))

        if rows ~= data.AllRows then
            local old = data.AllGui
            local newGui, newSlots, newRows = BuildInventoryGui(OverlayGui, rows * cols)

            newGui.Adornee = old.Adornee
            newGui.Enabled = old.Enabled
            old:Destroy()

            data.AllGui, data.AllSlots, data.AllRows = newGui, newSlots, newRows
        end

        slots = data.AllSlots
    end

    for i, s in ipairs(slots) do
        local entry = combined[i]

        if entry and entry.Tool and entry.Tool.Parent then
            SetSlot(s, entry.Tool, entry.Held and "held" or "bag")
        else
            SetSlot(s, nil, "empty")
        end
    end
end

Players.PlayerRemoving:Connect(function(player)
    removeESP(player)
    RemoveInv(player)
end)

-- ========== Render loop (Aim overlay + Inventory) ==========

local lastOverlayError

local function RenderOverlay()
    Camera = Workspace.CurrentCamera or Camera
    local aimCenter = GetAimCenter()
    FOVCircle.Size = UDim2.fromOffset(Config.FOV * 2, Config.FOV * 2)
    FOVCircle.Position = UDim2.fromOffset(aimCenter.X, aimCenter.Y)
    FOVCircle.Visible = Config.ShowFOV
    local targetPart = GetTarget()

    if Config.SilentAim then
        TargetInfo.Visible = true
        TargetLabel.Text = string.format("Targets: %d | Hook: %s | %s", TargetCount, Hooked and "ON" or "OFF", hookStatus)

        local shown = false

        if Config.ShowTracer and CurrentTarget and CurrentTarget.Character then
            local part = targetPart
            if not part or not part:IsDescendantOf(CurrentTarget.Character) then
                part = CurrentTarget.Character:FindFirstChild(Config.AimPart)
                    or CurrentTarget.Character:FindFirstChild("Head")
                    or CurrentTarget.Character:FindFirstChild("HumanoidRootPart")
            end

            if part then
                local pos, onScreen = Camera:WorldToViewportPoint(part.Position)
                if onScreen and pos.Z > 0 then
                    ShowAimLine(aimCenter, Vector2.new(pos.X, pos.Y))
                    shown = true
                end
            end
        end

        if not shown then
            HideAimLine()
        end
    else
        HideAimLine()
        TargetInfo.Visible = false
    end

    -- Inventory
    local mode = Config.InvMode

    if not mode then
        for _, d in pairs(InvData) do
            HideInv(d)
        end
        return
    end

    for _, player in ipairs(Players:GetPlayers()) do
        if player ~= LocalPlayer then
            local d = GetInv(player)
            local char = player.Character
            local humanoid = char and char:FindFirstChildOfClass("Humanoid")
            local root = char and (
                char:FindFirstChild("HumanoidRootPart")
                or char:FindFirstChild("Torso")
                or char:FindFirstChild("UpperTorso")
            )

            local show = false

            if char and humanoid and humanoid.Health > 0 and root then
                local hidden = Config.TeamCheck
                    and player.Team
                    and LocalPlayer.Team
                    and player.Team == LocalPlayer.Team

                if not hidden
                    and (root.Position - Camera.CFrame.Position).Magnitude > Config.InvDistance then
                    hidden = true
                end

                if not hidden and Config.WallCheck then
                    hidden = IsWallBlocked(
                        Camera.CFrame.Position,
                        root.Position,
                        char
                    )
                end

                show = not hidden
            end

            if show then
                local gui

                if mode == "slots" then
                    EnsureInvGui(d)
                    gui = d.InvGui

                    if d.AllGui then
                        d.AllGui.Enabled = false
                    end
                else
                    EnsureAllGui(d)
                    gui = d.AllGui

                    if d.InvGui then
                        d.InvGui.Enabled = false
                    end
                end

                gui.Adornee = root
                gui.Enabled = true
                UpdatePlayerInventory(player, d)

                -- gui อาจถูกสร้างใหม่ตอนจำนวนแถวเปลี่ยน
                if mode == "all" and d.AllGui and d.AllGui ~= gui then
                    d.AllGui.Adornee = root
                    d.AllGui.Enabled = true
                end
            else
                HideInv(d)
            end
        end
    end
end

RunService.RenderStepped:Connect(function()
    local ok, err = pcall(RenderOverlay)

    if not ok and err ~= lastOverlayError then
        lastOverlayError = err
        warn("[CipherHUB] Render error: " .. tostring(err))
    end
end)

local function HookCharacterInventory(player)
    local function hookContainer(container, isCharacter)
        if not container then return end

        container.ChildAdded:Connect(function(child)
            if child:IsA("Tool") then
                local data = GetInv(player)

                if isCharacter then
                    data.EquippedCounter += 1
                    data.EquippedOrder[child] = data.EquippedCounter
                end

                if Config.InvMode then
                    UpdatePlayerInventory(player, data, true)
                end
            end
        end)

        container.ChildRemoved:Connect(function(child)
            if child:IsA("Tool") then
                local data = InvData[player]

                if data and Config.InvMode then
                    UpdatePlayerInventory(player, data, true)
                end
            end
        end)
    end

    if player.Character then
        hookContainer(player.Character, true)
    end

    player.CharacterAdded:Connect(function(char)
        hookContainer(char, true)
    end)

    local bp = player:FindFirstChild("Backpack")

    if bp then
        hookContainer(bp, false)
    end

    player.ChildAdded:Connect(function(child)
        if child.Name == "Backpack" then
            hookContainer(child, false)
        end
    end)
end

for _, plr in ipairs(Players:GetPlayers()) do
    if plr ~= LocalPlayer then
        HookCharacterInventory(plr)
    end
end

Players.PlayerAdded:Connect(HookCharacterInventory)

print("[Flexozy] Loaded")

-- ═══════════════════════════════════════════════════════════════
--  CIPHER HUB REBRAND PATCH
--  วางต่อท้ายไฟล์หลัง print("[Flexozy] Loaded")
-- ═══════════════════════════════════════════════════════════════

-- [1] อัปเดตชื่อ window ที่สร้างไปแล้ว (ถ้า UI lib รองรับ)
if Win then
    pcall(function()
        if Win.SetTitle then Win:SetTitle("CIPHER HUB") end
        if Win.Title then
            local titleLbl = Win.Title
            if typeof(titleLbl) == "Instance" and titleLbl:IsA("TextLabel") then
                titleLbl.Text = "CIPHER HUB"
            end
        end
    end)
end

-- [2] เปลี่ยน monogram ถ้าเป็น TextLabel ที่มีอยู่
pcall(function()
    local gui = CoreGui:FindFirstChild("CIPHER HUB") or CoreGui:FindFirstChild("Flexozy")
    if gui then
        gui.Name = "CIPHER HUB"
        for _, d in ipairs(gui:GetDescendants()) do
            if d:IsA("TextLabel") and d.Text == "FX" then
                d.Text = "CH"
            end
        end
    end
end)

-- [3] (ลบ SetAccent("Cyan") ออก เพราะสงสัยว่า library ไม่รู้จักชื่อสีนี้)

-- [4] แก้ Notify ทุกอันให้ขึ้นชื่อ CIPHER HUB
if Win and Win.Notify then
    local _origNotify = Win.Notify
    Win.Notify = function(self, opts)
        if type(opts) == "table" and opts.Title == "Flexozy" then
            opts.Title = "CIPHER HUB"
        end
        return _origNotify(self, opts)
    end
end

-- [5] เปลี่ยน Overlay GUI name
if OverlayGui then
    pcall(function() OverlayGui.Name = "CIPHER_HUB_OVERLAY" end)
end

-- [6] แก้ TargetLabel ให้ขึ้นชื่อค่าย
if TargetLabel then
    local _origText = TargetLabel.Text
    TargetLabel.Text = string.gsub(_origText or "", "Flexozy", "CIPHER HUB")
    -- อัปเดตทุกเฟรมถ้าต้องการ (ใน RenderOverlay ทำอยู่แล้ว แต่แก้ string.format)
end

-- [7] เพิ่ม watermark มุมขวาล่าง (สวยๆ)
local Watermark = Instance.new("ScreenGui")
Watermark.Name = "CIPHER_HUB_Watermark"
Watermark.ResetOnSpawn = false
Watermark.IgnoreGuiInset = true
pcall(function() Watermark.Parent = CoreGui end)
if not Watermark.Parent then
    Watermark.Parent = LocalPlayer:WaitForChild("PlayerGui")
end

local WMLabel = Instance.new("TextLabel")
WMLabel.AnchorPoint = Vector2.new(1, 1)
WMLabel.Position = UDim2.new(1, -12, 1, -12)
WMLabel.Size = UDim2.fromOffset(180, 22)
WMLabel.BackgroundTransparency = 1
WMLabel.Font = Enum.Font.GothamBlack
WMLabel.TextSize = 12
WMLabel.TextColor3 = Color3.fromRGB(0, 220, 255)
WMLabel.TextStrokeTransparency = 0.5
WMLabel.TextStrokeColor3 = Color3.new(0, 0, 0)
WMLabel.TextXAlignment = Enum.TextXAlignment.Right
WMLabel.Text = "CIPHER HUB"
WMLabel.Parent = Watermark

-- subtle glow effect
local WMStroke = Instance.new("UIStroke", WMLabel)
WMStroke.Color = Color3.fromRGB(0, 180, 255)
WMStroke.Thickness = 0.5
WMStroke.Transparency = 0.6

-- [8] เพิ่ม version watermark
local WMLabel2 = Instance.new("TextLabel")
WMLabel2.AnchorPoint = Vector2.new(1, 1)
WMLabel2.Position = UDim2.new(1, -12, 1, -30)
WMLabel2.Size = UDim2.fromOffset(180, 14)
WMLabel2.BackgroundTransparency = 1
WMLabel2.Font = Enum.Font.Gotham
WMLabel2.TextSize = 9
WMLabel2.TextColor3 = Color3.fromRGB(120, 200, 255)
WMLabel2.TextStrokeTransparency = 0.7
WMLabel2.TextXAlignment = Enum.TextXAlignment.Right
WMLabel2.Text = "v2.0 | Premium"
WMLabel2.Parent = Watermark

-- [9] เพิ่ม Splash screen ตอนโหลด (เท่ๆ)
local Splash = Instance.new("ScreenGui")
Splash.Name = "CIPHER_HUB_Splash"
Splash.ResetOnSpawn = false
Splash.IgnoreGuiInset = true
Splash.DisplayOrder = 9999
pcall(function() Splash.Parent = CoreGui end)
if not Splash.Parent then
    Splash.Parent = LocalPlayer:WaitForChild("PlayerGui")
end

local SplashBG = Instance.new("Frame")
SplashBG.Size = UDim2.fromScale(1, 1)
SplashBG.BackgroundColor3 = Color3.fromRGB(8, 10, 18)
SplashBG.BackgroundTransparency = 0.05
SplashBG.BorderSizePixel = 0
SplashBG.Parent = Splash

local SplashTitle = Instance.new("TextLabel")
SplashTitle.AnchorPoint = Vector2.new(0.5, 0.5)
SplashTitle.Position = UDim2.fromScale(0.5, 0.5)
SplashTitle.Size = UDim2.fromOffset(600, 80)
SplashTitle.BackgroundTransparency = 1
SplashTitle.Font = Enum.Font.GothamBlack
SplashTitle.TextSize = 48
SplashTitle.TextColor3 = Color3.fromRGB(0, 220, 255)
SplashTitle.TextStrokeTransparency = 0.3
SplashTitle.TextStrokeColor3 = Color3.new(0, 0, 0)
SplashTitle.Text = "CIPHER HUB"
SplashTitle.Parent = SplashBG

local SplashSub = Instance.new("TextLabel")
SplashSub.AnchorPoint = Vector2.new(0.5, 0)
SplashSub.Position = UDim2.fromScale(0.5, 0.55)
SplashSub.Size = UDim2.fromOffset(600, 24)
SplashSub.BackgroundTransparency = 1
SplashSub.Font = Enum.Font.Gotham
SplashSub.TextSize = 14
SplashSub.TextColor3 = Color3.fromRGB(180, 220, 255)
SplashSub.Text = "Premium Script v2.0 — Loading..."
SplashSub.Parent = SplashBG

local SplashStroke = Instance.new("UIStroke", SplashTitle)
SplashStroke.Color = Color3.fromRGB(0, 150, 220)
SplashStroke.Thickness = 2
SplashStroke.Transparency = 0.4

-- fade out หลัง 1.5 วิ
task.spawn(function()
    task.wait(1.5)
    for i = 1, 20 do
        SplashBG.BackgroundTransparency = 0.05 + (i / 20) * 0.95
        SplashTitle.TextTransparency = i / 20
        SplashSub.TextTransparency = i / 20
        SplashStroke.Transparency = 0.4 + (i / 20) * 0.6
        task.wait(0.03)
    end
    Splash:Destroy()
end)

-- [10] Debug helper (เปลี่ยนชื่อ)
getgenv().CipherDebug = function()
    print("=== CIPHER HUB DEBUG ===")
    print("Version: v2.0")
    print("SilentAim:", Config.SilentAim)
    print("Hooked:", Hooked)
    print("Hook status:", hookStatus)
    print("Current target:", CurrentTarget and CurrentTarget.Name or "none")
    print("ESP enemies:", #S.enemies)
    print("InfStamina:", Config.InfStamina)
end

-- [11] Cleanup handler
getgenv().__CipherCleanup = function()
    pcall(function()
        Config.SilentAim = false
        Config.InfStamina = false
        Config.NoRecoil = false
        Config.NoSpread = false
        pcall(function() Recoil.token += 1; Recoil.Restore() end)
        if getgenv().__SentorumSailueat and getgenv().__SentorumSailueat.Cleanup then
            getgenv().__SentorumSailueat.Cleanup()
        end
        for handler, wrapper in pairs(HookedHandlers) do
            if handler.SimulateProjectile == wrapper and HookOriginals[handler] then
                handler.SimulateProjectile = HookOriginals[handler]
            end
        end
        if ESPHolder then ESPHolder:Destroy() end
        if OverlayGui then OverlayGui:Destroy() end
        if Watermark then Watermark:Destroy() end
        if Splash then Splash:Destroy() end
    end)
    print("[CIPHER HUB] Cleaned up ✓")
end

-- [12] เปลี่ยน logo asset (ถ้าต้องการ)
-- แก้ตรง Logo = 112028775617493 ใน CreateWindow เป็น asset ID ของคุณ

print("[CIPHER HUB] Rebrand patch applied ✓")
print("[CIPHER HUB] Discord: https://discord.gg/WFUejxeggt")
print("[CIPHER HUB] Loaded successfully ✓")

-- ═══════════════════════════════════════════════════════════════
--  CIPHER HUB - หนีตำรวจ (Escape Police Features)
-- ═══════════════════════════════════════════════════════════════

-- ฟังก์ชันตัวแปรสำหรับเก็บสถานะ
local NoclipEnabled = false
local AntiTaserEnabled = false

-- ============================================================
-- 1. ระบบ No Clip (เดินทะลุ)
-- ============================================================
local NoclipConnection = nil

local function ToggleNoclip(state)
    NoclipEnabled = state
    if NoclipConnection then
        NoclipConnection:Disconnect()
        NoclipConnection = nil
    end

    if state then
        NoclipConnection = RunService.Stepped:Connect(function()
            local char = LocalPlayer.Character
            if char then
                for _, part in ipairs(char:GetDescendants()) do
                    if part:IsA("BasePart") and part.CanCollide then
                        part.CanCollide = false
                    end
                end
            end
        end)
    else
        -- คืนค่ากลับมาให้ชนปกติ
        local char = LocalPlayer.Character
        if char then
            for _, part in ipairs(char:GetDescendants()) do
                if part:IsA("BasePart") then
                    -- ถ้าเป็นส่วนแขนขาหรือตัว ให้ชนได้ปกติ
                    if part.Name ~= "HumanoidRootPart" then
                        pcall(function() part.CanCollide = true end)
                    end
                end
            end
        end
    end
end

-- ============================================================
-- 2. ระบบ ปิดการโดนซ็อต (Anti-Taser Stun)
-- ============================================================
local AntiTaserConnection = nil

local function ToggleAntiTaser(state)
    AntiTaserEnabled = state
    if AntiTaserConnection then
        AntiTaserConnection:Disconnect()
        AntiTaserConnection = nil
    end

    if state then
        AntiTaserConnection = RunService.Heartbeat:Connect(function()
            local char = LocalPlayer.Character
            if char then
                local humanoid = char:FindFirstChildOfClass("Humanoid")
                if humanoid then
                    -- ล้างสถานะการถูกสตัน (WalkSpeed = 0, JumpPower = 0)
                    if humanoid.WalkSpeed <= 0 then
                        humanoid.WalkSpeed = 16
                    end
                    if humanoid.JumpPower <= 0 then
                        humanoid.JumpPower = 50
                    end
                    
                    -- ลบ Effect การช็อตถ้ามี (เช่น ตัวแข็ง, ปรับ PlatformStand)
                    humanoid.PlatformStand = false
                    
                    -- ตรวจสอบ Attribute ที่เกมมักใช้สตัน
                    for attrName, v in pairs(char:GetAttributes()) do
                        if v == true then
                            local l = string.lower(attrName)
                            if string.find(l, "stun", 1, true) or string.find(l, "taser", 1, true) then
                                char:SetAttribute(attrName, false)
                            end
                        end
                    end
                end
            end
        end)
    end
end

-- ═══════════════════════════════════════════════════════════════
--  CIPHER HUB - ESP ตำรวจ (Police ESP)
--  ทีมตำรวจในแมพชื่อ "ตำรวจ" | วาดด้วย Frame (ไม่พึ่ง Drawing API)
-- ═══════════════════════════════════════════════════════════════

local PoliceESP = {
    Enabled = false,
    Range = 1000,                          -- studs (0 - 1000)
    Color = Color3.fromRGB(0, 120, 255),   -- สีน้ำเงิน
    TeamName = "ตำรวจ",
    Objects = {},                          -- [Player] = { holder, label }
    Connection = nil,
}

local function IsPolicePlayer(plr)
    if plr == LocalPlayer then return false end
    local team = plr.Team
    if not team then return false end
    local n = team.Name
    return n == PoliceESP.TeamName or string.lower(n):find("police", 1, true) ~= nil
end

local function PoliceESP_Create(plr)
    local existing = PoliceESP.Objects[plr]
    if existing and existing.holder.Parent then return existing end

    local holder = Instance.new("Frame")
    holder.Name = "PoliceESP"
    holder.BackgroundTransparency = 1
    holder.BorderSizePixel = 0
    holder.Size = UDim2.fromOffset(0, 0)
    holder.Visible = false
    holder.ZIndex = 20
    holder.Parent = ESPHolder

    local stroke = Instance.new("UIStroke")
    stroke.Color = PoliceESP.Color
    stroke.Thickness = 1.5
    stroke.LineJoinMode = Enum.LineJoinMode.Miter
    stroke.Parent = holder

    local label = Instance.new("TextLabel")
    label.AnchorPoint = Vector2.new(0.5, 1)
    label.Position = UDim2.new(0.5, 0, 0, -3)
    label.Size = UDim2.fromOffset(220, 14)
    label.BackgroundTransparency = 1
    label.Font = Enum.Font.GothamBold
    label.TextSize = 11
    label.TextColor3 = PoliceESP.Color
    label.TextStrokeTransparency = 0
    label.Text = ""
    label.ZIndex = 21
    label.Parent = holder

    local obj = {holder = holder, label = label}
    PoliceESP.Objects[plr] = obj
    return obj
end

local function PoliceESP_Hide(obj)
    obj.holder.Visible = false
end

local function PoliceESP_Remove(plr)
    local obj = PoliceESP.Objects[plr]
    if not obj then return end

    pcall(function() obj.holder:Destroy() end)
    PoliceESP.Objects[plr] = nil
end

local function PoliceESP_Step()
    Camera = Workspace.CurrentCamera or Camera
    if not Camera then return end

    local myChar = LocalPlayer.Character
    local myRoot = myChar and myChar:FindFirstChild("HumanoidRootPart")

    for _, plr in ipairs(Players:GetPlayers()) do
        if IsPolicePlayer(plr) then
            local obj = PoliceESP_Create(plr)
            local char = plr.Character
            local root = char and char:FindFirstChild("HumanoidRootPart")
            local hum = char and char:FindFirstChildOfClass("Humanoid")
            local shown = false

            if root and hum and hum.Health > 0 then
                local origin = myRoot and myRoot.Position or Camera.CFrame.Position
                local dist = (root.Position - origin).Magnitude

                if dist <= PoliceESP.Range then
                    local top, onTop = Camera:WorldToViewportPoint(root.Position + Vector3.new(0, 3, 0))
                    local bottom, onBottom = Camera:WorldToViewportPoint(root.Position - Vector3.new(0, 3.5, 0))

                    if onTop and onBottom and top.Z > 0 then
                        local h = math.max(math.abs(bottom.Y - top.Y), 4)
                        local w = h * 0.55

                        obj.holder.Position = UDim2.fromOffset(math.floor(top.X - w / 2), math.floor(math.min(top.Y, bottom.Y)))
                        obj.holder.Size = UDim2.fromOffset(math.floor(w), math.floor(h))
                        obj.label.Text = string.format("[ตำรวจ] %s [%dst]", plr.DisplayName or plr.Name, math.floor(dist))
                        obj.holder.Visible = true
                        shown = true
                    end
                end
            end

            if not shown then PoliceESP_Hide(obj) end
        elseif PoliceESP.Objects[plr] then
            PoliceESP_Remove(plr) -- เปลี่ยนทีมออกจากตำรวจแล้ว
        end
    end
end

local function TogglePoliceESP(state)
    PoliceESP.Enabled = state

    if PoliceESP.Connection then
        PoliceESP.Connection:Disconnect()
        PoliceESP.Connection = nil
    end

    if state then
        PoliceESP.Connection = RunService.RenderStepped:Connect(function()
            local ok, err = pcall(PoliceESP_Step)
            if not ok then warn("[PoliceESP] " .. tostring(err)) end
        end)
    else
        for plr in pairs(PoliceESP.Objects) do
            PoliceESP_Remove(plr)
        end
    end
end

Players.PlayerRemoving:Connect(PoliceESP_Remove)

-- ============================================================
-- สร้าง UI เมนู "หนีตำรวจ"
-- ============================================================
Safe("PoliceEscapeTab", function()
    -- สร้าง Tab ใหม่ชื่อ "หนีตำรวจ"
    local PoliceTab = PoliceTab or Win:Tab({
        Title = "หนีตำรวจ",
        Subtitle = "Escape Police",
        Icon = Flexozy.Icons.Skull -- ใช้ไอคอนกะโหลกให้เข้ากับการหนีตำรวจ
    })

    local PoliceGroup = PoliceTab:Group("ฟังก์ชันช่วยหนี", "Left")

    -- ฟังก์ชันที่ 1: No Clip
    Tg.NoClip = PoliceGroup:Toggle(
        "No Clip", 
        "ไว้ใช้ No Clip หนีเข้าบ้านที่เขียนว่าให้เช่า", -- คำอธิบายภาษาไทย
        false, 
        function(state)
            ToggleNoclip(state)
        end, 
        "NoClip"
    )

    -- ฟังก์ชันที่ 2: ปิดการโดนซ็อต
    Tg.AntiTaser = PoliceGroup:Toggle(
        "ปิดการโดนซ็อต", 
        "ปิดการโดนยิงปืน Taser ใส่", -- คำอธิบายภาษาไทย
        false, 
        function(state)
            ToggleAntiTaser(state)
        end, 
        "AntiTaser"
    )

    -- ฟังก์ชันที่ 3: ESP มองตำรวจ (สีน้ำเงิน)
    Tg.PoliceESP = PoliceGroup:Toggle(
        "ESP มองตำรวจ",
        "ESP มองตำรวจว่าอยู่ไหน (สีน้ำเงิน)",
        false,
        function(state)
            TogglePoliceESP(state)
        end,
        "PoliceESP"
    )

    -- สไลเดอร์ปรับระยะที่เห็นตำรวจ 0 - 1000 studs
    PoliceGroup:Slider("ระยะมองเห็นตำรวจ", 0, 1000, 1000, "studs", function(value)
        PoliceESP.Range = value
    end, 10, "PoliceESPRange")

    -- เพิ่มระบบคีย์ลัด (ถ้าต้องการ)
    -- Safe("PoliceKeybinds", function()
    --     -- คุณสามารถเพิ่มคีย์ลัดในแท็บ Keybinds ได้ที่นี่
    -- end)
end)
