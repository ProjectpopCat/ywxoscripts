local Search = Instance.new("ScreenGui")
local MainWindow = Instance.new("Frame")
local Topbar = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local seb = Instance.new("Frame")
local ListedGames = Instance.new("ScrollingFrame")
local Searchforgame = Instance.new("TextBox")
local UICorner_6 = Instance.new("UICorner")
local Selection = Instance.new("Frame")
local InfoBox = Instance.new("Frame")
local UICorner_7 = Instance.new("UICorner")
local InfoTitle = Instance.new("TextLabel")
local FunctionLines = {} -- Speichert die FunctionLines als Tabelle
local Cancel = Instance.new("TextButton")
local UICorner_8 = Instance.new("UICorner")
local LoadScript = Instance.new("TextButton")
local UICorner_9 = Instance.new("UICorner")
local UICorner_10 = Instance.new("UICorner")



Search.Name = "Search"
Search.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
Search.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

MainWindow.Name = "MainWindow"
MainWindow.Parent = Search
MainWindow.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
MainWindow.BorderColor3 = Color3.new(1, 1, 1)
MainWindow.BorderSizePixel = 0
MainWindow.Position = UDim2.new(0.319115311, 0, 0.291469187, 0)
MainWindow.Size = UDim2.new(0, 458, 0, 352)

Topbar.Name = "Topbar"
Topbar.Parent = MainWindow
Topbar.BackgroundColor3 = Color3.new(0.0784314, 0.0784314, 0.0784314)
Topbar.BorderColor3 = Color3.new(0, 0, 0)
Topbar.BorderSizePixel = 0
Topbar.Size = UDim2.new(0, 458, 0, 28)

UICorner.Parent = Topbar

seb.Name = "seb"
seb.Parent = MainWindow
seb.BackgroundColor3 = Color3.new(0.0588235, 0.0588235, 0.0588235)
seb.BorderColor3 = Color3.new(0, 0, 0)
seb.BorderSizePixel = 0
seb.Position = UDim2.new(0, 0, 0.0795454532, 0)
seb.Size = UDim2.new(0, 458, 0, 4)

ListedGames.Name = "Listed Games"
ListedGames.Parent = MainWindow
ListedGames.Active = true
ListedGames.BackgroundColor3 = Color3.new(0.105882, 0.105882, 0.105882)
ListedGames.BorderColor3 = Color3.new(0, 0, 0)
ListedGames.BorderSizePixel = 0
ListedGames.Position = UDim2.new(0, 0, 0.258522719, 0)
ListedGames.Size = UDim2.new(0, 198, 0, 261)

Searchforgame.Name = "Search for game"
Searchforgame.Parent = MainWindow
Searchforgame.BackgroundColor3 = Color3.new(0.0784314, 0.0784314, 0.0784314)
Searchforgame.BorderColor3 = Color3.new(0, 0, 0)
Searchforgame.BorderSizePixel = 0
Searchforgame.Position = UDim2.new(0, 0, 0.116477273, 0)
Searchforgame.Size = UDim2.new(0, 183, 0, 42)
Searchforgame.Font = Enum.Font.SourceSans
Searchforgame.Text = "" -- Initial leer
Searchforgame.PlaceholderText = "Search for game..." -- Hier wird der Platzhaltertext gesetzt
Searchforgame.TextColor3 = Color3.new(1, 1, 1)
Searchforgame.TextSize = 14


UICorner_6.Parent = Searchforgame

Selection.Name = "Selection"
Selection.Parent = MainWindow
Selection.BackgroundColor3 = Color3.new(0.105882, 0.105882, 0.105882)
Selection.BorderColor3 = Color3.new(0, 0, 0)
Selection.BorderSizePixel = 0
Selection.Position = UDim2.new(0.449781656, 0, 0.116477273, 0)
Selection.Size = UDim2.new(0, 246, 0, 305)








InfoBox.Name = "InfoBox"
InfoBox.Parent = Selection
InfoBox.BackgroundColor3 = Color3.new(0.0784314, 0.0784314, 0.0784314)
InfoBox.BorderColor3 = Color3.new(0, 0, 0)
InfoBox.BorderSizePixel = 0
InfoBox.Position = UDim2.new(0.0365853645, 0, 0.0327868834, 0)
InfoBox.Size = UDim2.new(0, 227, 0, 246)

UICorner_7.Parent = InfoBox

