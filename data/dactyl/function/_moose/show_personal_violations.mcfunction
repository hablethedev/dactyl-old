scoreboard players set @s dactyl.check.violations 0
scoreboard players operation @s dactyl.check.violations += @s dactyl.check.movement.violations
playerlist @s footer set <score:@s:dactyl.check.violations> violations
