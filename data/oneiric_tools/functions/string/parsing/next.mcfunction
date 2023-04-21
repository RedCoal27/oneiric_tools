execute unless data storage oneiric_tools:string input[0] run function oneiric_tools:string/parsing/end

# return 


data modify storage oneiric_tools:string temp set from storage oneiric_tools:string input[0]
data remove storage oneiric_tools:string input[0]

execute if data storage oneiric_tools:string temp{type:"concatenation"} run function oneiric_tools:string/parsing/type/concatenation
execute if data storage oneiric_tools:string temp{type:"string"} run function oneiric_tools:string/parsing/type/score_to_string


data modify block -15 -60 3 Command set from storage oneiric_tools:string temp.callback