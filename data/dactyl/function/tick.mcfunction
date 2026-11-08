tag @a[tag=!dactyl.ignore,tag=dactyl.bypass] add dactyl.ignore
tag @a[tag=!dactyl.ignore,gamemode=creative] add dactyl.ignore
tag @a[tag=!dactyl.ignore,gamemode=spectator] add dactyl.ignore
tag @a[tag=dactyl.ignore,tag=!dactyl.bypass,gamemode=!creative,gamemode=!spectator] remove dactyl.ignore

execute as @a if predicate dactyl:basic/falling run say fall

execute as @a[tag=!dactyl.ignore] run function dactyl:_checks/tick

function dactyl:_checks/nonhuman/tick

#execute as @a if predicate dactyl:advanced/using_elytra run say elytra

execute if score $enabled dactyl.moose.variables matches 1 run function dactyl:_moose/tick

scoreboard objectives setdisplay below_name dactyl.check.violations