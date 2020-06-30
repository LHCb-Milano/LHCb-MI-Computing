---
title: "Access"
parent: "User documentation"
grand_parent: "Documentation for LHCb Milano computing"
nav_order: 1
---

## Access

You can access the server through Secure Shell (`ssh`) as usual.

### Idle connection

If the connection is idle for some time, the server will close the connection.
In order to avoid this, you can add the following line *in your local (laptop)* `ssh` configuration.
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

Virtual Network Computing (VNC) is a graphical desktop-sharing system.

You need a VNC viewer (client) installed in your laptop. There are free VNC clients available for most operating systems: [RealVNC](https://www.realvnc.com/en/connect/download/viewer/){:target="_blank"}, [TigerVNC](https://tigervnc.org/){:target="_blank"}.

Create a directory in your home called `.vnc`. You need two files inside this directory: `config` and `xstartup`. The first file contains the VNC server configuration; the latter is a `bash` script that contains the instruction to start a desktop manager. In our server we installed the GNOME desktop manager, but it is possible that we will install also KDE, if requested. In the [vnc](https://github.com/LHCb-Milano/LHCb-MI-Computing/tree/master/vnc) folder of this repository you can find two sample files that should work fine for most basic configuration. One configuration that you may want to adjust is the `geometry` parameter in the `config` file. Its value is the resolution of the virtual desktop. If you use it in full screen, it should coincide with your screen resolution.

Open a terminal in the server with `ssh` and start a VNC server session with the `vncserver` command. The first time you run it, it will ask you to create a password (it's not the same password as the one that you use to connect to the machine via `ssh`). The command output will be something like this:

```output
New '<server_name>.mi.infn.it:1 (<your_user_name>)' desktop is <server_name>.mi.infn.it:1

Starting applications specified in /home/<your_user_name>/.vnc/xstartup
Log file is /home/<your_user_name>/.vnc/<server_name>.mi.infn.it:2.log
```

Take note of the number appearing after `<server_name>.mi.infn.it:` (in the case above n = `1`).

In order to connect from your laptop you'll need to channel the connection through `ssh`. In order to do so, open a terminal and run the following command:

```bash
ssh -NL 5901:localhost:5901 <your_user_name>@<server_name>.mi.infn.it
```

You should replace `5901` with 5900 + n, where n is the number obtained from the output of the `vncserver` command.

Now open your VNC viewer and setup a connection to `localhost:1` where you should replace 1 with the n defined above. When connecting it will request the VNC password that you defined the first time you executed the `vncserver` command. Then you should be presented with the GNOME desktop on the server.
You may need to tweak some options in your VNC viewer to get the best performance. For example, try to set the picture quality to "High".

### Visual Studio Code Remote

[Microsoft Visual Studio Code](https://code.visualstudio.com/){:target="_blank"} is a free, very popular Integrated Development Environment (IDE). 

You can use VS Code through its [remote plugin](https://code.visualstudio.com/docs/remote/remote-overview){:target="_blank"}. You can use you local VS Code (installed in your laptop) and open a project/folder present in a remote machine. The performance is usually better because VS Code will only need to transfer back and forth the code you are working on (behind the scenes, you want even notice), while the actual graphic interface runs in your laptop. There is no special configuration to do because VS Code Remote uses `ssh` to communicate with the server. Simply follow the instruction in the VS Code remote [official docs](https://code.visualstudio.com/docs/remote/remote-overview){:target="_blank"}.
