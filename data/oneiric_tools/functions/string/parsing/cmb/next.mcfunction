execute unless data storage oneiric_tools:string input[0] run function oneiric_tools:string/parsing/cmb/end

# return 

data modify storage oneiric_tools:string temp set from storage oneiric_tools:string input[0]
data remove storage oneiric_tools:string input[0]

execute if data storage oneiric_tools:string temp{type:"concatenation"} run function oneiric_tools:string/parsing/type/concatenation

data modify block -29999998 3 74062 Command set value ""

execute unless data storage oneiric_tools:string temp.callback run data modify block -29999998 3 74061 Command set value ""

execute if data storage oneiric_tools:string temp.callback run data modify block -29999998 3 74061 Command set from storage oneiric_tools:string temp.callback