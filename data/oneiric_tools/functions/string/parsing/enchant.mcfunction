summon minecraft:armor_stand ~ ~ ~ {UUID:[I;0,0,0,0],CustomName:'{"text":"test"}'}

data modify block -14 -60 2 auto set value 1b

say t2


tellraw _RedCoal_ {"nbt":"LastOutput","block": "-13 -60 2"}

