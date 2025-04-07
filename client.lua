local selectedEffect = nil
local menuEnabled = false

RegisterCommand("animfxmenu", function()
    menuEnabled = true
    SendNUIMessage({ type = "open", effects = animpostfxList })
    SetNuiFocus(true, true)
end)

RegisterNUICallback("close", function(data, cb)
    menuEnabled = false
    SetNuiFocus(false, false)
    SendNUIMessage({ type = "close" })
    cb("ok")
end)


print("[AnimFX Menu] CursedStudio resource started successfully.")
local selectedEffect = nil
local menuEnabled = false



RegisterNUICallback("select", function(data, cb)
    if selectedEffect == data.effect then
        AnimpostfxStop(data.effect) -- Toggle off if already selected
        selectedEffect = nil
    else
        if selectedEffect then
            AnimpostfxStop(selectedEffect)
        end
        selectedEffect = data.effect
        AnimpostfxPlay(selectedEffect)
    end
    cb("ok")
end)

RegisterNUICallback("play", function(data, cb)
    if selectedEffect then
        AnimpostfxPlay(selectedEffect)
    end
    cb("ok")
end)

RegisterNUICallback("stop", function(data, cb)
    if selectedEffect then
        AnimpostfxStop(selectedEffect)
    end
    cb("ok")
end)



Citizen.CreateThread(function()
    Citizen.Wait(1000) -- wait 1 second after resource starts
    SetNuiFocus(false, false)
end)