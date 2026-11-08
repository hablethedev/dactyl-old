# Gets the distance between the point set with @s prev_x/y/z and the current entity position.
# Outputs to @s on the speed_basic.variables.


# get entity position...
execute store result score $entity_x dactyl.check.movement.speed_basic.variables run data get entity @s Pos[0] 1000
#execute store result score $entity_y dactyl.check.movement.speed_basic.variables run data get entity @s Pos[1] 1000
execute store result score $entity_z dactyl.check.movement.speed_basic.variables run data get entity @s Pos[2] 1000

# ...diff them...
scoreboard players operation @s dactyl.check.movement.speed_basic.prev_x -= $entity_x dactyl.check.movement.speed_basic.variables
##scoreboard players operation @s dactyl.check.movement.speed_basic.prev_y -= $entity_y dactyl.check.movement.speed_basic.variables
scoreboard players operation @s dactyl.check.movement.speed_basic.prev_z -= $entity_z dactyl.check.movement.speed_basic.variables

# ...square our @s...
scoreboard players operation @s dactyl.check.movement.speed_basic.prev_x *= @s dactyl.check.movement.speed_basic.prev_x
scoreboard players operation @s dactyl.check.movement.speed_basic.prev_y *= @s dactyl.check.movement.speed_basic.prev_y
scoreboard players operation @s dactyl.check.movement.speed_basic.prev_z *= @s dactyl.check.movement.speed_basic.prev_z

# ...then add them!
#scoreboard players operation @s dactyl.check.movement.speed_basic.prev_x += @s dactyl.check.movement.speed_basic.prev_y
scoreboard players operation @s dactyl.check.movement.speed_basic.prev_x += @s dactyl.check.movement.speed_basic.prev_z

scoreboard players operation @s dactyl.check.movement.speed_basic.variables = @s dactyl.check.movement.speed_basic.prev_x