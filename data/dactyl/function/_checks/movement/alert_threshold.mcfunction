say Hacking!

data modify storage hablethedev:dactyl Alert.ViolationType set value "MovementViolations"
function dactyl:_helper/get_player_username
data modify storage hablethedev:dactyl Alert.PlayerName set from storage hablethedev:dactyl PlayerName
function dactyl:_admin/threshold_violation with storage hablethedev:dactyl Alert

scoreboard players set @s dactyl.check.movement.violations 0