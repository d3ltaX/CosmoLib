local lib = {}

function  lib:CreateWindow()
    Window = Instance.new("ScreenGui", game.CoreGui)
    local window = {}
    
    function window:CreateSection(SectionTitle,Pos)
        local section = {}
        local TextLabel = Instance.new("TextLabel")
        local UICorner_3 = Instance.new("UICorner")

        local Frame = Instance.new("Frame")
        local UICorner = Instance.new("UICorner")

        local Frame_2 = Instance.new("Frame")
        local UICorner_2 = Instance.new("UICorner")
        local UIListLayout = Instance.new("UIListLayout")
        TextLabel.Active = true
        TextLabel.Selectable = true
        TextLabel.Draggable = true
        TextLabel.Parent = Window
        TextLabel.BackgroundColor3 = Color3.fromRGB(29, 29, 29)
        TextLabel.BorderColor3 = Color3.fromRGB(29, 29, 29)
        TextLabel.Position = Pos
        TextLabel.Size = UDim2.new(0, 244, 0, 69)
        TextLabel.Font = Enum.Font.Code
        TextLabel.Text = SectionTitle
        TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
        TextLabel.TextSize = 28.000
        TextLabel.TextWrapped = true

        Frame.Parent = TextLabel
        Frame.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
        Frame.BorderColor3 = Color3.fromRGB(40, 40, 40)
        Frame.Position = UDim2.new(0, 0, 0.897640288, 0)
        Frame.Size = UDim2.new(0, 244, 0, 585)

        UICorner.Parent = Frame

        Frame_2.Parent = Frame
        Frame_2.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
        Frame_2.BorderColor3 = Color3.fromRGB(40, 40, 40)
        Frame_2.Position = UDim2.new(0, 0, 0.0176599529, 0)
        Frame_2.Size = UDim2.new(0, 244, 0, 567)

        UICorner_2.Parent = Frame_2

        UIListLayout.Parent = Frame_2
        UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
        UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
        UIListLayout.Padding = UDim.new(0, 10)
        function section:CreateButton(buttonTitle, callback)
            
            local TextButton = Instance.new("TextButton")
            local UICorner_3 = Instance.new("UICorner")

            TextButton.Parent = Frame_2
            TextButton.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
            TextButton.BorderColor3 = Color3.fromRGB(27, 27, 27)
            TextButton.Position = UDim2.new(0.0901639313, 0, 0, 0)
            TextButton.Size = UDim2.new(0, 200, 0, 43)
            TextButton.Font = Enum.Font.Code
            TextButton.Text = buttonTitle
            TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
            TextButton.TextSize = 24.000
            TextButton.TextWrapped = true

            UICorner_3.Parent = TextButton
            TextButton.MouseButton1Down:Connect(callback())
        end
        return section
    end
    return window
end
return lib
