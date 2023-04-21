#34 83 75 73 78 34 32 58 32 123 10 32 32 32 32 32 32 34 117 114 108 34 32 58 32 34 32
function oneiric_tools:skull_data/skin_url/next_search
scoreboard players set #success oneiric_var 0
execute if score #matches oneiric_var matches 26 store success score #success oneiric_var if score #byte oneiric_var matches 32
execute if score #matches oneiric_var matches 25 store success score #success oneiric_var if score #byte oneiric_var matches 34
execute if score #matches oneiric_var matches 24 store success score #success oneiric_var if score #byte oneiric_var matches 32
execute if score #matches oneiric_var matches 23 store success score #success oneiric_var if score #byte oneiric_var matches 58
execute if score #matches oneiric_var matches 22 store success score #success oneiric_var if score #byte oneiric_var matches 32
execute if score #matches oneiric_var matches 21 store success score #success oneiric_var if score #byte oneiric_var matches 34
execute if score #matches oneiric_var matches 20 store success score #success oneiric_var if score #byte oneiric_var matches 108
execute if score #matches oneiric_var matches 19 store success score #success oneiric_var if score #byte oneiric_var matches 114
execute if score #matches oneiric_var matches 18 store success score #success oneiric_var if score #byte oneiric_var matches 117
execute if score #matches oneiric_var matches 17 store success score #success oneiric_var if score #byte oneiric_var matches 34
execute if score #matches oneiric_var matches 11..16 store success score #success oneiric_var if score #byte oneiric_var matches 32
execute if score #matches oneiric_var matches 10 store success score #success oneiric_var if score #byte oneiric_var matches 10
execute if score #matches oneiric_var matches 9 store success score #success oneiric_var if score #byte oneiric_var matches 123
execute if score #matches oneiric_var matches 8 store success score #success oneiric_var if score #byte oneiric_var matches 32
execute if score #matches oneiric_var matches 7 store success score #success oneiric_var if score #byte oneiric_var matches 58
execute if score #matches oneiric_var matches 6 store success score #success oneiric_var if score #byte oneiric_var matches 32
execute if score #matches oneiric_var matches 5 store success score #success oneiric_var if score #byte oneiric_var matches 34
execute if score #matches oneiric_var matches 4 store success score #success oneiric_var if score #byte oneiric_var matches 78
execute if score #matches oneiric_var matches 3 store success score #success oneiric_var if score #byte oneiric_var matches 73
execute if score #matches oneiric_var matches 2 store success score #success oneiric_var if score #byte oneiric_var matches 75
execute if score #matches oneiric_var matches 1 store success score #success oneiric_var if score #byte oneiric_var matches 83

execute if score #success oneiric_var matches 0 run scoreboard players set #matches oneiric_var 0

execute if score #matches oneiric_var matches 0 store success score #success oneiric_var if score #byte oneiric_var matches 34

execute if score #success oneiric_var matches 1 run scoreboard players add #matches oneiric_var 1

execute if data storage oneiric_tools:head data.out[0] unless score #matches oneiric_var matches 26.. run function oneiric_tools:skull_data/skin_url/recursive_search 