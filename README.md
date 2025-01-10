# Auth Data-Pack

Login and Register Authorization Data-Pack for Minecraft.

## Commands

Register with:

```
/trigger register set <password>
```

Login with:

```
/trigger login set <your password>
```

Change password with (need to be logged):

```
/trigger change_password set <new password>
```

### Admin:

Reset player:

/execute as <player> run function auth:auth/reset

Reset all player:

/function auth:auth/reset_all_players

### Settings

To see te settings menu use te command:

```
/function auth:settings
```

### Bypass

To give a authentication bypass to a player use te command:

```
/tag <player> add auth.bypass
```

and to remove it, use:

```
/tag <player> remove auth.bypass
```