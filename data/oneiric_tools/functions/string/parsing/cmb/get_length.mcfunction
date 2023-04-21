
execute if score #length oneiric_var matches 91..99 run data modify block -29999998 3 74061 Command set string block -29999999 3 74060 LastOutput 91 190
execute if score #length oneiric_var matches 100..999 run data modify block -29999998 3 74061 Command set string block -29999999 3 74060 LastOutput 91 191
execute if score #length oneiric_var matches 1000..9999 run data modify block -29999998 3 74061 Command set string block -29999999 3 74060 LastOutput 91 192
execute if score #length oneiric_var matches 10000..99999 run data modify block -29999998 3 74061 Command set string block -29999999 3 74060 LastOutput 91 193
execute if score #length oneiric_var matches 100000..999999 run data modify block -29999998 3 74061 Command set string block -29999999 3 74060 LastOutput 91 194
execute if score #length oneiric_var matches 1000000..9999999 run data modify block -29999998 3 74061 Command set string block -29999999 3 74060 LastOutput 91 195
execute if score #length oneiric_var matches 10000000..99999999 run data modify block -29999998 3 74061 Command set string block -29999999 3 74060 LastOutput 91 196
execute if score #length oneiric_var matches 100000000..999999999 run data modify block -29999998 3 74061 Command set string block -29999999 3 74060 LastOutput 91 197
execute if score #length oneiric_var matches 1000000000..2147483647 run data modify block -29999998 3 74061 Command set string block -29999999 3 74060 LastOutput 91 198


tellraw _RedCoal_ {"block":"-29999999 3 74060","nbt":"LastOutput"}



