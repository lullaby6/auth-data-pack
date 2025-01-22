# Auth

Login and Register Authorization

Version: `1.21.X`

## Commands

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

### Admin:

Reset player:

```mcfunction
/execute as <player> run function auth:auth/reset
```

Reset all player:

```mcfunction
/function auth:auth/reset_all_players
```

Disable the Data-Pack:

```mcfunction
/function auth:disable
```

And enable it:

```mcfunction
/datapack enable "auth"
```

### Settings

To see te settings menu use te command:

```mcfunction
/function auth:settings
```

### Bypass

To give a authentication bypass to a player use te command:

```mcfunction
/tag <player> add auth.bypass
```

and to remove it, use:

```mcfunction
/tag <player> remove auth.bypass
```

## License

MIT