# data modify storage oneiric_tools:string input set value [{type:"concatenation","value1":"abc",value2:"edf",callback:"say hello"}]
setblock -14 -60 4 minecraft:chain_command_block[conditional=false,facing=south]{Command:"enchant 0-0-0-0-0 minecraft:aqua_affinity",CustomName:'{"text":"@"}',SuccessCount:0,TrackOutput:1b,UpdateLastExecution:0b,auto:1b,conditionMet:1b,powered:0b}
say start

summon minecraft:armor_stand ~ ~ ~ {UUID:[I;0,0,0,0],CustomName:'{"text":""}'}
summon minecraft:armor_stand ~ ~ ~ {UUID:[I;0,0,0,1],CustomName:'{"text":""}'}