InfoTitle.Name = "InfoTitle"
InfoTitle.Parent = InfoBox
InfoTitle.BackgroundColor3 = Color3.new(1, 1, 1)
InfoTitle.BackgroundTransparency = 1
InfoTitle.BorderColor3 = Color3.new(0, 0, 0)
InfoTitle.BorderSizePixel = 0
InfoTitle.Size = UDim2.new(0, 227, 0, 40)
InfoTitle.Font = Enum.Font.SourceSans
InfoTitle.Text = ""  -- Initial leer
InfoTitle.TextColor3 = Color3.new(1, 1, 1)
InfoTitle.TextSize = 34
InfoTitle.TextWrapped = true
InfoTitle.TextScaled = true











for i = 1, 7 do
    local functionLine = Instance.new("TextLabel")
    functionLine.Name = "FunctionLine" .. i
    functionLine.Parent = InfoBox
    functionLine.BackgroundColor3 = Color3.new(1, 1, 1)
    functionLine.BackgroundTransparency = 1
    functionLine.BorderColor3 = Color3.new(0, 0, 0)
    functionLine.BorderSizePixel = 0
    functionLine.Size = UDim2.new(1, 0, 0, 23)
    functionLine.Position = UDim2.new(0, 0, 0.22 + (i - 1) * 0.1, 0)
    functionLine.Font = Enum.Font.SourceSans
    functionLine.TextColor3 = Color3.new(1, 1, 1)
    functionLine.TextSize = 24
    functionLine.TextWrapped = true
    functionLine.TextXAlignment = Enum.TextXAlignment.Left
    functionLine.Text = ""  -- Initial leer
    functionLine.Visible = false  -- Versteckt die FunctionLines initial
    table.insert(FunctionLines, functionLine)
end

Cancel.Name = "Cancel"
Cancel.Parent = Selection
Cancel.BackgroundColor3 = Color3.new(0.94902, 0.141176, 0.141176)
Cancel.BorderColor3 = Color3.new(0, 0, 0)
Cancel.BorderSizePixel = 0
Cancel.Position = UDim2.new(0.0365853645, 0, 0.918032825, 0)
Cancel.Size = UDim2.new(0, 110, 0, 25)
Cancel.Font = Enum.Font.SourceSans
Cancel.Text = "Cancel"
Cancel.TextColor3 = Color3.new(1, 1, 1)
Cancel.TextSize = 18

UICorner_8.Parent = Cancel

local function onCancelClick()
    InfoTitle.Text = ""
    for i = 1, #FunctionLines do
        FunctionLines[i].Visible = false 
    end
end

Cancel.MouseButton1Click:Connect(onCancelClick)

LoadScript.Name = "Load Script"
LoadScript.Parent = Selection
LoadScript.BackgroundColor3 = Color3.new(0.141176, 0.94902, 0.141176)
LoadScript.BorderColor3 = Color3.new(0, 0, 0)
LoadScript.BorderSizePixel = 0
LoadScript.Position = UDim2.new(0.489837527, 0, 0.918032825, 0)
LoadScript.Size = UDim2.new(0, 110, 0, 25)
LoadScript.Font = Enum.Font.SourceSans
LoadScript.Text = "Load Script"
LoadScript.TextColor3 = Color3.new(1, 1, 1)
LoadScript.TextSize = 18

UICorner_9.Parent = LoadScript

UICorner_10.Parent = MainWindow












local UserInputService = game:GetService("UserInputService")

local isDragging = false
local dragStart = Vector2.new()
local startPos = UDim2.new()

local function startDrag(input)
    isDragging = true
    dragStart = Vector2.new(input.Position.X, input.Position.Y)
    startPos = MainWindow.Position
    print("Drag started at position: ", dragStart) -- Debugging-Ausgabe
end

local function updateDrag(input)
    if isDragging then
        local delta = Vector2.new(input.Position.X, input.Position.Y) - dragStart
        local newPos = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
        MainWindow.Position = newPos
        print("Drag updated to position: ", newPos) -- Debugging-Ausgabe
    else
        print("Update drag called, but isDragging is false.") -- Debugging-Ausgabe
    end
end

local function endDrag()
    isDragging = false
    print("Drag ended.") -- Debugging-Ausgabe
end

MainWindow.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        startDrag(input)
    end
end)

UserInputService.InputChanged:Connect(function(input)
    if isDragging and input.UserInputType == Enum.UserInputType.MouseMovement then
        updateDrag(input)
    end
end)

UserInputService.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        endDrag()
    end
end)

-- Ensure dragging continues when mouse moves outside the frame
UserInputService.InputBegan:Connect(function(input)
    if isDragging and input.UserInputType == Enum.UserInputType.MouseButton1 then
        updateDrag(input)
    end
end)
















