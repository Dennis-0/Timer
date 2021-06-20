
execute as @a[tag=timer_control] if score @s start_timer matches 1.. run function timer:start
execute as @a[tag=timer_control] if score @s pause_timer matches 1.. run function timer:pause
execute as @a[tag=timer_control] if score @s continue_timer matches 1.. run function timer:continue

schedule function timer:main 1s
