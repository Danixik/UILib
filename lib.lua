local library = {}

function library:Window(name)
    local UILib = Instance.new("ScreenGui")
    local Backround = Instance.new("Frame")
    local Main = Instance.new("Frame")
    local Underline = Instance.new("Frame")
    local UIGradient = Instance.new("UIGradient")
    local NameLib = Instance.new("TextLabel")
    local ContainerBackround = Instance.new("Frame")
    local Container = Instance.new("Frame")
    local UIListLayout = Instance.new("UIListLayout")

    UILib.Name = "UILib"
    UILib.Parent = game.CoreGui
    UILib.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

    Backround.Name = "Backround"
    Backround.Parent = UILib
    Backround.AnchorPoint = Vector2.new(0.5, 0.5)
    Backround.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
    Backround.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Backround.Position = UDim2.new(0.5, 0, 0.5, 0)
    Backround.Size = UDim2.new(0, 452, 0, 552)

    Main.Name = "Main"
    Main.Parent = Backround
    Main.AnchorPoint = Vector2.new(0.5, 0.5)
    Main.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
    Main.BorderColor3 = Color3.fromRGB(45, 45, 45)
    Main.Position = UDim2.new(0.5, 0, 0.5, 0)
    Main.Size = UDim2.new(0, 450, 0, 550)
    

    Underline.Name = "Underline"
    Underline.Parent = Main
    Underline.AnchorPoint = Vector2.new(0.5, 0)
    Underline.BackgroundColor3 = Color3.fromRGB(255, 220, 138)
    Underline.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Underline.Position = UDim2.new(0.5, 0, 0.0450000018, 0)
    Underline.Size = UDim2.new(0, 450, 0, 2)

    UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(30, 30, 30)), ColorSequenceKeypoint.new(0.13, Color3.fromRGB(35, 35, 35)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 255, 255))}
    UIGradient.Rotation = 90
    UIGradient.Parent = Main

    NameLib.Name = "NameLib"
    NameLib.Parent = Main
    NameLib.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    NameLib.BackgroundTransparency = 1.000
    NameLib.BorderSizePixel = 0
    NameLib.Position = UDim2.new(0.0130000003, 0, 0, 0)
    NameLib.Size = UDim2.new(0, 300, 0, 25)
    NameLib.Font = Enum.Font.Gotham
    NameLib.Text = name
    NameLib.TextColor3 = Color3.fromRGB(255, 255, 255)
    NameLib.TextSize = 18.000
    NameLib.TextStrokeTransparency = 0.900
    NameLib.TextXAlignment = Enum.TextXAlignment.Left

    ContainerBackround.Name = "ContainerBackround"
    ContainerBackround.Parent = Main
    ContainerBackround.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
    ContainerBackround.BorderColor3 = Color3.fromRGB(0, 0, 0)
    ContainerBackround.Position = UDim2.new(0.003, 0, 0.055, 0)
    ContainerBackround.Size = UDim2.new(0, 448, 0, 517)

    Container.Name = "Container"
    Container.Parent = ContainerBackround
    Container.AnchorPoint = Vector2.new(0.5, 0.5)
    Container.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
    Container.BorderColor3 = Color3.fromRGB(30, 30, 30)
    Container.Position = UDim2.new(0.5, 0, 0.5, 0)
    Container.Size = UDim2.new(0, 446, 0, 515)

    UIListLayout.Parent = Container
    UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
    UIListLayout.Padding = UDim.new(0, 5)

    function library:CreateButton(titleButton, callback)
        local TextButton = Instance.new("TextButton")
        local callback = callback or function() end

        TextButton.Parent = Container
        TextButton.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
        TextButton.BorderColor3 = Color3.fromRGB(255, 220, 138)
        TextButton.Position = UDim2.new(0.00224215258, 0, 0.00194174761, 0)
        TextButton.Size = UDim2.new(0, 235, 0, 25)
        TextButton.Font = Enum.Font.Gotham
        TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
        TextButton.TextSize = 16.000
        TextButton.Text = titleButton
    end

    function library:CreateLabel(titleLabel)
        local callback = callback or function() end
        local TextLabel = Instance.new("TextLabel")

        TextLabel.Parent = Container
        TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        TextLabel.BackgroundTransparency = 1.000
        TextLabel.TextXAlignment = Enum.TextXAlignment.Left
        TextLabel.BorderSizePixel = 0
        TextLabel.Position = UDim2.new(0.00224215258, 0, 0.0563106798, 0)
        TextLabel.Size = UDim2.new(0, 250, 0, 25)
        TextLabel.Font = Enum.Font.Gotham
        TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
        TextLabel.TextSize = 16.000
        TextLabel.Text = titleLabel
    end
end
return library
