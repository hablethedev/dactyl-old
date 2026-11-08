scoreboard players add $nonhuman dactyl.check.movement.flight_basic.timer 1

execute as @e[type=#boat] if score $nonhuman dactyl.check.movement.flight_basic.timer >= $interval dactyl.check.movement.flight_basic.timer run function dactyl:_checks/nonhuman/boat/flight_basic