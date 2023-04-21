execute store result score #length oneiric_var run data get storage oneiric_tools:string temp.value1 
scoreboard players operation #length oneiric_var /= 10 oneiric_var


function oneiric_tools:string/parsing/length_json

data modify block -14 -59 2 Text1 set value '[{"nbt":"temp.value1","storage":"oneiric_tools:string"},{"nbt":"temp.value2","storage":"oneiric_tools:string"}]'
data modify entity 0-0-0-0-0 CustomName set from block -14 -59 2 Text1