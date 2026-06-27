if typeof(cloneref) ~= 'function' then return warn('[Product] ─ Dependency Issue. ✨') end
local UserInputService = cloneref(game:GetService('UserInputService'))
local TweenService = cloneref(game:GetService('TweenService'))
local HttpService = cloneref(game:GetService('HttpService'))
local CoreGui = cloneref(game:GetService('CoreGui'))

local Noryn = CoreGui:FindFirstChild('Noryn')
if not Noryn then
	Noryn = Instance.new('ScreenGui')
	Noryn.Name = 'Noryn'
	Noryn.ResetOnSpawn = false
	Noryn.Parent = CoreGui
end

local Module = {}
local Theme = {
    Accent = Color3.fromRGB(203, 104, 118),
    Panel = Color3.fromRGB(12,  12,  14),
    Panel_2 = Color3.fromRGB(17,  17,  20),
    Panel_3 = Color3.fromRGB(23,  23,  28),
    Border = Color3.fromRGB(45,  45,  52),
    Text = Color3.fromRGB(232, 232, 240),
    Muted = Color3.fromRGB(144, 144, 160),
    Dim = Color3.fromRGB(96,  96,  112),
    White = Color3.fromRGB(255, 255, 255)
}

local Kind_Colors = {
    Info = {Accent = Theme.Accent},
    Success = {Accent = Color3.fromRGB(96, 200, 140)},
    Warning = {Accent = Color3.fromRGB(230, 188, 64)},
    Error = {Accent = Color3.fromRGB(220, 90, 100)}
}

local Text_Font = Enum.Font.Gotham
local Title_Font = Enum.Font.GothamBold

local Device = {
    ['Mobile'] = UserInputService.TouchEnabled and not UserInputService.KeyboardEnabled,
}

local Language_Codes = {
    English = 'en',
    Spanish = 'es',
    Chinese = 'zh-cn',
    Hindi = 'hi',
    Russian = 'ru',
    French = 'fr',
    Portuguese = 'pt',
    Vietnamese = 'vi',
    German = 'de',
    Arabic = 'ar',
}

local function Http_Request(Options)
    local Signal = (syn and syn.request) or (http and http.request) or http_request or request
    if Signal then return Signal(Options) end
    return HttpService:RequestAsync(Options)
end

local function Translate_Via_Google(Text, Target_Code, Source_Code)
    Source_Code = Source_Code or 'auto'
    local Url = 'https://translate.googleapis.com/translate_a/single?client=gtx&sl=' .. Source_Code .. '&tl=' .. Target_Code .. '&dt=t&q=' .. HttpService:UrlEncode(Text)
    local Ok, Result = pcall(function()
        local Response = Http_Request({Url = Url, Method = 'GET'})
        local Body = Response.Body or Response.body
        local Decoded = HttpService:JSONDecode(Body)

        local Combined_Text = ''
        if Decoded and Decoded[1] then
            for _, Section in ipairs(Decoded[1]) do
                if Section[1] then Combined_Text = Combined_Text .. Section[1] end
            end
        end
        return Combined_Text
    end)

    if Ok and Result and Result ~= '' then
        return Result
    end
    return nil
end

local function Get_Translate_Type()
    local Selected = getgenv and getgenv().Notify_Translate_Type_Enabled
    if type(Selected) ~= 'string' then return 'English' end
    for Name, _ in pairs(Language_Codes) do
        if Name:lower() == Selected:lower() then
            return Name
        end
    end
    return 'English'
end

local function Is_Translate_Enabled()
    return getgenv and getgenv().Notify_Translate_Enabled == true
end

local Translation_Cache = {}

local function Translate_Text(Text)
    if not Is_Translate_Enabled() then return Text end
    if type(Text) ~= 'string' or Text == '' then return Text end

    local Target_Language = Get_Translate_Type()
    if Target_Language == 'English' then return Text end

    local Cache_Key = Target_Language .. '|' .. Text
    if Translation_Cache[Cache_Key] then
        return Translation_Cache[Cache_Key]
    end

    local Translated = Translate_Via_Google(Text, Language_Codes[Target_Language])
    if Translated then
        Translation_Cache[Cache_Key] = Translated
        return Translated
    end
    return Text
