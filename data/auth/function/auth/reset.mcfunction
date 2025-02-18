scoreboard players reset @s register
scoreboard players reset @s login
scoreboard players reset @s change_password
scoreboard players reset @s auth.leave
scoreboard players reset @s auth.attemps
scoreboard players reset @s auth.kick_time

execute as @a run trigger login add 0
execute as @a run trigger register add 0
execute as @a run trigger change_password add 0

advancement revoke @s only auth:tick
tag @a remove auth.registered
tag @a remove auth.logged
tag @a remove auth.bypass
tag @a remove auth.bypass.logged

scoreboard players reset @s auth.pos.x
scoreboard players reset @s auth.pos.y
scoreboard players reset @s auth.pos.z
scoreboard players reset @s auth.pos.check.x
scoreboard players reset @s auth.pos.check.y
scoreboard players reset @s auth.pos.check.z
tag @a remove auth.pos.loaded