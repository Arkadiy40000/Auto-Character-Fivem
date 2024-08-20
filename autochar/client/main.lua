local colorNames = {
    [0] = "Metallic Black",
    [1] = "Metallic Graphite Black",
    [2] = "Metallic Black Steal",
    [3] = "Metallic Dark Silver",
    [4] = "Metallic Silver",
    [5] = "Metallic Blue Silver",
    [6] = "Metallic Steel Gray",
    [7] = "Metallic Shadow Silver",
    [8] = "Metallic Stone Silver",
    [9] = "Metallic Midnight Silver",
    [10] = "Metallic Gun Metal",
    [11] = "Metallic Anthracite Grey",
    [12] = "Matte Black",
    [13] = "Matte Gray",
    [14] = "Matte Light Grey",
    [15] = "Util Black",
    [16] = "Util Black Poly",
    [17] = "Util Dark silver",
    [18] = "Util Silver",
    [19] = "Util Gun Metal",
    [20] = "Util Shadow Silver",
    [21] = "Worn Black",
    [22] = "Worn Graphite",
    [23] = "Worn Silver Grey",
    [24] = "Worn Silver",
    [25] = "Worn Blue Silver",
    [26] = "Worn Shadow Silver",
    [27] = "Metallic Red",
    [28] = "Metallic Torino Red",
    [29] = "Metallic Formula Red",
    [30] = "Metallic Blaze Red",
    [31] = "Metallic Graceful Red",
    [32] = "Metallic Garnet Red",
    [33] = "Metallic Desert Red",
    [34] = "Metallic Cabernet Red",
    [35] = "Metallic Candy Red",
    [36] = "Metallic Sunrise Orange",
    [37] = "Metallic Classic Gold",
    [38] = "Metallic Orange",
    [39] = "Matte Red",
    [40] = "Matte Dark Red",
    [41] = "Matte Orange",
    [42] = "Matte Yellow",
    [43] = "Util Red",
    [44] = "Util Bright Red",
    [45] = "Util Garnet Red",
    [46] = "Worn Red",
    [47] = "Worn Golden Red",
    [48] = "Worn Dark Red",
    [49] = "Metallic Dark Green",
    [50] = "Metallic Racing Green",
    [51] = "Metallic Sea Green",
    [52] = "Metallic Olive Green",
    [53] = "Metallic Green",
    [54] = "Metallic Gasoline Blue Green",
    [55] = "Matte Lime Green",
    [56] = "Util Dark Green",
    [57] = "Util Green",
    [58] = "Worn Dark Green",
    [59] = "Worn Green",
    [60] = "Worn Sea Wash",
    [61] = "Metallic Midnight Blue",
    [62] = "Metallic Dark Blue",
    [63] = "Metallic Saxony Blue",
    [64] = "Metallic Blue",
    [65] = "Metallic Mariner Blue",
    [66] = "Metallic Harbor Blue",
    [67] = "Metallic Diamond Blue",
    [68] = "Metallic Surf Blue",
    [69] = "Metallic Nautical Blue",
    [70] = "Metallic Bright Blue",
    [71] = "Metallic Purple Blue",
    [72] = "Metallic Spinnaker Blue",
    [73] = "Metallic Ultra Blue",
    [74] = "Metallic Bright Blue",
    [75] = "Util Dark Blue",
    [76] = "Util Midnight Blue",
    [77] = "Util Blue",
    [78] = "Util Sea Foam Blue",
    [79] = "Uil Lightning blue",
    [80] = "Util Maui Blue Poly",
    [81] = "Util Bright Blue",
    [82] = "Matte Dark Blue",
    [83] = "Matte Blue",
    [84] = "Matte Midnight Blue",
    [85] = "Worn Dark blue",
    [86] = "Worn Blue",
    [87] = "Worn Light blue",
    [88] = "Metallic Taxi Yellow",
    [89] = "Metallic Race Yellow",
    [90] = "Metallic Bronze",
    [91] = "Metallic Yellow Bird",
    [92] = "Metallic Lime",
    [93] = "Metallic Champagne",
    [94] = "Metallic Pueblo Beige",
    [95] = "Metallic Dark Ivory",
    [96] = "Metallic Choco Brown",
    [97] = "Metallic Golden Brown",
    [98] = "Metallic Light Brown",
    [99] = "Metallic Straw Beige",
    [100] = "Metallic Moss Brown",
    [101] = "Metallic Biston Brown",
    [102] = "Metallic Beechwood",
    [103] = "Metallic Dark Beechwood",
    [104] = "Metallic Choco Orange",
    [105] = "Metallic Beach Sand",
    [106] = "Metallic Sun Bleeched Sand",
    [107] = "Metallic Cream",
    [108] = "Util Brown",
    [109] = "Util Medium Brown",
    [110] = "Util Light Brown",
    [111] = "Metallic White",
    [112] = "Metallic Frost White",
    [113] = "Worn Honey Beige",
    [114] = "Worn Brown",
    [115] = "Worn Dark Brown",
    [116] = "Worn straw beige",
    [117] = "Brushed Steel",
    [118] = "Brushed Black steel",
    [119] = "Brushed Aluminium",
    [120] = "Chrome",
    [121] = "Worn Off White",
    [122] = "Util Off White",
    [123] = "Worn Orange",
    [124] = "Worn Light Orange",
    [125] = "Metallic Securicor Green",
    [126] = "Worn Taxi Yellow",
    [127] = "police car blue",
    [128] = "Matte Green",
    [129] = "Matte Brown",
    [130] = "Worn Orange",
    [131] = "Matte White",
    [132] = "Worn White",
    [133] = "Worn Olive Army Green",
    [134] = "Pure White",
    [135] = "Hot Pink",
    [136] = "Salmon pink",
    [137] = "Metallic Vermillion Pink",
    [138] = "Orange",
    [139] = "Green",
    [140] = "Blue",
    [141] = "Mettalic Black Blue",
    [142] = "Metallic Black Purple",
    [143] = "Metallic Black Red",
    [144] = "hunter green",
    [145] = "Metallic Purple",
    [146] = "Metaillic V Dark Blue",
    [147] = "MODSHOP BLACK1",
    [148] = "Matte Purple",
    [149] = "Matte Dark Purple",
    [150] = "Metallic Lava Red",
    [151] = "Matte Forest Green",
    [152] = "Matte Olive Drab",
    [153] = "Matte Desert Brown",
    [154] = "Matte Desert Tan",
    [155] = "Matte Foilage Green",
    [156] = "DEFAULT ALLOY COLOR",
    [157] = "Epsilon Blue",
}


