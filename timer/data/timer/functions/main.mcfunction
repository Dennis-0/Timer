## Check for start trigger

execute as @a[tag=timer_control] if score @s start_timer matches 1.. run function timer:start

schedule function timer:main 1s
