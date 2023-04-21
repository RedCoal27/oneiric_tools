


scoreboard players set #length oneiric_var 0
data modify block -14 -59 2 Text1 set value '[{"text":""},{"text":""}]'


function oneiric_tools:string/parsing/internal/read_value


data modify entity 0-0-0-0-0 CustomName set from block -14 -59 2 Text1

function oneiric_tools:string/parsing/internal/length_json

