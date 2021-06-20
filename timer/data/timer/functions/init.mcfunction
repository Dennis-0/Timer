scoreboard objectives add timer dummy

scoreboard objectives add start_timer trigger
scoreboard players enable @a[tag=timer_control] start_timer

scoreboard players set #minute timer 60
scoreboard players set #duration timer 10

bossbar add timer {"text":"00:00"}
bossbar set timer color white

team add timer
team modify timer collisionRule never

function timer:main
