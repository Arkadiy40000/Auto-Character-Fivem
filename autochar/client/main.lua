    local playerName = ""
    local vehicleData = ""
    local playerAddress = ""
    local houseBlip = nil
    local carBlip = nil
    
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
    
    RegisterNetEvent("spawnPlayerAtAddress")
    AddEventHandler("spawnPlayerAtAddress", function(playerPos, heading, pedModel, housePos)
        local playerPed = PlayerPedId()
        local playerModel = GetHashKey(pedModel)
    
        print("Debug: Loading player model " .. pedModel)
    
        -- Request and load the player model
        RequestModel(playerModel)
        while not HasModelLoaded(playerModel) do
            Wait(1)
        end
    
        print("Debug: Setting player model " .. pedModel)
        
        -- Change the player model
        SetPlayerModel(PlayerId(), playerModel)
        SetPedRandomComponentVariation(GetPlayerPed(-1), true)
        SetModelAsNoLongerNeeded(playerModel)
    
        -- Wait a moment to ensure the model is fully applied
        Wait(500)
    
        -- Set player position and heading
        print(string.format("Debug: Setting player position to x: %f, y: %f, z: %f, heading: %f", playerPos.x, playerPos.y, playerPos.z, heading))
        SetEntityCoordsNoOffset(playerPed, playerPos.x, playerPos.y, playerPos.z, false, false, false)
        SetEntityHeading(playerPed, heading)
        NetworkResurrectLocalPlayer(playerPos.x, playerPos.y, playerPos.z, heading, true, false)
        
        -- Ensure collision is correctly applied
        FreezeEntityPosition(playerPed, true)
        Wait(100)
        FreezeEntityPosition(playerPed, false)
    
        -- Create a blip for the house
        if houseBlip then
            RemoveBlip(houseBlip)
        end
        houseBlip = AddBlipForCoord(housePos.x, housePos.y, housePos.z)
        SetBlipSprite(houseBlip, 40) -- House icon
        SetBlipDisplay(houseBlip, 4)
        SetBlipScale(houseBlip, 1.0)
        SetBlipColour(houseBlip, 3)
        SetBlipAsShortRange(houseBlip, false)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString("House")
        EndTextCommandSetBlipName(houseBlip)
    end)
    
    RegisterNetEvent("spawnVehicleAtAddress")
    AddEventHandler("spawnVehicleAtAddress", function(carPos, vehicleModel, playerName, playerAddress)
        RequestModel(GetHashKey(vehicleModel))
        while not HasModelLoaded(GetHashKey(vehicleModel)) do
            Wait(1)
        end
        local vehicle = CreateVehicle(GetHashKey(vehicleModel), carPos.x, carPos.y, carPos.z, carPos.w, true, false)
        local licensePlate = GetVehicleNumberPlateText(vehicle)
        Wait(0)
        local primaryColor, secondaryColor = GetVehicleColours(vehicle)
        
        -- Map color indices to names
        local primaryColorName = colorNames[primaryColor] or "Unknown"
        
        -- Send vehicle data back to the server
        TriggerServerEvent("vehicleDataFromClient", vehicleModel, primaryColorName, licensePlate, playerName, playerAddress)
    
        -- Create a blip for the car
        if carBlip then
            RemoveBlip(carBlip)
        end
        carBlip = AddBlipForEntity(vehicle)
        SetBlipSprite(carBlip, 225) -- Car icon
        SetBlipDisplay(carBlip, 4)
        SetBlipScale(carBlip, 1.0)
        SetBlipColour(carBlip, 5)
        SetBlipAsShortRange(carBlip, false)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString("Car")
        EndTextCommandSetBlipName(carBlip)
    end)
    
    RegisterNetEvent("displayPlayerName")
    AddEventHandler("displayPlayerName", function(fullName)
        playerName = fullName
    end)
    
    RegisterNetEvent("displayVehicleData")
    AddEventHandler("displayVehicleData", function(model, primaryColor, plate)
        vehicleData = string.format("Model: %s\nPrimary Color: %s\nPlate: %s", model, primaryColor, plate)
    end)
    
    RegisterNetEvent("displayPlayerAddress")
    AddEventHandler("displayPlayerAddress", function(address)
        playerAddress = address
    end)
    
    Citizen.CreateThread(function()
        while true do
            Wait(0)
            if playerName ~= "" or playerAddress ~= "" or vehicleData ~= "" then
                local yPos = 0.02 -- Starting y position for the text
                local scale = 0.3 -- Text scale (smaller font size)
                
                if playerName ~= "" then
                    DrawTextOnScreen(playerName, 0.02, yPos, scale, false)
                    yPos = yPos + 0.03 -- Move down for the next line
                end
                if playerAddress ~= "" then
                    DrawTextOnScreen(playerAddress, 0.02, yPos, scale, false)
                    yPos = yPos + 0.03 -- Move down for the next line
                end
                if vehicleData ~= "" then
                    DrawTextOnScreen(vehicleData, 0.02, yPos, scale, false)
                end
            end
        end
    end)
    
    function DrawTextOnScreen(text, x, y, scale, center)
        SetTextFont(0)
        SetTextProportional(1)
        SetTextScale(scale, scale)
        SetTextColour(255, 255, 255, 255)
        SetTextDropshadow(0, 0, 0, 0, 255)
        SetTextEdge(1, 0, 0, 0, 255)
        SetTextDropShadow()
        SetTextOutline()
        SetTextCentre(center)
        BeginTextCommandDisplayText("STRING")
        AddTextComponentSubstringPlayerName(text)
        EndTextCommandDisplayText(x, y)
    end
    
-- Example of triggering the spawn from the client
RegisterCommand("spawn", function()
    TriggerServerEvent("spawnPlayerAndCar")
end, false)
