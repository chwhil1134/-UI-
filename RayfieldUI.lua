    -- [여기서부터 톱니바퀴 추가 로직 시작]
    if Settings.ConfigurationSaving and Settings.ConfigurationSaving.ShowConfigurationTab then
        local SettingsButton = Instance.new("ImageButton")
        SettingsButton.Name = "Settings"
        SettingsButton.BackgroundTransparency = 1
        SettingsButton.Size = UDim2.new(0, 25, 0, 25)
        SettingsButton.Image = "rbxassetid://7072721666"
        SettingsButton.ImageTransparency = 0.8
        SettingsButton.ImageColor3 = Color3.fromRGB(255, 255, 255)
        SettingsButton.AnchorPoint = Vector2.new(0.5, 0.5)
        SettingsButton.Position = UDim2.new(1, -100, 0.5, 0)
        SettingsButton.ZIndex = 10
        SettingsButton.Parent = Topbar

        SettingsButton.MouseButton1Click:Connect(function()
            if Elements:FindFirstChild('Rayfield Settings') then
                Elements.UIPageLayout:JumpTo(Elements['Rayfield Settings'])
            end
        end)

        SettingsButton.MouseEnter:Connect(function()
            TweenService:Create(SettingsButton, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {ImageTransparency = 0}):Play()
        end)
        SettingsButton.MouseLeave:Connect(function()
            TweenService:Create(SettingsButton, TweenInfo.new(0.7, Enum.EasingStyle.Exponential), {ImageTransparency = 0.8}):Play()
        end)
    end
    -- [여기까지 추가 로직 끝]
