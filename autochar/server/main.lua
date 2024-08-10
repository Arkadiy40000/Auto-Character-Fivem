local usedAddresses = {}

-- Register the net event to handle the spawn logic
RegisterNetEvent("spawnPlayerAndCar")
AddEventHandler("spawnPlayerAndCar", function()
    local _source = source

    -- Check if player already has an address
    if usedAddresses[_source] then
        local address = Config.Addresses[usedAddresses[_source]]
        spawnPlayerAndCar(_source, address)
    else
        -- Find a random unused address
        local availableAddresses = {}
        for i, address in ipairs(Config.Addresses) do
            if not isAddressUsed(i) then
                table.insert(availableAddresses, i)
            end
        end

        if #availableAddresses > 0 then
            local addressIndex = availableAddresses[math.random(#availableAddresses)]
            usedAddresses[_source] = addressIndex
            local address = Config.Addresses[addressIndex]
            spawnPlayerAndCar(_source, address)
        else
            TriggerClientEvent("chat:addMessage", _source, {args = {"System", "No available addresses."}})
        end
    end
end)

AddEventHandler("playerDropped", function(reason)
    local _source = source
    if usedAddresses[_source] then
        usedAddresses[_source] = nil
    end
end)

function isAddressUsed(addressIndex)
    for _, index in pairs(usedAddresses) do
        if index == addressIndex then
            return true
        end
    end
    return false
end

function spawnPlayerAndCar(playerId, address)
    -- Select a random vehicle and ped
    local vehicleModel = Config.Vehicles[math.random(#Config.Vehicles)]
    local pedModel = Config.Peds[math.random(#Config.Peds)]

    -- Select a random name and surname
    local firstName = Config.Names[math.random(#Config.Names)]
    local lastName = Config.Surnames[math.random(#Config.Surnames)]
    local fullName = firstName .. " " .. lastName

    -- Spawn the player
    TriggerClientEvent("spawnPlayerAtAddress", playerId, vector3(address.playerPos.x, address.playerPos.y, address.playerPos.z), address.playerPos.w, pedModel, vector3(address.playerPos.x, address.playerPos.y, address.playerPos.z))

    -- Spawn the vehicle
    TriggerClientEvent("spawnVehicleAtAddress", playerId, address.carPos, vehicleModel, fullName, address.name)
end

RegisterNetEvent("vehicleDataFromClient")
AddEventHandler("vehicleDataFromClient", function(vehicleModel, primaryColor, licensePlate, playerName, playerAddress)
    local playerId = source
    -- Display the player's name, address, and vehicle data
    TriggerClientEvent("displayPlayerName", playerId, playerName)
    TriggerClientEvent("displayVehicleData", playerId, vehicleModel, primaryColor, licensePlate)
    TriggerClientEvent("displayPlayerAddress", playerId, playerAddress)

    -- Notify the player
    TriggerClientEvent("chat:addMessage", playerId, {args = {"System", "You have been spawned at " .. playerAddress}})
end)
