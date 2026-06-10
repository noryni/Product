if typeof(cloneref) ~= 'function' then return warn('[Noryn] - cloneref is not supported.') end
local TweenService = game:GetService('TweenService')
local RunService = game:GetService('RunService')
local TextService = game:GetService('TextService')
local CoreGui = cloneref(game:GetService('CoreGui'))

local Noryn = CoreGui:FindFirstChild('Noryn')
if not Noryn then
	Noryn = Instance.new('ScreenGui')
	Noryn.Name = 'Noryn'
	Noryn.ResetOnSpawn = false
	Noryn.Parent = CoreGui
end

local Notify = Noryn:FindFirstChild('Notify')
if Notify then Notify:Destroy() end

Notify = Instance.new('ScreenGui')
Notify.Name = 'Notify'
Notify.ResetOnSpawn = false
Notify.Parent = Noryn

local Container = Instance.new('Frame')
Container.Name = 'Container'
Container.Position = UDim2.new(0, 20, 0.5, -20)
Container.Size = UDim2.new(0, 300, 0.5, 0)
Container.BackgroundTransparency = 1
Container.Parent = Notify

local function Create_Image(Id, Button)
	local Main_Image = Instance.new(string.format('Image%s', Button and 'Button' or 'Label'))
	Main_Image.Image = Id
	Main_Image.BackgroundTransparency = 1
	return Main_Image
end

local function Create_Round()
	local Main_Image = Create_Image('rbxassetid://5761488251')
	Main_Image.ScaleType = Enum.ScaleType.Slice
	Main_Image.SliceCenter = Rect.new(2, 2, 298, 298)
	Main_Image.ImageColor3 = Color3.fromHex('#1B1C21')
	return Main_Image
end

local function Create_Shadow()
	local Main_Image = Create_Image('rbxassetid://5761498316')
	Main_Image.ScaleType = Enum.ScaleType.Slice
	Main_Image.SliceCenter = Rect.new(17, 17, 283, 283)
	Main_Image.Size = UDim2.fromScale(1, 1) + UDim2.fromOffset(30, 30)
	Main_Image.Position = -UDim2.fromOffset(15, 15)
	Main_Image.ImageColor3 = Color3.fromHex('#1B1C21')
	return Main_Image
end

local Notification_Padding = 10
local Notification_Description_Padding = 10
local Notification_Objects = {}

local Notification_Tween_Time = 1
local Notification_Tween_Style = Enum.EasingStyle.Sine
local Notification_Tween_Direction = Enum.EasingDirection.Out

local Notification_Last_Tick = tick()
local Notification_Cache = {}

local function Calculate_Bounds(Table_Objects)
	local X, Y = 0, 0
	for _, Object in next, Table_Objects do
		X += Object.AbsoluteSize.X
		Y += Object.AbsoluteSize.Y
	end
	return {X = X, Y = Y}
end

local function Update_Notifications()
	local Delta_Time = tick() - Notification_Last_Tick
	local Previous_Objects = {}
	for _, Object in next, Notification_Objects do
		local Label, Delta, Done = Object[1], Object[2], Object[3]
		if not Done then
			if Delta < Notification_Tween_Time then
				Object[2] = math.clamp(Delta + Delta_Time, 0, 1)
				Delta = Object[2]
			else
				Object[3] = true
			end
		end
		local New_Value = TweenService:GetValue(Delta, Notification_Tween_Style, Notification_Tween_Direction)
		local Current_Pos = Label.Position
		local Previous_Bounds = Calculate_Bounds(Previous_Objects)
		local Target_Pos = UDim2.new(0, 0, 0, Previous_Bounds.Y + (Notification_Padding * #Previous_Objects))
		Label.Position = Current_Pos:Lerp(Target_Pos, New_Value)
		table.insert(Previous_Objects, Label)
	end
	Notification_Cache = Previous_Objects
	Notification_Last_Tick = tick()
end

RunService:BindToRenderStep('dsc.gg/getnoryn', 0, Update_Notifications)

local Notification_Title = {
	Font = Enum.Font.GothamSemibold,
	Size = 14
}

local Notification_Description = {
	Font = Enum.Font.Gotham,
	Size = 14
}

local Notification_Max_Width = (300 - Notification_Padding - Notification_Description_Padding)
local function Create_Label(Text, Font, Size)
	local Notification_Label = Instance.new('TextLabel')
	Notification_Label.Text = Text
	Notification_Label.Font = Font
	Notification_Label.TextSize = Size
	Notification_Label.BackgroundTransparency = 1
	Notification_Label.TextXAlignment = Enum.TextXAlignment.Left
	Notification_Label.RichText = true
	Notification_Label.TextColor3 = Color3.fromRGB(255, 255, 255)
	return Notification_Label
end

local function Fade_Object(Object)
	local Properties = {
		TextLabel = 'TextTransparency',
		ImageLabel = 'ImageTransparency',
		Frame = 'BackgroundTransparency'
	}
	local Property = Properties[Object.ClassName]
	if Property then
		TweenService:Create(Object, TweenInfo.new(0.25),{[Property] = 1}):Play()
	end
end

local function Remove_Notification(Object, Duration)
	task.wait(Duration)
	Fade_Object(Object)
	for _, Descendant in ipairs(Object:GetDescendants()) do
		Fade_Object(Descendant)
	end
	task.wait(0.25)
	for Index, Value in ipairs(Notification_Objects) do
		if Value[1] == Object then
			table.remove(Notification_Objects, Index)
			break
		end
	end
	Object:Destroy()
end

local Notification_Service = {}
function Notification_Service.Notify(Properties)
	local Title = Properties.Title
	local Description = Properties.Description
	local Duration = Properties.Duration or 5
	local Y = Title and 26 or 0
	if Description then
		local Text_Size = TextService:GetTextSize(Description, Notification_Description.Size, Notification_Description.Font, Vector2.new(Notification_Max_Width, math.huge))
		Y += Text_Size.Y + 12
	end

	local Notification_Frame = Create_Round()
	Notification_Frame.Size = UDim2.new(1, 0, 0, Y)
	Notification_Frame.Position = UDim2.new(-1, 20, 0, Calculate_Bounds(Notification_Cache).Y + (Notification_Padding * #Notification_Cache))
	if Title then
		local Notification_Title_Label = Create_Label(Title, Notification_Title.Font, Notification_Title.Size)
		Notification_Title_Label.Size = UDim2.new(1, -10, 0, 26)
		Notification_Title_Label.Position = UDim2.fromOffset(10, 0)
		Notification_Title_Label.Parent = Notification_Frame
	end

	if Description then
		local Notification_Description_Label = Create_Label(Description, Notification_Description.Font, Notification_Description.Size)
		Notification_Description_Label.TextWrapped = true
		Notification_Description_Label.Size = UDim2.new(1, -10, 1, -26)
		Notification_Description_Label.Position = UDim2.fromOffset(10, 26)
		Notification_Description_Label.TextYAlignment = Enum.TextYAlignment.Top
		Notification_Description_Label.Parent = Notification_Frame
	end

	Create_Shadow().Parent = Notification_Frame
	Notification_Frame.Parent = Container
	table.insert(Notification_Objects, {Notification_Frame, 0, false})
	task.spawn(Remove_Notification, Notification_Frame, Duration)
end

return Notification_Service
