scoreboard players enable @s register

gamemode spectator @s
execute if score register_blindness auth.settings matches 1 run effect give @s blindness 3 0 true

execute unless entity @e[tag=auth.marker.register,distance=..3] run summon marker ~ ~ ~ {Tags:["auth.marker.register"]}
tp @s @n[tag=auth.marker.register]

execute unless entity @s[tag=auth.pos.loaded] run function auth:auth/pos/load
execute if entity @s[tag=auth.pos.loaded] run function auth:auth/pos/check

title @s actionbar [{"text":"Register with \"/trigger register set <password>\".  ","color":"red"},{"text":"ONLY NUMBERS","color":"dark_red","bold":true,"italic":true}]

execute unless score @s register matches 0 run function auth:auth/register