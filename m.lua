local lib = {}

function  lib:CreateWindow(binding)
    Window = Instance.new("ScreenGui", game.CoreGui)
    local window = {}
    local ld = loadstring(game:HttpGet("https://raw.githubusercontent.com/d3ltaX/internalUi/main/main.lua"))()
    ld:bind(Window,binding)
    function window:CreateSection(SectionTitle,Pos)
        local section = {}
        local TextLabel = Instance.new("TextLabel")
   

        local Frame = Instance.new("Frame")


        local Frame_2 = Instance.new("Frame")
        
        local UIListLayout = Instance.new("UIListLayout")
        
        TextLabel.Active = true
        TextLabel.Selectable = true
        TextLabel.Draggable = true
        TextLabel.Parent = Window
        TextLabel.BackgroundColor3 = Color3.fromRGB(29, 29, 29)
        TextLabel.BorderColor3 = Color3.fromRGB(29, 29, 29)
        TextLabel.Position = Pos
        TextLabel.Size = UDim2.new(0, 217, 0, 69)
        TextLabel.Font = Enum.Font.Code
        TextLabel.Text = SectionTitle
        TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
        TextLabel.TextSize = 28.000
        TextLabel.TextWrapped = true

        Frame.Parent = TextLabel
        Frame.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
        Frame.BorderColor3 = Color3.fromRGB(40, 40, 40)
        Frame.Position = UDim2.new(0, 0, 0.897640288, 0)
        Frame.Size = UDim2.new(0, 217, 0, 513)



        Frame_2.Parent = Frame
        Frame_2.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
        Frame_2.BorderColor3 = Color3.fromRGB(40, 40, 40)
        Frame_2.Position = UDim2.new(0, 0, 0.0176599529, 0)
        Frame_2.Size = UDim2.new(0, 217, 0, 513)


        UIListLayout.Parent = Frame_2
        UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
        UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
        UIListLayout.Padding = UDim.new(0, 10)
        function section:CreateButton(buttonTitle, callback)
            
            local TextButton = Instance.new("TextButton")


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

            TextButton.MouseButton1Down:Connect(callback)
        end
        function section:CreateToggle(toggleTitle, callback)
            
            local TextButton = Instance.new("TextButton")


            TextButton.Parent = Frame_2
            TextButton.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
            TextButton.BorderColor3 = Color3.fromRGB(27, 27, 27)
            TextButton.Position = UDim2.new(0.0901639313, 0, 0, 0)
            TextButton.Size = UDim2.new(0, 200, 0, 43)
            TextButton.Font = Enum.Font.Code
            TextButton.Text = toggleTitle
            TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
            TextButton.TextSize = 24.000
            TextButton.TextWrapped = true

            local toggled = false
            TextButton.MouseButton1Down:Connect(function()
                if toggled == true then
                    toggled = false
                    TextButton.BackgroundColor3 = Color3.fromRGB(27,27,27)
                    callback(toggled)
                else
                    toggled = true
                    TextButton.BackgroundColor3 = Color3.fromRGB(62, 149, 75)

                    callback(toggled)
                end
            end)
        end
        function section:CreateTextBox(prevText, buttonText, callback)

            
            local TextBox = Instance.new("TextBox")
            local TextButton = Instance.new("TextButton")
          
            
            TextBox.Parent = Frame_2
            TextBox.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
            TextBox.Position = UDim2.new(0.0901639313, 0, 0.0934744254, 0)
            TextBox.Size = UDim2.new(0, 200, 0, 37)
            TextBox.Font = Enum.Font.Code
            TextBox.PlaceholderText = prevText
            TextBox.Text = ""
            TextBox.TextColor3 = Color3.fromRGB(0, 0, 0)
            TextBox.TextScaled = true
            TextBox.TextSize = 14.000
            TextBox.TextWrapped = true
            
          
            
            TextButton.Parent = TextBox
            TextButton.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
            TextButton.BorderColor3 = Color3.fromRGB(27, 27, 27)
            TextButton.Position = UDim2.new(0, 0, 1.16216218, 0)
            TextButton.Size = UDim2.new(0, 200, 0, 20)
            TextButton.Font = Enum.Font.SourceSans
            TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
            TextButton.TextScaled = true
            TextButton.TextSize = 14.000
            TextButton.TextWrapped = true
            TextButton.Text = buttonText

            
            TextButton.MouseButton1Down:Connect(function()
                callback(TextBox.Text)
            end)
        end
        return section
    end
    return window
end
return lib
