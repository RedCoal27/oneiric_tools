scoreboard objectives add RTC dummy
scoreboard players set #10 RTC 10

function oneiric_tools:timestamp/constant

scoreboard objectives add oneiric_var dummy


forceload add -30000000 74048

#help me command block
setblock -30000000 3 74063 repeating_command_block{auto:1b,Command:"help me"}

#callback
setblock -30000000 4 74063 command_block{auto:0b,Command:""}

#yellow shulker for random things, including some manipulation if needed
setblock -30000000 3 74062 yellow_shulker_box

item replace block -30000000 3 74062 container.0 with air