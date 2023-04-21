execute store result score #temp oneiric_var run data get storage oneiric_tools:string temp.value[0].interpret 


execute if score #temp oneiric_var matches 0 run function oneiric_tools:string/parsing/internal/read_string


execute if score #temp oneiric_var matches 1 run function oneiric_tools:string/parsing/internal/read_interpret

scoreboard players operation #length oneiric_var += #temp2 oneiric_var


data remove storage oneiric_tools:string temp.value[0]
execute if data storage oneiric_tools:string temp.value[0] run function oneiric_tools:string/parsing/internal/read_value