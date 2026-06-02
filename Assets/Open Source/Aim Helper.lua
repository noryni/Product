--// [LOADER]

if not game:IsLoaded() then
    game.Loaded:Wait()
end

--// [SERVICES]

if typeof(cloneref) ~= 'function' then return warn('[Product] ─ Dependency Issue. ✨') end
local VirtualInputManager = cloneref(game:GetService('VirtualInputManager'))
local UserInputService = cloneref(game:GetService('UserInputService'))
local HttpService = cloneref(game:GetService('HttpService'))
local RunService = cloneref(game:GetService('RunService'))
local Workspace = cloneref(game:GetService('Workspace'))
local Players = cloneref(game:GetService('Players'))

local LocalPlayer = Players.LocalPlayer
local Camera = Workspace.CurrentCamera

--// [WHITELISTED]

local Is_WhiteListed = UserInputService.KeyboardEnabled and UserInputService.MouseEnabled
if not Is_WhiteListed then
    LocalPlayer:Kick([[
[Noryn] - Localization Issue. ✨
This product is only supported on PC.
]])
end

--// [SETTINGS]

local Settings = getgenv()

--// [CONFIGURATION]

local Current_Config = Settings.Current_Config
if not Current_Config then
	local Current_Config = {
    	Aim_Helper_Enabled = true,
    	Aim_Helper_Accuracy = '80%',
   	 	Aim_Helper_Target_Part = 'HumanoidRootPart',

    	Target_Closest_Distance_Check = 5,
    	Target_Down_Check = true,

    	Wall_Check = true,
    	Team_Check = true,

    	Smoothness = 3,  
    	Prediction = 0.05,  
    	Aim_Range = 200,

    	Y_Offset = 1.2,
    	X_Offset = 0,

    	Trigger_Bot = true,
    	Trigger_Bot_Accuracy = '70%', 
    	Trigger_Bot_Detection_Delay = 0.001, 

    	Resolver_Enabled = true,
    	Resolver_Strength = 0.9,  
    	Resolver_Max_Velocity = 300, 

    	Velocity_Spoofer_Enabled = false,
    	X_Velocity = 0,
    	Y_Velocity = 500,
    	Z_Velocity = 0,

    	Fov_Enabled = true,
    	Safety_Fov_Enabled = false,
    	Fov_Radius = 75,
    	Fov_Thickness = 1,
    	Fov_Transparency = 0.8,
    	Fov_Color = '173,164,207',

    	Hitbox_Enabled = true,
    	Hitbox_Mode = 'Target',
    	Hitbox_Size = 3,       
    	Hitbox_Transparency = 0.9,       
    	Hitbox_Color = '173,164,207',       
    	Hitbox_Material = Enum.Material.Neon,
    	Hitbox_Can_Collide = false,
 
    	Macro_Emote_Enabled = true, 
    	Macro_Emote_Id = '15610015346',
    	Macro_Emote_Keybind = Enum.KeyCode.V,
    	Macro_Emote_Stop_On_Move = true,

    	Fps_Stability_Enabled = true, 
    	Fps_Value = '200',

    	Print_Logs = true,
    	Join_Discord = false
	}
end

--// [CREDITS] ✨

if not Settings.Noryn_Loaded then Settings.Noryn_Loaded = true
    local Date = os.date('%d/%m/%Y')
    print(string.format([[
%s | v2.0.0

███╗░░██╗░█████╗░██████╗░██╗░░░██╗███╗░░██╗
████╗░██║██╔══██╗██╔══██╗╚██╗░██╔╝████╗░██║
██╔██╗██║██║░░██║██████╔╝░╚████╔╝░██╔██╗██║
██║╚████║██║░░██║██╔══██╗░░╚██╔╝░░██║╚████║
██║░╚███║╚█████╔╝██║░░██║░░░██║░░░██║░╚███║
╚═╝░░╚══╝░╚════╝░╚═╝░░╚═╝░░░╚═╝░░░╚═╝░░╚══╝
]], Date))
    warn('• @ Noryn | © COPYRIGHT 2026')
    VirtualInputManager:SendKeyEvent(true, Enum.KeyCode.F9, false, game)
else
    local Previous_Config = Settings.Noryn_Last_Config or {}
    local Changed = false
    for Key, Value in pairs(Current_Config) do
        if Previous_Config[Key] ~= nil and Previous_Config[Key] ~= Value then
            Changed = true
            break
        end
    end
    local Success, Error = pcall(function()
        if Changed then
            print('[Noryn] - Settings were successfully changed.')
        else
            print('[Noryn] - Script configs are already the same!')
        end
    end)
    if not Success then
        warn('[Noryn] - Failed to change settings: ' .. tostring(Error))
        VirtualInputManager:SendKeyEvent(true, Enum.KeyCode.F9, false, game)
    end
end

Settings.Noryn_Last_Config = table.clone(Current_Config)

--// [CLEANUP] 😭

if Settings.Aim_Helper_Connection then
    Settings.Aim_Helper_Connection:Disconnect()
    Settings.Aim_Helper_Connection = nil
end

if Settings.Target_Scanner_Running ~= nil then
    Settings.Target_Scanner_Running = false
end

if Settings.Velocity_Spoofer_Connection then
    Settings.Velocity_Spoofer_Connection:Disconnect()
    Settings.Velocity_Spoofer_Connection = nil
end

if Settings.Velocity_Spoofer_Restore_Connection then
    Settings.Velocity_Spoofer_Restore_Connection:Disconnect()
    Settings.Velocity_Spoofer_Restore_Connection = nil
end

if Settings.Hitbox_Updater_Running then
    Settings.Hitbox_Updater_Running = false
end

if Settings.Input_Began_Connection then
    Settings.Input_Began_Connection:Disconnect()
    Settings.Input_Began_Connection = nil
end

if Settings.Input_Ended_Connection then
    Settings.Input_Ended_Connection:Disconnect()
    Settings.Input_Ended_Connection = nil
end

