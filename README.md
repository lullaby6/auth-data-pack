# Auth

[![Latest](https://img.shields.io/github/v/release/lullaby6/auth-data-pack?color=blueviolet&logo=github)](https://github.com/lullaby6/auth-data-pack/releases) 
[![Discord](https://img.shields.io/discord/1327308441324097681?label=discord&color=blue&logo=discord)](https://discord.gg/5UdcDa5xNC) 
[![Modrinth](https://img.shields.io/modrinth/dt/auth?label=modrinth&logo=modrinth)](https://modrinth.com/datapack/auth) 
[![License](https://img.shields.io/badge/license-mit-green)](https://github.com/lullaby6/auth-data-pack/blob/main/LICENSE) 
[![Issues](https://img.shields.io/github/issues/lullaby6/auth-data-pack?color=orange&logo=github)](https://github.com/lullaby6/auth-data-pack/issues)
[![Code Size](https://img.shields.io/github/languages/code-size/lullaby6/auth-data-pack?color=purple&logoColor=white)](https://github.com/lullaby6/auth-data-pack)
[![Repo Size](https://img.shields.io/github/repo-size/lullaby6/auth-data-pack?logo=dropbox&color=red)](https://github.com/lullaby6/auth-data-pack)
[![Stars](https://img.shields.io/github/stars/lullaby6/auth-data-pack?logo=github&color=yellow)](https://github.com/lullaby6/auth-data-pack/stargazers)

![bg](https://raw.githubusercontent.com/lullaby6/auth-data-pack/refs/heads/main/images/bg.png)

## 📖 Description

Login and Register Authorization

Version: `1.21.X`

## ⚠️ Warning

In vanilla we cannot use /kick, so I use many particles to kick (game crash) a malicious player, but you can disable it by disabling kick in `/function auth:settings`.

## 📂 Installation

Move the downloaded file in the path `.minecraft/saves/[world]/datapacks`

## 👾 Bugs/Issues

Please report any bug/issues to the [Discord Server](https://discord.gg/5UdcDa5xNC) in the `bugs` channel, or create a issue in the [Github Repostiroy](https://github.com/lullaby6/auth-data-pack/issues), or a comment in [Planet Minecraft](https://www.planetminecraft.com/data-pack/auth-datapack-login-and-register-authentication-full-customizable-kick-time-attempls-blindness-option-bypass/).

## ⌨️ Commands

### Player

Register with:

```mcfunction
/trigger register set <password>
```

Login with:

```mcfunction
/trigger login set <your password>
```

Change password with (need to be logged):

```mcfunction
/trigger change_password set <new password>
```

### Admin

Reset player:

```mcfunction
/execute as <player> run function auth:auth/reset
```

Reset all player:

```mcfunction
/function auth:auth/reset_all_players
```

Show/get player password:

```mcfunction
/gamerule sendCommandFeedback true
/scoreboard players get <player> register
/gamerule sendCommandFeedback false
```

Disable:

```mcfunction
/function auth:disable
```

Enable:

```mcfunction
/datapack enable "file/auth.zip"
```

### Settings

To see the settings menu use the command:

```mcfunction
/function auth:settings
```

### Bypass

To give a authentication bypass to a player use the command:

```mcfunction
/tag <player> add auth.bypass
```

and to remove it, use:

```mcfunction
/tag <player> remove auth.bypass
```

### Custom messages

You can change the messages and the message colors.

List of options:
- `please_register_text`
- `please_register_color`
- `register_success_text`
- `register_success_color`
- `please_login_text`
- `please_login_color`
- `login_success_text`
- `login_success_color`
- `wrong_password_text`
- `wrong_password_color`
- `password_changed_text`
- `password_changed_color`

Syntax:

```mcfunction
/data modify storage auth:config <option> set value "<text>"
```

Example for spanish:

```mcfunction
/data modify storage auth:config please_register_text set value "Registrese con /trigger register set <contraseña>"
/data modify storage auth:config please_register_color set value "gray"
```

## 🪪 License

[MIT](https://github.com/lullaby6/auth-data-pack/blob/main/LICENSE)