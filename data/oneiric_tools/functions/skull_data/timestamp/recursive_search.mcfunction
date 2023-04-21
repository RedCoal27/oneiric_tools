#34 116 105 109 101 115 116 97 109 112 34 32 58 32
function oneiric_tools:common/next_search_clear
scoreboard players set #success oneiric_var 0
execute if score #matches oneiric_var matches 13 store success score #success oneiric_var if score #byte oneiric_var matches 32
execute if score #matches oneiric_var matches 12 store success score #success oneiric_var if score #byte oneiric_var matches 58
execute if score #matches oneiric_var matches 11 store success score #success oneiric_var if score #byte oneiric_var matches 32
execute if score #matches oneiric_var matches 10 store success score #success oneiric_var if score #byte oneiric_var matches 34
execute if score #matches oneiric_var matches 9 store success score #success oneiric_var if score #byte oneiric_var matches 112
execute if score #matches oneiric_var matches 8 store success score #success oneiric_var if score #byte oneiric_var matches 109
execute if score #matches oneiric_var matches 7 store success score #success oneiric_var if score #byte oneiric_var matches 97
execute if score #matches oneiric_var matches 6 store success score #success oneiric_var if score #byte oneiric_var matches 116
execute if score #matches oneiric_var matches 5 store success score #success oneiric_var if score #byte oneiric_var matches 115
execute if score #matches oneiric_var matches 4 store success score #success oneiric_var if score #byte oneiric_var matches 101
execute if score #matches oneiric_var matches 3 store success score #success oneiric_var if score #byte oneiric_var matches 109
execute if score #matches oneiric_var matches 2 store success score #success oneiric_var if score #byte oneiric_var matches 105
execute if score #matches oneiric_var matches 1 store success score #success oneiric_var if score #byte oneiric_var matches 116

execute if score #success oneiric_var matches 0 run scoreboard players set #matches oneiric_var 0

execute if score #matches oneiric_var matches 0 store success score #success oneiric_var if score #byte oneiric_var matches 34

execute if score #success oneiric_var matches 1 run scoreboard players add #matches oneiric_var 1

execute if data storage oneiric_tools:head data.out[0] unless score #matches oneiric_var matches 14.. run function oneiric_tools:skull_data/timestamp/recursive_search