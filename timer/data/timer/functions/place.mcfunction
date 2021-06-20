## Place timer
# run from timer:main

summon armor_stand ~ ~1000 ~ {Marker:1b,Invisible:1b,Small:1b,Tags:["timer","timer_new"],Team:"timer",CustomNameVisible:1b,CustomName:'{"text":"00:00"}',DisabledSlots:4144959,Passengers:[{id:"minecraft:bee",Invulnerable:1b,Team:"timer",DeathTime:19,NoAI:1b,Age:-10,Tags:["timer"],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:100000000,ShowParticles:0b}]}]}
tp @e[tag=timer_new,limit=1] ~ ~ ~
tag @e[tag=timer_new] remove timer_new
kill @s
