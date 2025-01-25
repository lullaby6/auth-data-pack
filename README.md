# Auth

Login and Register Authorization

WARNING:
In vanilla we cannot use /kick, so I use many particles to kick (game crash) a malicious player, but you can disable it by disabling kick in `/function auth:settings`.

Version: `1.21.X`

## Commands

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

## License

MIT