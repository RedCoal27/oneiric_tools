function oneiric_tools:skull_data/skin_url/next_search
execute unless score #byte oneiric_var matches 34 run data modify storage oneiric_tools:head skin_url append from storage oneiric_tools:head data.out[0]
execute unless score #byte oneiric_var matches 34 run function oneiric_tools:skull_data/skin_url/extract