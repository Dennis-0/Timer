scoreboard players operation $min timer = $total_sec timer
scoreboard players operation $sec timer = $total_sec timer

scoreboard players operation $min timer /= #minute timer
scoreboard players operation $sec timer %= #minute timer

execute store result bossbar timer value run scoreboard players get $total_sec timer

execute if score $min timer matches 10.. if score $sec timer matches 10.. run bossbar set timer name [{"score":{"name":"$min","objective":"timer"}},{"text":":"},{"score":{"name":"$sec","objective":"timer"}}]
execute if score $min timer matches 10.. if score $sec timer matches ..9 run bossbar set timer name [{"score":{"name":"$min","objective":"timer"}},{"text":":"},{"text":"0"},{"score":{"name":"$sec","objective":"timer"}}]
execute if score $min timer matches ..9 if score $sec timer matches 10.. run bossbar set timer name [{"text":"0"},{"score":{"name":"$min","objective":"timer"}},{"text":":"},{"score":{"name":"$sec","objective":"timer"}}]
execute if score $min timer matches ..9 if score $sec timer matches ..9 run bossbar set timer name [{"text":"0"},{"score":{"name":"$min","objective":"timer"}},{"text":":"},{"text":"0"},{"score":{"name":"$sec","objective":"timer"}}]

execute if score $min timer matches 10.. if score $sec timer matches 10.. run data merge block <x y z> {Text1:'[{"score":{"name":"$min","objective":"timer"}},{"text":":"},{"score":{"name":"$sec","objective":"timer"}}]'}
execute if score $min timer matches 10.. if score $sec timer matches ..9 run data merge block <x y z> {Text1:'[{"score":{"name":"$min","objective":"timer"}},{"text":":"},{"text":"0"},{"score":{"name":"$sec","objective":"timer"}}]'}
execute if score $min timer matches ..9 if score $sec timer matches 10.. run data merge block <x y z> {Text1:'[{"text":"0"},{"score":{"name":"$min","objective":"timer"}},{"text":":"},{"score":{"name":"$sec","objective":"timer"}}]'}
execute if score $min timer matches ..9 if score $sec timer matches ..9 run data merge block <x y z> {Text1:'[{"text":"0"},{"score":{"name":"$min","objective":"timer"}},{"text":":"},{"text":"0"},{"score":{"name":"$sec","objective":"timer"}}]'}
execute as @e[tag=Timer] run data modify entity @s CustomName set from block <x y z> Text1

scoreboard players remove $total_sec timer 1

execute if score $total_sec timer matches 1.. run schedule function timer:second 1s
