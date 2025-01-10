execute store result score @s register run scoreboard players get @s change_password
scoreboard players set @s change_password 0

tellraw @s {"text":"Password changed.","color":"green"}
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~