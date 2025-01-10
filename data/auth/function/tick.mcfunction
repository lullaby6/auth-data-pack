execute as @a at @s run function auth:player/tick

execute as @a[scores={auth.leave=1..}] run function auth:player/leave

execute as @e[tag=auth.marker.register] at @s unless entity @a[tag=!auth.registered,distance=..3] run kill @s
execute as @e[tag=auth.marker.login] at @s unless entity @a[tag=!auth.logged,distance=..3] run kill @s

execute unless score load auth.settings matches 1 run function auth:settings/reset