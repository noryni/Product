--[[
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣾⣿⣿⣿⣿⣷⢸⣿⣿⡜⢯⣷⡌⡻⣿⣿⣿⣆⢈⠻⠿⢿⣿⣿⣿⣿⣿⣿⣷⣦⣤⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡁⢳⣿⣿⣿⣿⣿⣿⡜⣿⣿⣧⢀⢻⣷⠰⠈⢿⣿⣿⣧⢣⠉⠑⠪⢙⠿⠿⠿⠿⠿⠿⠿⠋⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣱⡇⡞⣿⣿⣿⣿⣿⣿⡇⣿⣿⡏⡄⣧⠹⡇⠧⠈⢻⣿⣿⡇⢧⢢⠀⠀⠑⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣇⢃⢿⣿⣿⣿⣿⣿⣷⣿⣿⠇⢃⣡⣤⡹⠐⣿⣀⢻⣿⣿⢸⡎⠳⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⣾⣿⣿⠘⡸⣿⣿⣿⣿⣿⣿⣿⡿⣰⣿⣿⢟⡷⠈⠋⠃⠎⢿⣿⡏⣿⠀⠘⢆⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⡐⢹⣿⣿⡐⢡⢹⣿⣿⣿⣿⡏⣿⢣⣿⣿⡑⠁⠔⠀⠉⠉⠢⡘⣿⡇⣿⡇⠀⡀⠡⡀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⡇⠘⣿⣿⣇⠇⢣⢻⣿⣿⣿⡇⢇⣾⣿⣿⡆⢸⣤⡀⠚⢂⠀⢡⢿⡇⣿⡇⠀⢿⠀⠀⠄⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⠠⠹⣿⣿⡘⣆⢣⠻⣿⣿⢈⣾⣿⣿⣿⣶⣸⣏⢀⣬⣋⡼⣠⢸⢹⣿⡇⢠⣼⠙⡄⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⢹⡇⠁⠹⣿⣇⠹⡃⠃⠙⡇⠘⢿⣿⣿⣿⣿⣿⣏⣓⣉⣭⣴⣿⠘⢸⣿⠁⠘⠋⠀⠹⠄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢷⠀⠀⠈⢿⣇⠂⣷⠄⠐⠀⠘⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢠⢸⡏⠀⢀⣠⣴⣾⣿⣶⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢆⠀⠀⠀⠙⠆⠈⠢⠲⠥⣰⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⡞⣸⠁⠀⢸⣿⣿⣿⣿⣿⣿⡆⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠟⠄⠃⠀⠀⠘⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⢿⣿⣿⣿⣿⡏⠹⣿⣿⡿⠫⠊⠀⠀⠀⣶⠀⢻⣿⣿⣿⣿⡿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠙⠛⠻⠿⠿⠿⢋⠀⠀⠀⠀⢀⣼⣿⡆⠈⣿⣿⣿⡟⣱⡷⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢁⣁⡀⠨⣛⠿⠶⠄⢀⣠⣾⣿⣿⣷⠀⢹⣿⡟⣴⠈⢃⣶⠔⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣾⣿⣿⡄⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⡄⠈⣿⣿⡿⠀⡀⣿⣷⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢙⠻⣿⣿⢀⠙⠻⠿⣿⣿⣿⣿⣿⣿⡇⠁⣿⠟⡀⠈⣧⢰⣿⠆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠿⠴⠮⣥⠻⢧⣤⣄⣀⡉⢩⣭⣍⣃⣀⣩⠎⢀⣼⠉⣼⡯⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠑⠁⣛⠓⢒⣒⣢⡭⢁⡈⠿⠿⠟⠹⠛⠁⠀⠀⠀⠰⠃⠂⠀⠀⠀⠀⠀⠀

@ Noryn | © COPYRIGHT
--// Hey, before skidding read — LICENSE ✨.]]

if typeof(cloneref) ~= 'function' then return warn('[Product] ─ Dependency Issue. ✨') end
local UserInputService = cloneref(game:GetService('UserInputService'))
local TweenService = cloneref(game:GetService('TweenService'))
local RunService = cloneref(game:GetService('RunService'))
local CoreGui = cloneref(game:GetService('CoreGui'))

local Place_Id = game.PlaceId

pcall(function()
    local Interface = CoreGui:FindFirstChild('Noryn')
    if Interface then Interface:Destroy() end
end)

if getgenv then
    getgenv().Loaded = true
    if getgenv().Config_Enabled == nil then getgenv().Config_Enabled = false end
end

local Device = {
    ['Mobile'] = UserInputService.TouchEnabled and not UserInputService.KeyboardEnabled,
}

local Theme = {
    Accent = Color3.fromRGB(203, 104, 118),
    Accent_Hover = Color3.fromRGB(220, 120, 134),
    Panel = Color3.fromRGB(12,  12,  14),
    Panel_2 = Color3.fromRGB(17,  17,  20),
    Panel_3 = Color3.fromRGB(23,  23,  28),
    Border = Color3.fromRGB(45,  45,  52),
    Text = Color3.fromRGB(232, 232, 240),
    Muted = Color3.fromRGB(144, 144, 160),
    Dim = Color3.fromRGB(96,  96,  112),
    Not_Enabled = Color3.fromRGB(26,  26,  30),
    White = Color3.fromRGB(255, 255, 255),
}

local Badge_Colors = {
    Hot = {Background = Color3.fromRGB(50, 20, 25), Text = Theme.Accent, Border = Color3.fromRGB(100, 40, 50)},
    New = {Background = Color3.fromRGB(16, 46, 36), Text = Color3.fromRGB(96, 212, 160), Border = Color3.fromRGB(40, 110, 80)},
    Beta = {Background = Color3.fromRGB(32, 22, 55), Text = Color3.fromRGB(176, 136, 238), Border = Color3.fromRGB(80, 56, 140)},
}

local Spring_Style, Spring_Direction = Enum.EasingStyle.Back, Enum.EasingDirection.Out
local function Create_Instance(Class_Name, Properties, Parent)
    local Object = Instance.new(Class_Name)
    for Key, Value in pairs(Properties) do
        Object[Key] = Value
    end
    if Parent then Object.Parent = Parent end
    return Object
end

local function Create_Tween(Object, Duration, Properties, Easing_Style, Easing_Direction)
    local Tween_Info = TweenInfo.new(Duration, Easing_Style or Enum.EasingStyle.Quint, Easing_Direction or Enum.EasingDirection.Out)
    local Tween_Object = TweenService:Create(Object, Tween_Info, Properties)
    Tween_Object:Play()
    return Tween_Object
end

local function Create_Corner(Parent, Radius)
    return Create_Instance('UICorner', {CornerRadius = UDim.new(0, Radius or 8)}, Parent)
end

local function Create_Stroke(Parent, Color, Thickness, Transparency)
    return Create_Instance('UIStroke', {
        Color = Color or Theme.Border,
        Thickness = Thickness or 1,
        Transparency = Transparency or 0,
    }, Parent)
end

local function Color_To_Hex(Color)
    return string.format('#%02X%02X%02X', math.floor(Color.R * 255 + 0.5), math.floor(Color.G * 255 + 0.5), math.floor(Color.B * 255 + 0.5))
end

local function Hex_To_Color(Hex)
    Hex = tostring(Hex):gsub('#', '')
    if #Hex ~= 6 then return nil end
    local Red   = tonumber(Hex:sub(1, 2), 16)
    local Green = tonumber(Hex:sub(3, 4), 16)
    local Blue  = tonumber(Hex:sub(5, 6), 16)
    if Red and Green and Blue then return Color3.fromRGB(Red, Green, Blue) end
    return nil
end

local function Get_Config_Path()
    return `Noryn/Data/Configs/{tostring(Place_Id)}.lua`
end

local function Ensure_Folders()
    pcall(function()
        if not isfolder('Noryn') then 
            makefolder('Noryn')              
        end
        if not isfolder('Noryn/Data') then 
            makefolder('Noryn/Data')         
        end
        if not isfolder('Noryn/Data/Configs') then 
            makefolder('Noryn/Data/Configs') 
        end
    end)
end

local function Serialize_Value(Value)
    local Value_Type = typeof(Value)
    if Value_Type == 'string'  then 
        return string.format('%q', Value) 
    end
    if Value_Type == 'boolean' then 
        return tostring(Value) 
    end
    if Value_Type == 'number'  then
        if Value ~= Value then 
            return '0' 
        end
        if Value == math.huge or Value == -math.huge then 
            return '0' 
        end
        return tostring(Value)
    end
    if Value_Type == 'Color3' then 
        return string.format('%q', Color_To_Hex(Value)) 
    end
    if Value_Type == 'EnumItem' then 
        return string.format('%q', tostring(Value):gsub('Enum.KeyCode.', '')) 
    end
    return string.format('%q', tostring(Value))
end

local function Save_Config(States)
    Ensure_Folders()
    local Line = 'return { '
    for Flag, Value in pairs(States) do
        Line = Line .. string.format(
            '["%s"] = %s, ',
            tostring(Flag):gsub('"', '\\"'),
            Serialize_Value(Value)
        )
    end
    Line = Line .. '}'
    local Success = pcall(writefile, Get_Config_Path(), Line)
    return Success
end

local function Load_Config()
    local Success, Result = pcall(function()
        local Path = Get_Config_Path()
        if isfile(Path) then
            local Function = loadstring(readfile(Path))
            if Function then return Function() end
        end
        return nil
    end)
    if Success and type(Result) == 'table' then 
        return Result 
    end
    return nil
end

print('Interface by - ©noryni (Github)')

local Library = {}
Library.__index = Library

function Library.New()
    local self = setmetatable({}, Library)

    self.Flags = {}
    self.Control_Objects = {}
    self.Tabs = {}
    self.Tab_Buttons = {}
    self.Search_Items = {}
    self.Active_Tab = 1
    self.Visible = true
    self.Minimized = false
    self.Tweening = false
    self.Auto_Debounce = false
    self.Save_Dirty = false
    self.Loading = false
    self.Open_Dropdown = nil
    self.Capturing = nil
    self.Switching = false
    self.Searching = false

    local Keybind = (getgenv and getgenv().Interface_Keybind) or Enum.KeyCode.LeftControl or Enum.KeyCode.Insert
    local Title = (getgenv and getgenv().Product_Name) or 'Noryn'
    local Version = (getgenv and getgenv().Product_Version) or 'v1.0'

    local Screen_Gui = Create_Instance('ScreenGui', {
        Name = 'Noryn',
        IgnoreGuiInset = true,
        ResetOnSpawn = false,
        ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
    }, CoreGui)

    self.Gui = Screen_Gui

    local Main_Panel = Create_Instance('CanvasGroup', {
        Name = 'Panel',
        AnchorPoint = Vector2.new(0.5, 0.5),
        Position = UDim2.fromScale(0.5, 0.5),
        Size = UDim2.fromOffset(660, 420),
        BackgroundColor3 = Theme.Panel,
        BorderSizePixel = 0,
        GroupTransparency = 1,
        ZIndex = 10,
    }, Screen_Gui)

    Create_Corner(Main_Panel, 14)
    self.Panel = Main_Panel

    do
        local Dragging, Drag_Start, Start_Position = false, nil, nil
        local Drag_Handle = Create_Instance('TextButton', {
            Name = 'Drag Radius',
            Size = UDim2.new(1, -130, 0, 46), 
            BackgroundTransparency = 1,
            Text = '', 
            ZIndex = 50, 
            AutoButtonColor = false,
        }, Main_Panel)

        Drag_Handle.InputBegan:Connect(function(Input)
            if Input.UserInputType == Enum.UserInputType.MouseButton1 or Input.UserInputType == Enum.UserInputType.Touch then
                Dragging, Drag_Start, Start_Position = true, Input.Position, Main_Panel.Position
            end
        end)
        Drag_Handle.InputEnded:Connect(function(Input)
            if Input.UserInputType == Enum.UserInputType.MouseButton1 or Input.UserInputType == Enum.UserInputType.Touch then 
                Dragging = false 
            end
        end)
        UserInputService.InputChanged:Connect(function(Input)
            if not Dragging then return end
            if Input.UserInputType ~= Enum.UserInputType.MouseMovement and Input.UserInputType ~= Enum.UserInputType.Touch then 
                return 
            end
            local Delta = Input.Position - Drag_Start
            local Viewport = Screen_Gui.AbsoluteSize
            local Abs_X = Start_Position.X.Scale * Viewport.X + Start_Position.X.Offset + Delta.X
            local Abs_Y = Start_Position.Y.Scale * Viewport.Y + Start_Position.Y.Offset + Delta.Y
            local Half_W = Main_Panel.AbsoluteSize.X / 2
            local Half_H = Main_Panel.AbsoluteSize.Y / 2
            Abs_X = math.clamp(Abs_X, Half_W, Viewport.X - Half_W)
            Abs_Y = math.clamp(Abs_Y, Half_H, Viewport.Y - Half_H)
            Create_Tween(Main_Panel, 0.05, {Position = UDim2.new(0, Abs_X, 0, Abs_Y)}, Enum.EasingStyle.Linear)
        end)
    end

    local Title_Bar = Create_Instance('Frame', {
        Name = 'Top',
        Size = UDim2.new(1, 0, 0, 46), 
        BackgroundTransparency = 1, 
        ZIndex = 11,
    }, Main_Panel)

    local Warper = Create_Instance('Frame', {
        Name = 'Warper',
        AnchorPoint = Vector2.new(0, 0.5),
        Position = UDim2.new(0, 5, 0.5, 0),
        Size = UDim2.fromOffset(50, 45),
        BackgroundTransparency = 1,
        ClipsDescendants = true,
        ZIndex = 20,
    }, Title_Bar)

    local Animated = Create_Instance('ImageLabel', {
        Name = 'Animated',
        Size = UDim2.new(3, 0, 3, 0),
        Position = UDim2.new(0, 0, 0, 0),
        BackgroundTransparency = 1,
        Image = 'rbxassetid://133009150415671',
        ImageTransparency = 1,
        ZIndex = 21,
    }, Warper)

    do
        local Warper_Framerate = (getgenv and getgenv().Animation_Frame_Rate) or 12
        local Current_Frame = 1
        local Total_Frames = 8
        local Row_Count = 3
        local Column_Count = 3
        local Last_Time = tick()
        local Animation_Connection
        Animation_Connection = RunService.Heartbeat:Connect(function()
            if not Animated or not Animated.Parent then 
                Animation_Connection:Disconnect() 
                return 
            end
            local Real_Time = tick()
            if Real_Time - Last_Time >= 1 / Warper_Framerate then
                Current_Frame = (Current_Frame % Total_Frames) + 1
                local Current_Column = ((Current_Frame - 1) % Column_Count) + 1
                local Current_Row = math.floor((Current_Frame - 1) / Column_Count) + 1
                Animated.Position = UDim2.new(-(Current_Column - 1), 0, -(Current_Row - 1), 0)
                Last_Time = Real_Time
            end
        end)
        Create_Tween(Animated, 0.8, {ImageTransparency = 0})
    end

    local Title_Label = Create_Instance('TextLabel', {
        Name = 'Name',
        Position = UDim2.fromOffset(52, 0), 
        Size = UDim2.new(0, 300, 1, 0),
        BackgroundTransparency = 1, 
        Font = Enum.Font.Code, 
        TextSize = 20,
        Text = Title, 
        TextColor3 = Theme.Accent, 
        TextXAlignment = Enum.TextXAlignment.Left,
        RichText = true, 
        ZIndex = 12,
    }, Title_Bar)
    self.Title_Label = Title_Label

    Create_Instance('TextLabel', {
        Name = 'Version',
        Position = UDim2.fromOffset(120, 0), 
        Size = UDim2.new(0, 80, 1, 0),
        BackgroundTransparency = 1, 
        Font = Enum.Font.Code, 
        TextSize = 13,
        Text = Version, 
        TextColor3 = Color3.fromRGB(100, 75, 80),
        TextXAlignment = Enum.TextXAlignment.Left, 
        ZIndex = 12,
    }, Title_Bar)

    if Device['Mobile'] then
        local Close_Button = Create_Instance('TextButton', {
            AnchorPoint = Vector2.new(1, 0.5), Position = UDim2.new(1, -14, 0.5, 0),
            Size = UDim2.fromOffset(34, 28), BackgroundColor3 = Color3.fromRGB(18, 14, 15),
            BorderSizePixel = 0, Font = Enum.Font.Code, TextSize = 14, Text = '✕',
            TextColor3 = Color3.fromRGB(255, 107, 122), ZIndex = 60, AutoButtonColor = false,
        }, Title_Bar)
        Create_Corner(Close_Button, 6)
        Create_Stroke(Close_Button, Color3.fromRGB(255, 107, 122), 1, 0.6)
        Close_Button.MouseButton1Click:Connect(function() self:Hide() end)
    end

    local Minimize_Button = Create_Instance('TextButton', {
        Name = 'Minimize',
        AnchorPoint = Vector2.new(1, 0.5),
        Position = UDim2.new(1, Device['Mobile'] and -56 or -14, 0.5, 0),
        Size = UDim2.fromOffset(72, 26), 
        BackgroundColor3 = Theme.Panel_2,
        BorderSizePixel = 0, Font = Enum.Font.Code, 
        TextSize = 12, Text = '▾  Min',
        TextColor3 = Theme.Muted, 
        ZIndex = 60, 
        AutoButtonColor = false,
    }, Title_Bar)

    Create_Corner(Minimize_Button, 6)
    Create_Stroke(Minimize_Button, Theme.Border, 1, 0.4)
    self.Minimize_Button = Minimize_Button

    Minimize_Button.MouseButton1Click:Connect(function() 
        self:Toggle_Minimize() 
    end)
    Minimize_Button.MouseEnter:Connect(function() 
        Create_Tween(Minimize_Button, 0.12, {BackgroundColor3 = Color3.fromRGB(30,18,22), TextColor3 = Theme.Accent}) 
    end)
    Minimize_Button.MouseLeave:Connect(function() 
        Create_Tween(Minimize_Button, 0.12, {BackgroundColor3 = Theme.Panel_2, TextColor3 = Theme.Muted}) 
    end)

    local Tab_Bar = Create_Instance('Frame', {
        Name = 'Tabs',
        Position = UDim2.new(0, 0, 0, 46), 
        Size = UDim2.new(1, 0, 0, 38),
        BackgroundTransparency = 1, 
        ZIndex = 11,
    }, Main_Panel)

    Create_Instance('UIListLayout', {
        FillDirection = Enum.FillDirection.Horizontal, 
        Padding = UDim.new(0, 4),
        SortOrder = Enum.SortOrder.LayoutOrder, 
        VerticalAlignment = Enum.VerticalAlignment.Center,
        HorizontalAlignment = Enum.HorizontalAlignment.Left,
    }, Tab_Bar)

    Create_Instance('UIPadding', {
        PaddingLeft = UDim.new(0, 16), 
        PaddingTop = UDim.new(0, 5),
        PaddingBottom = UDim.new(0, 5), 
        PaddingRight = UDim.new(0, 8),
    }, Tab_Bar)

    self.Tab_Bar = Tab_Bar

    local Search_Bar = Create_Instance('Frame', {
        Name = 'Search Bar',
        Position = UDim2.new(0, 0, 0, 84), 
        Size = UDim2.new(1, 0, 0, 34),
        BackgroundTransparency = 1, 
        ZIndex = 11,
    }, Main_Panel)

    local Search_Box = Create_Instance('Frame', {
        Name = 'Box',
        AnchorPoint = Vector2.new(0.5, 0.5), 
        Position = UDim2.fromScale(0.5, 0.5),
        Size = UDim2.new(1, -28, 0, 26), 
        BackgroundColor3 = Theme.Panel_2,
        BorderSizePixel = 0, 
        ZIndex = 12,
    }, Search_Bar)

    Create_Corner(Search_Box, 6)
    --// local Search_Stroke = Create_Stroke(Search_Box, Theme.Border, 1, 0.3)

    Create_Instance('TextLabel', {
        Name = 'Glyph',
        AnchorPoint = Vector2.new(0, 0.5), 
        Position = UDim2.new(0, 10, 0.5, 0),
        Size = UDim2.fromOffset(16, 16), 
        BackgroundTransparency = 1,
        Font = Enum.Font.Code, 
        TextSize = 13, 
        Text = '⌕', 
        TextColor3 = Theme.Dim, 
        ZIndex = 13,
    }, Search_Box)

    local Search_Input = Create_Instance('TextBox', {
        Name = 'Input',
        Position = UDim2.fromOffset(30, 0), 
        Size = UDim2.new(1, -64, 1, 0),
        BackgroundTransparency = 1, 
        Font = Enum.Font.Code, 
        TextSize = 12,
        Text = '', 
        PlaceholderText = 'Search features...', 
        PlaceholderColor3 = Theme.Dim,
        TextColor3 = Theme.Text, 
        TextXAlignment = Enum.TextXAlignment.Left,
        ClearTextOnFocus = false, 
        ZIndex = 13,
    }, Search_Box)

    self.Search_Input = Search_Input

    local Clear_Button = Create_Instance('TextButton', {
        Name = 'Clear',
        AnchorPoint = Vector2.new(1, 0.5), 
        Position = UDim2.new(1, -8, 0.5, 0),
        Size = UDim2.fromOffset(18, 18), 
        BackgroundTransparency = 1,
        Font = Enum.Font.Code, 
        TextSize = 13, 
        Text = '✕', 
        TextColor3 = Theme.Dim,
        Visible = false, 
        ZIndex = 13, 
        AutoButtonColor = false,
    }, Search_Box)

    Search_Input.Focused:Connect(function() 
        Create_Tween(Search_Stroke, 0.12, {Color = Theme.Accent, Transparency = 0}) 
    end)
    Search_Input.FocusLost:Connect(function() 
        Create_Tween(Search_Stroke, 0.12, {Color = Theme.Border, Transparency = 0.3}) 
    end)
    Search_Input:GetPropertyChangedSignal('Text'):Connect(function()
        Clear_Button.Visible = Search_Input.Text ~= ''
        self:Search(Search_Input.Text)
    end)
    Clear_Button.MouseButton1Click:Connect(function()
        Search_Input.Text = ''
    end)

    local Body_Scroller = Create_Instance('ScrollingFrame', {
        Name = 'Container',
        Position = UDim2.new(0, 0, 0, 119), 
        Size = UDim2.new(1, 0, 1, -157),
        BackgroundTransparency = 1, 
        BorderSizePixel = 0, 
        ScrollBarThickness = 3,
        ScrollBarImageColor3 = Theme.Accent, 
        CanvasSize = UDim2.new(0, 0, 0, 0),
        AutomaticCanvasSize = Enum.AutomaticSize.Y, 
        ClipsDescendants = true, 
        ZIndex = 11,
    }, Main_Panel)

    self.Body = Body_Scroller

    local Footer = Create_Instance('Frame', {
        Name = 'Status',
        AnchorPoint = Vector2.new(0, 1), 
        Position = UDim2.new(0, 0, 1, 0),
        Size = UDim2.new(1, 0, 0, 38), 
        BackgroundColor3 = Theme.Panel,
        BorderSizePixel = 0, 
        ZIndex = 12,
    }, Main_Panel)

    Create_Instance('Frame', {
        Name = 'Divider',
        Size = UDim2.new(1, 0, 0, 1), 
        BackgroundColor3 = Theme.Border,
        BackgroundTransparency = 0.3, 
        BorderSizePixel = 0, 
        ZIndex = 13,
    }, Footer)

    self.Footer = Footer

    local Status_Dot = Create_Instance('Frame', {
        Name = 'Dot',
        AnchorPoint = Vector2.new(0, 0.5), 
        Position = UDim2.new(0, 16, 0.5, 0),
        Size = UDim2.fromOffset(6, 6), 
        BackgroundColor3 = Theme.Accent,
        BorderSizePixel = 0, 
        ZIndex = 14,
    }, Footer)

    Create_Corner(Status_Dot, 3)
    self.Status_Dot = Status_Dot

    local Status_Label = Create_Instance('TextLabel', {
        AnchorPoint = Vector2.new(0, 0.5), 
        Position = UDim2.new(0, 28, 0.5, 0),
        Size = UDim2.fromOffset(300, 20), 
        BackgroundTransparency = 1,
        Font = Enum.Font.Code, 
        TextSize = 12, 
        Text = 'Active session running',
        TextColor3 = Theme.Muted, 
        TextXAlignment = Enum.TextXAlignment.Left, 
        ZIndex = 14,
    }, Footer)

    self.Status_Label = Status_Label

    local Clock_Label = Create_Instance('TextLabel', {
        AnchorPoint = Vector2.new(1, 0.5), 
        Position = UDim2.new(1, -14, 0.5, 0),
        Size = UDim2.fromOffset(220, 20), 
        BackgroundTransparency = 1,
        Font = Enum.Font.Code, 
        TextSize = 11, 
        Text = '', 
        TextColor3 = Theme.Dim,
        TextXAlignment = Enum.TextXAlignment.Right, 
        ZIndex = 14,
    }, Footer)

    if Device['Mobile'] then
        local Float_Button = Create_Instance('TextButton', {
            Name = 'Mobile', 
            AnchorPoint = Vector2.new(0.5, 1),
            Position = UDim2.new(0.5, 0, 1, -24), 
            Size = UDim2.fromOffset(60, 37),
            BackgroundColor3 = Color3.fromRGB(18, 10, 12), 
            BorderSizePixel = 0,
            Font = Enum.Font.Code, 
            TextSize = 13, 
            Text = Title or 'Open',
            TextColor3 = Theme.Accent, 
            ZIndex = 100, 
            Visible = false, 
            BackgroundTransparency = 1,
            TextTransparency = 1,
            AutoButtonColor = false,
        }, Screen_Gui)

        Create_Corner(Float_Button, 8)
        local Float_Stroke = Create_Stroke(Float_Button, Theme.Accent, 1, 1)

        self.Float_Button = Float_Button
        self.Float_Stroke = Float_Stroke

        local Dragging, Drag_Start, Start_Position, Did_Drag = false, nil, nil, false
        Float_Button.InputBegan:Connect(function(Input)
            if Input.UserInputType == Enum.UserInputType.MouseButton1 or Input.UserInputType == Enum.UserInputType.Touch then
                Dragging, Did_Drag, Drag_Start, Start_Position = true, false, Input.Position, Float_Button.Position
            end
        end)
        Float_Button.InputEnded:Connect(function(Input)
            if Input.UserInputType == Enum.UserInputType.MouseButton1 or Input.UserInputType == Enum.UserInputType.Touch then 
                Dragging = false 
            end
        end)
        UserInputService.InputChanged:Connect(function(Input)
            if not Dragging then return end
            if Input.UserInputType ~= Enum.UserInputType.MouseMovement and Input.UserInputType ~= Enum.UserInputType.Touch then 
                return 
            end
            local Delta = Input.Position - Drag_Start
            if Delta.Magnitude > 4 then Did_Drag = true end
            if not Did_Drag then return end
            local Viewport = Screen_Gui.AbsoluteSize
            local Abs_X = Start_Position.X.Scale * Viewport.X + Start_Position.X.Offset + Delta.X
            local Abs_Y = Start_Position.Y.Scale * Viewport.Y + Start_Position.Y.Offset + Delta.Y
            Abs_X = math.clamp(Abs_X, Float_Button.AbsoluteSize.X/2, Viewport.X - Float_Button.AbsoluteSize.X/2)
            Abs_Y = math.clamp(Abs_Y, Float_Button.AbsoluteSize.Y/2, Viewport.Y - Float_Button.AbsoluteSize.Y/2)
            Create_Tween(Float_Button, 0.05, {Position = UDim2.new(0, Abs_X, 0, Abs_Y)}, Enum.EasingStyle.Linear)
        end)
        Float_Button.MouseButton1Click:Connect(function()
            if Did_Drag then Did_Drag = false return end
            if not self.Visible then self:Show() end
        end)
    end

    UserInputService.InputBegan:Connect(function(Input, Processed)
        if self.Capturing and Input.UserInputType == Enum.UserInputType.Keyboard then
            self.Capturing(Input.KeyCode)
            return
        end
        if Processed then return end
        if Input.KeyCode == Keybind then self:Toggle() end
    end)

    task.spawn(function()
        while Main_Panel and Main_Panel.Parent do
            local Time = os.date('*t')
            local Hour = Time.hour % 12
            if Hour == 0 then Hour = 12 end
            Clock_Label.Text = string.format('[%s] toggle  ·  %d:%02d %s',
                tostring(Keybind):gsub('Enum.KeyCode.', ''), Hour, Time.min, Time.hour >= 12 and 'PM' or 'AM')
            task.wait(1)
        end
    end)

    task.spawn(function()
        local Dot = true
        while Title_Label and Title_Label.Parent do
            Title_Label.Text = Title .. (Dot and '.' or '')
            Dot = not Dot
            task.wait(0.55)
        end
    end)

    task.spawn(function()
        task.wait(0.3)
        self.Loading = true
        if not (getgenv and getgenv().Config_Enabled == false) then
            local Saved = Load_Config()
            if Saved then
                for Flag, Value in pairs(Saved) do
                    pcall(function() self:Apply_Flag(Flag, Value, true) end)
                end
                self:Status('Config loaded', Color3.fromRGB(96, 200, 140), 2)
            end
        end
        self.Loading = false
    end)

    Main_Panel.GroupTransparency = 1
    task.wait(0.05)
    self:Show()
    return self
end

function Library:Status(Message, Color, Duration)
    self.Status_Label.Text = Message
    self.Status_Dot.BackgroundColor3 = Color or Theme.Accent
    task.delay(Duration or 1.6, function()
        if self.Status_Label.Text == Message then
            self.Status_Label.Text = 'Active session running'
            self.Status_Dot.BackgroundColor3 = Theme.Accent
        end
    end)
end

function Library:Search(Query)
    Query = tostring(Query or ''):lower():gsub('^%s*(.-)%s*$', '%1')

    if Query == '' then
        self.Searching = false
        for _, Item in ipairs(self.Search_Items) do
            Item.Object.Visible = true
        end
        return
    end

    self.Searching = true
    local First_Match_Tab = nil
    for _, Item in ipairs(self.Search_Items) do
        local Is_Match = string.find(Item.Name:lower(), Query, 1, true) ~= nil
        Item.Object.Visible = Is_Match
        if Is_Match and not First_Match_Tab then
            First_Match_Tab = Item.Tab_Index
        end
    end

    if First_Match_Tab and First_Match_Tab ~= self.Active_Tab then
        self:Switch_Tab(First_Match_Tab)
    end
end

function Library:Autosave()
    if self.Loading then return end
    if getgenv and getgenv().Config_Enabled == false then return end
    self.Save_Dirty = true
    if self.Auto_Debounce then return end
    self.Auto_Debounce = true
    task.spawn(function()
        while self.Save_Dirty do
            self.Save_Dirty = false
            task.wait(0.4)
            if getgenv and getgenv().Config_Enabled == false then break end
            local Success = Save_Config(self.Flags)
            if Success then
                self:Status('Saved', Color3.fromRGB(96, 200, 140), 1.2)
            else
                self:Status('Save failed', Color3.fromRGB(220, 120, 90), 2)
            end
        end
        self.Auto_Debounce = false
    end)
end

function Library:Apply_Flag(Flag, Value, Silent)
    local Control = self.Control_Objects[Flag]
    if not Control then return end
    pcall(Control.Apply, Value, Silent)
end

function Library:Switch_Tab(Index)
    if Index == self.Active_Tab or not self.Tabs[Index] then return end
    if self.Switching then return end
    if self.Open_Dropdown then self.Open_Dropdown() end

    self.Switching = true
    local Out_Pane = self.Tabs[self.Active_Tab]
    local In_Pane = self.Tabs[Index]

    Out_Pane.Visible = true
    Out_Pane.GroupTransparency = 0
    Out_Pane.Position = UDim2.fromScale(0, 0)
    Create_Tween(Out_Pane, 0.16, {GroupTransparency = 1, Position = UDim2.fromScale(0, -0.03)}, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)

    local Previous = self.Active_Tab
    task.delay(0.16, function()
        if self.Tabs[Previous] and Previous ~= self.Active_Tab then
            self.Tabs[Previous].Visible = false
            self.Tabs[Previous].Position = UDim2.fromScale(0, 0)
        end
        In_Pane.Visible = true
        In_Pane.GroupTransparency = 1
        In_Pane.Position = UDim2.fromScale(0, 0.04)
        Create_Tween(In_Pane, 0.26, {GroupTransparency = 0, Position = UDim2.fromScale(0, 0)}, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)
        task.delay(0.28, function() self.Switching = false end)
    end)

    for Tab_Index, Button in ipairs(self.Tab_Buttons) do
        local Is_Active = (Tab_Index == Index)
        Create_Tween(Button, 0.16, {
            BackgroundColor3 = Is_Active and Color3.fromRGB(30, 16, 20) or Color3.fromRGB(0, 0, 0),
            BackgroundTransparency = Is_Active and 0 or 1,
            TextColor3 = Is_Active and Theme.Accent or Theme.Dim,
        })
        local Underline = Button:FindFirstChild('Underline')
        if Underline then Create_Tween(Underline, 0.16, {BackgroundTransparency = Is_Active and 0 or 1}) end
    end
    self.Active_Tab = Index
end

function Library:Show()
    if self.Tweening then return end
    self.Tweening = true
    if self.Float_Button then self:Fade_Float(false) end
    self.Panel.Visible, self.Panel.GroupTransparency = true, 1
    self.Panel.Size = UDim2.fromOffset(660, 92)
    self.Body.Visible, self.Footer.Visible = false, false
    self.Minimize_Button.Text, self.Minimized = '▴  Expand', true
    Create_Tween(self.Panel, 0.22, {GroupTransparency = 0})
    task.delay(0.26, function()
        self.Minimized = false
        self.Body.Visible, self.Footer.Visible = true, true
        self.Minimize_Button.Text = '▾  Min'
        Create_Tween(self.Panel, 0.30, {Size = UDim2.fromOffset(660, 420)})
        task.delay(0.32, function() self.Tweening = false end)
    end)
    self.Visible = true
end

function Library:Hide()
    if self.Tweening then return end
    self.Tweening, self.Visible = true, false
    self.Body.Visible, self.Footer.Visible = false, false
    self.Minimize_Button.Text, self.Minimized = '▴  Expand', true
    Create_Tween(self.Panel, 0.22, {Size = UDim2.fromOffset(660, 92)})
    task.delay(0.26, function()
        Create_Tween(self.Panel, 0.20, {GroupTransparency = 1 })
        task.delay(0.22, function()
            self.Panel.Visible = false
            if self.Float_Button then 
                self.Float_Button.Text = 'Open'
                self:Fade_Float(true) 
            end
            self.Tweening, self.Minimized = false, false
        end)
    end)
end

function Library:Fade_Float(Visible)
    local Float = self.Float_Button
    if not Float then return end
    if Visible then
        Float.Visible = true
        Create_Tween(Float, 0.22, {BackgroundTransparency = 0, TextTransparency = 0})
        if self.Float_Stroke then Create_Tween(self.Float_Stroke, 0.22, {Transparency = 0.5}) end
    else
        Create_Tween(Float, 0.18, {BackgroundTransparency = 1, TextTransparency = 1})
        if self.Float_Stroke then Create_Tween(self.Float_Stroke, 0.18, {Transparency = 1}) end
        task.delay(0.20, function()
            if Float then Float.Visible = false end
        end)
    end
end

function Library:Toggle()
    if self.Visible then self:Hide() else self:Show() end
end

function Library:Toggle_Minimize()
    if self.Tweening then return end
    self.Minimized = not self.Minimized
    Create_Tween(self.Panel, 0.28, {Size = UDim2.fromOffset(660, self.Minimized and 92 or 420)})
    self.Body.Visible, self.Footer.Visible = not self.Minimized, not self.Minimized
    self.Minimize_Button.Text = self.Minimized and '▴  Expand' or '▾  Min'
end

function Library:Create_Tab(Name, Icon)
    local Tab_Index = #self.Tabs + 1
    local Is_First  = Tab_Index == 1

    local Button_Width = Icon and 90 or 70
    local Tab_Button = Create_Instance('TextButton', {
        Name = Name, 
        Size = UDim2.fromOffset(Button_Width, 28),
        BackgroundColor3 = Color3.fromRGB(30, 16, 20),
        BackgroundTransparency = Is_First and 0 or 1, BorderSizePixel = 0,
        Font = Enum.Font.Code, 
        TextSize = 13, 
        Text = Name,
        TextColor3 = Is_First and Theme.Accent or Theme.Dim,
        LayoutOrder = Tab_Index, 
        ZIndex = 12, 
        AutoButtonColor = false,
    }, self.Tab_Bar)

    Create_Corner(Tab_Button, 6)

    if Icon and Icon ~= '' then
        Tab_Button.Text = '  ' .. Name
        local Image = Create_Instance('ImageLabel', {
            Name = 'Icon',
            AnchorPoint = Vector2.new(0, 0.5), 
            Position = UDim2.fromOffset(5, 14),
            Size = UDim2.fromOffset(16, 16), 
            BackgroundTransparency = 1, 
            Image = Icon,
            ImageColor3 = Is_First and Theme.Accent or Theme.Dim, 
            ZIndex = 13,
        }, Tab_Button)
        Tab_Button:GetPropertyChangedSignal('TextColor3'):Connect(function()
            Image.ImageColor3 = Tab_Button.TextColor3
        end)
    end

    local Underline = Create_Instance('Frame', {
        Name = 'Underline', 
        AnchorPoint = Vector2.new(0, 1),
        Position = UDim2.new(0, 4, 1, -1), 
        Size = UDim2.new(1, -8, 0, 2),
        BackgroundColor3 = Theme.Accent, 
        BackgroundTransparency = Is_First and 0 or 1,
        BorderSizePixel = 0, 
        ZIndex = 13,
    }, Tab_Button)

    Create_Corner(Underline, 2)

    Tab_Button.MouseEnter:Connect(function()
        if self.Active_Tab ~= Tab_Index then Create_Tween(Tab_Button, 0.12, {TextColor3 = Theme.Muted}) end
    end)
    Tab_Button.MouseLeave:Connect(function()
        if self.Active_Tab ~= Tab_Index then Create_Tween(Tab_Button, 0.12, {TextColor3 = Theme.Dim}) end
    end)

    table.insert(self.Tab_Buttons, Tab_Button)
    local Captured_Index = Tab_Index
    Tab_Button.MouseButton1Click:Connect(function()
        if self.Search_Input and self.Search_Input.Text ~= '' then self.Search_Input.Text = '' end
        self:Switch_Tab(Captured_Index)
    end)

    local Pane = Create_Instance('CanvasGroup', {
        Name = Name .. ' Pane', 
        Size = UDim2.new(1, 0, 0, 0),
        AutomaticSize = Enum.AutomaticSize.Y, 
        BackgroundTransparency = 1,
        GroupTransparency = Is_First and 0 or 1,
        Visible = Is_First, 
        Position = UDim2.fromScale(0, 0), 
        ZIndex = 12,
    }, self.Body)

    Create_Instance('UIPadding', {
        PaddingTop = UDim.new(0, 10), 
        PaddingBottom = UDim.new(0, 10),
        PaddingLeft = UDim.new(0, 14), 
        PaddingRight = UDim.new(0, 14),
    }, Pane)

    Create_Instance('UIListLayout', {
        FillDirection = Enum.FillDirection.Horizontal, 
        Padding = UDim.new(0, 12),
        SortOrder = Enum.SortOrder.LayoutOrder, 
        HorizontalAlignment = Enum.HorizontalAlignment.Center,
        VerticalAlignment = Enum.VerticalAlignment.Top,
    }, Pane)

    table.insert(self.Tabs, Pane)

    local function Make_Column(Order_Number)
        local Column = Create_Instance('Frame', {
            Name = 'Section',
            Size = UDim2.new(0.5, -6, 0, 0), 
            AutomaticSize = Enum.AutomaticSize.Y,
            BackgroundTransparency = 1, 
            LayoutOrder = Order_Number, 
            ZIndex = 12,
        }, Pane)

        Create_Instance('UIListLayout', {
            Padding = UDim.new(0, 6), 
            SortOrder = Enum.SortOrder.LayoutOrder,
            HorizontalAlignment = Enum.HorizontalAlignment.Center,
        }, Column)
        return Column
    end

    local Left_Column  = Make_Column(1)
    local Right_Column = Make_Column(2)

    local Tab = {}
    local Order_Left, Order_Right = 0, 0

    local function Target_Column(Section)
        if Section == 'right' then return Right_Column end
        return Left_Column
    end
    local function Next_Order(Section)
        if Section == 'right' then Order_Right += 1; return Order_Right end
        Order_Left += 1; return Order_Left
    end

    local function Register_Search(Object, Search_Name)
        table.insert(self.Search_Items, {Object = Object, Name = tostring(Search_Name or ''), Tab_Index = Tab_Index})
    end

    local function Row_Frame(Height, Section)
        local Row = Create_Instance('Frame', {
            Size = UDim2.new(1, 0, 0, Height), 
            BackgroundColor3 = Theme.Panel_2,
            BorderSizePixel = 0, 
            LayoutOrder = Next_Order(Section), 
            ZIndex = 15,
        }, Target_Column(Section))
        Create_Corner(Row, 8)
        local Row_Stroke = Create_Stroke(Row, Theme.Border, 1, 0.3)
        return Row, Row_Stroke
    end

    local function Row_Header(Parent, Name, Badge, Y_Offset)
        local Head = Create_Instance('Frame', {
            Position = UDim2.fromOffset(14, Y_Offset or 9), 
            Size = UDim2.fromOffset(360, 18),
            BackgroundTransparency = 1, 
            ZIndex = 16,
        }, Parent)

        Create_Instance('UIListLayout', {
            FillDirection = Enum.FillDirection.Horizontal, 
            Padding = UDim.new(0, 6),
            VerticalAlignment = Enum.VerticalAlignment.Center, 
            SortOrder = Enum.SortOrder.LayoutOrder,
        }, Head)

        Create_Instance('TextLabel', {
            AutomaticSize = Enum.AutomaticSize.X, 
            Size = UDim2.fromOffset(0, 18),
            BackgroundTransparency = 1, 
            Font = Enum.Font.Code, TextSize = 14,
            Text = Name, 
            TextColor3 = Theme.Text, 
            LayoutOrder = 1, 
            ZIndex = 16,
        }, Head)

        if Badge then
            local Badge_Color = Badge_Colors[Badge] or Badge_Colors.New
            local Badge_Label = Create_Instance('TextLabel', {
                AutomaticSize = Enum.AutomaticSize.X, 
                Size = UDim2.fromOffset(0, 16),
                BackgroundColor3 = Badge_Color.Background, 
                Font = Enum.Font.Code, 
                TextSize = 10,
                Text = Badge, 
                TextColor3 = Badge_Color.Text, 
                LayoutOrder = 2, 
                ZIndex = 16,
            }, Head)

            Create_Instance('UIPadding', {PaddingLeft = UDim.new(0, 6), PaddingRight = UDim.new(0, 6)}, Badge_Label)
            Create_Corner(Badge_Label, 4)
            Create_Stroke(Badge_Label, Badge_Color.Border, 1, 0.3)
        end
    end

    local function Row_Hover(Row)
        local Hover_Button = Create_Instance('TextButton', {
            Size = UDim2.fromScale(1, 1), 
            BackgroundTransparency = 1, 
            Text = '',
            ZIndex = 14, 
            AutoButtonColor = false,
        }, Row)
        Hover_Button.MouseEnter:Connect(function() 
            Create_Tween(Row, 0.14, {BackgroundColor3 = Theme.Panel_3}) 
        end)
        Hover_Button.MouseLeave:Connect(function() 
            Create_Tween(Row, 0.14, {BackgroundColor3 = Theme.Panel_2}) 
        end)
        return Hover_Button
    end

    function Tab.Create_Title(Options)
        local Title_Object = Create_Instance('TextLabel', {
            Name = 'Title',
            Size = UDim2.new(1, 0, 0, 24), 
            BackgroundTransparency = 1,
            Font = Enum.Font.Code, 
            TextSize = 13, 
            Text = Options.name or '',
            TextColor3 = Theme.Accent, 
            TextXAlignment = Enum.TextXAlignment.Left,
            LayoutOrder = Next_Order(Options.section), 
            ZIndex = 15,
        }, Target_Column(Options.section))
        Register_Search(Title_Object, Options.name)
    end

    function Tab.Create_Label(Options)
        local Label = Create_Instance('TextLabel', {
            Size = UDim2.new(1, 0, 0, 20), 
            BackgroundTransparency = 1,
            Font = Enum.Font.Code, 
            TextSize = 11, Text = Options.name or '',
            TextColor3 = Theme.Dim, 
            TextXAlignment = Enum.TextXAlignment.Left,
            LayoutOrder = Next_Order(Options.section), 
            ZIndex = 15,
        }, Target_Column(Options.section))
        Create_Instance('UIPadding', {PaddingLeft = UDim.new(0, 4)}, Label)
        Register_Search(Label, Options.name)
    end

    function Tab.Create_Paragraph(Options)
        local Row = Create_Instance('Frame', {
            Name = 'Paragraph',
            Size = UDim2.new(1, 0, 0, 0), 
            AutomaticSize = Enum.AutomaticSize.Y,
            BackgroundColor3 = Theme.Panel_2, 
            BorderSizePixel = 0,
            LayoutOrder = Next_Order(Options.section), 
            ZIndex = 15,
        }, Target_Column(Options.section))
        
        Create_Corner(Row, 8)
        Create_Stroke(Row, Theme.Border, 1, 0.3)

        Create_Instance('UIPadding', {
            PaddingLeft = UDim.new(0, 14), PaddingRight = UDim.new(0, 14),
            PaddingTop = UDim.new(0, 10), PaddingBottom = UDim.new(0, 12),
        }, Row)

        Create_Instance('UIListLayout', {
            Padding = UDim.new(0, 6), SortOrder = Enum.SortOrder.LayoutOrder,
            HorizontalAlignment = Enum.HorizontalAlignment.Left,
        }, Row)

        local Head = Create_Instance('Frame', {
            Size = UDim2.new(1, 0, 0, 18), 
            BackgroundTransparency = 1,
            LayoutOrder = 1, 
            ZIndex = 16,
        }, Row)

        Create_Instance('UIListLayout', {
            FillDirection = Enum.FillDirection.Horizontal, Padding = UDim.new(0, 6),
            VerticalAlignment = Enum.VerticalAlignment.Center, SortOrder = Enum.SortOrder.LayoutOrder,
        }, Head)

        Create_Instance('TextLabel', {
            AutomaticSize = Enum.AutomaticSize.X, 
            Size = UDim2.fromOffset(0, 18),
            BackgroundTransparency = 1, 
            Font = Enum.Font.Code, TextSize = 14,
            Text = Options.title or '', 
            TextColor3 = Theme.Accent,
            TextXAlignment = Enum.TextXAlignment.Left, 
            LayoutOrder = 1, ZIndex = 16,
        }, Head)

        if Options.badge then
            local Badge_Color = Badge_Colors[Options.badge] or Badge_Colors.New
            local Badge_Label = Create_Instance('TextLabel', {
                AutomaticSize = Enum.AutomaticSize.X, 
                Size = UDim2.fromOffset(0, 16),
                BackgroundColor3 = Badge_Color.Background, 
                Font = Enum.Font.Code, 
                TextSize = 10,
                Text = Options.badge, 
                TextColor3 = Badge_Color.Text, 
                LayoutOrder = 2, 
                ZIndex = 16,
            }, Head)
            Create_Instance('UIPadding', {PaddingLeft = UDim.new(0, 6), PaddingRight = UDim.new(0, 6)}, Badge_Label)
            Create_Corner(Badge_Label, 4)
            Create_Stroke(Badge_Label, Badge_Color.Border, 1, 0.3)
        end

        Create_Instance('TextLabel', {
            Size = UDim2.new(1, 0, 0, 0), 
            AutomaticSize = Enum.AutomaticSize.Y,
            BackgroundTransparency = 1, 
            Font = Enum.Font.Code, 
            TextSize = 12,
            Text = Options.content or '', 
            TextColor3 = Theme.Muted,
            TextXAlignment = Enum.TextXAlignment.Left, 
            TextYAlignment = Enum.TextYAlignment.Top,
            TextWrapped = true, 
            RichText = true, 
            LineHeight = 1.15,
            LayoutOrder = 2, 
            ZIndex = 16,
        }, Row)

        Register_Search(Row, Options.title)
    end

    function Tab.Create_Button(Options)
        local Has_Description = Options.description and Options.description ~= ''
        local Row = Row_Frame(Has_Description and 52 or 40, Options.section)
        Row.Name = Options.name or 'Button'
        Row_Header(Row, Options.name or 'Button', Options.badge, Has_Description and 9 or 11)

        if Has_Description then
            Create_Instance('TextLabel', {
                Position = UDim2.fromOffset(14, 30), 
                Size = UDim2.fromOffset(300, 14),
                BackgroundTransparency = 1, 
                Font = Enum.Font.Code, 
                TextSize = 11,
                Text = Options.description, 
                TextColor3 = Theme.Dim,
                TextXAlignment = Enum.TextXAlignment.Left, 
                TextTruncate = Enum.TextTruncate.AtEnd,
                ZIndex = 16,
            }, Row)
        end

        local Action_Button = Create_Instance('TextButton', {
            AnchorPoint = Vector2.new(1, 0.5), 
            Position = UDim2.new(1, -14, 0.5, 0),
            Size = UDim2.fromOffset(76, 26), 
            BackgroundColor3 = Color3.fromRGB(34, 18, 22),
            BorderSizePixel = 0, 
            Font = Enum.Font.Code, 
            TextSize = 12, 
            Text = '▸ Run',
            TextColor3 = Theme.Accent, 
            ZIndex = 18, 
            AutoButtonColor = false,
        }, Row)

        Create_Corner(Action_Button, 6)
        Create_Stroke(Action_Button, Theme.Accent, 1, 0.5)

        Row_Hover(Row)

        Action_Button.MouseEnter:Connect(function() 
            Create_Tween(Action_Button, 0.12, {BackgroundColor3 = Color3.fromRGB(50, 24, 30)}) 
        end)
        Action_Button.MouseLeave:Connect(function() 
            Create_Tween(Action_Button, 0.12, {BackgroundColor3 = Color3.fromRGB(34, 18, 22)}) 
        end)
        Action_Button.MouseButton1Click:Connect(function()
            Create_Tween(Action_Button, 0.08, {Size = UDim2.fromOffset(70, 24)})
            task.delay(0.08, function() Create_Tween(Action_Button, 0.12, {Size = UDim2.fromOffset(76, 26)}, Spring_Style, Spring_Direction) end)
            self:Status('Ran: ' .. (Options.name or 'Button'), Theme.Accent, 1.2)
            if Options.callback then pcall(Options.callback) end
        end)

        Register_Search(Row, Options.name)
    end

    function Tab.Create_Description_Toggle(Options)
        local Flag = Options.flag or Options.name
        local Default = Options.enabled == true

        local Row = Row_Frame(52, Options.section)
        Row.Name = Flag
        Row_Header(Row, Options.name or Flag, Options.badge, 9)

        Create_Instance('TextLabel', {
            Position = UDim2.fromOffset(14, 30), 
            Size = UDim2.fromOffset(300, 14),
            BackgroundTransparency = 1, 
            Font = Enum.Font.Code, 
            TextSize = 11,
            Text = Options.description or '', 
            TextColor3 = Theme.Dim,
            TextXAlignment = Enum.TextXAlignment.Left, 
            TextTruncate = Enum.TextTruncate.AtEnd,
            ZIndex = 16,
        }, Row)

        local Track = Create_Instance('Frame', {
            AnchorPoint = Vector2.new(1, 0.5), 
            Position = UDim2.new(1, -14, 0.5, 0),
            Size = UDim2.fromOffset(42, 22), 
            BackgroundColor3 = Default and Theme.Accent or Theme.Not_Enabled,
            BorderSizePixel = 0, 
            ZIndex = 16,
        }, Row)

        Create_Corner(Track, 11)

        local Thumb = Create_Instance('Frame', {
            AnchorPoint = Vector2.new(0, 0.5),
            Position = Default and UDim2.new(1, -19, 0.5, 0) or UDim2.new(0, 3, 0.5, 0),
            Size = UDim2.fromOffset(16, 16), 
            BackgroundColor3 = Theme.White,
            BorderSizePixel = 0, 
            ZIndex = 17,
        }, Track)

        Create_Corner(Thumb, 8)

        Row_Hover(Row)

        local State = Default

        local function Render(Value)
            Create_Tween(Track, 0.22, {BackgroundColor3 = Value and Theme.Accent or Theme.Not_Enabled})
            Create_Tween(Thumb, 0.30, {Position = Value and UDim2.new(1, -19, 0.5, 0) or UDim2.new(0, 3, 0.5, 0)}, Spring_Style, Spring_Direction)
        end

        local function Apply(Value, Silent)
            Value = Value and true or false
            State = Value
            self.Flags[Flag] = Value
            Render(Value)
            if not Silent and Options.callback then pcall(Options.callback, Value) end
        end

        self.Flags[Flag] = Default
        self.Control_Objects[Flag] = {Kind = 'toggle', Apply = Apply}

        local Click_Button = Create_Instance('TextButton', {
            Size = UDim2.fromScale(1, 1), 
            BackgroundTransparency = 1, 
            Text = '', 
            ZIndex = 18,
        }, Row)

        Click_Button.MouseButton1Click:Connect(function()
            Apply(not State, false)
            self:Status((State and 'Enabled: ' or 'Disabled: ') .. (Options.name or Flag),
                State and Theme.Accent or Theme.Dim, 1.4)
            self:Autosave()
        end)

        Register_Search(Row, Options.name or Flag)
    end

    function Tab.Create_Toggle(Options)
        Options.description = Options.description or ''
        Tab.Create_Description_Toggle(Options)
    end

    function Tab.Create_Slider(Options)
        local Flag = Options.flag or Options.name
        local Min = Options.min or 0
        local Max = Options.max or 100
        local Step = Options.step or 0
        local Decimals = Options.decimals or 0
        local Suffix = Options.suffix or ''

        local function Snap(Value)
            local Number = tonumber(Value)
            if Number == nil then return nil end
            if Step and Step > 0 then Number = Min + math.floor((Number - Min) / Step + 0.5) * Step end
            local Multiplier = 10 ^ Decimals
            Number = math.floor(Number * Multiplier + 0.5) / Multiplier
            return math.clamp(Number, Min, Max)
        end

        local Default = Snap(Options.default) or Min

        local Row = Row_Frame(56, Options.section)
        Row.Name = Flag
        Row_Header(Row, Options.name or Flag, Options.badge, 9)

        local Value_Label = Create_Instance('TextLabel', {
            AnchorPoint = Vector2.new(1, 0), 
            Position = UDim2.new(1, -14, 0, 9),
            Size = UDim2.fromOffset(120, 18), 
            BackgroundTransparency = 1,
            Font = Enum.Font.Code, 
            TextSize = 13, 
            Text = '',
            TextColor3 = Theme.Accent, 
            TextXAlignment = Enum.TextXAlignment.Right, 
            ZIndex = 16,
        }, Row)

        local Bar_Background = Create_Instance('Frame', {
            AnchorPoint = Vector2.new(0, 0.5), 
            Position = UDim2.new(0, 14, 1, -16),
            Size = UDim2.new(1, -28, 0, 6), 
            BackgroundColor3 = Theme.Not_Enabled,
            BorderSizePixel = 0, 
            ZIndex = 16,
        }, Row)

        Create_Corner(Bar_Background, 3)

        local Fill = Create_Instance('Frame', {
            Size = UDim2.fromScale(0, 1), 
            BackgroundColor3 = Theme.Accent,
            BorderSizePixel = 0, 
            ZIndex = 17,
        }, Bar_Background)

        Create_Corner(Fill, 3)

        local Knob = Create_Instance('Frame', {
            AnchorPoint = Vector2.new(0.5, 0.5), 
            Position = UDim2.fromScale(0, 0.5),
            Size = UDim2.fromOffset(14, 14), 
            BackgroundColor3 = Theme.White,
            BorderSizePixel = 0, 
            ZIndex = 18,
        }, Bar_Background)

        Create_Corner(Knob, 7)
        Create_Stroke(Knob, Theme.Accent, 2, 0)

        Row_Hover(Row)

        local function Set_Value(Value, Silent, Instant)
            local Number = Snap(Value)
            if Number == nil then return end
            self.Flags[Flag] = Number
            local Alpha = (Max == Min) and 0 or (Number - Min) / (Max - Min)
            Value_Label.Text = tostring(Number) .. Suffix
            if Instant then
                Fill.Size = UDim2.fromScale(Alpha, 1)
                Knob.Position = UDim2.fromScale(Alpha, 0.5)
            else
                Create_Tween(Fill, 0.08, {Size = UDim2.fromScale(Alpha, 1)}, Enum.EasingStyle.Sine)
                Create_Tween(Knob, 0.08, {Position = UDim2.fromScale(Alpha, 0.5)}, Enum.EasingStyle.Sine)
            end
            if not Silent and Options.callback then pcall(Options.callback, Number) end
        end

        self.Flags[Flag] = Default
        self.Control_Objects[Flag] = {Kind = 'slider', Apply = function(Value, Silent) Set_Value(Value, Silent, false) end}

        local Dragging = false
        local function Value_From_X(Pixel_X)
            local Absolute_X = Bar_Background.AbsolutePosition.X
            local Width      = Bar_Background.AbsoluteSize.X
            return Min + math.clamp((Pixel_X - Absolute_X) / math.max(Width, 1), 0, 1) * (Max - Min)
        end

        local Hit_Area = Create_Instance('TextButton', {
            AnchorPoint = Vector2.new(0.5, 0.5), 
            Position = UDim2.fromScale(0.5, 0.5),
            Size = UDim2.new(1, 0, 0, 22), 
            BackgroundTransparency = 1, 
            Text = '',
            ZIndex = 19, 
            AutoButtonColor = false,
        }, Bar_Background)

        Hit_Area.InputBegan:Connect(function(Input)
            if Input.UserInputType == Enum.UserInputType.MouseButton1
            or Input.UserInputType == Enum.UserInputType.Touch then
                Dragging = true
                Set_Value(Value_From_X(Input.Position.X), false, true)
            end
        end)
        UserInputService.InputEnded:Connect(function(Input)
            if (Input.UserInputType == Enum.UserInputType.MouseButton1
            or Input.UserInputType == Enum.UserInputType.Touch) and Dragging then
                Dragging = false
                self:Autosave()
            end
        end)
        UserInputService.InputChanged:Connect(function(Input)
            if not Dragging then return end
            if Input.UserInputType ~= Enum.UserInputType.MouseMovement
            and Input.UserInputType ~= Enum.UserInputType.Touch then return end
            Set_Value(Value_From_X(Input.Position.X), false, true)
        end)
        Set_Value(Default, true, true)

        Register_Search(Row, Options.name or Flag)
    end

    function Tab.Create_Dropdown(Options)
        local Flag = Options.flag or Options.name
        local Choices = Options.options or {}
        local Default = Options.default or Choices[1]
        local Row_Height = 28
        local Max_List = math.min(#Choices, 5)

        local Row = Row_Frame(46, Options.section)
        Row.Name = Flag
        Row_Header(Row, Options.name or Flag, Options.badge, 14)

        local Box = Create_Instance('TextButton', {
            AnchorPoint = Vector2.new(1, 0.5), 
            Position = UDim2.new(1, -14, 0.5, 0),
            Size = UDim2.fromOffset(140, 28), 
            BackgroundColor3 = Theme.Not_Enabled,
            BorderSizePixel = 0, 
            Font = Enum.Font.Code, 
            TextSize = 12,
            Text = '', 
            TextColor3 = Theme.Text, 
            ZIndex = 17, 
            AutoButtonColor = false,
        }, Row)

        Create_Corner(Box, 6)
        Create_Stroke(Box, Theme.Border, 1, 0.3)

        local Selected_Label = Create_Instance('TextLabel', {
            Position = UDim2.fromOffset(10, 0), 
            Size = UDim2.new(1, -34, 1, 0),
            BackgroundTransparency = 1, 
            Font = Enum.Font.Code, 
            TextSize = 12,
            Text = tostring(Default), 
            TextColor3 = Theme.Text,
            TextXAlignment = Enum.TextXAlignment.Left, 
            TextTruncate = Enum.TextTruncate.AtEnd,
            ZIndex = 18,
        }, Box)

        local Arrow = Create_Instance('TextLabel', {
            AnchorPoint = Vector2.new(1, 0.5), 
            Position = UDim2.new(1, -8, 0.5, 0),
            Size = UDim2.fromOffset(14, 14), 
            BackgroundTransparency = 1,
            Font = Enum.Font.Code, 
            TextSize = 12,
            Text = '▾', 
            TextColor3 = Theme.Muted, 
            ZIndex = 18,
        }, Box)

        local List = Create_Instance('Frame', {
            Position = UDim2.new(0, 14, 0, 46), 
            Size = UDim2.new(1, -28, 0, 0),
            BackgroundColor3 = Theme.Panel, 
            BorderSizePixel = 0, 
            ClipsDescendants = true, 
            ZIndex = 19,
        }, Row)

        Create_Corner(List, 6)
        Create_Stroke(List, Theme.Border, 1, 0.3)
        Create_Instance('UIListLayout', {SortOrder = Enum.SortOrder.LayoutOrder}, List)
        Create_Instance('UIPadding', {PaddingTop = UDim.new(0, 3), PaddingBottom = UDim.new(0, 3)}, List)

        local Is_Open = false
        local Full_Height = Max_List * Row_Height + 6

        local function Close()
            if not Is_Open then return end
            Is_Open = false
            self.Open_Dropdown = nil
            Create_Tween(Arrow, 0.18, {Rotation = 0})
            Create_Tween(List, 0.20, {Size = UDim2.new(1, -28, 0, 0)})
            Create_Tween(Row, 0.22, {Size = UDim2.new(1, 0, 0, 46)})
        end

        local function Set_Value(Value, Silent)
            self.Flags[Flag] = Value
            Selected_Label.Text = tostring(Value)
            for _, Child in ipairs(List:GetChildren()) do
                if Child:IsA('TextButton') then
                    Child.TextColor3 = (Child.Text == '   ' .. tostring(Value)) and Theme.Accent or Theme.Muted
                end
            end
            if not Silent and Options.callback then pcall(Options.callback, Value) end
        end

        local function Open_List()
            if Is_Open then Close() return end
            if self.Open_Dropdown then self.Open_Dropdown() end
            Is_Open = true
            self.Open_Dropdown = Close
            Create_Tween(Arrow, 0.18, {Rotation = 180})
            Create_Tween(List, 0.22, {Size = UDim2.new(1, -28, 0, Full_Height)})
            Create_Tween(Row, 0.24, {Size = UDim2.new(1, 0, 0, 46 + Full_Height + 8)})
        end

        for Index, Choice in ipairs(Choices) do
            local Item = Create_Instance('TextButton', {
                Size = UDim2.new(1, 0, 0, Row_Height), 
                BackgroundColor3 = Theme.Panel,
                BackgroundTransparency = 1, 
                BorderSizePixel = 0, 
                Font = Enum.Font.Code,
                TextSize = 12, 
                Text = '   ' .. tostring(Choice),
                TextColor3 = (Choice == Default) and Theme.Accent or Theme.Muted,
                TextXAlignment = Enum.TextXAlignment.Left, 
                LayoutOrder = Index,
                ZIndex = 20, 
                AutoButtonColor = false,
            }, List)

            Item.MouseEnter:Connect(function() 
                Create_Tween(Item, 0.12, {BackgroundTransparency = 0, BackgroundColor3 = Theme.Panel_3}) 
            end)
            Item.MouseLeave:Connect(function() 
                Create_Tween(Item, 0.12, {BackgroundTransparency = 1}) 
            end)
            Item.MouseButton1Click:Connect(function()
                Set_Value(Choice, false)
                self:Status('Selected: ' .. tostring(Choice), Theme.Accent, 1.2)
                self:Autosave()
                Close()
            end)
        end

        Box.MouseButton1Click:Connect(Open_List)

        self.Flags[Flag] = Default
        self.Control_Objects[Flag] = {Kind = 'dropdown', Apply = function(Value, Silent) Set_Value(Value, Silent) end}

        Register_Search(Row, Options.name or Flag)
    end

    function Tab.Create_Keybind(Options)
        local Flag = Options.flag or Options.name
        local Default = Options.default or Enum.KeyCode.None

        local Row = Row_Frame(46, Options.section)
        Row.Name = Flag
        Row_Header(Row, Options.name or Flag, Options.badge, 14)

        local function Key_Text(Key)
            if not Key or Key == Enum.KeyCode.None then return 'None' end
            return tostring(Key):gsub('Enum.KeyCode.', '')
        end

        local Box = Create_Instance('TextButton', {
            AnchorPoint = Vector2.new(1, 0.5), 
            Position = UDim2.new(1, -14, 0.5, 0),
            Size = UDim2.fromOffset(120, 28), 
            BackgroundColor3 = Theme.Not_Enabled,
            BorderSizePixel = 0, 
            Font = Enum.Font.Code, 
            TextSize = 12,
            Text = Key_Text(Default), 
            TextColor3 = Theme.Text, 
            ZIndex = 17, 
            AutoButtonColor = false,
        }, Row)

        Create_Corner(Box, 6)
        local Box_Stroke = Create_Stroke(Box, Theme.Border, 1, 0.3)

        local Current = Default

        local function Set_Key(Key, Silent)
            Current = Key
            self.Flags[Flag] = Key_Text(Key)
            Box.Text = Key_Text(Key)
            if not Silent and Options.callback then pcall(Options.callback, Key) end
        end

        Box.MouseButton1Click:Connect(function()
            Box.Text = '...'
            --// Create_Tween(Box_Stroke, 0.12, {Color = Theme.Accent, Transparency = 0})
            self.Capturing = function(Key_Code)
                self.Capturing = nil
                Create_Tween(Box_Stroke, 0.12, {Color = Theme.Border, Transparency = 0.3})
                if Key_Code == Enum.KeyCode.Escape then
                    Set_Key(Enum.KeyCode.None, false)
                else
                    Set_Key(Key_Code, false)
                end
                self:Status('Bound: ' .. Key_Text(Current), Theme.Accent, 1.2)
                self:Autosave()
            end
        end)

        UserInputService.InputBegan:Connect(function(Input, Game_Processed)
            if Game_Processed or self.Capturing then return end
            if Current and Current ~= Enum.KeyCode.None and Input.KeyCode == Current then
                if Options.callback then pcall(Options.callback, Current) end
            end
        end)

        self.Flags[Flag] = Key_Text(Default)
        self.Control_Objects[Flag] = {
            Kind = 'keybind',
            Apply = function(Value, Silent)
                local Key_Code = Enum.KeyCode[tostring(Value)]
                if Key_Code then Set_Key(Key_Code, Silent) end
            end,
        }

        Register_Search(Row, Options.name or Flag)
    end

    function Tab.Create_Color_Picker(Options)
        local Flag = Options.flag or Options.name
        local Default = Options.default or Theme.Accent

        local Row = Row_Frame(46, Options.section)
        Row.Name = Flag
        Row_Header(Row, Options.name or Flag, Options.badge, 14)

        local Hue, Saturation, Value = Color3.toHSV(Default)

        local Swatch = Create_Instance('TextButton', {
            AnchorPoint = Vector2.new(1, 0), 
            Position = UDim2.new(1, -14, 0, 12),  
            Size = UDim2.fromOffset(40, 22), 
            BackgroundColor3 = Default,
            BorderSizePixel = 0, 
            Text = '', 
            ZIndex = 17, 
            AutoButtonColor = false,
        }, Row)

        Create_Corner(Swatch, 6)
        Create_Stroke(Swatch, Theme.Border, 1, 0.3)

        local Icon = Create_Instance('TextLabel', {
            AnchorPoint = Vector2.new(1, 0), 
            Position = UDim2.new(1, -60, 0, 12),
            Size = UDim2.fromOffset(14, 18), 
            BackgroundTransparency = 1,
            Font = Enum.Font.Code, 
            TextSize = 12, 
            Text = '▾', 
            TextColor3 = Theme.Muted, 
            ZIndex = 17,
        }, Row)

        local Picker = Create_Instance('Frame', {
            Position = UDim2.new(0, 14, 0, 46), 
            Size = UDim2.new(1, -28, 0, 0),
            BackgroundColor3 = Theme.Panel, 
            BorderSizePixel = 0, 
            ClipsDescendants = true, 
            ZIndex = 19,
        }, Row)

        Create_Corner(Picker, 6)
        Create_Stroke(Picker, Theme.Border, 1, 0.3)

        local Pad = Create_Instance('Frame', {
            Position = UDim2.fromOffset(10, 10), 
            Size = UDim2.new(1, -20, 0, 90),
            BackgroundTransparency = 1, 
            ZIndex = 20,
        }, Picker)

        local SV_Box = Create_Instance('Frame', {
            Size = UDim2.new(1, -26, 1, 0), 
            BackgroundColor3 = Color3.fromHSV(Hue, 1, 1),
            BorderSizePixel = 0, 
            ZIndex = 20,
        }, Pad)

        Create_Corner(SV_Box, 4)
        
        local White_Gradient = Create_Instance('Frame', {Size = UDim2.fromScale(1, 1), BackgroundColor3 = Color3.new(1, 1, 1), BorderSizePixel = 0, ZIndex = 20}, SV_Box)
        Create_Corner(White_Gradient, 4)
        Create_Instance('UIGradient', {Transparency = NumberSequence.new(0, 1)}, White_Gradient)
        local Black_Gradient = Create_Instance('Frame', {Size = UDim2.fromScale(1, 1), BackgroundColor3 = Color3.new(0, 0, 0), BorderSizePixel = 0, ZIndex = 21}, SV_Box)
        Create_Corner(Black_Gradient, 4)
        Create_Instance('UIGradient', {Rotation = 90, Transparency = NumberSequence.new(1, 0)}, Black_Gradient)

        local SV_Cursor = Create_Instance('Frame', {
            AnchorPoint = Vector2.new(0.5, 0.5), 
            Size = UDim2.fromOffset(8, 8),
            BackgroundColor3 = Theme.White, 
            BorderSizePixel = 0, 
            ZIndex = 22,
            Position = UDim2.fromScale(Saturation, 1 - Value),
        }, SV_Box)

        Create_Corner(SV_Cursor, 4)
        Create_Stroke(SV_Cursor, Color3.new(0, 0, 0), 1, 0.2)

        local Hue_Bar = Create_Instance('Frame', {
            AnchorPoint = Vector2.new(1, 0), 
            Position = UDim2.new(1, 0, 0, 0),
            Size = UDim2.fromOffset(18, 90), 
            BorderSizePixel = 0, 
            ZIndex = 20,
        }, Pad)

        Create_Corner(Hue_Bar, 4)
        
        Create_Instance('UIGradient', {Rotation = 90, Color = ColorSequence.new({
            ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 0, 0)),
            ColorSequenceKeypoint.new(0.17, Color3.fromRGB(255, 255, 0)),
            ColorSequenceKeypoint.new(0.33, Color3.fromRGB(0, 255, 0)),
            ColorSequenceKeypoint.new(0.50, Color3.fromRGB(0, 255, 255)),
            ColorSequenceKeypoint.new(0.67, Color3.fromRGB(0, 0, 255)),
            ColorSequenceKeypoint.new(0.83, Color3.fromRGB(255, 0, 255)),
            ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 0, 0)),
        })}, Hue_Bar)

        local Hue_Cursor = Create_Instance('Frame', {
            AnchorPoint = Vector2.new(0.5, 0.5), 
            Position = UDim2.new(0.5, 0, Hue, 0),
            Size = UDim2.new(1, 4, 0, 3), 
            BackgroundColor3 = Theme.White, 
            BorderSizePixel = 0, 
            ZIndex = 22,
        }, Hue_Bar)

        Create_Corner(Hue_Cursor, 2)

        local Is_Open = false

        local function Recolor(Silent)
            local Color = Color3.fromHSV(Hue, Saturation, Value)
            Swatch.BackgroundColor3 = Color
            SV_Box.BackgroundColor3 = Color3.fromHSV(Hue, 1, 1)
            self.Flags[Flag] = Color
            if not Silent and Options.callback then pcall(Options.callback, Color) end
        end

        local function Set_Open(State_Open)
            Is_Open = State_Open
            Icon.Text = Is_Open and '▴' or '▾'
            Create_Tween(Icon, 0.16, {TextColor3 = Is_Open and Theme.Accent or Theme.Muted})
            Create_Tween(Picker, 0.22, {Size = UDim2.new(1, -28, 0, Is_Open and 110 or 0)})
            Create_Tween(Row, 0.24, {Size = UDim2.new(1, 0, 0, Is_Open and (46 + 110 + 8) or 46)})
        end

        Swatch.MouseButton1Click:Connect(function() Set_Open(not Is_Open) end)

        local SV_Dragging, Hue_Dragging = false, false

        local function Update_SV(Pixel_X, Pixel_Y)
            local Alpha_X = math.clamp((Pixel_X - SV_Box.AbsolutePosition.X) / math.max(SV_Box.AbsoluteSize.X, 1), 0, 1)
            local Alpha_Y = math.clamp((Pixel_Y - SV_Box.AbsolutePosition.Y) / math.max(SV_Box.AbsoluteSize.Y, 1), 0, 1)
            Saturation, Value = Alpha_X, 1 - Alpha_Y
            SV_Cursor.Position = UDim2.fromScale(Alpha_X, Alpha_Y)
            Recolor(false)
        end
        local function Update_Hue(Pixel_Y)
            local Alpha_Y = math.clamp((Pixel_Y - Hue_Bar.AbsolutePosition.Y) / math.max(Hue_Bar.AbsoluteSize.Y, 1), 0, 1)
            Hue = Alpha_Y
            Hue_Cursor.Position = UDim2.new(0.5, 0, Alpha_Y, 0)
            Recolor(false)
        end

        local SV_Hit = Create_Instance('TextButton', {Size = UDim2.fromScale(1, 1), BackgroundTransparency = 1, Text = '', ZIndex = 23, AutoButtonColor = false}, SV_Box)
        local Hue_Hit = Create_Instance('TextButton', {Size = UDim2.fromScale(1, 1), BackgroundTransparency = 1, Text = '', ZIndex = 23, AutoButtonColor = false}, Hue_Bar)

        SV_Hit.InputBegan:Connect(function(Input)
            if Input.UserInputType == Enum.UserInputType.MouseButton1 or Input.UserInputType == Enum.UserInputType.Touch then
                SV_Dragging = true; Update_SV(Input.Position.X, Input.Position.Y)
            end
        end)
        Hue_Hit.InputBegan:Connect(function(Input)
            if Input.UserInputType == Enum.UserInputType.MouseButton1 or Input.UserInputType == Enum.UserInputType.Touch then
                Hue_Dragging = true; Update_Hue(Input.Position.Y)
            end
        end)

        UserInputService.InputChanged:Connect(function(Input)
            if Input.UserInputType ~= Enum.UserInputType.MouseMovement and Input.UserInputType ~= Enum.UserInputType.Touch then return end
            if SV_Dragging then Update_SV(Input.Position.X, Input.Position.Y) end
            if Hue_Dragging then Update_Hue(Input.Position.Y) end
        end)
        UserInputService.InputEnded:Connect(function(Input)
            if Input.UserInputType == Enum.UserInputType.MouseButton1 or Input.UserInputType == Enum.UserInputType.Touch then
                if SV_Dragging or Hue_Dragging then self:Autosave() end
                SV_Dragging, Hue_Dragging = false, false
            end
        end)

        self.Flags[Flag] = Default
        self.Control_Objects[Flag] = {
            Kind = 'color',
            Apply = function(Value_Argument, Silent)
                local Color = Value_Argument
                if type(Value_Argument) == 'string' then Color = Hex_To_Color(Value_Argument) end
                if typeof(Color) == 'Color3' then
                    Hue, Saturation, Value = Color3.toHSV(Color)
                    SV_Cursor.Position = UDim2.fromScale(Saturation, 1 - Value)
                    Hue_Cursor.Position = UDim2.new(0.5, 0, Hue, 0)
                    Recolor(Silent)
                end
            end,
        }
        Register_Search(Row, Options.name or Flag)
    end
    return Tab
end

function Library:Get_Flag(Flag) return self.Flags[Flag] end
function Library:Set_Flag(Flag, Value) self:Apply_Flag(Flag, Value, false) self:Autosave() end
function Library:Save() Save_Config(self.Flags) end

return Library
