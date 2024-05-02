local ESX = nil

if Config.Framework == 'esx' then
    ESX = exports["es_extended"]:getSharedObject()
end

RegisterCommand(Config.Command, function(source, args, rawCommand)
    local msg = table.concat(args, " ", 1)
    local isAllowed = false
    
    if Config.Framework == 'esx' then
        local xPlayer = ESX.GetPlayerFromId(source)
        local playerGroup = xPlayer.getGroup()
        isAllowed = Config.esxGroups[playerGroup] ~= nil
    end

    if isAllowed then
        TriggerClientEvent('xdxd_adminfelhivas:showMessage', -1, msg)
    else
        if Config.Framework == 'esx' then
            TriggerClientEvent('esx:showNotification', source, Config.esxNotify)
        end
    end
end, false)
