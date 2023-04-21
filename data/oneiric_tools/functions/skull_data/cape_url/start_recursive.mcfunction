scoreboard players set #matches oneiric_var 0

function oneiric_tools:skull_data/cape_url/recursive_search

scoreboard players set #byte oneiric_var 0
data modify storage oneiric_tools:head cape_url set value []
execute if data storage oneiric_tools:head data.out[0] run function oneiric_tools:skull_data/cape_url/extract


