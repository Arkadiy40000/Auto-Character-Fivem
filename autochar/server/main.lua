local playerAddresses = {} -- Track which address each player is using

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

    -- Save the player's address in the tracking table
    playerAddresses[playerId] = chosenAddress.name

    -- Send the chosen address to the client for the player to spawn there
    TriggerClientEvent('spawnPlayer', playerId, chosenAddress)
end)

-- Handles freeing an address when the player requests it
RegisterNetEvent('freeAddress')
AddEventHandler('freeAddress', function(addressName)
    local playerId = source

    -- Find and free the address
    for _, address in ipairs(Config.Addresses) do
        if address.name == addressName then
            address.isBusy = false -- Free up the address
            break
        end
    end

    -- Remove the player from the tracking table
    playerAddresses[playerId] = nil
end)

-- Automatically free the player's address when they leave the server
AddEventHandler('playerDropped', function(reason)
    local playerId = source
    local addressName = playerAddresses[playerId]

    -- If the player had an assigned address, free it
    if addressName then
        for _, address in ipairs(Config.Addresses) do
            if address.name == addressName then
                address.isBusy = false -- Free the address
                break
            end
        end

        -- Remove the player from the tracking table
        playerAddresses[playerId] = nil
    end
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
