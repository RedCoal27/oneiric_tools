function oneiric_tools:common/next_search_clear

scoreboard players remove #byte oneiric_var 48 
scoreboard players operation timestamp RTC *= #10 RTC
scoreboard players operation timestamp RTC += #byte oneiric_var


execute unless score timestamp RTC matches 536870912.. run function oneiric_tools:skull_data/timestamp/read_time