data modify storage oneiric_tools:head temp set from storage oneiric_tools:head data.out 
function oneiric_tools:variant/recursive_search
data modify storage oneiric_tools:head data.out set from storage oneiric_tools:head temp
data remove storage oneiric_tools:head temp
execute store result score variant oneiric_var if score #matches oneiric_var matches 3..