end

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
    return Create_Instance('UICorner', {
        CornerRadius = UDim.new(0, Radius or 8)
    }, Parent)
end

local function Create_Stroke(Parent, Color, Thickness, Transparency)
    return Create_Instance('UIStroke', {
        Color = Color or Theme.Border,
        Thickness = Thickness or 1,
        Transparency = Transparency or 0,
        ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
    }, Parent)
end

local Existing = Noryn:FindFirstChild('Notify')
if Existing then Existing:Destroy() end

local Screen_Gui = Create_Instance('ScreenGui', {
    Name = 'Notify',
    IgnoreGuiInset = true,
    ResetOnSpawn = false,
    ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
    DisplayOrder = 999,
}, Noryn)

local Container_Width = 300
local Edge_Margin = Device['Mobile'] and 12 or 16

local Position_Map = {
    ['Down-Right'] = {
        Anchor = Vector2.new(1, 1),
        Position = UDim2.new(1, -Edge_Margin, 1, -Edge_Margin),
        List_Vertical = Enum.VerticalAlignment.Bottom
    },
    ['Down-Left']  = {
        Anchor = Vector2.new(0, 1),
        Position = UDim2.new(0,  Edge_Margin, 1, -Edge_Margin),
        List_Vertical = Enum.VerticalAlignment.Bottom
    },
    ['Up-Right']   = {
        Anchor = Vector2.new(1, 0),
        Position = UDim2.new(1, -Edge_Margin, 0,  Edge_Margin),
        List_Vertical = Enum.VerticalAlignment.Top
    },
    ['Up-Left']    = {
        Anchor = Vector2.new(0, 0),
        Position = UDim2.new(0,  Edge_Margin, 0,  Edge_Margin),
        List_Vertical = Enum.VerticalAlignment.Top
    },
    ['Down-Center'] = {
        Anchor = Vector2.new(0.5, 1),
        Position = UDim2.new(0.5, 0, 1, -Edge_Margin),
        List_Vertical = Enum.VerticalAlignment.Bottom
    },
    ['Up-Center'] = {
        Anchor = Vector2.new(0.5, 0),
        Position = UDim2.new(0.5, 0, 0, Edge_Margin),
        List_Vertical = Enum.VerticalAlignment.Top
    },
    ['Mid-Left'] = {
        Anchor = Vector2.new(0, 0.5),
        Position = UDim2.new(0, Edge_Margin, 0.5, 0),
        List_Vertical = Enum.VerticalAlignment.Center
    },
    ['Mid-Right'] = {
        Anchor = Vector2.new(1, 0.5),
        Position = UDim2.new(1, -Edge_Margin, 0.5, 0),
        List_Vertical = Enum.VerticalAlignment.Center
    },
}

local function Get_Position()
    local Selected = getgenv and getgenv().Notify_Position_Enabled
    return Position_Map[Selected] or Position_Map['Down-Right']
end

local Initial_Pos = Get_Position()

local Container = Create_Instance('Frame', {
    Name = 'Container',
    AnchorPoint = Initial_Pos.Anchor,
    Position = Initial_Pos.Position,
    Size = UDim2.fromOffset(Container_Width, 0),
    AutomaticSize = Enum.AutomaticSize.Y,
    BackgroundTransparency = 1,
    ZIndex = 1000,
}, Screen_Gui)

local List_Layout = Create_Instance('UIListLayout', {
    Padding = UDim.new(0, 8),
    SortOrder = Enum.SortOrder.LayoutOrder,
    HorizontalAlignment = Enum.HorizontalAlignment.Right,
    VerticalAlignment = Initial_Pos.List_Vertical,
}, Container)

