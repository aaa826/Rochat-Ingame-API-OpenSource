local themes = {
    Dark = {
        TextBackground = Color3.fromRGB(25, 25, 25),
        TextColor = Color3.fromRGB(255, 255, 255),
        Background = Color3.fromRGB(18, 18, 18),
        TopBarColor = Color3.fromRGB(35, 206, 52),
        PageSelectedColor = Color3.fromRGB(35, 206, 52),
        
    },
    Light = {
        TextBackground = Color3.fromRGB(255,255,255),
        TextColor = Color3.FromRGB(0, 0, 0),
        ElementColor = Color3.fromRGB(25, 25, 25),
        Background = Color3.FromRGB(255, 255, 255),
        TopBarColor = Color3.FromRGB(35, 206, 52)
        PageSelectedColor = Color3.FromRGB(35, 206, 52),
    },
}
local UIS = game:GetService("UserInputService")


function repeat(repeatcode)
while true do
    repeatcode 
    end
end

function TextBox(Text, PlaceHolderText, Page, callback)
    local TextBox = Instance.new("TextBox")
    local UICorner = Instance.new("UICorner")
    local callback = callback or function() end
    
    TextBox.Name = Text
    TextBox.Parent = Page 
    TextBox.Text = Text or "Text"
    TextBox.BackgroundColor3 = themes.TextBackground
    TextBox.TextColor = themes.TextColor
    TextBox.PlaceholderText = PlaceholderText
    UIS.InputBegan:Connect(function(KeyCode)
        if KeyCode.KeyCode = Enum.KeyCode.Return then
            pcall(callback)
        end
    end)
    
    UICorner.Parent = TextBox
    end --function end
    function TextButton(Name, Page, callback)
    local callback = callback or function() end
    local Button = Instance.new("Button")
    local UICorner2 = Instance.new("UICorner")
    
    Button.Name = "Button"
    Button.Parent = Page 
    Button.BackgroundColor3 = themes.ElementColor
    Button.Text = Name
    Button.TextColor = themes.TextColor
    
    Button.MouseButton1Click:Connect(function()
    pcall(callback)
    end)
    UICorner2.Parent = Button
    end
