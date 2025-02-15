# Auth

Login and Register Authorization

Version: `1.21.X`

## ⚠️ Warning

In vanilla we cannot use /kick, so I use many particles to kick (game crash) a malicious player, but you can disable it by disabling kick in `/function auth:settings`.

## 📂 Installation

Move the downloaded file in the path `.minecraft/saves/[world]/datapacks`

## 👾 Bugs/Issues

Please report any bug/issues to the [Discord Server](https://discord.gg/qUPpApHq) in the `bugs` channel, or create a issue in the [Github Repostiroy](https://github.com/lullaby6/auth-data-pack/issues), or a comment in [Planet Minecraft](https://www.planetminecraft.com/data-pack/auth-datapack-login-and-register-authentication-full-customizable-kick-time-attempls-blindness-option-bypass/).

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

## 🪪 License

MIT