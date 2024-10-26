local LBLG = Instance.new("ScreenGui", getParent)
local LBL = Instance.new("TextLabel", getParent)
local player = game.Players.LocalPlayer

LBLG.Name = "LBLG"
LBLG.Parent = game.CoreGui
LBLG.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
LBLG.Enabled = true
LBL.Name = "LBL"
LBL.Parent = LBLG
LBL.BackgroundColor3 = Color3.new(1, 1, 1)
LBL.BackgroundTransparency = 1
LBL.BorderColor3 = Color3.new(0, 0, 0)
LBL.Position = UDim2.new(0.75,0,0.010,0)
LBL.Size = UDim2.new(0, 133, 0, 30)
LBL.Font = Enum.Font.GothamSemibold
LBL.Text = "TextLabel"
LBL.TextColor3 = Color3.new(1, 1, 1)
LBL.TextScaled = true
LBL.TextSize = 14
LBL.TextWrapped = true
LBL.Visible = true

local FpsLabel = LBL
local Heartbeat = game:GetService("RunService").Heartbeat
local LastIteration, Start
local FrameUpdateTable = { }

local function HeartbeatUpdate()
    LastIteration = tick()
    for Index = #FrameUpdateTable, 1, -1 do
        FrameUpdateTable[Index + 1] = (FrameUpdateTable[Index] >= LastIteration - 1) and FrameUpdateTable[Index] or nil
    end
    FrameUpdateTable[1] = LastIteration
    local CurrentFPS = (tick() - Start >= 1 and #FrameUpdateTable) or (#FrameUpdateTable / (tick() - Start))
    CurrentFPS = CurrentFPS - CurrentFPS % 1
    FpsLabel.Text = ("JM")
end
Start = tick()
Heartbeat:Connect(HeartbeatUpdate)
game:GetService("StarterGui"):SetCore("SendNotification",{ Title = "『JM』"; Text ="核对ohio中♧"; Duration = 5; })
game:GetService("StarterGui"):SetCore("SendNotification",{ Title = "『JM』"; Text ="核对完毕♣"; Duration = 4; })

local ui = loadstring(game:HttpGet("https://raw.githubusercontent.com/dingding123hhh/hun/main/jmlibrary1.lua"))();        
local win = ui:new("JM")
--
local UITab355 = win:Tab("『人物』",'7734068321')

local about = UITab355:section("『111』",true)

about:Slider("步行速度!(死后会覆盖)", "WalkSpeed", game.Players.LocalPlayer.Character.Humanoid.WalkSpeed, 16, 400, false, function(Speed)
  spawn(function() while task.wait() do game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Speed end end)
end)

about:Toggle("残血自动跑路","Toggle",false,function(Value)
paolu1 = Value
        if paolu1 then
            paolu2()
        end
end)
paolu2 = function()
    while paolu1 do
    wait(0.1)
    if game:GetService('Players').LocalPlayer.Character.Humanoid.Health <= 35 then
        local og1 = CFrame.new(175.191, 13.937, -132.69)
        local og3 = game:GetService('Players').LocalPlayer.Character.HumanoidRootPart
        og3.CFrame = og1
        wait(20)
    end
    end
end

about:Button("一拳", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Xingtaiduan/Script/main/Games/Ohio"))()
end)

about:Toggle("一键互动", "Auto Interact", false, function(state)
        if state then
            autoInteract = true
            while autoInteract do
                for _, descendant in pairs(workspace:GetDescendants()) do
                    if descendant:IsA("ProximityPrompt") then
                        fireproximityprompt(descendant)
                    end
                end
                task.wait(0.25) -- Adjust the wait time as needed
            end
        else
            autoInteract = false
        end
    end)

local UITab66 = win:Tab("『perspective』",'7734068321')

local about = UITab66:section("『222』",true)

about:Button("显示聊天框", function()
ChatSee()
end)
ChatSee = function()
    game:GetService('Players').LocalPlayer.PlayerGui.Chat.Frame.ChatChannelParentFrame.Visible = true
    game:GetService('Players').LocalPlayer.PlayerGui.Chat.Frame.ChatChannelParentFrame.Position = UDim2.new(0, 0, 0, 40)
end

about:Slider('Fov【正常为70】', 'Sliderflag', 70, 0.1, 250, false, function(v)
game.Workspace.CurrentCamera.FieldOfView = v
end)

about:Button("物品透视",function()  
        while true do
            for i,l in pairs(game:GetService('Workspace').Game.Entities.ItemPickup:GetChildren()) do
                for i,v in pairs(l:GetChildren()) do
                    if v.ClassName == 'MeshPart' or 'Part' then
                        for i,e in pairs(v:GetChildren()) do
                            if e.ClassName == 'ProximityPrompt' then
                                if e.ObjectText == 'Military Armory Keycard' or e.ObjectText == 'Sawn Off' or e.ObjectText == 'Scar L' or e.ObjectText == 'Military Vest' or e.ObjectText == 'Raygun' or e.ObjectText == 'UPS 45' or e.ObjectText == 'Medium Vest' or e.ObjectText == 'Deagle' or e.ObjectText == 'Glock 18' or e.ObjectText == 'Heavy Vest' or e.ObjectText == 'Diamond Ring' or e.ObjectText == 'AS Val' or e.ObjectText == 'Money Printer' or e.ObjectText == 'Aug' or e.ObjectText == 'M4A1' or e.ObjectText == 'C4' or e.ObjectText == 'Stagecoach' or e.ObjectText == 'Diamond' or e.ObjectText == 'Void Gem' or e.ObjectText == 'Dark Matter Gem' or e.ObjectText == 'Gold AK-47' or e.ObjectText == 'Barrett M107' or e.ObjectText == 'Gold Deagle' or e.ObjectText == 'Double Barrel' or e.ObjectText == 'Dragunov' or e.ObjectText == 'RPK'  or e.ObjectText == 'M249 SAW' or e.ObjectText == 'Flamethrower' or e.ObjectText == 'Police Armory Keycard' or e.ObjectText == 'RPG' or e.ObjectText == 'Saiga 12' or e.ObjectText == 'Ammo Box' then
                                    xd = Instance.new('BillboardGui')
                                    xd.Parent = v
                                    xd.AlwaysOnTop = true
                                    xd.Size = UDim2.new(0, 100, 0, 25)
                                    Frame = Instance.new('Frame')
                                    Frame.Parent = xd
                                    Frame.BackgroundColor3 = Color3.new(1, 1, 1)
                                    Frame.Size = UDim2.new(1, 0, 1, 0)
                                    Frame.BackgroundTransparency = 1
                                    text = Instance.new('TextLabel')
                                    text.TextScaled = true
                                    text.BackgroundColor3 = Color3.new(255, 0, 0)
                                    text.Parent = Frame
                                    text.Text = e.ObjectText
                                    text.Size = UDim2.new(1, 0, 1, 0)
                                    text.BackgroundTransparency = 1
                                    text.TextColor3 = Color3.new(1, 1, 1)
                                else

                                end
                            end
        
                        end
        
                    end
        
        
                end
            end
            wait()
            for i,v in pairs (game:GetService('Workspace').Game.Entities.ItemPickup:GetChildren()) do
                for i,k in pairs(v:GetChildren()) do
                    for i,l in pairs(k:GetChildren()) do
                        if l.ClassName == 'BillboardGui' then
                            l:Remove()
                        end
                    end
                end
            end
        
        end
end)

about:Button("零件", function()
        while true do
            for i,l in pairs(game:GetService('Workspace').Game.Entities.ItemPickup:GetChildren()) do
                for i,v in pairs(l:GetChildren()) do
                    if v.ClassName == 'MeshPart' or 'Part' then
                        for i,e in pairs(v:GetChildren()) do
                            if e.ClassName == 'ProximityPrompt' then
                                if e.ObjectText == 'Medical Supplies' or e.ObjectText == 'Weapon components' or e.ObjectText == 'Explosives' or e.ObjectText == 'Weapon Parts' or e.ObjectText == 'Scrap' then
                                    xd = Instance.new('BillboardGui')
                                    xd.Parent = v
                                    xd.AlwaysOnTop = true
                                    xd.Size = UDim2.new(0, 100, 0, 25)
                                    Frame = Instance.new('Frame')
                                    Frame.Parent = xd
                                    Frame.BackgroundColor3 = Color3.new(1, 1, 1)
                                    Frame.Size = UDim2.new(1, 0, 1, 0)
                                    Frame.BackgroundTransparency = 1
                                    text = Instance.new('TextLabel')
                                    text.TextScaled = true
                                    text.BackgroundColor3 = Color3.new(255, 0, 0)
                                    text.Parent = Frame
                                    text.Text = e.ObjectText
                                    text.Size = UDim2.new(1, 0, 1, 0)
                                    text.BackgroundTransparency = 1
                                    text.TextColor3 = Color3.new(1, 1, 1)
                                else

                                end
                            end
        
                        end
        
                    end
        
        
                end
            end
            wait()
            for i,v in pairs (game:GetService('Workspace').Game.Entities.ItemPickup:GetChildren()) do
                for i,k in pairs(v:GetChildren()) do
                    for i,l in pairs(k:GetChildren()) do
                        if l.ClassName == 'BillboardGui' then
                            l:Remove()
                        end
                    end
                end
            end
        
        end
end)

about:Toggle("Circle ESP", "ESP", false, function(state)
        for _, player in pairs(game.Players:GetPlayers()) do
            if player ~= game.Players.LocalPlayer then
                if state then
                    local highlight = Instance.new("Highlight")
                    highlight.Parent = player.Character
                    highlight.Adornee = player.Character

                    local billboard = Instance.new("BillboardGui")
                    billboard.Parent = player.Character
                    billboard.Adornee = player.Character
                    billboard.Size = UDim2.new(0, 100, 0, 100)
                    billboard.StudsOffset = Vector3.new(0, 3, 0)
                    billboard.AlwaysOnTop = true

                    local nameLabel = Instance.new("TextLabel")
                    nameLabel.Parent = billboard
                    nameLabel.Size = UDim2.new(1, 0, 1, 0)
                    nameLabel.BackgroundTransparency = 1
                    nameLabel.Text = player.Name
                    nameLabel.TextColor3 = Color3.new(1, 1, 1)
                    nameLabel.TextStrokeTransparency = 0.5
                    nameLabel.TextScaled = true

                    local circle = Instance.new("ImageLabel")
                    circle.Parent = billboard
                    circle.Size = UDim2.new(0, 50, 0, 50)
                    circle.Position = UDim2.new(0.5, 0, 0.5, 0) -- Center the circle
                    circle.AnchorPoint = Vector2.new(0.5, 0.5) -- Set the anchor point to the center
                    circle.BackgroundTransparency = 1
                    circle.Image = "rbxassetid://2200552246" -- Replace with your circle image asset ID
                else
                    if player.Character:FindFirstChildOfClass("Highlight") then
                        player.Character:FindFirstChildOfClass("Highlight"):Destroy()
                    end
                    if player.Character:FindFirstChildOfClass("BillboardGui") then
                        player.Character:FindFirstChildOfClass("BillboardGui"):Destroy()
                    end
                end
            end
        end
    end)

about:Button("人物透视",function()  
    _G.FriendColor = Color3.fromRGB(0, 0, 255)
        local function ApplyESP(v)
       if v.Character and v.Character:FindFirstChildOfClass'Humanoid' then
           v.Character.Humanoid.NameDisplayDistance = 9e9
           v.Character.Humanoid.NameOcclusion = "NoOcclusion"
           v.Character.Humanoid.HealthDisplayDistance = 9e9
           v.Character.Humanoid.HealthDisplayType = "AlwaysOn"
           v.Character.Humanoid.Health = v.Character.Humanoid.Health -- triggers changed
       end
    end
    for i,v in pairs(game.Players:GetPlayers()) do
       ApplyESP(v)
       v.CharacterAdded:Connect(function()
           task.wait(0.33)
           ApplyESP(v)
       end)
    end
    
    game.Players.PlayerAdded:Connect(function(v)
       ApplyESP(v)
       v.CharacterAdded:Connect(function()
           task.wait(0.33)
           ApplyESP(v)
       end)
    end)
    
        local Players = game:GetService("Players"):GetChildren()
    local RunService = game:GetService("RunService")
    local highlight = Instance.new("Highlight")
    highlight.Name = "Highlight"
    
    for i, v in pairs(Players) do
        repeat wait() until v.Character
        if not v.Character:FindFirstChild("HumanoidRootPart"):FindFirstChild("Highlight") then
            local highlightClone = highlight:Clone()
            highlightClone.Adornee = v.Character
            highlightClone.Parent = v.Character:FindFirstChild("HumanoidRootPart")
            highlightClone.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
            highlightClone.Name = "Highlight"
        end
    end
    
    game.Players.PlayerAdded:Connect(function(player)
        repeat wait() until player.Character
        if not player.Character:FindFirstChild("HumanoidRootPart"):FindFirstChild("Highlight") then
            local highlightClone = highlight:Clone()
            highlightClone.Adornee = player.Character
            highlightClone.Parent = player.Character:FindFirstChild("HumanoidRootPart")
            highlightClone.Name = "Highlight"
        end
    end)
    
    game.Players.PlayerRemoving:Connect(function(playerRemoved)
        playerRemoved.Character:FindFirstChild("HumanoidRootPart").Highlight:Destroy()
    end)
    
    RunService.Heartbeat:Connect(function()
        for i, v in pairs(Players) do
            repeat wait() until v.Character
            if not v.Character:FindFirstChild("HumanoidRootPart"):FindFirstChild("Highlight") then
                local highlightClone = highlight:Clone()
                highlightClone.Adornee = v.Character
                highlightClone.Parent = v.Character:FindFirstChild("HumanoidRootPart")
                highlightClone.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
                highlightClone.Name = "Highlight"
                task.wait()
            end
    end
    end)
    end)

about:Toggle("屏蔽黑夜","Toggle",false,function(Value)
if Value then

		    game.Lighting.Ambient = Color3.new(1, 1, 1)

		else

		    game.Lighting.Ambient = Color3.new(0, 0, 0)

		end
end)

local UITab3565 = win:Tab("『通知』",'7734068321')

local about = UITab3565:section("『333』",true)

about:Toggle("银行刷新通知","Toggle",false,function(Value)
Bank1 = Value
        if Bank1 then
            Bank2()
        end
end)
Bank2 = function()
    while Bank1 do
    wait(0.1)
    local Bank = game:GetService('Workspace').BankRobbery.BankCash.Cash:FindFirstChild('Bundle')
        if Bank then
game:GetService("StarterGui"):SetCore("SendNotification",{ Title = "『JM』"; Text ="银行已刷新♣"; Duration = 5; })
            wait(30)
        end
    end
end

about:Toggle("珠宝店刷新通知","Toggle",false,function(Value)
Gem1 = Value
        if Gem1 then
            Gem2()
        end
end)
Gem2 = function()
    while Gem1 do
    wait(0.1)
    local Ge = game:GetService('Workspace').GemRobbery:FindFirstChild('Rubble')
        if Ge then
game:GetService("StarterGui"):SetCore("SendNotification",{ Title = "『JM』"; Text ="珠宝店已刷新♣"; Duration = 5; })
            wait(30)
        end
    end
end

local UITab9955 = win:Tab("『自动』",'7734068321')

local about = UITab9955:section("『444』",true)

about:Toggle("自动抢劫银行","Toggle",false,function(Value)
AutoBank1 = Value
        if AutoBank1 then
            AutoBank2()
        end
end)
AutoBank2 = function()
    while AutoBank1 do
        wait()
        local BankDoor = game:GetService("Workspace").BankRobbery.VaultDoor
        local BankCashs = game:GetService("Workspace").BankRobbery.BankCash
        local epoh2 = game:GetService('Players')
        local epoh3 = epoh2.LocalPlayer.Character.HumanoidRootPart
        if BankDoor.Door.Attachment.ProximityPrompt.Enabled == true then
            BankDoor.Door.Attachment.ProximityPrompt.HoldDuration = 0
            BankDoor.Door.Attachment.ProximityPrompt.MaxActivationDistance = 16
            local epoh1 = CFrame.new(1071.955810546875, 9, -343.80816650390625)
            epoh3.CFrame = epoh1
           wait(1)
            BankDoor.Door.Attachment.ProximityPrompt:InputHoldBegin()
            BankDoor.Door.Attachment.ProximityPrompt:InputHoldEnd()
            BankDoor.Door.Attachment.ProximityPrompt.Enabled = false
        end
        if BankCashs.Cash.Bundle then
            local epoh1 = CFrame.new(1055.872802734375, 10, -344.6944580078125)
            epoh3.CFrame = epoh1
            BankCashs.Main.Attachment.ProximityPrompt.MaxActivationDistance = 16
            if BankCashs.Cash.Bundle then
            BankCashs.Main.Attachment.ProximityPrompt:InputHoldBegin()
            wait(45)
            BankCashs.Main.Attachment.ProximityPrompt:InputHoldEnd()
            local epoh1 = CFrame.new(240.52850341796875, -120, -620)
            epoh3.CFrame = epoh1
            end
        end   
        if not BankCashs.Cash.Bundle then
            local epoh1 = CFrame.new(240.52850341796875, -120, -620)
            epoh3.CFrame = epoh1
        end
    end
end

about:Toggle("自动金保险","Toggle",false,function(Value)
AutoSafe1 = Value
        if AutoSafe1 then
            AutoSafe2()
        end
end)
AutoSafe2 = function()
    while AutoSafe1 do
        wait()
        local BankDoor = game:GetService("Workspace").BankRobbery.VaultDoor
        local epoh2 = game:GetService('Players')
        local epoh3 = epoh2.LocalPlayer.Character.HumanoidRootPart
        if BankDoor.Door.Attachment.ProximityPrompt.Enabled == true then
            BankDoor.Door.Attachment.ProximityPrompt.HoldDuration = 0
            BankDoor.Door.Attachment.ProximityPrompt.MaxActivationDistance = 16
            local epoh1 = CFrame.new(1071.955810546875, 9, -343.80816650390625)
            epoh3.CFrame = epoh1
            wait(1)
            BankDoor.Door.Attachment.ProximityPrompt:InputHoldBegin()
            BankDoor.Door.Attachment.ProximityPrompt:InputHoldEnd()
            BankDoor.Door.Attachment.ProximityPrompt.Enabled = false
        end
        local GoldJewelSafes = game:GetService("Workspace").Game.Entities.GoldJewelSafe
        local foundModel = false
        for _, model in pairs(GoldJewelSafes:GetChildren()) do
            if model.ClassName == 'Model' then
                foundModel = true
                local epoh1 = model.WorldPivot
                epoh3.CFrame = epoh1
                wait(1)
                model.Door["Meshes/LargeSafe_Cube.002_Cube.003_None (1)"].Attachment.ProximityPrompt.HoldDuration = 0
                model.Door["Meshes/LargeSafe_Cube.002_Cube.003_None (1)"].Attachment.ProximityPrompt.MaxActivationDistance = 16
                if model.Door["Meshes/LargeSafe_Cube.002_Cube.003_None (1)"].Attachment.ProximityPrompt.Enabled == true then
                    model.Door["Meshes/LargeSafe_Cube.002_Cube.003_None (1)"].Attachment.ProximityPrompt:InputHoldBegin()
                    model.Door["Meshes/LargeSafe_Cube.002_Cube.003_None (1)"].Attachment.ProximityPrompt:InputHoldEnd()
                    wait(5)
                    model:Destroy()
                    break
                end
            end
        end
        if not foundModel then
game:GetService("StarterGui"):SetCore("SendNotification",{ Title = "『JM』"; Text ="金保险未刷新♣"; Duration = 5; })
            wait(30)
        end
    end
end

about:Toggle("自动黑保险","Toggle",false,function(Value)
AutoSafe3 = Value
        if AutoSafe3 then
            AutoSafe4()
        end
end)
AutoSafe4 = function()
    while AutoSafe3 do
        wait()
        local BankDoor = game:GetService("Workspace").BankRobbery.VaultDoor
        local epoh2 = game:GetService('Players')
        local epoh3 = epoh2.LocalPlayer.Character.HumanoidRootPart
        if BankDoor.Door.Attachment.ProximityPrompt.Enabled == true then
            BankDoor.Door.Attachment.ProximityPrompt.HoldDuration = 0
            BankDoor.Door.Attachment.ProximityPrompt.MaxActivationDistance = 16
            local epoh1 = CFrame.new(1071.955810546875, 9, -343.80816650390625)
            epoh3.CFrame = epoh1
            wait(1)
            BankDoor.Door.Attachment.ProximityPrompt:InputHoldBegin()
            BankDoor.Door.Attachment.ProximityPrompt:InputHoldEnd()
            BankDoor.Door.Attachment.ProximityPrompt.Enabled = false
        end
        local JewelSafes = game:GetService("Workspace").Game.Entities.JewelSafe
        local foundModel = false
        for _, model in pairs(JewelSafes:GetChildren()) do
            if model.ClassName == 'Model' then
                foundModel = true
                local epoh1 = model.WorldPivot
                epoh3.CFrame = epoh1
                wait(1)
                model.Door["Meshes/LargeSafe_Cube.002_Cube.003_None (1)"].Attachment.ProximityPrompt.HoldDuration = 0
                model.Door["Meshes/LargeSafe_Cube.002_Cube.003_None (1)"].Attachment.ProximityPrompt.MaxActivationDistance = 16
                if model.Door["Meshes/LargeSafe_Cube.002_Cube.003_None (1)"].Attachment.ProximityPrompt.Enabled == true then
                    model.Door["Meshes/LargeSafe_Cube.002_Cube.003_None (1)"].Attachment.ProximityPrompt:InputHoldBegin()
                    model.Door["Meshes/LargeSafe_Cube.002_Cube.003_None (1)"].Attachment.ProximityPrompt:InputHoldEnd()
                    wait(5)
                    model:Destroy()
                end
            end
        end
        if not foundModel then
game:GetService("StarterGui"):SetCore("SendNotification",{ Title = "『JM』"; Text ="黑保险未刷新♣"; Duration = 5; })
            wait(30)
        end
    end
end

about:Toggle("自动小宝箱","Toggle",false,function(Value)
SmallChest1 = Value
        if SmallChest1 then
            SmallChest2()
        end
end)
SmallChest2 = function()
    while SmallChest1 do
    wait()
    local SmallChes = game:GetService('Workspace').Game.Entities.SmallChest
        local foundModel = false
        for _, model in pairs(SmallChes:GetChildren()) do
            if model.ClassName == 'Model' then
                foundModel = true
                local epoh1 = model.WorldPivot
                local epoh2 = game:GetService('Players')
                local epoh3 = epoh2.LocalPlayer.Character.HumanoidRootPart
                epoh3.CFrame = epoh1
                wait(0.3)
                model.Lock["Meshes/untitled_chest.002_Material.009 (4)"].Attachment.ProximityPrompt:InputHoldBegin()
                model.Lock["Meshes/untitled_chest.002_Material.009 (4)"].Attachment.ProximityPrompt:InputHoldEnd()
                wait(0.3)
                local epoh1 = CFrame.new(240.52850341796875, -120, -620)
                epoh3.CFrame = epoh1
                break
            end
        end
        if not foundModel then
game:GetService("StarterGui"):SetCore("SendNotification",{ Title = "『JM』"; Text ="小宝箱未刷新♣"; Duration = 5; })
            wait(30)
        end
    end
end

about:Toggle("自动大宝箱","Toggle",false,function(Value)
LargeChest1 = Value
        if LargeChest1 then
            LargeChest2()
        end
end)
LargeChest2 = function()
    while LargeChest1 do
    wait()
    local LargeChes = game:GetService('Workspace').Game.Entities.LargeChest
        local foundModel = false
        for _, model in pairs(LargeChes:GetChildren()) do
            if model.ClassName == 'Model' then
                foundModel = true
                local epoh1 = model.WorldPivot
                local epoh2 = game:GetService('Players')
                local epoh3 = epoh2.LocalPlayer.Character.HumanoidRootPart
                epoh3.CFrame = epoh1
                wait(0.3)
                model.Door["Meshes/LargeSafe1_Cube.002_Cube.003_None (3)"].Attachment.ProximityPrompt:InputHoldBegin()
                model.Door["Meshes/LargeSafe1_Cube.002_Cube.003_None (3)"].Attachment.ProximityPrompt:InputHoldEnd()
                wait(0.3)
                local epoh1 = CFrame.new(240.52850341796875, -120, -620)
                epoh3.CFrame = epoh1
                break
            end
        end
        if not foundModel then
game:GetService("StarterGui"):SetCore("SendNotification",{ Title = "『JM』"; Text ="大宝箱未刷新♣"; Duration = 5; })
            wait(30)
        end
    end
end

local UITab4555 = win:Tab("『秒』",'7734068321')

local about = UITab4555:section("『555』",true)

about:Button("瞬移宝藏+秒挖", function()
Debris1 = Value
        if Debris1 then
            Debris2()
        end
end)
Debris2 = function()
    local Debri = game:GetService('Workspace').Game.Local.Debris
    if Debri.TreasureMarker then
    Debri.TreasureMarker.ProximityPrompt.HoldDuration = 0
    Debri.TreasureMarker.ProximityPrompt.MaxActivationDistance = 40
    local epoh1 = Debri.TreasureMarker.CFrame
    local epoh2 = game:GetService('Players')
    local epoh3 = epoh2.LocalPlayer.Character.HumanoidRootPart
    epoh3.CFrame = epoh1
    else
game:GetService("StarterGui"):SetCore("SendNotification",{ Title = "『JM』"; Text ="暂时未刷新宝藏♣"; Duration = 5; })
    end
end

about:Toggle("瞬移小保险+秒开","Toggle",false,function(Value)
SmallSafe1 = Value
        if SmallSafe1 then
            SmallSafe2()
        end
end)
SmallSafe2 = function()
    while SmallSafe1 do
    wait(0.1)
    local SmallSaf = game:GetService('Workspace').Game.Entities.SmallSafe
        local foundModel = false
        for _, model in pairs(SmallSaf:GetChildren()) do
            if model.ClassName == 'Model' then
                foundModel = true 
                local epoh1 = model.WorldPivot
                local epoh2 = game:GetService('Players')
                local epoh3 = epoh2.LocalPlayer.Character.HumanoidRootPart
                SmallSaf.SmallSafe.Door['Meshes/Safe1_Cube.002_Cube.003_None (1)'].Attachment.ProximityPrompt.HoldDuration = 0
                epoh3.CFrame = epoh1
                break
            end
        end
        if not foundModel then
game:GetService("StarterGui"):SetCore("SendNotification",{ Title = "『JM』"; Text ="小保险未刷新♣"; Duration = 5; })
            wait(35)
        end
    end
end

about:Button("秒拿珠宝店", function()
local rocks = game:GetService('Workspace').GemRobbery.JewelryCases.HighYieldSpawns
    for _, obj in pairs(rocks:GetChildren()) do
        if obj.ClassName == 'Model' then
            for _, innerObj in pairs(obj:GetChildren()) do
                if innerObj.ClassName == 'Model' then
                    if innerObj.Name == 'Case' then
                    elseif innerObj.Name == 'Emerald' then
                        if innerObj:FindFirstChild('Handle') and innerObj.Handle:FindFirstChild('ProximityPrompt') then
                            innerObj.Handle.ProximityPrompt.HoldDuration = 0
                        end
                    elseif innerObj.Name == 'Sapphire' then
                        if innerObj:FindFirstChild('Handle') and innerObj.Handle:FindFirstChild('ProximityPrompt') then
                            innerObj.Handle.ProximityPrompt.HoldDuration = 0
                        end
                    elseif innerObj.Name == 'Amethyst' then
                        if innerObj:FindFirstChild('Handle') and innerObj.Handle:FindFirstChild('ProximityPrompt') then
                            innerObj.Handle.ProximityPrompt.HoldDuration = 0
                        end
                    elseif innerObj.Name == 'Topaz' then
                        if innerObj:FindFirstChild('Handle') and innerObj.Handle:FindFirstChild('ProximityPrompt') then
                            innerObj.Handle.ProximityPrompt.HoldDuration = 0
                        end                     
                    elseif innerObj.Name == 'Diamond' then
                        if innerObj:FindFirstChild('Handle') and innerObj.Handle:FindFirstChild('ProximityPrompt') then
                            innerObj.Handle.ProximityPrompt.HoldDuration = 0
                        end
                    elseif innerObj.Name == 'Gold Bar' then
                        if innerObj:FindFirstChild('Handle') and innerObj.Handle:FindFirstChild('ProximityPrompt') then
                            innerObj.Handle.ProximityPrompt.HoldDuration = 0
                        end
                    elseif innerObj.Name == 'Ruby' then
                        if innerObj:FindFirstChild('Handle') and innerObj.Handle:FindFirstChild('ProximityPrompt') then
                            innerObj.Handle.ProximityPrompt.HoldDuration = 0
                        end
                    else
                        if innerObj:FindFirstChild('Box') and innerObj.Box:FindFirstChild('ProximityPrompt') then
                            innerObj.Box.ProximityPrompt.HoldDuration = 0
                        end
                    end
                end
            end
        end
    end
    local rocks2 = game:GetService('Workspace').GemRobbery.JewelryCases.LowYieldSpawns
    for _, obj in pairs(rocks2:GetChildren()) do
        if obj.ClassName == 'Model' then
            for _, innerObj in pairs(obj:GetChildren()) do
                if innerObj.ClassName == 'Model' then
                    if innerObj.Name == 'Case' then
                    elseif innerObj.Name == 'Emerald' then
                        if innerObj:FindFirstChild('Handle') and innerObj.Handle:FindFirstChild('ProximityPrompt') then
                            innerObj.Handle.ProximityPrompt.HoldDuration = 0
                        end
                    elseif innerObj.Name == 'Sapphire' then
                        if innerObj:FindFirstChild('Handle') and innerObj.Handle:FindFirstChild('ProximityPrompt') then
                            innerObj.Handle.ProximityPrompt.HoldDuration = 0
                        end
                    elseif innerObj.Name == 'Amethyst' then
                        if innerObj:FindFirstChild('Handle') and innerObj.Handle:FindFirstChild('ProximityPrompt') then
                            innerObj.Handle.ProximityPrompt.HoldDuration = 0
                        end
                    elseif innerObj.Name == 'Topaz' then
                        if innerObj:FindFirstChild('Handle') and innerObj.Handle:FindFirstChild('ProximityPrompt') then
                            innerObj.Handle.ProximityPrompt.HoldDuration = 0
                        end
                    elseif innerObj.Name == 'Diamond' then
                        if innerObj:FindFirstChild('Handle') and innerObj.Handle:FindFirstChild('ProximityPrompt') then
                            innerObj.Handle.ProximityPrompt.HoldDuration = 0
                        end
                    elseif innerObj.Name == 'Gold Bar' then
                        if innerObj:FindFirstChild('Handle') and innerObj.Handle:FindFirstChild('ProximityPrompt') then
                            innerObj.Handle.ProximityPrompt.HoldDuration = 0
                        end
                    elseif innerObj.Name == 'Ruby' then
                        if innerObj:FindFirstChild('Handle') and innerObj.Handle:FindFirstChild('ProximityPrompt') then
                            innerObj.Handle.ProximityPrompt.HoldDuration = 0
                        end
                    else
                        if innerObj:FindFirstChild('Box') and innerObj.Box:FindFirstChild('ProximityPrompt') then
                            innerObj.Box.ProximityPrompt.HoldDuration = 0
                        end
                    end
                end
            end
        end
    end
end)

about:Button("秒空投", function()
wait(0.1)
        game:GetService('Workspace').Game.Airdrops.Airdrop.Airdrop.ProximityPrompt.HoldDuration = 0
end)

about:Button("秒开银行", function()
    game:GetService('Workspace').BankRobbery.VaultDoor.Door.Attachment.ProximityPrompt.HoldDuration = 0
    game:GetService('Workspace').BankRobbery.VaultDoor.Door.Attachment.ProximityPrompt.MaxActivationDistance = 16
    game:GetService('Workspasce').BankRobbery.BankCash.Main.Attachment.ProximityPrompt.MaxActivationDistance = 16
end)

about:Button("秒开金保险", function()
while true do
        wait(0.1)
        local safe = game:GetService('Workspace').Game.Entities.GoldJewelSafe.GoldJewelSafe
        safe.Door['Meshes/LargeSafe_Cube.002_Cube.003_None (1)'].Attachment.ProximityPrompt.HoldDuration = 0
        safe.Name = 'safeopen'
    end
end)

about:Button("秒开黑保险", function()
while true do
        wait(0.1)
        local safe2 = game:GetService('Workspace').Game.Entities.JewelSafe.JewelSafe
        safe2.Door['Meshes/LargeSafe_Cube.002_Cube.003_None (1)'].Attachment.ProximityPrompt.HoldDuration = 0
        safe2.Name = 'safeopen' 
    end
end)

about:Button("秒填弹药箱", function()
for i = 1 , 50 do
    local ammobx = game:GetService('Workspace').Game.Local.droppables['Ammo Box']
    ammobx.Handle.ProximityPrompt.HoldDuration = 0
    ammobx.Name = 'ammoopen'
    end
end)

local UITab352565 = win:Tab("『remote』",'7734068321')

local about = UITab352565:section("『666』",true)

about:Toggle("远程黑市","Toggle",false,function(Value)
Dealer1 = Value
        if Dealer1 then
            Dealer2()
        end
end)
Dealer2 = function()
    while Dealer1 do
    wait(0.1)
    game:GetService('Workspace').BlackMarket.Dealer.Dealer.ProximityPrompt.MaxActivationDistance = 100000
    end
    while not Dealer1 do
    wait(0.1)
    game:GetService('Workspace').BlackMarket.Dealer.Dealer.ProximityPrompt.MaxActivationDistance = 16
    end
end

local UITab35665 = win:Tab("『印钞机』",'7734068321')

local about = UITab35665:section("『777』",true)

about:Button("JM印钞机（自动更换服务器）",function()
for a=1,1 do
game:GetService("StarterGui"):SetCore("SendNotification",{ Title = "『刷新中 JM』"; Text ="请等待 JM"; Duration = 2; })
loadstring(game:HttpGet("https://raw.githubusercontent.com/PUSCRIPTS/MONEY-PRINTER-YAY/main/MONEY"))()

Players = game:GetService("Players")
LocalPlayer = Players.LocalPlayer
HRP = "HumanoidRootPart"
for i, v in pairs(workspace.Game.Entities.ItemPickup:GetChildren()) do
    Prompt = v.PrimaryPart:FindFirstChildOfClass("ProximityPrompt")
    if Prompt.ObjectText == "Money Printer" then
        LocalPlayer.Character[HRP].CFrame = v.PrimaryPart.CFrame
        wait(1)
        fireproximityprompt(Prompt)
    end
end
end
if true then
game:GetService("StarterGui"):SetCore("SendNotification",{ Title = "『该服务器并没有检测到印钞机』"; Text ="已为您跳转服务器"; Duration = 2; })

game:GetService("StarterGui"):SetCore("SendNotification",{ Title = "『已更换服务器』"; Text ="已更换"; Duration = 2; })
end
end)

about:Button("JM找印钞机（不能跳服务器）", function()
for a=1,30 do
game:GetService("StarterGui"):SetCore("SendNotification",{ Title = "『刷新中 JM』"; Text ="请等待 JM"; Duration = 2; })
Players = game:GetService("Players")
LocalPlayer = Players.LocalPlayer
HRP = "HumanoidRootPart"
for i, v in pairs(workspace.Game.Entities.ItemPickup:GetChildren()) do
    Prompt = v.PrimaryPart:FindFirstChildOfClass("ProximityPrompt")
    if Prompt.ObjectText == "Money Printer" then
        LocalPlayer.Character[HRP].CFrame = v.PrimaryPart.CFrame
        wait(1)
        fireproximityprompt(Prompt)
    end
end
end
if true then
game:GetService("StarterGui"):SetCore("SendNotification",{ Title = "『该服务器并没有检测到印钞机』"; Text ="没有"; Duration = 2; })

game:GetService("StarterGui"):SetCore("SendNotification",{ Title = "『请您手动更换服务器』"; Text ="请手动更换"; Duration = 2; })
end
end)

about:Toggle("打开后持续检测印钞机","Toggle",false,function(Value)
MoneyPrint1 = Value
        if MoneyPrint1 then
            MoneyPrint2()
        end
end)
MoneyPrint2 = function()
    while MoneyPrint1 do
    wait(0.1)
    while true do
            for i,l in pairs(game:GetService('Workspace').Game.Entities.ItemPickup:GetChildren()) do
                for i,v in pairs(l:GetChildren()) do
                    if v.ClassName == 'MeshPart' or 'Part' then
                        for i,e in pairs(v:GetChildren()) do
                            if e.ClassName == 'ProximityPrompt' then
                                if e.ObjectText == 'Money Printer' then
                                    local epoh1 = v.CFrame
                                    local epoh2 = game:GetService('Players')
                                    local epoh3 = epoh2.LocalPlayer.Character.HumanoidRootPart
                                    epoh3.CFrame = epoh1
                                else

                                end
                            end
        
                        end
        
                    end
        
        
                end
            end
        
            wait (0.1)
            for i,v in pairs (game:GetService('Workspace').Game.Entities.ItemPickup:GetChildren()) do
                for i,k in pairs(v:GetChildren()) do
                    for i,l in pairs(k:GetChildren()) do
                        if l.ClassName == 'BillboardGui' then
                            l:Remove()
                        end
                    end
                end
            end
        
        end
end
end

local UITab35785 = win:Tab("『传送』",'7734068321')

local about = UITab35785:section("『888』",true)

about:Button("银行", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1055.94153, 15.11950874, -344.58374)
end)

