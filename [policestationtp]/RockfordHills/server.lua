-- Définir les coordonnées du commissariat
local policeStationCoords = vector3(-561.2, -132.3, 38.0) -- Remplacez par les coordonnées souhaitées

-- Définir le cooldown (en secondes)
local cooldown = 3

-- Table pour stocker les timestamps du dernier usage de la commande
local lastUse = {}

RegisterCommand(string.lower("RockFordHills"), function(source)
    -- ...
  -- Vérifier si le joueur est un joueur réel (pas un bot)
  if GetPlayerPed(source) ~= 0 then
     -- Vérifier si le cooldown est terminé
     if lastUse[source] == nil or os.time() - lastUse[source] >= cooldown then
    -- Téléporter le joueur au commissariat
    TriggerClientEvent("policeStationTeleport", source, policeStationCoords)
    -- Afficher un message au joueur
    TriggerClientEvent("chat:addMessage", source, {args = {"You are teleported to the RockFordHills police station.",}, color = {0, 255, 0}})
    -- Mettre à jour le timestamp du dernier usage
    lastUse[source] = os.time()
    -- Afficher un message d'attente au joueur
      TriggerClientEvent("chat:addMessage", source, {args = {"You will be able to re-execute the command in 3 seconds", }, color = {255, 0, 0}})
else
end
end
end)