local Last_Position_Key = getgenv and getgenv().Notify_Position_Enabled or 'Down-Right'

task.spawn(function()
    while Container and Container.Parent do
        local Current_Key = getgenv and getgenv().Notify_Position_Enabled or 'Down-Right'
        if Current_Key ~= Last_Position_Key then
            local New_Pos = Position_Map[Current_Key] or Position_Map['Down-Right']
            Last_Position_Key = Current_Key
            Container.AnchorPoint = New_Pos.Anchor
            List_Layout.VerticalAlignment = New_Pos.List_Vertical
            Create_Tween(Container, 0.35, {Position = New_Pos.Position}, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)
        end
        task.wait(0.1)
    end
end)

local Order_Counter = 0
local Active_Notifications = {}

function Module.Notify(Options)
    Options = Options or {}
 
    local Title = Translate_Text(tostring(Options.Title or 'Notification'))
    local Description = Translate_Text(tostring(Options.Description or ''))
    local Duration = tonumber(Options.Duration) or 5
    local Kind = Kind_Colors[Options.Kind] or Kind_Colors.Info
    local Notify_Key = Title .. '|' .. Description

    if Active_Notifications[Notify_Key] then
        Active_Notifications[Notify_Key].Dismiss()
        Active_Notifications[Notify_Key] = nil
        task.wait(0.05)
    end
 
    Order_Counter += 1
    
    local My_Order = Order_Counter
    local Has_Description = Description ~= ''
 
    local Card = Create_Instance('Frame', {
        Name = 'Card',
        Size = UDim2.new(1, 0, 0, 0),
        AutomaticSize = Enum.AutomaticSize.Y,
        BackgroundColor3 = Theme.Panel_2,
        BorderSizePixel = 0,
        LayoutOrder = My_Order,
        ClipsDescendants = true,
        ZIndex = 1001,
    }, Container)
 
    local Card_Radius = 10
    Create_Corner(Card, Card_Radius)
    local Card_Stroke = Create_Stroke(Card, Theme.Border, 1, 0.35)
 
    Create_Instance('UIPadding', {
        PaddingTop = UDim.new(0, 11),
        PaddingBottom = UDim.new(0, 18),
        PaddingLeft = UDim.new(0, 14),
        PaddingRight = UDim.new(0, 14),
    }, Card)
 
    local Content = Create_Instance('Frame', {
        Name = 'Content',
        Position = UDim2.fromScale(0, 0),
        Size = UDim2.new(1, 0, 0, 0),
        AutomaticSize = Enum.AutomaticSize.Y,
        BackgroundTransparency = 1,
        ZIndex = 1002,
    }, Card)
 
    Create_Instance('UIListLayout', {
        Padding = UDim.new(0, 3),
        SortOrder = Enum.SortOrder.LayoutOrder,
    }, Content)
 
    local Title_Row = Create_Instance('Frame', {
        Name = 'Title Row',
        Size = UDim2.new(1, 0, 0, 16),
        BackgroundTransparency = 1,
        LayoutOrder = 1,
        ZIndex = 1003,
    }, Content)
 
    Create_Instance('TextLabel', {
        Size = UDim2.new(1, 0, 1, 0),
        BackgroundTransparency = 1,
        Font = Title_Font,
        TextSize = 13,
        Text = Title,
        TextColor3 = Theme.Text,
        TextXAlignment = Enum.TextXAlignment.Left,
        TextYAlignment = Enum.TextYAlignment.Center,
        TextTruncate = Enum.TextTruncate.AtEnd,
        ZIndex = 1003,
    }, Title_Row)
 
    if Has_Description then
        Create_Instance('TextLabel', {
            Name = 'Description',
            Size = UDim2.new(1, 0, 0, 0),
            AutomaticSize = Enum.AutomaticSize.Y,
            BackgroundTransparency = 1,
            Font = Text_Font,
            TextSize = 12,
            Text = Description,
            TextColor3 = Theme.Muted,
            TextXAlignment = Enum.TextXAlignment.Left,
            TextYAlignment = Enum.TextYAlignment.Top,
            TextWrapped = true,
            LineHeight = 1.15,
            LayoutOrder = 2,
            ZIndex = 1003,
        }, Content)
    end
 
    local Underline_Inset = 10

    local Progress_Track = Create_Instance('Frame', {
        Name = 'Progress',
        AnchorPoint = Vector2.new(0.5, 1),
        Position = UDim2.new(0.5, 0, 1, 12),
        Size = UDim2.new(1, -Underline_Inset * 2, 0, 2),
        BackgroundColor3 = Theme.Border,
        BackgroundTransparency = 0.4,
        BorderSizePixel = 0,
        ZIndex = 1002,
    }, Card)

    Create_Corner(Progress_Track, 2)
 
    local Progress_Fill = Create_Instance('Frame', {
        Name = 'Fill',
        AnchorPoint = Vector2.new(0, 0),
        Position = UDim2.fromScale(0, 0),
        Size = UDim2.fromScale(1, 1),
        BackgroundColor3 = Kind.Accent,
        BorderSizePixel = 0,
        ZIndex = 1003,
    }, Progress_Track)
    
    Create_Corner(Progress_Fill, 2)
 
    local Dismissed = false
    local Notification_Object
 
    local function Dismiss()
        if Dismissed then return end
        Dismissed = true
        if Active_Notifications[Notify_Key] == Notification_Object then
            Active_Notifications[Notify_Key] = nil
        end
        Create_Tween(Card, 0.22, {Size = UDim2.new(1, 0, 0, 0)}, Enum.EasingStyle.Quint, Enum.EasingDirection.In)
        Create_Tween(Card, 0.20, {BackgroundTransparency = 1})
        Create_Tween(Card_Stroke, 0.20, {Transparency = 1})
        for _, Descendant in ipairs(Card:GetDescendants()) do
            if Descendant:IsA('TextLabel') or Descendant:IsA('TextButton') then
                Create_Tween(Descendant, 0.18, {TextTransparency = 1, BackgroundTransparency = 1})
            elseif Descendant:IsA('Frame') then
                Create_Tween(Descendant, 0.18, {BackgroundTransparency = 1})
            elseif Descendant:IsA('UIStroke') then
                Create_Tween(Descendant, 0.18, {Transparency = 1})
            end
        end
        task.delay(0.24, function()
            if Card and Card.Parent then Card:Destroy() end
        end)
    end

    Card.Position = UDim2.fromOffset(40, 0)
    Card.BackgroundTransparency = 1
    Card_Stroke.Transparency = 1

    for _, Descendant in ipairs(Content:GetDescendants()) do
        if Descendant:IsA('TextLabel') then
            Descendant.TextTransparency = 1
        end
    end
 
    Create_Tween(Card, 0.26, {Position = UDim2.fromOffset(0, 0), BackgroundTransparency = 0}, Enum.EasingStyle.Back, Enum.EasingDirection.Out)
    Create_Tween(Card_Stroke, 0.26, {Transparency = 0.35})

    for _, Descendant in ipairs(Content:GetDescendants()) do
        if Descendant:IsA('TextLabel') then
            Create_Tween(Descendant, 0.22, {TextTransparency = 0})
        end
    end
 
    task.spawn(function()
        local Elapsed = 0
        while Elapsed < Duration do
            local dt = task.wait()
            if Dismissed then break end
            Elapsed += dt
            local Alpha = math.clamp(1 - (Elapsed / Duration), 0, 1)
            if Progress_Fill and Progress_Fill.Parent then
                Progress_Fill.Size = UDim2.fromScale(Alpha, 1)
            end
        end
        if not Dismissed then
            Dismiss()
        end
    end)
    Notification_Object = {
        Dismiss = Dismiss,
        Card = Card,
    }
    Active_Notifications[Notify_Key] = Notification_Object
    return Notification_Object
end
 
return Module
