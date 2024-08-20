-- Handles the /spawn command and assigns an available address to the player
RegisterCommand('spawn', function(source)
    local playerId = source
    local chosenAddress = nil

    -- Find an available address
    for _, address in ipairs(Config.Addresses) do
        if not address.isBusy then
            chosenAddress = address
            address.isBusy = true -- Mark the address as busy for everyone
            break
        end
    end

    -- If no addresses are available, notify the player
    if not chosenAddress then
        TriggerClientEvent('chat:addMessage', playerId, { args = { '^1No available addresses!' }})
        return
    end

    -- Send the chosen address to the client for the player to spawn there
    TriggerClientEvent('spawnPlayer', playerId, chosenAddress)
end)

-- Handles the /addresses debug command
RegisterCommand('addresses', function(source)
    local playerId = source

    -- Loop through all addresses and send their status to the player
    for _, address in ipairs(Config.Addresses) do
        local status = address.isBusy and "Busy" or "Available"
        TriggerClientEvent('chat:addMessage', playerId, {
            args = { string.format("Address: %s, Status: %s", address.name, status) }
        })
    end
end)

-- Handles freeing an address when the player requests it
RegisterNetEvent('freeAddress')
AddEventHandler('freeAddress', function(addressName)
    for _, address in ipairs(Config.Addresses) do
        if address.name == addressName then
            address.isBusy = false -- Free up the address
            break
        end
    end
end)
