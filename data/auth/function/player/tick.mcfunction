execute if score @s auth.leave matches 1.. run function auth:player/leave

execute if entity @s[tag=auth.bypass,tag=!auth.logged] run return run function auth:auth/bypass

execute if entity @s[tag=auth.bypass] run return fail

execute if entity @s[tag=auth.logged] run return run function auth:player/tick/logged

execute if entity @s[tag=!auth.registered] run return run function auth:auth/please_register

execute if entity @s[tag=auth.registered,tag=!auth.logged] run return run function auth:auth/please_login