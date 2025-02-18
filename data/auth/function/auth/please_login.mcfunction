scoreboard players enable @s login

execute unless score @s login matches 0 if score @s login = @s register run return run function auth:auth/login
execute unless score @s login matches 0 unless score @s login = @s register run return run function auth:auth/wrong_password

execute if score kick auth.settings matches 1 if score kick_time auth.settings matches 1 run scoreboard players add @s auth.kick_time 1
execute if score kick auth.settings matches 1 if score kick_time auth.settings matches 1 if score @s auth.kick_time matches 1200.. run return run function auth:player/kick

gamemode spectator @s
execute if score login_blindness auth.settings matches 1 run effect give @s blindness 3 0 true

execute unless entity @e[tag=auth.marker.login,distance=..3] run summon marker ~ ~ ~ {Tags:["auth.marker.login"]}
tp @s @n[tag=auth.marker.login]

title @s actionbar {"text":"Login with \"/trigger login set <your password>\".","color":"red"}

execute unless entity @s[tag=auth.pos.loaded] run return run function auth:auth/pos/load
function auth:auth/pos/check