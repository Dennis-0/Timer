## Remove timer
# run from advancement hit

advancement revoke @s only timer:hit

execute at @e[type=bee,tag=timer,nbt={HurtTime:10s}] run kill @e[type=armor_stand,tag=timer,sort=nearest,limit=1]
tp @e[type=bee,tag=timer,nbt={HurtTime:10s}] ~ -1000 ~
