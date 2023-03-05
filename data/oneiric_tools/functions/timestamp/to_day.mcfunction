#convert timestamp to datetime

#first get UTC to add to the time zone offset
#Get hour
scoreboard players operation #Hour RTC = timestamp RTC
scoreboard players operation #Hour RTC /= #3600 RTC
scoreboard players operation #Hour RTC %= #24 RTC


#Get UTC time
scoreboard players operation UTC RTC = Hour RTC
scoreboard players operation UTC RTC -= #Hour RTC
execute if score UTC RTC matches 12.. run scoreboard players remove UTC RTC 24


#add the time zone offset
scoreboard players operation #Var RTC = UTC RTC
scoreboard players operation #Var RTC *= #3600 RTC
scoreboard players operation timestamp RTC += #Var RTC

#Get seconde
scoreboard players operation #Second RTC = timestamp RTC
scoreboard players operation #Second RTC %= #60 RTC

#Get minute
scoreboard players operation #Minute RTC = timestamp RTC
scoreboard players operation #Minute RTC /= #60 RTC
scoreboard players operation #Minute RTC %= #60 RTC

#Get hour
scoreboard players operation Hour RTC = timestamp RTC
scoreboard players operation Hour RTC /= #3600 RTC
scoreboard players operation Hour RTC %= #24 RTC

#Get day
scoreboard players operation #Day RTC = timestamp RTC
scoreboard players operation #Day RTC /= #86400 RTC
scoreboard players operation #Day RTC %= #30 RTC

#Get Year
scoreboard players operation Year RTC = #Day RTC
scoreboard players operation Year RTC *= #100 RTC
scoreboard players operation Year RTC /= #36525 RTC
scoreboard players operation #Year RTC = Year RTC
scoreboard players add Year RTC 1970

#get the day of the week
scoreboard players operation WeekDay RTC = #Day RTC
scoreboard players add WeekDay RTC 4
scoreboard players operation WeekDay RTC %= #7 RTC


#number of leap years since 1970
scoreboard players operation #LeapDays RTC = #Year RTC
scoreboard players operation #LeapDays RTC /= #4 RTC


#get the day of this years
scoreboard players operation Day RTC = #Day RTC
scoreboard players operation #Var RTC = #Year RTC
scoreboard players operation #Var RTC *= #365 RTC
scoreboard players operation Day RTC -= #Var RTC
scoreboard players operation Day RTC -= #LeapDays RTC


#is this year a leap year
scoreboard players operation #Var RTC = #Year RTC
scoreboard players operation #Var RTC %= #4 RTC

#Find month and day
execute if score Day RTC matches 0..30 run scoreboard players set Month RTC 1

#remove 1 day if this year is a leap year
execute if score #Var RTC matches 0 run scoreboard players remove Day RTC 1

execute if score Day RTC matches 31..58 run scoreboard players set Month RTC 2
execute if score Day RTC matches 31..58 run scoreboard players remove Day RTC 31

execute if score Day RTC matches 59..89 run scoreboard players set Month RTC 3
execute if score Day RTC matches 59..89 run scoreboard players remove Day RTC 59

execute if score Day RTC matches 90..119 run scoreboard players set Month RTC 4
execute if score Day RTC matches 90..119 run scoreboard players remove Day RTC 90

execute if score Day RTC matches 120..150 run scoreboard players set Month RTC 5
execute if score Day RTC matches 120..150 run scoreboard players remove Day RTC 120

execute if score Day RTC matches 151..180 run scoreboard players set Month RTC 6
execute if score Day RTC matches 151..180 run scoreboard players remove Day RTC 151

execute if score Day RTC matches 181..211 run scoreboard players set Month RTC 7
execute if score Day RTC matches 181..211 run scoreboard players remove Day RTC 181

execute if score Day RTC matches 212..242 run scoreboard players set Month RTC 8
execute if score Day RTC matches 212..242 run scoreboard players remove Day RTC 212

execute if score Day RTC matches 243..272 run scoreboard players set Month RTC 9
execute if score Day RTC matches 243..272 run scoreboard players remove Day RTC 243

execute if score Day RTC matches 273..303 run scoreboard players set Month RTC 10
execute if score Day RTC matches 273..303 run scoreboard players remove Day RTC 273

execute if score Day RTC matches 304..333 run scoreboard players set Month RTC 11
execute if score Day RTC matches 304..333 run scoreboard players remove Day RTC 304

execute if score Day RTC matches 334.. run scoreboard players set Month RTC 12
execute if score Day RTC matches 334.. run scoreboard players remove Day RTC 334

#add 1 day if this year is a leap year
execute if score #Var RTC matches 0 if score Month RTC matches 2 run scoreboard players add Day RTC 1
scoreboard players add Day RTC 1