local originalPositions = {}

local function filterGames()
    -- Sicherstellen, dass die Textbox existiert
    if not Searchforgame then
        print("Error: Searchforgame is nil")
        return
    end

    local searchText = Searchforgame.Text:lower()
    local matchedButtons = {}

    -- Leere Suche zurücksetzen
    if searchText == "" then
        resetButtons() -- Annahme: resetButtons() ist eine gültige Funktion
        print("Resetting buttons due to empty search.")
        return
    end

    -- Durchlaufe alle Buttons in ListedGames
    for _, button in ipairs(ListedGames:GetChildren()) do
        if button:IsA("TextButton") then
            local buttonText = button.Text:lower()

            -- Überprüfen, ob der Button-Text mit dem Suchtext übereinstimmt
            if buttonText:find(searchText) then
                button.Visible = true
                local matchScore = 0

                -- Bestimme den Match-Score
                if buttonText == searchText then
                    matchScore = 2
                else
                    matchScore = 1
                end

                table.insert(matchedButtons, {button = button, score = matchScore})
            else
                button.Visible = false
            end
        end
    end

    -- Sortiere die gefundenen Buttons basierend auf dem Score
    table.sort(matchedButtons, function(a, b)
        return a.score > b.score
    end)

    -- Positioniere die Buttons
    local positionY = 0
    local buttonSpacing = 0.06

    for _, entry in ipairs(matchedButtons) do
        local button = entry.button

        -- Überprüfen, ob der Button existiert, bevor die Position gesetzt wird
        if button then
            button.Position = UDim2.new(0, 0, positionY, 0)
            positionY = positionY + buttonSpacing
        else
            print("Warning: Button is nil, skipping position update.")
        end
    end

    -- Überprüfen und Debugging für Bild-Updates
    if InfoImage and InfoImage:IsA("ImageLabel") then
        if InfoImage.ImageLoaded then
            print("Image has been loaded successfully.")
        else
            print("Image has not been loaded yet.")
        end
    else
        print("Error: InfoImage is not a valid ImageLabel.")
    end

    -- Überprüfen der Funktion, die möglicherweise nil ist
    local someFunction = nil -- Beispiel für eine Funktion, die nil sein könnte

    -- Überprüfen, ob someFunction existiert, bevor sie aufgerufen wird
    if someFunction then
        someFunction()
    else
        print("Warning: someFunction is nil, skipping function call.")
    end

    -- Hier ist der kritische Abschnitt (Line 278)
    -- Füge Überprüfungen hinzu für alles, was hier aufgerufen wird
    local functionToCall = nil -- Beispiel für eine Funktion, die eventuell nil sein könnte

    if functionToCall then
        functionToCall()
    else
        print("Error: functionToCall is nil, cannot proceed with the function call.")
    end

    -- Füge hier weitere Überprüfungen für andere potenzielle nil-Werte hinzu
end






-- Funktion zum Wiederherstellen der ursprünglichen Sichtbarkeit und Position der Buttons
local function resetButtons()
    for _, button in ipairs(ListedGames:GetChildren()) do
        if button:IsA("TextButton") then
            button.Visible = true -- Stelle die Sichtbarkeit wieder her
            button.Position = originalPositions[button.Name] -- Setze die Position auf die ursprüngliche Position zurück
        end
    end
end

Searchforgame:GetPropertyChangedSignal("Text"):Connect(function()
    -- Wenn der Text leer ist, setze die Buttons sofort zurück und zeige den Platzhalter
    if Searchforgame.Text == "" then
        Searchforgame.PlaceholderText = "Search for game..." -- Setze den Platzhaltertext
        resetButtons()
    else
        -- Ansonsten filtere die Spiele
        filterGames() -- Hier wird filterGames sicher aufgerufen
    end
end)














local InfoImage = Instance.new("ImageLabel")
InfoImage.Name = "InfoImage"
InfoImage.Parent = InfoBox
InfoImage.BackgroundColor3 = Color3.new(1, 1, 1) -- Weißer Hintergrund
InfoImage.BackgroundTransparency = 1 -- Transparent
InfoImage.Size = UDim2.new(0, 200, 0, 200) -- Größe des Bildes
InfoImage.Position = UDim2.new(0.5, -100, 0.5, -100) -- Zentrierung des Bildes
InfoImage.Visible = true -- Standardmäßig sichtbar, wenn kein Button ausgewählt ist

