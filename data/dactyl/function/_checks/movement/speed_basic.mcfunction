# When I wrote this code there was only one person on Earth that knew how it worked
# Everybody may as well be dead now

scoreboard players set @s dactyl.check.movement.speed_basic.timer 0

execute unless score @s dactyl.check.movement.speed_basic.prev_x matches -2147483648..2147483647 run \
    execute store result score @s dactyl.check.movement.speed_basic.prev_x run data get entity @s Pos[0] 1000
#execute unless score @s dactyl.check.movement.speed_basic.prev_y matches -2147483648..2147483647 run \
#    execute store result score @s dactyl.check.movement.speed_basic.prev_y run data get entity @s Pos[1] 1000
# Generally, Y fucks things up because of falling. So just XZ is fine and get_sq_distance has also been changed for this.
execute unless score @s dactyl.check.movement.speed_basic.prev_z matches -2147483648..2147483647 run \
    execute store result score @s dactyl.check.movement.speed_basic.prev_z run data get entity @s Pos[2] 1000

function dactyl:_helper/movement/speed/get_sq_distance

#tellraw @s {score:{name:"@s",objective:"dactyl.check.movement.speed_basic.variables"}}

execute store result score @s dactyl.check.movement.speed_basic.prev_x run data get entity @s Pos[0] 1000
#execute store result score @s dactyl.check.movement.speed_basic.prev_y run data get entity @s Pos[1] 1000
execute store result score @s dactyl.check.movement.speed_basic.prev_z run data get entity @s Pos[2] 1000

execute if score @s dactyl.check.movement.speed_basic.variables >= $threshold dactyl.check.movement.speed_basic.variables run scoreboard players add @s dactyl.check.movement.violations 2