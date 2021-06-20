## Pause timer
# run from timer:main

schedule clear timer:second

execute if score $bossbar timer matches 1 if score $min timer matches 10.. if score $sec timer matches 10.. run bossbar set timer name [{"text":"Timer paused! - "},{"score":{"name":"$min","objective":"timer"}},{"text":":"},{"score":{"name":"$sec","objective":"timer"}}]
execute if score $bossbar timer matches 1 if score $min timer matches 10.. if score $sec timer matches ..9 run bossbar set timer name [{"text":"Timer paused! - "},{"score":{"name":"$min","objective":"timer"}},{"text":":"},{"text":"0"},{"score":{"name":"$sec","objective":"timer"}}]
execute if score $bossbar timer matches 1 if score $min timer matches ..9 if score $sec timer matches 10.. run bossbar set timer name [{"text":"Timer paused! - "},{"text":"0"},{"score":{"name":"$min","objective":"timer"}},{"text":":"},{"score":{"name":"$sec","objective":"timer"}}]
execute if score $bossbar timer matches 1 if score $min timer matches ..9 if score $sec timer matches ..9 run bossbar set timer name [{"text":"Timer paused! - "},{"text":"0"},{"score":{"name":"$min","objective":"timer"}},{"text":":"},{"text":"0"},{"score":{"name":"$sec","objective":"timer"}}]
