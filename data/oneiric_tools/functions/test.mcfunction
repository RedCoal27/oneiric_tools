
# data modify storage oneiric_tools:string input append value {type:"concatenation",value:[{text:"kill @a[name="},{text:'{"nbt":"SelectedItem.tag.pages[0]","entity":"@p"}',interpret:1},{text:"]"}],callback:"function oneiric_tools:test"}
tellraw @a {"storage":"oneiric_tools:string","nbt":"output"}

data modify block -30000000 4 74063 Command set from storage oneiric_tools:string output
data modify block -30000000 4 74063 auto set value 1b
data modify block -30000000 4 74063 auto set value 0b