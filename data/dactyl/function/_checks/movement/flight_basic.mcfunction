# If we're suspended, then we're fine
execute at @s if predicate dactyl:advanced/suspended_in_air run return 1

scoreboard players set @s dactyl.check.movement.flight_basic.timer 0

# If the player doesn't have a previous Y, set it...
execute unless score @s dactyl.check.movement.flight_basic.prev_y matches -2147483648..2147483647 \
    store result score @s dactyl.check.movement.flight_basic.prev_y run data get entity @s Pos[1] 100

# ..then set the next Y...
execute store result score @s dactyl.check.movement.flight_basic.cur_y run data get entity @s Pos[1] 100

# ...subtract the two to get the difference...
scoreboard players operation @s dactyl.check.movement.flight_basic.variables = @s dactyl.check.movement.flight_basic.prev_y
scoreboard players operation @s dactyl.check.movement.flight_basic.variables -= @s dactyl.check.movement.flight_basic.cur_y

# ...fix negatives...
execute if score @s dactyl.check.movement.flight_basic.variables matches ..-1 run \
    scoreboard players operation @s dactyl.check.movement.flight_basic.variables *= $MINUS_ONE dactyl.constants

# ...then check if we're in the threshold...
scoreboard players operation @s dactyl.check.movement.flight_basic.variables < $threshold dactyl.check.movement.flight_basic.variables

# ...and, if we're not, then flag.
execute if score @s dactyl.check.movement.flight_basic.variables matches 0 run scoreboard players add @s dactyl.check.movement.violations 1

# Prep for our next check, replace the previous Y.
scoreboard players operation @s dactyl.check.movement.flight_basic.prev_y = @s dactyl.check.movement.flight_basic.cur_y

# Return guard the alert, then run the alert
execute if score $adm_all_violation_notifications dactyl.variables matches 0 run return 1

data modify storage hablethedev:dactyl Alert.ViolationType set value "FlightBasic"
function dactyl:_helper/get_player_username
data modify storage hablethedev:dactyl Alert.PlayerName set from storage hablethedev:dactyl PlayerName
execute if score @s dactyl.check.movement.flight_basic.variables matches 0 run function dactyl:_admin/alert_violation with storage hablethedev:dactyl Alert
