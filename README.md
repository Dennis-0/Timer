# Timer
Minecraft Datapack for a timer, as floating text and bossbar

## How to set up
1.  - Place a sign where normal players can't see (in a chunk that's always loaded, or use `forceload`), 
    - Copy sign coordinates
    - In `timer\data\timer\functions\second.mcfunction`: Replace `<x y z>` with these coordinates

1. Give each player that should be able to control the timer the tag `timer_control` <br>
Command: `/tag <player> add timer_control`

1. Give yourself a timer, which you can place anywhere <br>
Command: `/loot give @s loot timer:timer`

1. For a more precise position, move the timer to your position <br>
Command: `/function timer:move`

1. If needed, delete the timer (kills nearest timer)<br>
Command: `/function timer:remove`

## How to use
- Start the timer with time in minutes <br>
Command: `/trigger start_timer set <minutes>`

- If needed, the timer can be paused and continued later on <br>
Command: `/function timer:pause` and `/function timer:continue` 
