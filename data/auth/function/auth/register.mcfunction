execute if score clear_chat auth.settings matches 1 run tellraw @a ["\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"]

gamemode survival @s
effect clear @s blindness
title @s actionbar ""

trigger register add 0
execute store result score @s login run scoreboard players get @s register

tag @s add auth.registered
tag @s add auth.logged

scoreboard players reset @s auth.pos.x
scoreboard players reset @s auth.pos.y
scoreboard players reset @s auth.pos.z

playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ .5 1