if Settings.Stop_Macro_Emote then
    pcall(Settings.Stop_Macro_Emote)
end

if Settings.Macro_Emote_Input_Connection then
    Settings.Macro_Emote_Input_Connection:Disconnect()
    Settings.Macro_Emote_Input_Connection = nil
end

if Settings.Macro_Emote_Character_Connection then
    Settings.Macro_Emote_Character_Connection:Disconnect()
    Settings.Macro_Emote_Character_Connection = nil
end

if Settings.Aim_Helper_Fov then
    pcall(function() Settings.Aim_Helper_Fov:Remove() end)
    Settings.Aim_Helper_Fov = nil
end

if Settings.Hitbox_Originals then
    for HumanoidRootPart, Original in pairs(Settings.Hitbox_Originals) do
        if HumanoidRootPart and HumanoidRootPart.Parent then
            pcall(function()
                HumanoidRootPart.Size = Original.Size
                HumanoidRootPart.Transparency = Original.Transparency
                HumanoidRootPart.Color = Original.Color3
                HumanoidRootPart.Material = Original.Material
                HumanoidRootPart.CanCollide = Original.CanCollide
            end)
        end
    end
end

Settings.Hitbox_Originals = {}

--// [STATE]

Settings.Aim_Helper_Enabled = Current_Config.Aim_Helper_Enabled
Settings.Current_Target = nil
Settings.Aim_Accuracy = true
Settings.Aim_Helper_Rolled = false

Settings.Trigger_Bot = Current_Config.Trigger_Bot

Settings.Fov_Enabled = Current_Config.Fov_Enabled
Settings.Safety_Fov_Enabled = Current_Config.Safety_Fov_Enabled

Settings.Hitbox_Enabled = Current_Config.Hitbox_Enabled

Settings.Resolver_Enabled = Current_Config.Resolver_Enabled
Settings.Resolver_Strength = math.clamp(Current_Config.Resolver_Strength or 0.9, 0, 1)
Settings.Resolver_Max_Velocity = math.max(Current_Config.Resolver_Max_Velocity or 300, 1)

Settings.Resolver_Data = {}

--// [CACHE]

Settings.Cached_Target = nil
Settings.Target_Scanner_Running = false
Settings.Hitbox_Updater_Running = false

--// [INTERVALS]

Settings.Target_Scan_Interval = 0.02
Settings.Hitbox_Update_Interval = 0.05

--// [CONFIGURATION PARSING]

local function Parse_Chance(V)
    if V == nil then return 1 end
    V = tostring(V)
    local Clean = V:gsub('%%', '')
    local N = tonumber(Clean)
    if not N then return 1 end
    if N <= 1 then return math.clamp(N, 0, 1) end
    return math.clamp(N / 100, 0, 1)
end

Settings.Aim_Helper_Target_Part = tostring(Current_Config.Aim_Helper_Target_Part or 'HumanoidRootPart')
Settings.Aim_Range = Current_Config.Aim_Range
Settings.Smoothness = Current_Config.Smoothness
Settings.Prediction = Current_Config.Prediction

Settings.Wall_Check = Current_Config.Wall_Check
Settings.Team_Check = Current_Config.Team_Check

Settings.Y_Offset = Current_Config.Y_Offset
Settings.X_Offset = Current_Config.X_Offset

Settings.Velocity_Spoofer_Enabled = Current_Config.Velocity_Spoofer_Enabled
Settings.X_Velocity = Current_Config.X_Velocity or 0
Settings.Y_Velocity = Current_Config.Y_Velocity or 500
Settings.Z_Velocity = Current_Config.Z_Velocity or 0

Settings.Trigger_Bot_Accuracy_Chance = Parse_Chance(Current_Config.Trigger_Bot_Accuracy or 70)
Settings.Trigger_Bot_Detection_Delay = math.max(Current_Config.Trigger_Bot_Detection_Delay or 0.001, 0)

Settings.Safety_Fov_Enabled = Current_Config.Safety_Fov_Enabled
Settings.Fov_Radius = math.clamp(Current_Config.Fov_Radius or 75, 30, 200)
Settings.Fov_Thickness = math.clamp(Current_Config.Fov_Thickness or 1, 0.1, 5)
Settings.Fov_Transparency = Current_Config.Fov_Transparency
Settings.Fov_Color = Color3.fromRGB(173, 164, 207)

Settings.Target_Closest_Distance_Check = math.max(Current_Config.Target_Closest_Distance_Check or 5, 0)

Settings.Hitbox_Mode = tostring(Current_Config.Hitbox_Mode or 'Target')
Settings.Hitbox_Size = math.clamp(Current_Config.Hitbox_Size or 3, 3, 50)
Settings.Hitbox_Transparency = math.clamp(Current_Config.Hitbox_Transparency or 0.9, 0, 1)
Settings.Hitbox_Material = Current_Config.Hitbox_Material or Enum.Material.Neon
Settings.Hitbox_Can_Collide = Current_Config.Hitbox_Can_Collide

Settings.Macro_Emote_Enabled = Current_Config.Macro_Emote_Enabled 
Settings.Macro_Emote_Id = tostring(Current_Config.Macro_Emote_Id or '')
Settings.Macro_Emote_Keybind = Current_Config.Macro_Emote_Keybind or Enum.KeyCode.B
Settings.Macro_Emote_Stop_On_Move = Current_Config.Macro_Emote_Stop_On_Move

Settings.Macro_Emote_Track = nil
Settings.Macro_Emote_Move_Connection = nil

Settings.Fps_Stability_Enabled = Current_Config.Fps_Stability_Enabled
Settings.Fps_Value = tonumber(Current_Config.Fps_Value) or 200

Settings.Print_Logs = Current_Config.Print_Logs
Settings.Join_Discord = Current_Config.Join_Discord

local function Log(Message)
    if Settings.Print_Logs then
        print(Message)
    end
end

--// [FPS STABILITY]

local Set_Frame_Cap = setfpscap or set_fps_cap or setfpslimit

