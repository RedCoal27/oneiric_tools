execute store result score #temp3 oneiric_var run data get block -29999999 4 74063 Text1

data modify block -29999999 4 74063 Text1 set value '[{"nbt":"Text1","block":"-29999999 4 74063","interpret":true},{"nbt":"temp.value[0].text","storage":"oneiric_tools:string","interpret":true}]'

execute store result score #temp2 oneiric_var run data get block -29999999 4 74063 Text1

scoreboard players operation #temp2 oneiric_var -= #temp3 oneiric_var
scoreboard players remove #temp2 oneiric_var 12
