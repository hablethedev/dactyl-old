tellraw @a {"color": "#9b9be3", "text": "Loaded!"}

# You can comment this out
title @a times 0 0.02 0

# Constants
scoreboard objectives add dactyl.constants dummy
scoreboard players set $MINUS_ONE dactyl.constants -1

# Scoreboards that store amount of violations under a category
scoreboard objectives add dactyl.check.violations dummy "Violations"
scoreboard objectives add dactyl.check.movement.violations dummy

# Scoreboards that specific checks use
# - Flight
scoreboard objectives add dactyl.check.movement.flight_basic.prev_y dummy
scoreboard objectives add dactyl.check.movement.flight_basic.cur_y dummy
scoreboard objectives add dactyl.check.movement.flight_basic.timer dummy
scoreboard objectives add dactyl.check.movement.flight_basic.variables dummy

# - Speed
scoreboard objectives add dactyl.check.movement.speed_basic.prev_x dummy
scoreboard objectives add dactyl.check.movement.speed_basic.prev_y dummy
scoreboard objectives add dactyl.check.movement.speed_basic.prev_z dummy
scoreboard objectives add dactyl.check.movement.speed_basic.timer dummy
scoreboard objectives add dactyl.check.movement.speed_basic.variables dummy

# - Moose Mode
scoreboard objectives add dactyl.moose.variables dummy

# - Configuration
scoreboard objectives add dactyl.variables dummy

# Set values according to config
function dactyl:__configuration/general
function dactyl:__configuration/movement

# If we are on Moose, reset the headers and footers
execute if score $enabled dactyl.moose.variables matches 1 run playerlist @a footer clear
execute if score $enabled dactyl.moose.variables matches 1 run playerlist @a header clear

# Playername
execute in minecraft:overworld run forceload add 0 0
execute in minecraft:overworld run setblock 0 200 0 minecraft:yellow_shulker_box