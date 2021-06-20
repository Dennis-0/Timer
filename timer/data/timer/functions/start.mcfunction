## Start timer
# run from timer:main

execute if score @s start_timer matches 0 run scoreboard players operation $total_sec timer = #duration timer
execute if score @s start_timer matches 1.. run scoreboard players operation $total_sec timer = @s start_timer
scoreboard players operation $total_sec timer *= #minute timer

execute if score $bossbar timer matches 1 run bossbar set timer players @a
execute if score $bossbar timer matches 1 run bossbar set timer visible true
execute if score $bossbar timer matches 0 run bossbar set timer visible false

execute if score $bossbar timer matches 1 store result bossbar timer max run scoreboard players get $total_sec timer
execute if score $bossbar timer matches 1 store result bossbar timer value run scoreboard players get $total_sec timer

scoreboard players reset @a start_timer
scoreboard players enable @a[tag=timer_control] start_timer

function timer:second
