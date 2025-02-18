execute if entity @s[tag=auth.registered] unless score @s register matches 1.. run return run function auth:auth/reset

execute if entity @s[tag=!auth.registered,tag=!auth.bypass] run return run function auth:auth/please_register
execute if entity @s[tag=auth.registered,tag=!auth.logged,tag=!auth.bypass] run return run function auth:auth/please_login
execute if entity @s[tag=auth.bypass,tag=!auth.bypass.logged] run return run function auth:auth/bypass

execute if entity @s[tag=auth.logged] run scoreboard players enable @s change_password
execute if entity @s[tag=auth.logged] unless score @s change_password matches 0 run function auth:auth/change_password