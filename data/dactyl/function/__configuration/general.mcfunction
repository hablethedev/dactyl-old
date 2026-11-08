### General config
# Unless specified otherwise, this is the key:
# 0 - not enabled, 1 - enabled

## Module Toggles ## 

## Admin Toggles ##
# You can change administration related settings here, such
# as getting notifications for violations.

# Show every single violation in chat as a notification
# to players with tag dactyl.admin?
scoreboard players set $adm_all_violation_notifications dactyl.variables 0

# Just show when violation count reaches threshold?
scoreboard players set $adm_threshold_notifications dactyl.variables 1

## Legitimoose Toggles ##
# If you are on the server legitimoose.com, you can use
# these toggles to change some Moose-related behavior.

# Moose features enabled?
scoreboard players set $enabled dactyl.moose.variables 1

# 0 - no rank, 1 - FM, 2 - FM^2
scoreboard players set $rank dactyl.moose.variables 1

# Give these players the dactyl.admin tag
# 1 - is_admin, 2 - is_dev, 3 - is_coowner, 0 - don't give the tag automatically
scoreboard players set $admin_auto_tag dactyl.moose.variables 0

# Show player's current violation count in the playerlist (requires /playerlist)
scoreboard players set $show_personal_violations dactyl.moose.variables 1

# Show Dactyl header in playerlist
scoreboard players set $show_dactyl_header dactyl.moose.variables 1