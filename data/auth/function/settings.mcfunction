function auth:utils/clear_chat

tellraw @s [{"text":"==========[ ","color":"gray"},{"text":"AUTH","color":"white","bold":true},{"text":" ]==========","color":"gray"}]
tellraw @s [{"color":"gray","text":"Version: "},{"color":"aqua","text":"v1.4.0"}]

tellraw @s ""

tellraw @s {"color":"gray","text":"Settings:","underlined":true}

tellraw @s ""

execute if score kick auth.settings matches 1 run tellraw @s [{"color":"gray","text":"- Kick: "},{"bold":true,"clickEvent":{"action":"run_command","value":"/function auth:settings/kick/no"},"color":"green","hoverEvent":{"action":"show_text","value":[{"text":"Click to disable kick"}]},"text":"ENABLED"}]
execute if score kick auth.settings matches 0 run tellraw @s [{"color":"gray","text":"- Kick: "},{"bold":true,"clickEvent":{"action":"run_command","value":"/function auth:settings/kick/yes"},"color":"gray","hoverEvent":{"action":"show_text","value":[{"text":"Click to enable kick"}]},"text":"DISABLED"}]

execute if score kick auth.settings matches 1 run tellraw @s [{"color":"gray","text":"- Max Attemps: "},{"color":"aqua","bold":true,"text":"- ","hoverEvent":{"action":"show_text","value":[{"text":"Click to remove 1 from max attemps"}]},"clickEvent":{"action":"run_command","value":"/function auth:settings/max_attemps/remove"}},{"color":"green","bold":true,"score":{"name":"max_attemps","objective":"auth.settings"},"hoverEvent":{"action":"show_text","value":[{"text":"To change run: /scoreboard players set max_attemps auth.settings <max_attemps>"}]}},{"color":"aqua","bold":true,"text":" +","hoverEvent":{"action":"show_text","value":[{"text":"Click to add 1 to max attemps"}]},"clickEvent":{"action":"run_command","value":"/function auth:settings/max_attemps/add"}}]

execute if score kick auth.settings matches 1 if score kick_delay auth.settings matches 1 run tellraw @s [{"color":"gray","text":"- Kick Delay: "},{"bold":true,"clickEvent":{"action":"run_command","value":"/function auth:settings/kick_delay/no"},"color":"green","hoverEvent":{"action":"show_text","value":[{"text":"Click to disable kick delay"}]},"text":"ENABLED"}]
execute if score kick auth.settings matches 1 if score kick_delay auth.settings matches 0 run tellraw @s [{"color":"gray","text":"- Kick Delay: "},{"bold":true,"clickEvent":{"action":"run_command","value":"/function auth:settings/kick_delay/yes"},"color":"gray","hoverEvent":{"action":"show_text","value":[{"text":"Click to enable kick delay"}]},"text":"DISABLED"}]

execute if score kick auth.settings matches 1 if score kick_delay auth.settings matches 1 run tellraw @s [{"color":"gray","text":"- Kick Delay Time: "},{"color":"aqua","bold":true,"text":"- ","hoverEvent":{"action":"show_text","value":[{"text":"Click to remove 1s from kick delay time"}]},"clickEvent":{"action":"run_command","value":"/function auth:settings/kick_delay_time/remove"}},{"color":"green","bold":true,"score":{"name":"kick_delay_time","objective":"auth.settings"},"hoverEvent":{"action":"show_text","value":[{"text":"To change run: /scoreboard players set kick_delay_time auth.settings <ticks>"}]}},{"color":"aqua","bold":true,"text":" +","hoverEvent":{"action":"show_text","value":[{"text":"Click to add 1s to kick delay time"}]},"clickEvent":{"action":"run_command","value":"/function auth:settings/kick_delay_time/add"}}]

execute if score login_blindness auth.settings matches 1 run tellraw @s [{"color":"gray","text":"- Login Blindness: "},{"bold":true,"clickEvent":{"action":"run_command","value":"/function auth:settings/login_blindness/no"},"color":"green","hoverEvent":{"action":"show_text","value":[{"text":"Click to disable login blindness"}]},"text":"ENABLED"}]
execute if score login_blindness auth.settings matches 0 run tellraw @s [{"color":"gray","text":"- Login Blindness: "},{"bold":true,"clickEvent":{"action":"run_command","value":"/function auth:settings/login_blindness/yes"},"color":"gray","hoverEvent":{"action":"show_text","value":[{"text":"Click to enable login blindness"}]},"text":"DISABLED"}]

execute if score register_blindness auth.settings matches 1 run tellraw @s [{"color":"gray","text":"- Register Blindness: "},{"bold":true,"clickEvent":{"action":"run_command","value":"/function auth:settings/register_blindness/no"},"color":"green","hoverEvent":{"action":"show_text","value":[{"text":"Click to disable register blindness"}]},"text":"ENABLED"}]
execute if score register_blindness auth.settings matches 0 run tellraw @s [{"color":"gray","text":"- Register Blindness: "},{"bold":true,"clickEvent":{"action":"run_command","value":"/function auth:settings/register_blindness/yes"},"color":"gray","hoverEvent":{"action":"show_text","value":[{"text":"Click to enable register blindness"}]},"text":"DISABLED"}]

execute if score clear_chat auth.settings matches 1 run tellraw @s [{"color":"gray","text":"- Clear Chat: "},{"bold":true,"clickEvent":{"action":"run_command","value":"/function auth:settings/clear_chat/no"},"color":"green","hoverEvent":{"action":"show_text","value":[{"text":"Click to disable clear chat"}]},"text":"ENABLED"}]
execute if score clear_chat auth.settings matches 0 run tellraw @s [{"color":"gray","text":"- Clear Chat: "},{"bold":true,"clickEvent":{"action":"run_command","value":"/function auth:settings/clear_chat/yes"},"color":"gray","hoverEvent":{"action":"show_text","value":[{"text":"Click to enable clear chat"}]},"text":"DISABLED"}]

tellraw @s ""

tellraw @s {"color":"gray","text":"Commands:","underlined":true}

tellraw @s ""

tellraw @s [{"text":"- ","color":"gray"},{"text":"Reset All Players","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"Click to reset all players"}]},"clickEvent":{"action":"run_command","value":"/function auth:settings/reset_all_players"}}]

tellraw @s [{"text":"- ","color":"gray"},{"text":"Reset Messages","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"Click to reset messages"}]},"clickEvent":{"action":"run_command","value":"/function auth:settings/reset_messages"}}]

tellraw @s [{"text":"- ","color":"gray"},{"text":"Disable Data-Pack","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"Click to disable"}]},"clickEvent":{"action":"run_command","value":"/function auth:disable"}}]

tellraw @s [{"text":"- ","color":"gray"},{"text":"Reset Settings","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"Click to reset settings"}]},"clickEvent":{"action":"run_command","value":"/function auth:settings/reset"}}]

tellraw @s ""

tellraw @s [{"text":"===========","color":"gray"},{"text":"====","color":"gray"},{"text":"===========","color":"gray"}]

playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ .5 2