kill @e[tag=auth.marker.register]
kill @e[tag=auth.marker.login]

scoreboard players reset * login
scoreboard players reset * register
scoreboard players reset * change_password
scoreboard players reset * auth.leave
scoreboard players reset * auth.kick_time
scoreboard players reset * auth.attemps

execute as @a run trigger login add 0
execute as @a run trigger register add 0
execute as @a run trigger change_password add 0

tag @a remove auth.load
tag @a remove auth.registered
tag @a remove auth.logged
tag @a remove auth.bypass
tag @a remove auth.bypass.logged
tag @a remove auth.pos.loaded