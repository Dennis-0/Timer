# Timer
Minecraft Datapack for a timer, as floating text, actionbar, and bossbar

## How to set up
1.  - Place a sign where normal players can't see (in a chunk that's always loaded, or use `forceload`)
    - In `timer\data\timer\functions\second.mcfunction`: Replace `<x y z>` with the coordinates of this sign

1. Give each player that should be able to control the timer the tag `timer_control` <br>
Command: `/tag @s add timer_control`

1. Place a timer by placing the item, or running a function directly <br>
Command: `/loot give @s loot timer:timer` or `execute positioned <x y z> run function timer:place`

## How to use
- Start the timer with time in minutes <br>
Command: `/trigger start_timer set <minutes>`<br>
or: `/scoreboard players set #duration timer <minutes>` and `/function timer:start`

- If needed, the timer can be paused and continued later on <br>
Command: `/function timer:pause` and `/function timer:continue` 

- If needed, the timer can be reset <br>
Command: `/function timer:stop` 

- Remove the timers <br>
Command: `/function timer:remove` (only removes nearest) <br>
or: `/kill @e[type=minecraft:area_effect_cloud,tag=timer]`

- Disable/enable bossbar and actionbar <br>
Command: `/scoreboard players set $bossbar/$actionbar timer 0/1`