local imageIDs = {1299973478, 5188932281, 12623079321, 4700049612, 11818627075, 13231439847, 17795836252, 14260038764, 9597834616, 14424817477, 14481909144, 18459538183, 13634041218, 7645417202, 18469394705, 9763545090, 15273937380, 15955436907,
18459542568, 18459531715, 14260042946, 14260213726, 4980134781, 13782220229, 7115067559, 14135197843, 17015717396, 12469381672, 17739571130, 12075892980 }

-- Funktion zur Auswahl einer zufälligen Bild-ID
local function getRandomImageId()
    local randomIndex = math.random(1, #imageIDs) -- Zufälligen Index auswählen
    return "rbxthumb://type=Asset&id=" .. tostring(imageIDs[randomIndex]) .. "&w=150&h=150" -- Bild-ID zurückgeben
end

-- Funktion zur Aktualisierung des Bildes
local function updateImage()
    local newImageId = getRandomImageId()
    InfoImage.Image = newImageId

    -- Überprüfen, ob das Bild geladen wurde
    InfoImage.ImageLoaded:Wait()
end

local function onCancelClick()
    InfoTitle.Text = ""
    InfoImage.Visible = true 
    updateImage() -- Bild bei Abbruch zufällig auswählen
    for i = 1, #FunctionLines do
        FunctionLines[i].Visible = false 
    end
end

Cancel.MouseButton1Click:Connect(function()
    onCancelClick()
    checkImageVisibility()
end)




local function onClick(gameName, gameInfo)
    resetButtons() -- Restore all buttons
    Searchforgame.Text = "" -- Clear the text in the TextBox
    for i = 1, #FunctionLines do
        FunctionLines[i].Visible = false
    end

    InfoImage.Visible = false -- Hide the image when a button is selected
    InfoTitle.Text = gameName -- Set the title to the game name
    for i, line in ipairs(gameInfo) do
        if FunctionLines[i] then
            FunctionLines[i].Text = line
            FunctionLines[i].Visible = true
        end
    end
end



-- Diese Funktion sollte aufgerufen werden, wenn kein Button ausgewählt ist
local function checkImageVisibility()
    -- Überprüfe, ob ein Button aktiv ist und setze die Sichtbarkeit des Bildes entsprechend
    if InfoTitle.Text == "" then
        InfoImage.Visible = true -- Bild anzeigen, wenn kein Button ausgewählt ist
    else
        InfoImage.Visible = false -- Bild ausblenden, wenn ein Button ausgewählt ist
    end
end



local loadScriptFunction = nil -- Variable zum Speichern der LoadScript-Funktion
local loadScriptConnection = nil -- Variable für die Verbindung des LoadScript-Buttons

local function createButton(parent, gameName, gameInfo, positionY)
    local button = Instance.new("TextButton")
    button.Name = gameName
    button.Parent = parent
    button.BackgroundColor3 = Color3.new(0.0784314, 0.0784314, 0.0784314)
    button.BorderColor3 = Color3.new(0, 0, 0)
    button.BorderSizePixel = 0
    button.Size = UDim2.new(0, 183, 0, 37)
    button.Position = UDim2.new(0, 0, positionY, 0)
    button.Font = Enum.Font.SourceSans
    button.Text = gameName
    button.TextColor3 = Color3.new(1, 1, 1)
    button.TextSize = 14

    originalPositions[gameName] = button.Position

    local loadScriptFunction = gameInfo.LoadScript

    local function onClick()
        resetButtons() -- Stelle alle Buttons wieder her
        Searchforgame.Text = "" -- Lösche den Text in der TextBox
        for i = 1, #FunctionLines do
            FunctionLines[i].Visible = false
        end

        InfoTitle.Text = gameName
        for i, line in ipairs(gameInfo) do
            if FunctionLines[i] then
                FunctionLines[i].Text = line
                FunctionLines[i].Visible = true
            end
        end

        -- Trenne vorherige Verbindungen, falls vorhanden
        if loadScriptConnection then
            loadScriptConnection:Disconnect()
        end

        -- Setze die LoadScript Funktion für diesen Button
        loadScriptConnection = LoadScript.MouseButton1Click:Connect(function()
            if loadScriptFunction then
                loadScriptFunction() -- Führe die gespeicherte Funktion aus
            end
        end)
    end

    button.MouseButton1Click:Connect(onClick)

    button.MouseButton1Click:Connect(function()
        onClick(gameName, gameInfo) -- Aktualisiert die onClick-Funktion
        checkImageVisibility() -- Prüfe die Sichtbarkeit des Bildes
    end)
    return button
end
Searchforgame.Changed:Connect(filterGames)
