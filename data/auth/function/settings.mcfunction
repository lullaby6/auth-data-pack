function auth:utils/clear_chat

tellraw @s [{"text":"Auth ","color":"green"},{"text":"Settings:","color":"gray"}]

execute if score kick auth.settings matches 1 run tellraw @s [{"text":"- Kick: ","color":"gray"},{"text":"YES","color":"green"},{"text": " - ","color":"gray"},{"text":"NO","color":"gray","clickEvent":{"action":"run_command","value":"/function auth:settings/kick/no"}}]
execute if score kick auth.settings matches 0 run tellraw @s [{"text":"- Kick: ","color":"gray"},{"text":"YES","color":"gray","clickEvent":{"action":"run_command","value":"/function auth:settings/kick/yes"}},{"text": " - ","color":"gray"},{"text":"NO","color":"green"}]

execute if score login_blindness auth.settings matches 1 run tellraw @s [{"text":"- Login Blindness: ","color":"gray"},{"text":"YES","color":"green"},{"text": " - ","color":"gray"},{"text":"NO","color":"gray","clickEvent":{"action":"run_command","value":"/function auth:settings/login_blindness/no"}}]
execute if score login_blindness auth.settings matches 0 run tellraw @s [{"text":"- Login Blindness: ","color":"gray"},{"text":"YES","color":"gray","clickEvent":{"action":"run_command","value":"/function auth:settings/login_blindness/yes"}},{"text": " - ","color":"gray"},{"text":"NO","color":"green"}]

execute if score register_blindness auth.settings matches 1 run tellraw @s [{"text":"- Register Blindness: ","color":"gray"},{"text":"YES","color":"green"},{"text": " - ","color":"gray"},{"text":"NO","color":"gray","clickEvent":{"action":"run_command","value":"/function auth:settings/register_blindness/no"}}]
execute if score register_blindness auth.settings matches 0 run tellraw @s [{"text":"- Register Blindness: ","color":"gray"},{"text":"YES","color":"gray","clickEvent":{"action":"run_command","value":"/function auth:settings/register_blindness/yes"}},{"text": " - ","color":"gray"},{"text":"NO","color":"green"}]

execute if score kick_time auth.settings matches 1 run tellraw @s [{"text":"- Kick Time (60 seconds): ","color":"gray"},{"text":"YES","color":"green"},{"text": " - ","color":"gray"},{"text":"NO","color":"gray","clickEvent":{"action":"run_command","value":"/function auth:settings/kick_time/no"}}]
execute if score kick_time auth.settings matches 0 run tellraw @s [{"text":"- Kick Time (60 seconds): ","color":"gray"},{"text":"YES","color":"gray","clickEvent":{"action":"run_command","value":"/function auth:settings/kick_time/yes"}},{"text": " - ","color":"gray"},{"text":"NO","color":"green"}]

execute if score max_attemps auth.settings matches 1 run tellraw @s [{"text":"- Max Attemps: ","color":"gray"},{"text":"1","color":"green","clickEvent":{"action":"run_command","value":"/function auth:settings/max_attemps/1"}},{"text": " - ","color":"gray"},{"text":"2","color":"gray","clickEvent":{"action":"run_command","value":"/function auth:settings/max_attemps/2"}},{"text": " - ","color":"gray"},{"text":"3","color":"gray","clickEvent":{"action":"run_command","value":"/function auth:settings/max_attemps/3"}}]
execute if score max_attemps auth.settings matches 2 run tellraw @s [{"text":"- Max Attemps: ","color":"gray"},{"text":"1","color":"gray","clickEvent":{"action":"run_command","value":"/function auth:settings/max_attemps/1"}},{"text": " - ","color":"gray"},{"text":"2","color":"green","clickEvent":{"action":"run_command","value":"/function auth:settings/max_attemps/2"}},{"text": " - ","color":"gray"},{"text":"3","color":"gray","clickEvent":{"action":"run_command","value":"/function auth:settings/max_attemps/3"}}]
execute if score max_attemps auth.settings matches 3 run tellraw @s [{"text":"- Max Attemps: ","color":"gray"},{"text":"1","color":"gray","clickEvent":{"action":"run_command","value":"/function auth:settings/max_attemps/1"}},{"text": " - ","color":"gray"},{"text":"2","color":"gray","clickEvent":{"action":"run_command","value":"/function auth:settings/max_attemps/2"}},{"text": " - ","color":"gray"},{"text":"3","color":"green","clickEvent":{"action":"run_command","value":"/function auth:settings/max_attemps/3"}}]

execute if score clear_chat auth.settings matches 1 run tellraw @s [{"text":"- Clear Chat: ","color":"gray"},{"text":"YES","color":"green"},{"text": " - ","color":"gray"},{"text":"NO","color":"gray","clickEvent":{"action":"run_command","value":"/function auth:settings/clear_chat/no"}}]
execute if score clear_chat auth.settings matches 0 run tellraw @s [{"text":"- Clear Chat: ","color":"gray"},{"text":"YES","color":"gray","clickEvent":{"action":"run_command","value":"/function auth:settings/clear_chat/yes"}},{"text": " - ","color":"gray"},{"text":"NO","color":"green"}]

tellraw @s [{"text":"- ","color":"gray"},{"text":"Reset Settings","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":""}]},"clickEvent":{"action":"run_command","value":"/function auth:settings/reset"}}]
tellraw @s [{"text":"- ","color":"gray"},{"text":"Reset All Players","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":""}]},"clickEvent":{"action":"run_command","value":"/function auth:settings/reset_all_players"}}]
tellraw @s [{"text":"- ","color":"gray"},{"text":"Disable Data-Pack","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":""}]},"clickEvent":{"action":"run_command","value":"/function auth:disable"}}]

playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ .5 2