if Set_Frame_Cap then
    local function Update_Frame_Cap()
        if Settings.Fps_Stability_Enabled then
            Set_Frame_Cap(math.max(tonumber(Settings.Fps_Value) or 200, 1))
        else
            Set_Frame_Cap(360)
        end
    end
    Update_Frame_Cap()
    Settings.Update_Frame_Cap = Update_Frame_Cap
else
    warn('[Noryn] - Frame cap function is not supported by your executor. ⚠️')
end

--// [MACRO EMOTE]

local function Parse_Animation_Id(Value)
    if not Value or Value == '' then return nil end
    return tonumber(Value) or tonumber(tostring(Value):match('rbxassetid://(%d+)')) or tonumber(tostring(Value):match('catalog/(%d+)')) or tonumber(tostring(Value):match('library/(%d+)')) or tonumber(tostring(Value):match('id=(%d+)'))
end

local function Stop_Macro_Emote()
    if Settings.Macro_Emote_Track then
        pcall(function()
            if Settings.Macro_Emote_Track.IsPlaying then
                Settings.Macro_Emote_Track:Stop()
            end
            Settings.Macro_Emote_Track:Destroy()
        end)
        Settings.Macro_Emote_Track = nil
    end
    if Settings.Macro_Emote_Move_Connection then
        Settings.Macro_Emote_Move_Connection:Disconnect()
        Settings.Macro_Emote_Move_Connection = nil
    end
end

Settings.Stop_Macro_Emote = Stop_Macro_Emote
local function Play_Macro_Emote()
    if not Settings.Macro_Emote_Enabled then
        return
    end
    local Animation_Id = Parse_Animation_Id(Settings.Macro_Emote_Id)
    if not Animation_Id then
        Log('[Notify] - Invalid Macro Emote ID. ❌')
        VirtualInputManager:SendKeyEvent(true, Enum.KeyCode.F9, false, game)
        return
    end
    local Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
    local Humanoid = Character:FindFirstChildOfClass('Humanoid')
    local Root = Character:FindFirstChild('HumanoidRootPart')
    if not Humanoid or not Root then return end
    Stop_Macro_Emote()
    local Success, Objects = pcall(function()
        return game:GetObjects('rbxassetid://' .. Animation_Id)
    end)
    local Final_Animation_Id = 'rbxassetid://' .. Animation_Id
    if Success and Objects and Objects[1] and Objects[1]:IsA('Animation') then
        Final_Animation_Id = Objects[1].AnimationId
    end
    local Animation = Instance.new('Animation')
    Animation.AnimationId = Final_Animation_Id
    local Track = Humanoid:LoadAnimation(Animation)
    Track.Priority = Enum.AnimationPriority.Action4
    Track.Looped = true
    Track:Play()
    Animation:Destroy()
    Settings.Macro_Emote_Track = Track
    if Settings.Macro_Emote_Stop_On_Move then
        local Last_Position = Root.Position
        Settings.Macro_Emote_Move_Connection = RunService.RenderStepped:Connect(function()
            if not Settings.Macro_Emote_Track then Stop_Macro_Emote() return end
            if not Settings.Macro_Emote_Track.IsPlaying then Stop_Macro_Emote() return end
            if not Root.Parent or not Humanoid.Parent then Stop_Macro_Emote() return end
            local Moved = (Root.Position - Last_Position).Magnitude > 0.1
            local State = Humanoid:GetState()
            local Jumping = State == Enum.HumanoidStateType.Jumping or State == Enum.HumanoidStateType.Freefall
            if Moved or Jumping then Stop_Macro_Emote() return end
            Last_Position = Root.Position
        end)
    end
end

Settings.Play_Macro_Emote = Play_Macro_Emote
Settings.Macro_Emote_Input_Connection = UserInputService.InputBegan:Connect(function(Input, Game_Processed)
    if Game_Processed then return end
    if not Settings.Macro_Emote_Enabled then return end
    if Input.KeyCode ~= Settings.Macro_Emote_Keybind then return end
    if Settings.Macro_Emote_Track and Settings.Macro_Emote_Track.IsPlaying then
        Stop_Macro_Emote()
    else
        Play_Macro_Emote()
    end
end)

Settings.Macro_Emote_Character_Connection = LocalPlayer.CharacterAdded:Connect(function()
    Stop_Macro_Emote()
end)

--// [SAFE RUN]

local function Enforce_Fov_Safety()
    if Settings.Fov_Enabled and Settings.Safety_Fov_Enabled then
        Settings.Safety_Fov_Enabled = false
        Current_Config.Safety_Fov_Enabled = false
        if Settings.Print_Logs then
            warn('[Notify] - Turn off one of the FOVs to continue. ❗')
            VirtualInputManager:SendKeyEvent(true, Enum.KeyCode.F9, false, game)
        end
    end
end

Enforce_Fov_Safety()

do
    local function Parse_Color(Color_String, Default_R, Default_G, Default_B)
        local R, G, B = string.match(Color_String or string.format('%d,%d,%d', Default_R, Default_G, Default_B), '(%d+),(%d+),(%d+)')
        return Color3.fromRGB(math.clamp(tonumber(R) or Default_R, 0, 255), math.clamp(tonumber(G) or Default_G, 0, 255), math.clamp(tonumber(B) or Default_B, 0, 255))
    end

    Settings.Hitbox_Color = Parse_Color(Current_Config.Hitbox_Color, 173, 164, 207)
    Settings.Fov_Color = Parse_Color(Current_Config.Fov_Color, 173, 164, 207)

    local Accuracy_String = tostring(Current_Config.Aim_Helper_Accuracy or '80%')
    local Accuracy_Number = tonumber(Accuracy_String:match('(%d+)')) or 80 --// [Ik 💔]

    Accuracy_Number = math.clamp(Accuracy_Number, 0, 100)
    Settings.Aim_Helper_Accuracy = Accuracy_Number
    Settings.Aim_Helper_Accuracy_Chance = Accuracy_Number / 100
end

--// [FOV]

