data modify storage oneiric_tools:time CommandOutput set string block -30000000 3 74063 LastOutput 44


scoreboard players set Hour RTC 0
scoreboard players set Minute RTC 0
scoreboard players set Second RTC 0


data modify storage oneiric_tools:time Time.Value set value 0
#we get h:m:s] "}'}' and we want to get h:m:s , we decompose the string
#hour
scoreboard players set #var RTC 0
data modify storage oneiric_tools:time Time.Value set string storage oneiric_tools:time CommandOutput 0 1
function oneiric_tools:timestamp/get_int
scoreboard players operation #var RTC *= #10 RTC 
data modify storage oneiric_tools:time Time.Value set string storage oneiric_tools:time CommandOutput 1 2
function oneiric_tools:timestamp/get_int
scoreboard players operation Hour RTC = #var RTC

#minute
scoreboard players set #var RTC 0
data modify storage oneiric_tools:time Time.Value set string storage oneiric_tools:time CommandOutput 3 4
function oneiric_tools:timestamp/get_int
scoreboard players operation #var RTC *= #10 RTC
data modify storage oneiric_tools:time Time.Value set string storage oneiric_tools:time CommandOutput 4 5
function oneiric_tools:timestamp/get_int
scoreboard players operation Minute RTC = #var RTC



#second
scoreboard players set #var RTC 0
data modify storage oneiric_tools:time Time.Value set string storage oneiric_tools:time CommandOutput 6 7
function oneiric_tools:timestamp/get_int
scoreboard players operation #var RTC *= #10 RTC
data modify storage oneiric_tools:time Time.Value set string storage oneiric_tools:time CommandOutput 7 8
function oneiric_tools:timestamp/get_int
scoreboard players operation Second RTC = #var RTC


