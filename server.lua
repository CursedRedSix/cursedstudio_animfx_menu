local Config = {}
Config.framework = "custom" -- Options: "vorp", "redemrp", "qbr", "custom"

RegisterNetEvent('animfx:checkPermission')
AddEventHandler('animfx:checkPermission', function()
    local src = source

    if Config.framework == "vorp" and IsPlayerAceAllowed(src, "vorp.animfx") then
        TriggerClientEvent('animfx:permissionGranted', src)
        return
    end

    if Config.framework == "redemrp" and IsPlayerAceAllowed(src, "redemrp.animfx") then
        TriggerClientEvent('animfx:permissionGranted', src)
        return
    end

    if Config.framework == "qbr" and IsPlayerAceAllowed(src, "qbr.animfx") then
        TriggerClientEvent('animfx:permissionGranted', src)
        return
    end

    if Config.framework == "custom" and IsPlayerAceAllowed(src, "animfx.access") then
        TriggerClientEvent('animfx:permissionGranted', src)
        return
    end

    TriggerClientEvent('animfx:permissionDenied', src)
end)
