echo "# PoliceStation_TP" >> README.md
git init
git add README.md
git commit -m "first commit"
git branch -M main
git remote add origin https://github.com/iSunn-cd/PoliceStation_TP.git
git push -u origin main

## Put [policestationtp] in "resources"

## Desc : This script allows you to teleport to some police stations in the Los Santos map, with a cooldown.


## Server.cfg

 # PoliceStation TP
 
 ensure Vinewood
 ensure Vespucci
 ensure SandyShores
 ensure RockfordHills
 ensure PaletoBay
 ensure MissionRow
 ensure LaMesa
 ensure Davis

## iSunn-cd