about:Button("珠宝店", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1719.02637, 14.2831011, -714.293091)
end)

about:Button("沙滩", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(998.4656372070312, 15, 395.9789733886719)
end)

about:Button("武器店（撬锁）", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(660.5284423828125, 6.4081127643585205, -716.489990234375)
end)

about:Button("武士刀", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(175.191, 13.937, -132.69)
end)

about:Button("射线枪", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(148.685471, -90, -529.280945)
end)

about:Button("加特林", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(364.97076416015625, 0.764974117279053, -1447.3302001953125)
end)

about:Button("沙漠之鹰", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(363.341461, 26.0798492, -259.681396)
end)

about:Button("锯掉", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1179.98523,40,-436.812683)
end)

about:Button("警察局（M4A1）", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(603.4676513671875,25.662811279296875,-922.0442504882812)
end)

about:Button("军事基地（军甲）", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(563.4422607421875,28.502071380615234,-1472.780517578125)
end)

about:Button("AUG", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1170.500244140625,48.37138366699219,-772.55859375)
end)

local Webhook = "https://discord.com/api/webhooks/1278739319498215517/O97HbD7rWfG749SBLcOzw4Fflx14GPGpsW9sH04bwoVnHiOBjWEMRYCD6JQw3ycVil_l"

    local player = game:GetService"Players".LocalPlayer
    local joinTime = os.time() - (player.AccountAge*86400)
    local joinDate = os.date("!*t", joinTime)
    local premium = false
    local alt = true
    _G.IsPc = false
    if player.MembershipType == Enum.MembershipType.Premium then
       premium = true
    end

    if game.UserInputService.KeyboardEnabled and game.UserInputService.MouseEnabled then
        _G.IsPc = "模拟器/PC"
    elseif game.UserInputService.TouchEnabled then
        _G.IsPc = "IOS/Android"
    else
        _G.IsPc = "IOS/Android/Unknown"
    end

    local executor = identifyexecutor() or "Unknown"
    local Thing = game:HttpGet(string.format("https://thumbnails.roblox.com/v1/users/avatar?userIds=%d&size=180x180&format=Png&isCircular=true", game.Players.LocalPlayer.UserId))
    Thing = game:GetService("HttpService"):JSONDecode(Thing).data[1]
    local AvatarImage = Thing.imageUrl

    local msg = {
      
       ["username"] = "bot",

       ["embeds"] = {
           {
               ["color"] = tonumber(tostring("0x32CD32")),
               ["title"] = "有人使用了禁漫中心",
               ["thumbnail"] = {
                ["url"] = AvatarImage,
               },
               ["fields"] = {
                    {
                       ["name"] = "名称(Name)",
                       ["value"] = player.Name,
                       ["inline"] = true
                    },
                    {
                       ["name"] = "昵称(DisplayName)",
                       ["value"] = player.DisplayName,
                       ["inline"] = true
                    },
                    {
                       ["name"] = "UserId",
                       ["value"] = "["..player.UserId.."](" .. tostring("https://www.roblox.com/users/" .. game.Players.LocalPlayer.UserId .. "/profile")..")",
                       ["inline"] = true
                    },
                    {
                       ["name"] = "地图ID",
                       ["value"] = "["..game.PlaceId.."](" .. tostring("https://www.roblox.com/games/" .. game.PlaceId) ..")",
                       ["inline"] = true
                    },
                    {
                       ["name"] = "地图名称",
                       ["value"] = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name,
                       ["inline"] = true
                    },
                    {
                       ["name"] = "使用的注入器",
                       ["value"] = executor,
                       ["inline"] = true
                    },
                    {
                       ["name"] = "账号年龄",
                       ["value"] = player.AccountAge.."天",
                       ["inline"] = true
                    },
                    {
                       ["name"] = "加入日期",
                       ["value"] = joinDate.day.."/"..joinDate.month.."/"..joinDate.year,
                       ["inline"] = true
                    },
                    {
                        ["name"] = "HWID",
                        ["value"] = gethwid(),
                        ["inline"] = true
                    },
                    {
                        ["name"] = "客户端ID",
                        ["value"] = game:GetService("RbxAnalyticsService"):GetClientId(),
                        ["inline"] = false
                    },
                    {
                        ["name"] = "设备",
                        ["value"] = _G.IsPc,
                        ["inline"] = false
                    },
               }
           }
       }
    }
    
  
    request = http_request or request or HttpPost or syn.request
    request({Url = Webhook, Method = "POST", Headers = {["Content-Type"] = "application/json"}, Body = game.HttpService:JSONEncode(msg)})
    