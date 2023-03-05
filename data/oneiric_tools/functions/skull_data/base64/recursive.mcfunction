data modify storage oneiric_tools:head Base64.var set string storage oneiric_tools:head Base64.data 0 1
data modify storage oneiric_tools:head Base64.data set string storage oneiric_tools:head Base64.data 1
function oneiric_tools:skull_data/base64/convert
execute unless data storage oneiric_tools:head Base64{data:""} unless data storage oneiric_tools:head Base64{data:"="} run function oneiric_tools:skull_data/base64/recursive