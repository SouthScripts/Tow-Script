-- Client-side script

local isTowing = false
local towedVehicle = nil

RegisterCommand("tow", function()
    local playerPed = PlayerPedId()
    local vehicle = GetVehiclePedIsIn(playerPed, true)
    
    -- Check if player is in a tow truck
    if not IsVehicleTowTruck(vehicle) then
        TriggerEvent("chat:addMessage", {
            args = { "^1You need to be in a tow truck to use this command." }
        })
        return
    end

    local towPos = GetEntityCoords(vehicle)
    local targetVehicle = GetClosestVehicle(towPos.x, towPos.y, towPos.z, 10.0, 0, 70)

    -- Check if we have a target vehicle
    if targetVehicle == 0 then
        TriggerEvent("chat:addMessage", {
            args = { "^1No vehicle nearby to tow." }
        })
        return
    end

    if not isTowing then
        AttachVehicleToTowTruck(vehicle, targetVehicle)
    else
        DetachVehicleFromTowTruck(vehicle, targetVehicle)
    end
end, false)

function IsVehicleTowTruck(vehicle)
    local model = GetEntityModel(vehicle)
    return model == GetHashKey("flatbed") or model == GetHashKey("towtruck") or model == GetHashKey("towtruck2")
end

function AttachVehicleToTowTruck(towTruck, vehicle)
    local offsetX = 0.0
    local offsetY = -1.5
    local offsetZ = 1.0

    AttachEntityToEntity(vehicle, towTruck, 20, offsetX, offsetY, offsetZ, 0.0, 0.0, 0.0, false, false, false, true, 20, true)
    TriggerEvent("chat:addMessage", {
        args = { "^2Vehicle attached to tow truck." }
    })
    isTowing = true
    towedVehicle = vehicle
end

function DetachVehicleFromTowTruck(towTruck, vehicle)
    DetachEntity(vehicle, true, true)
    TriggerEvent("chat:addMessage", {
        args = { "^3Vehicle detached from tow truck." }
    })
    isTowing = false
    towedVehicle = nil
end