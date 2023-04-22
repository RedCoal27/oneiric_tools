execute store result score #temp oneiric_var run data get storage oneiric_tools:string temp.values[0].interpret 


execute if score #temp oneiric_var matches 0 run data modify block -29999999 4 74063 Text1 set value '[{"nbt":"Text1","block":"-29999999 4 74063","interpret":true},{"nbt":"temp.values[0].text","storage":"oneiric_tools:string"}]'


execute if score #temp oneiric_var matches 1 run data modify block -29999999 4 74063 Text1 set value '[{"nbt":"Text1","block":"-29999999 4 74063","interpret":true},{"nbt":"temp.values[0].text","storage":"oneiric_tools:string","interpret":true}]'