local Fov = nil
local function Create_Fov()
    if Fov then return Fov end
    local Success, Circle = pcall(Drawing.new, 'Circle')
    if not Success or not Circle then return nil end
    Circle.Visible = false
    Circle.Filled = false
    Circle.NumSides = 64
    Circle.ZIndex = 1
    Circle.Color = Settings.Fov_Color
    Circle.Radius = math.clamp(Settings.Fov_Radius or 75, 30, 200)
    Circle.Thickness = math.clamp(Settings.Fov_Thickness or 1, 0.1, 5)
    Circle.Transparency = Settings.Fov_Transparency
    Fov = Circle
    Settings.Aim_Helper_Fov = Circle
    return Circle
end

local function Remove_Fov()
    if Fov then
        pcall(function() Fov:Remove() end)
        Fov = nil
        Settings.Aim_Helper_Fov = nil
    end
end

if Settings.Fov_Enabled and not Settings.Safety_Fov_Enabled then
    Create_Fov()
end

--// [UTILITY]

local Valid_Target_Parts = {
    HumanoidRootPart = true,
    Head = true,
    UpperTorso = true,
    LowerTorso = true,
    Torso = true,
}

local Part_Aliases = {
    UpperTorso = {
        'UpperTorso',
        'Torso',      
    },
    LowerTorso = {
        'LowerTorso',
        'Torso',      
    },
    Torso = {
        'UpperTorso', 
        'LowerTorso', 
        'Torso',     
    },
    HumanoidRootPart = {
        'HumanoidRootPart',
    },
    Head = {
        'Head',
    },
}

local function Get_Target_Part(Character)
    if not Character then return nil end
    local Requested_Part = tostring(Settings.Aim_Helper_Target_Part or 'HumanoidRootPart')
    local Lower = string.lower(Requested_Part)

    if Lower == 'humanoidrootpart' then
        Requested_Part = 'HumanoidRootPart'
    elseif Lower == 'head' then
        Requested_Part = 'Head'
    elseif Lower == 'uppertorso' then
        Requested_Part = 'UpperTorso'
    elseif Lower == 'lowertorso' then
        Requested_Part = 'LowerTorso'
    elseif Lower == 'torso' then
        Requested_Part = 'Torso'
    end

    Settings.Previous_Aim_Helper_Target_Part = Settings.Previous_Aim_Helper_Target_Part or 'HumanoidRootPart'
    Settings.Invalid_Target_Part_Warned = Settings.Invalid_Target_Part_Warned or nil

    if not Valid_Target_Parts[Requested_Part] then
        if Settings.Invalid_Target_Part_Warned ~= Requested_Part then VirtualInputManager:SendKeyEvent(true, Enum.KeyCode.F9, false, game) warn(string.format('[Notify] - Target part "%s" is not available. Keeping previous target part: %s', tostring(Requested_Part), tostring(Settings.Previous_Aim_Helper_Target_Part)))
            Settings.Invalid_Target_Part_Warned = Requested_Part
        end
        Requested_Part = Settings.Previous_Aim_Helper_Target_Part
    else
        Settings.Previous_Aim_Helper_Target_Part = Requested_Part
        Settings.Invalid_Target_Part_Warned = nil
    end
    local Alias_List = Part_Aliases[Requested_Part]
    if Alias_List then
        for _, Part_Name in ipairs(Alias_List) do
            local Part = Character:FindFirstChild(Part_Name)
            if Part and Part:IsA('BasePart') then
                return Part
            end
        end
    end
    return Character:FindFirstChild('HumanoidRootPart') or Character:FindFirstChild('UpperTorso') or Character:FindFirstChild('LowerTorso') or Character:FindFirstChild('Torso') or Character:FindFirstChild('Head')
end

local function Get_Screen_Center()
    return Vector2.new(Camera.ViewportSize.X * 0.5, Camera.ViewportSize.Y * 0.5)
end

local function Get_Reference_Position()
    if Settings.Fov_Enabled or Settings.Safety_Fov_Enabled then return Get_Screen_Center() end
    local MouseLocation = UserInputService:GetMouseLocation()
    return Vector2.new(MouseLocation.X, MouseLocation.Y)
end

local function Is_Aim_Active()
    return UserInputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton2)
end

--// [TARGET DOWN CHECK]

local function Is_Target_Downed(Player)
    if not Current_Config.Target_Down_Check then return false end
    if not Player or Player == LocalPlayer then return false end
    local Character = Player.Character
    if not Character then return true end
    local Body_Effects = Character:FindFirstChild('BodyEffects')
    if Body_Effects then
        local KO = Body_Effects:FindFirstChild('K.O') --// [FOR MOST SKIDDED DA HOOD GAMES]
        if KO and KO:IsA('BoolValue') then
            if KO.Value == true then
                return true
            else
                return false
            end
        end
    end
    local Humanoid = Character:FindFirstChildOfClass('Humanoid')
    if not Humanoid then return true end
    return Humanoid.Health <= 0
end

local function Is_Valid_Target(Player)
    if Player == LocalPlayer or not Player.Character then return false end
    if Is_Target_Downed(Player) then return false end
    local Humanoid = Player.Character:FindFirstChildOfClass('Humanoid')
    if not Humanoid or Humanoid.Health <= 0 then return false end
    local Target_Part = Get_Target_Part(Player.Character)
    if not Target_Part then return false end
    return Target_Part
end

