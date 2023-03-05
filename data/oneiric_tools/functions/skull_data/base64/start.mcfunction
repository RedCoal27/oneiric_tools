
function oneiric_tools:skull_data/base64/recursive
function oneiric_tools:skull_data/base64/to_byte/loop

data modify storage oneiric_tools:head data.out set from storage oneiric_tools:head Base64.byte
#callback 
execute if data storage oneiric_tools:head CallBack run function oneiric_tools:skull_data/base64/callback