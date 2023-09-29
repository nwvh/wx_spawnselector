local opt = {
    {
        title = wx.LastLocation.Title,
        icon = wx.LastLocation.Icon,
        onSelect = function ()
            SetEntityCoords(PlayerPedId(),GetEntityCoords(PlayerPedId()))
            SwitchInPlayer(PlayerPedId())
        end
    }
}

function CanChooseSpawn(pos)
    local badlocations = {
        [vector3(0,0,0)] = true,
        [vector4(0,0,0,0)] = true,
    }
    if badlocations[pos] then
        return false
    end
    return true
end

for k,v in pairs(wx.Locations) do
    table.insert(opt,
        {
            title = k,
            icon = v.Icon,
            description = v.Description,
            disabled = not CanChooseSpawn(v.Spawn),
            onSelect = function ()
                SetEntityCoords(PlayerPedId(),v.Spawn)
                SwitchInPlayer(PlayerPedId())
            end
        }
    )
end

lib.registerContext({
    id = 'spawnselector',
    title = 'Select your spawn',
    canClose = false,
    options = opt
})

exports('chooseSpawn',function ()
    SwitchOutPlayer(PlayerPedId(), 0, 1)
    lib.showContext('spawnselector')
end)

if wx.Debug then
    RegisterCommand('choose',function ()
        exports[GetCurrentResourceName()]:chooseSpawn()
    end,false)
end
