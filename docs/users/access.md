---
title: "Access"
parent: "User documentation"
nav_order: 1
---

# Access
You can access the server through Secure Shell (`ssh`) as usual.

## Idle connection
If the connection is idle for some time, the server will close the connection.
In order to avoid this, you can add the following line in your local (laptop) `ssh` configuration.
Add the following lines in your `~/.ssh/config` file (replace placeholders as needed):
```
Host <server_name>.mi.infn.it
   HostName <server_name>.mi.infn.it
   ForwardX11Trusted yes
   User <your_user_name>
   ServerAliveInterval 300
   ServerAliveCountMax 2
```

### VNC (remote desktop)

### Visual Studio Code Remote
