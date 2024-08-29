RegisterNetEvent('policeStationTeleport')
AddEventHandler('policeStationTeleport', function(coords)
  SetEntityCoords(GetPlayerPed(-1), coords)
  -- Afficher le message à l'écran en vert
end)