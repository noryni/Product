if typeof(cloneref) ~= 'function' then return warn('[Product] ─ Dependency Issue. ✨') end
local UserInputService = cloneref(game:GetService('UserInputService'))
local TweenService = cloneref(game:GetService('TweenService'))
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
    Info = {Accent = Theme.Accent, Glyph = 'i'},
    Success = {Accent = Color3.fromRGB(96, 200, 140),  Glyph = '✓'},
    Warning = {Accent = Color3.fromRGB(230, 188, 64),  Glyph = '!'},
    Error = {Accent = Color3.fromRGB(220, 90, 100),  Glyph = '✕'}
}

local Text_Font = Enum.Font.Gotham
local Title_Font = Enum.Font.GothamBold
local Glyph_Font = Enum.Font.GothamBold

local Device = {
    ['Mobile'] = UserInputService.TouchEnabled and not UserInputService.KeyboardEnabled,
}

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

local Container = Create_Instance('Frame', {
    Name = 'Container',
    AnchorPoint = Vector2.new(1, 1),
    Position = UDim2.new(1, -Edge_Margin, 1, -Edge_Margin),
    Size = UDim2.fromOffset(Container_Width, 0),
    AutomaticSize = Enum.AutomaticSize.Y,
    BackgroundTransparency = 1,
    ZIndex = 1000,
}, Screen_Gui)

Create_Instance('UIListLayout', {
    Padding = UDim.new(0, 8),
    SortOrder = Enum.SortOrder.LayoutOrder,
    HorizontalAlignment = Enum.HorizontalAlignment.Right,
    VerticalAlignment = Enum.VerticalAlignment.Bottom,
}, Container)

local Order_Counter = 0
local Active_Notifications = {}

function Module.Notify(Options)
    Options = Options or {}
 
    local Title = tostring(Options.Title or 'Notification')
    local Description = tostring(Options.Description or '')
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
 
    local Glyph_Badge = Create_Instance('Frame', {
        Name = 'Glyph',
        AnchorPoint = Vector2.new(1, 0),
        Position = UDim2.fromScale(1, 0),
        Size = UDim2.fromOffset(22, 22),
        BackgroundColor3 = Theme.Panel_3,
        BorderSizePixel = 0,
        ZIndex = 1002,
    }, Card)

    Create_Corner(Glyph_Badge, 6)
    local Glyph_Stroke = Create_Stroke(Glyph_Badge, Kind.Accent, 1, 0.5)
 
    local Glyph_Text = Create_Instance('TextLabel', {
        Name = 'Glyph Text',
        Size = UDim2.fromScale(1, 1),
        BackgroundTransparency = 1,
        Font = Glyph_Font,
        TextSize = 13,
        Text = Kind.Glyph,
        TextColor3 = Kind.Accent,
        TextXAlignment = Enum.TextXAlignment.Center,
        TextYAlignment = Enum.TextYAlignment.Center,
        ZIndex = 1003,
    }, Glyph_Badge)
 
    local Content = Create_Instance('Frame', {
        Name = 'Content',
        Position = UDim2.fromScale(0, 0),
        Size = UDim2.new(1, -32, 0, 0),
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
        Size = UDim2.new(1, -Underline_Inset * 2 + 28, 0, 2),
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
    Glyph_Badge.BackgroundTransparency = 1
    Glyph_Stroke.Transparency = 1
    Glyph_Text.TextTransparency = 1

    for _, Descendant in ipairs(Content:GetDescendants()) do
        if Descendant:IsA('TextLabel') then
            Descendant.TextTransparency = 1
        end
    end
 
    Create_Tween(Card, 0.26, {Position = UDim2.fromOffset(0, 0), BackgroundTransparency = 0}, Enum.EasingStyle.Back, Enum.EasingDirection.Out)
    Create_Tween(Card_Stroke, 0.26, {Transparency = 0.35})
    Create_Tween(Glyph_Badge, 0.20, {BackgroundTransparency = 0})
    Create_Tween(Glyph_Stroke, 0.22, {Transparency = 0.5})
    Create_Tween(Glyph_Text, 0.22, {TextTransparency = 0})

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
