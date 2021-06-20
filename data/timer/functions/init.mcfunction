scoreboard objectives add timer dummy
scoreboard objectives add start_timer trigger
scoreboard players enable @a[tag=timer_control] start_timer

scoreboard players set #minute timer 60

bossbar add timer {"text":"00:00"}
bossbar set timer color white

function timer:main
