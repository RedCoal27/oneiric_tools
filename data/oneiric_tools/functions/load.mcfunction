scoreboard objectives add RTC dummy
scoreboard players set #10 oneiric_var 10

function oneiric_tools:skull_data/timestamp/constant

scoreboard objectives add oneiric_var dummy


forceload add -30000000 74048

fill -30000000 3 74063 -29999998 4 74059 air
#help me command block
setblock -30000000 3 74063 repeating_command_block{auto:1b,Command:"help me"}

#callback
setblock -30000000 4 74063 command_block{auto:0b,Command:""}

#yellow shulker for random things, including some manipulation if needed
setblock -30000000 3 74062 yellow_shulker_box

item replace block -30000000 3 74062 container.0 with air


#string manupulation
setblock -29999999 3 74063 minecraft:repeating_command_block[conditional=false,facing=north]{Command:"/execute if data storage oneiric_tools:string input[0] run function oneiric_tools:string/parsing/cmb/start",TrackOutput:1b,UpdateLastExecution:0b,auto:1b,conditionMet:1b,powered:0b}

setblock -29999999 3 74062 minecraft:chain_command_block[conditional=true,facing=north]{Command:"function oneiric_tools:string/parsing/cmb/next",SuccessCount:12,TrackOutput:1b,UpdateLastExecution:0b,auto:1b,conditionMet:1b,powered:0b}

setblock -29999999 3 74061 minecraft:command_block[conditional=false,facing=south]{Command:"",TrackOutput:1b,UpdateLastExecution:1b,auto:0b,conditionMet:0b,powered:0b}

setblock -29999999 3 74060 minecraft:chain_command_block[conditional=false,facing=north]{Command:"function oneiric_tools:string/parsing/cmb/length_json",TrackOutput:1b,UpdateLastExecution:0b,auto:1b,conditionMet:1b,powered:0b}

setblock -29999999 3 74059 minecraft:chain_command_block[conditional=false,facing=east]{Command:"enchant 4eeb080d-c17f-4b5a-9890-8191648e267e minecraft:aqua_affinity",TrackOutput:1b,UpdateLastExecution:0b,auto:1b,conditionMet:1b,powered:0b}


setblock -29999998 3 74059 minecraft:chain_command_block[conditional=false,facing=south]{Command:"function oneiric_tools:string/parsing/cmb/get_length",TrackOutput:1b,UpdateLastExecution:0b,auto:1b,conditionMet:1b,powered:0b}

setblock -29999998 3 74060 minecraft:chain_command_block[conditional=false,facing=south]{Command:"",TrackOutput:1b,UpdateLastExecution:0b,auto:1b,conditionMet:1b,powered:0b}

setblock -29999998 3 74061 minecraft:chain_command_block[conditional=false,facing=south]{Command:"",TrackOutput:1b,UpdateLastExecution:0b,auto:1b,conditionMet:1b,powered:0b}

setblock -29999998 3 74062 minecraft:chain_command_block[conditional=false,facing=west]{Command:"",TrackOutput:1b,UpdateLastExecution:0b,auto:1b,conditionMet:1b,powered:0b}


setblock -29999999 4 74063 oak_sign


gamerule commandBlockOutput false