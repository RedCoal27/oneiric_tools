
# data modify storage oneiric_tools:string input append value {type:"concatenation",value:[{text:"kill @a[name="},{text:'{"nbt":"SelectedItem.tag.pages[0]","entity":"@p"}',interpret:1},{text:"]"}],callback:"function oneiric_tools:run_command"}
tellraw @a {"storage":"oneiric_tools:string","nbt":"output"}

data modify block -29999998 3 74062 Command set from storage oneiric_tools:string output