local function Get_Resolved_Velocity(Target, Delta_Time)
    if not Settings.Resolver_Enabled then return Target.AssemblyLinearVelocity end
    if not Target or not Target.Parent then return Vector3.zero end
    local Resolver_Data = Settings.Resolver_Data
    local Entry = Resolver_Data[Target]
    local Current_Position = Target.Position
    local Current_Time = tick()
    if not Entry then
        Entry = {Position = Current_Position, Time = Current_Time, Velocity = Target.AssemblyLinearVelocity, Prev_Velocity = Vector3.zero, Acceleration = Vector3.zero}
        Resolver_Data[Target] = Entry
        return Entry.Velocity
    end

    local Time_Delta = math.max(Current_Time - Entry.Time, Delta_Time or (1 / 60))
    local Estimated_Velocity = (Current_Position - Entry.Position) / Time_Delta
    local Max_Velocity = Settings.Resolver_Max_Velocity or 300
    if Estimated_Velocity.Magnitude > Max_Velocity then
        Estimated_Velocity = Estimated_Velocity.Unit * Max_Velocity
    end

    local Acceleration = (Estimated_Velocity - (Entry.Velocity or Vector3.zero)) / Time_Delta
    Acceleration = Vector3.new(math.clamp(Acceleration.X, -2000, 2000), math.clamp(Acceleration.Y, -2000, 2000), math.clamp(Acceleration.Z, -2000, 2000))
    local Strength = Settings.Resolver_Strength or 0.85
    local Previous_Velocity = Entry.Velocity or Vector3.zero
    local Velocity_Change = (Estimated_Velocity - Previous_Velocity).Magnitude
    local Adaptive_Strength = math.min(Strength + (Velocity_Change * 0.05), 0.95)
    local Smoothed_Velocity = Previous_Velocity:Lerp(Estimated_Velocity, Adaptive_Strength)
    
    Entry.Position = Current_Position
    Entry.Time = Current_Time
    Entry.Prev_Velocity = Entry.Velocity
    Entry.Velocity = Smoothed_Velocity
    Entry.Acceleration = Acceleration
    return Smoothed_Velocity
end

--// [TEAM CHECK]

local function Is_Teammate(Player)
    if not Settings.Aim_Helper_Enabled then return end
    if not Settings.Team_Check then return false end
    if not LocalPlayer.Team or not Player.Team then return false end
    return LocalPlayer.Team == Player.Team
end

--// [WALL CHECK]

local Raycast_Params = RaycastParams.new()
Raycast_Params.FilterType = Enum.RaycastFilterType.Blacklist
Raycast_Params.IgnoreWater = true

local function Is_Visible(Target)
    if not Settings.Aim_Helper_Enabled then return end
    if not Settings.Wall_Check then return true end
    if not Target or not Target.Parent or not Camera then return false end
    local Local_Character = LocalPlayer.Character
    local Local_Root = Local_Character and Local_Character:FindFirstChild('HumanoidRootPart')
    if not Local_Root then return false end
    local Character = Target.Parent
    local Origin = Local_Root.Position
    local Parts_To_Check = {
        Character:FindFirstChild('Head'),
        Character:FindFirstChild('HumanoidRootPart'),
        Character:FindFirstChild('UpperTorso'),
        Character:FindFirstChild('LowerTorso'),
        Character:FindFirstChild('Torso')
    }
    Raycast_Params.FilterDescendantsInstances = {Local_Character, Camera}
    for _, Part in ipairs(Parts_To_Check) do
        if Part and Part:IsA('BasePart') then
            local Direction = Part.Position - Origin
            local Result = Workspace:Raycast(Origin, Direction, Raycast_Params)
            if not Result then return true end
            local Hit = Result.Instance
            if Hit and Hit:IsDescendantOf(Character) then
                return true
            end
        end
    end
    return false
end

--// [TARGET SELECTION]

local function Get_Closest_Target()
    local Closest = nil
    local Use_Fov_Limit = Settings.Fov_Enabled or Settings.Safety_Fov_Enabled
    local Closest_Distance = Use_Fov_Limit and math.clamp(Settings.Fov_Radius or 75, 30, 200) or math.huge
    local Range = Settings.Aim_Range or math.huge
    local Reference_Position = Get_Reference_Position()
    local Camera_Position = Camera.CFrame.Position
    for _, Player in ipairs(Players:GetPlayers()) do
        local HumanoidRootPart = Is_Valid_Target(Player)
        if HumanoidRootPart then
            if Is_Teammate(Player) then continue end
            if not Is_Visible(HumanoidRootPart) then continue end
            local Screen_Position, Visible = Camera:WorldToViewportPoint(HumanoidRootPart.Position)
            if Visible then
                local Target_Position = Vector2.new(Screen_Position.X, Screen_Position.Y)
                local Screen_Distance = (Target_Position - Reference_Position).Magnitude
                local World_Distance = (HumanoidRootPart.Position - Camera_Position).Magnitude
                if Screen_Distance < Closest_Distance and World_Distance <= Range then
                    Closest_Distance = Screen_Distance
                    Closest = HumanoidRootPart
                end
            end
        end
    end
    return Closest
end

local function Get_Mouse_Target()
    local Mouse = LocalPlayer:GetMouse()
    if not Mouse then return nil end
    local MouseTarget = Mouse.Target
    if not MouseTarget or not MouseTarget:IsA('BasePart') then
        return nil
    end
    local Character = MouseTarget:FindFirstAncestorOfClass('Model')
    if not Character then
        return nil
    end
    local Player = Players:GetPlayerFromCharacter(Character)
    if not Player or Player == LocalPlayer then
        return nil
    end
    if Is_Teammate(Player) then
        return nil
    end
    if Is_Target_Downed(Player) then
        return nil
    end
    local Humanoid = Character:FindFirstChildOfClass('Humanoid')
    if not Humanoid or Humanoid.Health <= 0 then
        return nil
    end
    local Target_Part = Get_Target_Part(Character)
    if not Target_Part then
        return nil
    end
    if not Is_Visible(Target_Part) then
        return nil
    end
    local Screen_Position, Visible = Camera:WorldToViewportPoint(Target_Part.Position)
    if not Visible then
        return nil
    end
    local World_Distance = (Target_Part.Position - Camera.CFrame.Position).Magnitude
    local Range = Settings.Aim_Range or math.huge
    if World_Distance > Range then
        return nil
    end
    return Target_Part
end

local function Is_Target_Safe(Target)
    if not Target or not Target.Parent then
        return false
    end
    local Distance = (Target.Position - Camera.CFrame.Position).Magnitude
    if Distance < (Settings.Target_Closest_Distance_Check or 0) then
        return false
    end
    return true
