scoreboard objectives add auth.settings dummy
scoreboard objectives add auth.attemps dummy
scoreboard objectives add auth.kick_delay dummy

scoreboard objectives add auth.pos.x dummy
scoreboard objectives add auth.pos.y dummy
scoreboard objectives add auth.pos.z dummy

scoreboard objectives add auth.pos.check.x dummy
scoreboard objectives add auth.pos.check.y dummy
scoreboard objectives add auth.pos.check.z dummy

scoreboard objectives add auth.leave minecraft.custom:minecraft.leave_game

scoreboard objectives add login trigger
scoreboard objectives add register trigger
scoreboard objectives add change_password trigger

gamerule sendCommandFeedback false

execute unless score load auth.settings matches 1 run return run function auth:settings/reset
execute unless data storage auth:config please_register_text run return run function auth:messages/reset