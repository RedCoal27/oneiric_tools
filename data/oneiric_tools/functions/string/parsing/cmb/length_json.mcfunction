data modify storage oneiric_tools:string output set string block -29999999 3 74061 LastOutput 91
execute store result score #length oneiric_var run data get storage oneiric_tools:string output


#remove 38 (default length of what after the string in LastOutput for enchant) to get the actual length of the string
scoreboard players remove #length oneiric_var 38

#34 ->35
data modify block -29999999 4 74063 Text1 set value '[{"text":"data modify storage oneiric_tools:string output set string storage oneiric_tools:string output 0 "},{"score":{"objective":"oneiric_var","name":"#length"}}]'
data modify entity 4eeb080d-c17f-4b5a-9890-8191648e267e CustomName set from block -29999999 4 74063 Text1
