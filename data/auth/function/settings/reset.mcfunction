scoreboard players set kick auth.settings 1
scoreboard players set max_attemps auth.settings 3
scoreboard players set kick_delay auth.settings 1
scoreboard players set kick_delay_time auth.settings 1200
scoreboard players set login_blindness auth.settings 1
scoreboard players set register_blindness auth.settings 0
scoreboard players set clear_chat auth.settings 0

execute if score load auth.settings matches 1 run function auth:settings

scoreboard players set load auth.settings 1