local ChlosSimpleNotificationGui = Instance.new("ScreenGui")
local Templates = Instance.new("Folder")
local Template = Instance.new("TextLabel")
local UICorner = Instance.new("UICorner")
local Style2 = Instance.new("Frame")
local UICorner_2 = Instance.new("UICorner")
local Title = Instance.new("TextLabel")
local Text = Instance.new("TextLabel")
local List = Instance.new("Frame")
local UIListLayout = Instance.new("UIListLayout")
local UIStroke = Instance.new("UIStroke")
local UIStroke2 = Instance.new("UIStroke")
ChlosSimpleNotificationGui.Name = "Chlo's Simple Notification Gui"
ChlosSimpleNotificationGui.Parent = game.CoreGui
Templates.Name = "Templates"
Templates.Parent = ChlosSimpleNotificationGui
Template.Name = "Template"
Template.Parent = Templates
Template.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Template.BackgroundTransparency = 0.870
Template.Size = UDim2.new(1, 0, 0.0524861887, 0)
Template.Visible = false
Template.Font = Enum.Font.GothamBlack
Template.TextColor3 = Color3.fromRGB(255, 255, 255)
Template.TextScaled = true
Template.TextSize = 14.000
Template.TextStrokeTransparency = 0.900
Template.TextWrapped = true
UICorner.Parent = Template
UIStroke.Parent = Template
UIStroke.ApplyStrokeMode = "Border"
UIStroke.Color = Color3.new(0,0,0)
UIStroke.Thickness = 3.5
UIStroke.Transparency = 0.5
UICorner.CornerRadius = UDim.new(0, 324234)
UICorner.Parent = Template
Style2.Name = "Style2"
Style2.Parent = Templates
Style2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Style2.BackgroundTransparency = 0.870
Style2.Position = UDim2.new(0, 0, 0.0690607727, 0)
Style2.Size = UDim2.new(1, 0, 0.11139226, 0)
Style2.Visible = false
UICorner_2.CornerRadius = UDim.new(0, 324234)
UICorner_2.Parent = Style2
Title.Name = "Title"
Title.Parent = Style2
Title.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Title.BackgroundTransparency = 1.000
Title.Size = UDim2.new(1, 0, 0.293223858, 0)
Title.Font = Enum.Font.GothamBlack
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextScaled = true
Title.TextSize = 14.000
Title.TextStrokeTransparency = 0.900
Title.TextWrapped = true
Text.Name = "Text"
Text.Parent = Style2
Text.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Text.BackgroundTransparency = 1.000
Text.Position = UDim2.new(0, 0, 0.293223888, 0)
Text.Size = UDim2.new(1, 0, 0.706776023, 0)
Text.Font = Enum.Font.GothamBlack
Text.Text = "Notification"
Text.TextColor3 = Color3.fromRGB(255, 255, 255)
Text.TextScaled = true
Text.TextSize = 14.000
Text.TextStrokeTransparency = 0.900
Text.TextWrapped = true
List.Name = "List"
List.Parent = TypsSimpleNotificationGui
List.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
List.BackgroundTransparency = 1.000
List.BorderColor3 = Color3.fromRGB(27, 42, 53)
List.Position = UDim2.new(0.321767807, 0, 0.0912827775, 0)
List.Size = UDim2.new(0.355672836, 0, 0.62039417, 0)
UIListLayout.Parent = List
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0, 12)
UIStroke2.Parent = Style2
UIStroke2.Parent = Style2
UIStroke2.ApplyStrokeMode = "Border"
UIStroke2.Color = Color3.new(0,0,0)
UIStroke2.Thickness = 3.5
UIStroke2.Transparency = 0.5
local Debris = game:GetService("Debris");
function MakeNotification(Name,Text,Time)
	local Template = Templates.Template:Clone()
	Template.Parent = List
	Template.Text = Text
	Template.Name = Name
	Template.Visible = true
	Debris:AddItem(Template, Time)
end
function MakeStyle2Notification(Name,Text,Time)
	local Style2Template = Style2:Clone()
	Style2Template.Parent = List
	Style2Template.Title.Text = Name
	Style2Template.Name = Name
	Style2Template.Text.Text = Text
	Style2Template.Visible = true
	Debris:AddItem(Style2Template, Time)

end
MakeStyle2Notification("Credits:","Notification System By Chlo! You are running version 2.52", 8)
print("MakeNotification(Name,Text,Time)")
print("MakeStyle2Notification(Title,Text,Time)")
