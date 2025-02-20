scoreboard players set max_attemps auth.settings 3
scoreboard players set login_blindness auth.settings 1
scoreboard players set register_blindness auth.settings 0
scoreboard players set kick_time auth.settings 1
scoreboard players set clear_chat auth.settings 0
scoreboard players set kick auth.settings 1

execute if score load auth.settings matches 1 run function auth:settings

scoreboard players set load auth.settings 1

data modify storage auth:config register_success_text set value "Registered successfully."
data modify storage auth:config register_success_color set value "green"

data modify storage auth:config please_register_text set value "Register with /trigger register set <password>."
data modify storage auth:config please_register_color set value "red"

data modify storage auth:config please_login_text set value "Login with /trigger login set <your password>."
data modify storage auth:config please_login_color set value "red"

data modify storage auth:config login_success_text set value "Login successful."
data modify storage auth:config login_success_color set value "green"

data modify storage auth:config wrong_password_text set value "Wrong password."
data modify storage auth:config wrong_password_color set value "red"

data modify storage auth:config password_changed_text set value "Password changed."
data modify storage auth:config password_changed_color set value "green"

# data modify storage auth:config please_register set value [{"text":"Register with \"/trigger register set <password>\".  ","color":"red"},{"text":"ONLY NUMBERS","color":"dark_red","bold":true,"italic":true}]