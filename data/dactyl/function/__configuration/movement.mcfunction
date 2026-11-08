# How many movement violations should a player incur before an action is taken?
scoreboard players set $threshold dactyl.check.movement.violations 15

## FLIGHT CHECKS ##

# At what interval (in ticks) should we check for a flight violation? Lower values will
# check more often, but will incur a higher performance drop. Lower tick values combined
# with certain thresholds also create higher false positives.
scoreboard players set $interval dactyl.check.movement.flight_basic.timer 3

# How far on the Y should a player move (over $interval ticks) for the flight_basic check to
# consider them legitimate? The Y is x100, so if you were at block Y 56, and moved to
# block Y 57, then the difference would be 100.
scoreboard players set $threshold dactyl.check.movement.flight_basic.variables 300

### BOATFLY ###

# How much Y movement is ALLOWED before becoming illegitimate? Again, x100.
# This one is for when you're normally boating around.
scoreboard players set $boat_threshold dactyl.check.movement.flight_basic.variables 30

# How far on Y does a player need to move before they become legitimate?
# This one is only for when a boat is falling.
scoreboard players set $boat_fall_threshold dactyl.check.movement.flight_basic.variables 60

## SPEED CHECKS ##

# Again, at what interval (in ticks) should we check for a speed violation? Lower values = less performant
# The threshold should also be changed with this.
scoreboard players set $interval dactyl.check.movement.speed_basic.timer 3

# What threshold of distance (squared!!!!) should be the limit to get flagged?
# Generally 1b/t is a good default, but do **not** forget to square it. Additionally, *1000 as this allowed for higher accuracy
# I don't even know how to calculate this any more, but this is a good default.
scoreboard players set $threshold dactyl.check.movement.speed_basic.variables 5000000

# TODO: SPEED PLAUSIBLE DENIABILITY