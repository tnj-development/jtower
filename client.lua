local ragdoll = false

CreateThread(function()
    while true do
        local sleep = 1500
        local ped = PlayerPedId()
        local coords = GetEntityCoords(ped)
        local fuckoff = #(coords - vector3(-202.19, -338.89, 537.38))
        local fuckoff2 = #(coords - vector3(-151.2, -265.0, 461.89))
        local fuckoff3 = #(coords - vector3(-203.17, -334.51, 536.95))
        local fuckoff4 = #(coords - vector3(-162.43, -261.49, 457.14))
        if fuckoff < 20 or fuckoff3 < 20 then
            sleep = 5
            if fuckoff < 1 or fuckoff3 < 1 then
                ragdoll = true
            end
        end
        if fuckoff2 < 1 or fuckoff4 < 1 then
            sleep = 5
            if fuckoff2 < 1 or fuckoff4 < 1 then
                Wait(100)
                if ragdoll then
                    SetPlayerInvincible(PlayerId(), false)
                end
                ragdoll = false
            end
        end
        if ragdoll then
            sleep = 5
            SetPlayerInvincible(PlayerId(), true)
            SetPedToRagdoll(ped, 1000, 1000, 0, 0, 0, 0)
        end
        Wait(sleep)
    end
end)