end

--// [TARGET SCANNER]

Settings.Cached_Target = nil
Settings.Target_Scanner_Running = true

task.spawn(function()
    while Settings.Target_Scanner_Running do
        Camera = Workspace.CurrentCamera
        if Settings.Aim_Helper_Enabled and Camera then
            if UserInputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton2) then
                local Mouse_Target = Get_Mouse_Target()
                local Candidate = Mouse_Target or Get_Closest_Target()
                if not Is_Target_Safe(Candidate) then
                    Candidate = nil
                end
                Settings.Cached_Target = Candidate
            else
                Settings.Cached_Target = nil
            end
        else
            Settings.Cached_Target = nil
        end
        Settings.Resolver_Cleanup = (Settings.Resolver_Cleanup or 0) + Settings.Target_Scan_Interval
        if Settings.Resolver_Cleanup > 1 then
            Settings.Resolver_Cleanup = 0
            for Part in pairs(Settings.Resolver_Data) do
                if not Part or not Part.Parent then
                    Settings.Resolver_Data[Part] = nil
                end
            end
        end
        for Part in pairs(Settings.Hitbox_Originals) do
            if not Part or not Part.Parent then
                Settings.Hitbox_Originals[Part] = nil
            end
        end
        task.wait(Settings.Target_Scan_Interval or 0.02)
    end
end)

--// [VELOCITY SPOOFER]

do
    Settings.Velocity_Spoofer_Connection = RunService.PostSimulation:Connect(function()
        if not Settings.Velocity_Spoofer_Enabled then return end
        local Character = LocalPlayer.Character
        if not Character then return end
        local HumanoidRootPart = Character:FindFirstChild('HumanoidRootPart')
        local PrimaryPart = Character.PrimaryPart or HumanoidRootPart
        if not HumanoidRootPart or not PrimaryPart then return end
        local Original_Velocity = HumanoidRootPart.AssemblyLinearVelocity
        local Spoofed_Velocity = Vector3.new(Settings.X_Velocity, Settings.Y_Velocity, Settings.Z_Velocity)
        PrimaryPart.AssemblyLinearVelocity = Spoofed_Velocity
        RunService.PreRender:Wait()
        if HumanoidRootPart and HumanoidRootPart.Parent then
            HumanoidRootPart.AssemblyLinearVelocity = Original_Velocity
        end
    end)
end

--// [TRIGGER BOT]

Settings.Trigger_Bot_Last_Shot = 0
Settings.Trigger_Bot_Activated = false

local Mouse = LocalPlayer:GetMouse()
local TB_Raycast_Params = RaycastParams.new()
TB_Raycast_Params.FilterType = Enum.RaycastFilterType.Blacklist
TB_Raycast_Params.IgnoreWater = true

local function Get_Player_From_Character(Character)
    if not Character then return nil end
    return Players:GetPlayerFromCharacter(Character)
end

local function Is_Target_Part(Part)
    if not Part or not Part:IsA('BasePart') then return false end
    local Character = Part:FindFirstAncestorOfClass('Model')
    if not Character then return false end
    local Player = Get_Player_From_Character(Character)
    if not Player or Player == LocalPlayer then return false end
    local Humanoid = Character:FindFirstChildOfClass('Humanoid')
    if not Humanoid or Humanoid.Health <= 0 then return false end
    return true
end

local function Is_On_Target_Raycast(Target)
    if not Target or not Target.Parent then return false end
    local Character = Target.Parent
    local Humanoid = Character:FindFirstChildOfClass('Humanoid')
    if not Humanoid or Humanoid.Health <= 0 then return false end
    local Local_Character = LocalPlayer.Character
    local Local_Root = Local_Character and Local_Character:FindFirstChild('HumanoidRootPart')
    if not Local_Root then return false end
    local Player = Players:GetPlayerFromCharacter(Character)
    if Player and Is_Target_Downed(Player) then return false end
    local Mouse_Target = Mouse and Mouse.Target
    if not Mouse_Target or not Mouse_Target:IsA('BasePart') then return false end
    if not Mouse_Target:IsDescendantOf(Character) then return false end
    return true
end

local function Is_Mouse_On_Target_Advanced(Target)
    if not Target or not Target.Parent then return false end
    if not Is_On_Target_Raycast(Target) then return false end
    local Character = Target.Parent
    local Head = Character:FindFirstChild('Head')
    if not Head then return false end
    local Humanoid = Character:FindFirstChildOfClass('Humanoid')
    if not Humanoid or Humanoid.Health <= 0 then return false end
    return true
end

local function Trigger_Bot_Click()
    if Settings.Trigger_Bot_Activated then return end
    Settings.Trigger_Bot_Activated = true
    task.spawn(function()
        if tick() - (Settings.Trigger_Bot_Last_Shot or 0) < 0.15 then
            Settings.Trigger_Bot_Activated = false
            return
        end
        
        local Delay = math.max(Settings.Trigger_Bot_Detection_Delay or 0.001, 0.001)
        if Delay > 0 then task.wait(Delay) end
        
        if not Settings.Trigger_Bot then Settings.Trigger_Bot_Activated = false return end
        if not Settings.Aim_Helper_Enabled then Settings.Trigger_Bot_Activated = false return end
        if not Is_Aim_Active() then Settings.Trigger_Bot_Activated = false return end
        
        local Target = Settings.Current_Target
        if not Target or not Target.Parent then Settings.Trigger_Bot_Activated = false return end

        if not Is_Mouse_On_Target_Advanced(Target) then 
            Settings.Trigger_Bot_Activated = false 
            return 
        end
        
        local Accuracy_Chance = Settings.Trigger_Bot_Accuracy_Chance or 1
        if math.random() > Accuracy_Chance then
            Settings.Trigger_Bot_Activated = false
            return
        end
        
        VirtualInputManager:SendMouseButtonEvent(0, 0, 0, true, game, 0)
        VirtualInputManager:SendMouseButtonEvent(0, 0, 0, false, game, 0)
        Settings.Trigger_Bot_Last_Shot = tick()
        Settings.Trigger_Bot_Activated = false
    end)
