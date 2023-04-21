
# data modify storage oneiric_tools:string input append value {type:"concatenation",value:[{text:"le score a une valeur de "},{text:'{"score":{"objective":"oneiric_var","name":"test"}}',interpret:1b}],callback:"function oneiric_tools:test"}
tellraw _RedCoal_ {"storage":"oneiric_tools:string","nbt":"output"}

data modify block -17 -60 3 Command set from storage oneiric_tools:string output
setblock -17 -59 3 minecraft:air
setblock -17 -59 3 minecraft:redstone_block