scoreboard players reset @s auth.pos.x
scoreboard players reset @s auth.pos.y
scoreboard players reset @s auth.pos.z
scoreboard players reset @s auth.pos.check.x
scoreboard players reset @s auth.pos.check.y
scoreboard players reset @s auth.pos.check.z
tag @a remove auth.pos.loaded

tag @s remove auth.logged
tag @s remove auth.bypass.logged

scoreboard players set @s login 0

scoreboard players reset @s auth.attemps
scoreboard players reset @s auth.kick_time

scoreboard players reset @s auth.leave

trigger change_password add 0