local playerMarkers = {}
local displayInfo = {}
local currentAddress = nil -- Track the current assigned address for the player

-- Function to display text on screen
function DrawTextOnScreen(text, x, y, scale, center)
    SetTextFont(4) -- Modern font
    SetTextProportional(1)
    SetTextScale(scale, scale)
    SetTextColour(255, 255, 255, 200) -- Slightly transparent white
    SetTextDropshadow(0, 0, 0, 0, 255)
    SetTextEdge(1, 0, 0, 0, 255)
    SetTextDropShadow()
    SetTextOutline()
    SetTextCentre(center)
    BeginTextCommandDisplayText("STRING")
    AddTextComponentSubstringPlayerName(text)
    EndTextCommandDisplayText(x, y)
end

-- Event triggered by the server to spawn the player at the assigned address
RegisterNetEvent('spawnPlayer')
AddEventHandler('spawnPlayer', function(chosenAddress)
    local player = PlayerPedId()

    -- If the player already has an address, free the previous one
    if currentAddress then
        TriggerServerEvent('freeAddress', currentAddress.name)
        currentAddress = nil
    end

    -- Nationality-based logic for player name, ped model, and vehicle
    local nationality = chosenAddress.nationality
    local nameConfig = Config.Names[nationality]

    if nameConfig then
        -- Choose random first and last name based on nationality
        local firstName = nameConfig.firstNames[math.random(#nameConfig.firstNames)]
        local lastName = nameConfig.lastNames[math.random(#nameConfig.lastNames)]

        -- Choose random ped model based on nationality
        local pedModel = nameConfig.pedModels[math.random(#nameConfig.pedModels)]

        -- Load and apply the ped model
        RequestModel(pedModel)
        while not HasModelLoaded(pedModel) do
            Wait(100)
        end
        SetPlayerModel(PlayerId(), pedModel)
        SetModelAsNoLongerNeeded(pedModel)

        -- Teleport the player to the chosen position
        SetEntityCoordsNoOffset(player, chosenAddress.playerPos.x, chosenAddress.playerPos.y, chosenAddress.playerPos.z, false, false, false)
        SetEntityHeading(player, chosenAddress.playerPos.w)
        NetworkResurrectLocalPlayer(chosenAddress.playerPos.x, chosenAddress.playerPos.y, chosenAddress.playerPos.z, chosenAddress.playerPos.w, true, false)

        -- Choose a random vehicle from the nationality-specific vehicle list
        local chosenVehicleModel = nameConfig.vehicles[math.random(#nameConfig.vehicles)]
        local vehicleHash = GetHashKey(chosenVehicleModel)

        RequestModel(vehicleHash)
        while not HasModelLoaded(vehicleHash) do
            Wait(100)
        end

        local vehicle = CreateVehicle(vehicleHash, chosenAddress.carPos.x, chosenAddress.carPos.y, chosenAddress.carPos.z, chosenAddress.carPos.w, true, false)

        -- Get vehicle color and plate
        local primaryColor, _ = GetVehicleColours(vehicle)
        local colorName = colorNames[primaryColor] or "Unknown Color"
        local plate = GetVehicleNumberPlateText(vehicle)

        -- Store the information to be displayed
        displayInfo = {
            name = firstName .. " " .. lastName,
            nationality = nationality,
            address = chosenAddress.name,
            vehicleModel = chosenVehicleModel,
            color = colorName,
            plate = plate
        }

        -- Save the current address
        currentAddress = chosenAddress

        -- Add markers (blips) for house and car
        if playerMarkers[PlayerId()] then
            RemoveBlip(playerMarkers[PlayerId()].house)
            RemoveBlip(playerMarkers[PlayerId()].car)
        end

        local houseBlip = AddBlipForCoord(chosenAddress.playerPos.x, chosenAddress.playerPos.y, chosenAddress.playerPos.z)
        SetBlipSprite(houseBlip, 40) -- House icon

        local carBlip = AddBlipForEntity(vehicle)
        SetBlipSprite(carBlip, 225) -- Car icon

        playerMarkers[PlayerId()] = { house = houseBlip, car = carBlip }
    else
        TriggerEvent('chat:addMessage', { args = { '^1Nationality not found in config!' }})
    end
end)

-- Function to display player info on the screen
Citizen.CreateThread(function()
    while true do
        Wait(0)

        -- If displayInfo is not empty, draw the information on the screen
        if displayInfo.name then
            local x = 0.015
            local y = 0.60 -- Display near the bottom left
            local scale = 0.4 -- Smaller scale for cleaner look

            DrawTextOnScreen("Name: " .. displayInfo.name, x, y, scale, false)
            DrawTextOnScreen("Nationality: " .. displayInfo.nationality, x, y + 0.025, scale, false)
            DrawTextOnScreen("Address: " .. displayInfo.address, x, y + 0.05, scale, false)
            DrawTextOnScreen("Vehicle: " .. displayInfo.vehicleModel, x, y + 0.075, scale, false)
            DrawTextOnScreen("Color: " .. displayInfo.color, x, y + 0.1, scale, false)
            DrawTextOnScreen("Plate: " .. displayInfo.plate, x, y + 0.125, scale, false)
        end
    end
end)
