scoreboard players set #byte oneiric_var 0
function oneiric_tools:skull_data/base64/to_byte/next_bit
execute if score #bit oneiric_var matches 1 run scoreboard players add #byte oneiric_var 128

function oneiric_tools:skull_data/base64/to_byte/next_bit
execute if score #bit oneiric_var matches 1 run scoreboard players add #byte oneiric_var 64

function oneiric_tools:skull_data/base64/to_byte/next_bit
execute if score #bit oneiric_var matches 1 run scoreboard players add #byte oneiric_var 32

function oneiric_tools:skull_data/base64/to_byte/next_bit
execute if score #bit oneiric_var matches 1 run scoreboard players add #byte oneiric_var 16

function oneiric_tools:skull_data/base64/to_byte/next_bit
execute if score #bit oneiric_var matches 1 run scoreboard players add #byte oneiric_var 8

function oneiric_tools:skull_data/base64/to_byte/next_bit
execute if score #bit oneiric_var matches 1 run scoreboard players add #byte oneiric_var 4

function oneiric_tools:skull_data/base64/to_byte/next_bit
execute if score #bit oneiric_var matches 1 run scoreboard players add #byte oneiric_var 2

function oneiric_tools:skull_data/base64/to_byte/next_bit
execute if score #bit oneiric_var matches 1 run scoreboard players add #byte oneiric_var 1

execute store result storage oneiric_tools:head Base64.var byte 1 run scoreboard players get #byte oneiric_var
data modify storage oneiric_tools:head Base64.byte append from storage oneiric_tools:head Base64.var

execute if data storage oneiric_tools:head Base64.bin[7] run function oneiric_tools:skull_data/base64/to_byte/loop
