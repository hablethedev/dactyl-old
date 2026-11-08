# By default, runs as @a tag=!dactyl.ignore

## Movement checks

scoreboard players add @s dactyl.check.movement.flight_basic.timer 1
scoreboard players add @s dactyl.check.movement.speed_basic.timer 1

execute if score @s dactyl.check.movement.flight_basic.timer >= $interval dactyl.check.movement.flight_basic.timer run function dactyl:_checks/movement/flight_basic
execute if score @s dactyl.check.movement.speed_basic.timer >= $interval dactyl.check.movement.speed_basic.timer run function dactyl:_checks/movement/speed_basic

execute if score @s dactyl.check.movement.violations >= $threshold dactyl.check.movement.violations \
    if score $adm_threshold_notifications dactyl.variables matches 1 run function dactyl:_checks/movement/alert_threshold