end

--// [HITBOX EXPANDER]

Settings.Hitbox_Updater_Running = true

local function Restore_Hitbox(Part)
    local Original = Settings.Hitbox_Originals[Part]
    if not Original or not Part or not Part.Parent then
        Settings.Hitbox_Originals[Part] = nil
        return
    end
    pcall(function()
        Part.Size = Original.Size
        Part.Transparency = Original.Transparency
        Part.Color = Original.Color3
        Part.Material = Original.Material
        Part.CanCollide = Original.CanCollide
    end)
    Settings.Hitbox_Originals[Part] = nil
end

local function Apply_Hitbox(Part)
    if not Part or not Part.Parent then return end
    if not Settings.Hitbox_Originals[Part] then
        Settings.Hitbox_Originals[Part] = {
            Size = Part.Size,
            Transparency = Part.Transparency,
            Color3 = Part.Color,
            Material = Part.Material,
            CanCollide = Part.CanCollide
        }
    end
    pcall(function()
        Part.Size = Vector3.new(Settings.Hitbox_Size, Settings.Hitbox_Size, Settings.Hitbox_Size)
        Part.Transparency = Settings.Hitbox_Transparency
        Part.Color = Settings.Hitbox_Color
        Part.Material = Settings.Hitbox_Material
        Part.CanCollide = Settings.Hitbox_Can_Collide
    end)
end

task.spawn(function()
    while Settings.Hitbox_Updater_Running do
        if Settings.Hitbox_Enabled then
            Settings.Hitbox_Size = math.clamp(Settings.Hitbox_Size or 3, 3, 50)
            Settings.Hitbox_Transparency = math.clamp(Settings.Hitbox_Transparency or 0.9, 0, 1)
            local Mode = string.lower(tostring(Settings.Hitbox_Mode or 'Target'))
            local Current_Target = Settings.Current_Target
            if Mode == 'target' then
                for Part in pairs(Settings.Hitbox_Originals) do
                    if Part ~= Current_Target then
                        Restore_Hitbox(Part)
                    end
                end
                if Current_Target
                    and Current_Target.Parent
                    and Current_Target.Name == 'HumanoidRootPart' then
                    local Humanoid = Current_Target.Parent:FindFirstChildOfClass('Humanoid')
                    if Humanoid and Humanoid.Health > 0 then
                        Apply_Hitbox(Current_Target)
                    end
                end
            else
                for _, Player in ipairs(Players:GetPlayers()) do
                    if Player ~= LocalPlayer and Player.Character then
                        local Humanoid = Player.Character:FindFirstChildOfClass('Humanoid')
                        local HumanoidRootPart = Player.Character:FindFirstChild('HumanoidRootPart')
                        if Humanoid and Humanoid.Health > 0 and HumanoidRootPart then
                            Apply_Hitbox(HumanoidRootPart)
                        elseif HumanoidRootPart then
                            Restore_Hitbox(HumanoidRootPart)
                        end
                    end
                end
            end
        else
            for Part in pairs(Settings.Hitbox_Originals) do
                Restore_Hitbox(Part)
            end
        end
        task.wait(Settings.Hitbox_Update_Interval or 0.1)
    end
end)

--// [MAIN]

local Aim_Helper_Warned = false
local Last_Accuracy_Target = nil
local Last_Lock_Position = nil
local Lock_Frame_Count = 0

