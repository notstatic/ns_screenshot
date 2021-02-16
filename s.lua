local webhook = ''

TriggerEvent('es:addGroupCommand', 'shotplayer', "superadmin", function(source, args, user)
    if webhook ~= '' then
        if tonumber(args[1]) ~= nil then
            if GetPlayerName(args[1]) ~= nil then
                TriggerClientEvent('chatMessage', source, "SYSTEM ", {255, 0, 0}, "Otetaan kuvaa pelaajasta ^6"..GetPlayerName(args[1])..'^0 ID: ^6'.. args[1]..'^0')
                TriggerClientEvent('s_shotplayer:asdasfdds', args[1], webhook)
            else
                TriggerClientEvent('chatMessage', source, "SYSTEM ", {255, 0, 0}, "Pelaajaa "..args[1]..' ei löydetty...')
            end
        else
            TriggerClientEvent('chatMessage', source, "SYSTEM", {255, 0, 0}, "Onko Pelaajan id oikein?")
        end
    else
        TriggerClientEvent('chatMessage', source, "SYSTEM", {255, 0, 0}, "Onko webhook asetettu?")
    end
end)