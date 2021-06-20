## Continue timer
# run from timer:main

schedule clear timer:second
scoreboard players set $total_sec timer 0
execute as @e[tag=timer] run data merge entity @s {CustomName:'{"text":"00:00"}'}

bossbar set timer visible false