Settings.Aim_Helper_Connection = RunService.RenderStepped:Connect(function(Delta_Time)
    Camera = Workspace.CurrentCamera
    if not Camera then return end
    local Local_Character = LocalPlayer.Character
    local Local_Root = Local_Character and Local_Character:FindFirstChild('HumanoidRootPart')
    if not Local_Character or not Local_Root then
        Settings.Current_Target = nil
        Last_Lock_Position = nil
        Lock_Frame_Count = 0
        if Fov then
            Fov.Visible = false
        end
        return
    end
    local Aim_Enabled = Settings.Aim_Helper_Enabled
    local Fov_Enabled = Settings.Fov_Enabled
    Enforce_Fov_Safety()
    local Should_Show_Fov = Settings.Fov_Enabled and not Settings.Safety_Fov_Enabled
    if Should_Show_Fov then
        if not Fov then
            Create_Fov()
        end
    else
        Remove_Fov()
    end
    if not Aim_Enabled then
        if Fov then Fov.Visible = false end
        if Fov_Enabled and not Aim_Helper_Warned then
            Log('[Notify] - Enable Aim Helper first. ⚠️')
            VirtualInputManager:SendKeyEvent(true, Enum.KeyCode.F9, false, game)
            Aim_Helper_Warned = true
        end
        Settings.Current_Target = nil
        Settings.Aim_Accuracy = true
        Settings.Aim_Helper_Rolled = false
        Last_Lock_Position = nil
        Lock_Frame_Count = 0
        return
    end
    Aim_Helper_Warned = false
    if Fov then
        Fov.Visible = Should_Show_Fov
        Fov.Position = Get_Screen_Center()
        Settings.Fov_Radius = math.clamp(Settings.Fov_Radius or Current_Config.Fov_Radius or 75, 30, 200)
        Fov.Radius = Settings.Fov_Radius
        Fov.Thickness = math.clamp(Settings.Fov_Thickness or 1, 0.1, 5)
        Fov.Transparency = Settings.Fov_Transparency
        Fov.Color = Settings.Fov_Color
    end
    if not Is_Aim_Active() then
        Settings.Current_Target = nil
        Settings.Aim_Accuracy = true
        Settings.Aim_Helper_Rolled = false
        Last_Lock_Position = nil
        Lock_Frame_Count = 0
        return
    end
    local Candidate = Settings.Cached_Target or Get_Closest_Target()
    if not Is_Target_Safe(Candidate) then
        Candidate = nil
    end
    local Target = Candidate
    if Target ~= Settings.Current_Target then
        Settings.Current_Target = Target
        Last_Accuracy_Target = Target
        Settings.Aim_Helper_Rolled = false
        Settings.Aim_Accuracy = true
        Last_Lock_Position = nil
        Lock_Frame_Count = 0
    else
        Settings.Current_Target = Target
    end
    if not Target then
        Settings.Aim_Accuracy = true
        Settings.Aim_Helper_Rolled = false
        Last_Lock_Position = nil
        Lock_Frame_Count = 0
        return
    end
    local Character = Target.Parent
    local Humanoid = Character and Character:FindFirstChildOfClass('Humanoid')
    if not Character or not Target:IsDescendantOf(Workspace) or not Humanoid or Humanoid.Health <= 0 then
        Settings.Current_Target = nil
        Settings.Aim_Accuracy = true
        Settings.Aim_Helper_Rolled = false
        Last_Lock_Position = nil
        Lock_Frame_Count = 0
        return
    end
    local World_Distance = (Target.Position - Camera.CFrame.Position).Magnitude
    local Screen_Position, Visible = Camera:WorldToViewportPoint(Target.Position)
    local Screen_Distance = Visible and (Vector2.new(Screen_Position.X, Screen_Position.Y) - Get_Reference_Position()).Magnitude or math.huge
    local Use_Fov_Limit = Settings.Fov_Enabled or Settings.Safety_Fov_Enabled
    local Max_Fov = Use_Fov_Limit and math.clamp(Settings.Fov_Radius or 75, 30, 200) or math.huge
    if Screen_Distance > Max_Fov or World_Distance > (Settings.Aim_Range or math.huge) then
        Settings.Current_Target = nil
        Settings.Aim_Accuracy = true
        Settings.Aim_Helper_Rolled = false
        Last_Lock_Position = nil
        Lock_Frame_Count = 0
        return
    end
    if Target ~= Last_Accuracy_Target then
        Last_Accuracy_Target = Target
        Settings.Aim_Helper_Rolled = false
        Settings.Aim_Accuracy = true
    end
    if type(Settings.Aim_Accuracy) ~= 'boolean' then
        Settings.Aim_Accuracy = true
    end
    if Settings.Aim_Helper_Rolled ~= true then
        local Accuracy = tonumber(Settings.Aim_Helper_Accuracy) or 80
        Settings.Aim_Accuracy = (math.random(1, 100) <= Accuracy)
        Settings.Aim_Helper_Rolled = true
    end
    if Settings.Trigger_Bot
        and Settings.Aim_Helper_Enabled
        and Is_Aim_Active()
        and Is_Mouse_On_Target_Advanced(Target) then
        Trigger_Bot_Click()
    end
    if not Settings.Aim_Accuracy then return end
    local Y_Offset = math.clamp(Settings.Y_Offset or 1.2, 0, 2)
    local X_Offset = math.clamp(Settings.X_Offset or 0, -2, 2)
    local Resolved_Velocity = Get_Resolved_Velocity(Target, Delta_Time)
    local Enhanced_Prediction = Settings.Prediction * (1 + (Resolved_Velocity.Magnitude / 500))
    Enhanced_Prediction = math.clamp(Enhanced_Prediction, Settings.Prediction * 0.5, Settings.Prediction * 2)
    local Predicted_Position = Target.Position + (Resolved_Velocity * Enhanced_Prediction) + Vector3.new(X_Offset, Y_Offset, 0)
    local Aim_CFrame = CFrame.new(Camera.CFrame.Position, Predicted_Position)
    local Effective_Smoothness = math.clamp(tonumber(Settings.Smoothness) or 5, 1, 1000)
    if Lock_Frame_Count < 3 then
        Effective_Smoothness = Effective_Smoothness * 1.5
        Lock_Frame_Count = Lock_Frame_Count + 1
    end
    local Alpha = 1 - math.exp(-Effective_Smoothness * Delta_Time)
    Alpha = math.clamp(Alpha, 0, 0.999)
    if Last_Lock_Position then
        local Position_Delta = (Predicted_Position - Last_Lock_Position).Magnitude
        if Position_Delta < 0.01 then
            Alpha = math.min(Alpha, 0.3)  
        end
    end
    Camera.CFrame = Camera.CFrame:Lerp(Aim_CFrame, Alpha)
    Last_Lock_Position = Predicted_Position
end)

--// [DISCORD]

type HttpRequestResponse = {
    StatusCode: number?,
    Body: string?,
    Headers: {[string]: string}?
}

local function Extract(Path: string): string
    for i = #Path, 1, -1 do
        local C: string = Path:sub(i, i)
        if C == '/' then
            return Path:sub(i + 1)
        end
    end return Path
end

local function Run(Path: string): HttpRequestResponse | string
    local Code: string = Path:match('discord%.gg/([%w%-]+)') or Path:match('discordapp%.com/invite/([%w%-]+)') or Extract(Path)

    if not Code or Code == '' then
        return 'Invalid invite code'
    end

    local End_Point: string = 'http://127.0.0.1:6463/rpc?v=1'

    local Headers: {[string]: string} = {
        ['Content-Type'] = 'application/json',
        ['Origin'] = 'https://discord.com'
    }

    local Pay_Load: {[string]: any} = {
        cmd = 'INVITE_BROWSER',
        args = {
            code = Code
        },
        nonce = HttpService:GenerateGUID(false)
    }

    local Request = syn and syn.request or http_request or request or http.request

    if not Request then
        return 'HTTP request function is not available.'
    end

    local Response: HttpRequestResponse = Request({
        Url = End_Point,
        Method = 'POST',
        Headers = Headers,
        Body = HttpService:JSONEncode(Pay_Load)
    })
    return Response
end

local Invite: string = 'http://discord.gg/JT986sztwn'
if Settings.Join_Discord then Run(Invite)
    Log(`[Notify] - @{tostring(LocalPlayer.Name)} was invited to the official Noryn Discord server. 💜`)
end 
