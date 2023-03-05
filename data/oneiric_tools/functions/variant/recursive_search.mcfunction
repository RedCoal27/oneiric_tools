#115 108 105 109
function oneiric_tools:common/next_search_clear
scoreboard players set #success oneiric_var 0
execute if score #matches oneiric_var matches 3 store success score #success oneiric_var if score #byte oneiric_var matches 109
execute if score #matches oneiric_var matches 2 store success score #success oneiric_var if score #byte oneiric_var matches 105
execute if score #matches oneiric_var matches 1 store success score #success oneiric_var if score #byte oneiric_var matches 108

execute if score #success oneiric_var matches 0 run scoreboard players set #matches oneiric_var 0

execute if score #matches oneiric_var matches 0 store success score #success oneiric_var if score #byte oneiric_var matches 115

execute if score #success oneiric_var matches 1 run scoreboard players add #matches oneiric_var 1

execute if data storage oneiric_tools:head data.out[3] unless score #matches oneiric_var matches 3.. run function oneiric_tools:variant/recursive_search