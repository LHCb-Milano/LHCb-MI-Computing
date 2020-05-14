# LHCb Milano Computing

## User documentation

This documentation is intended for the servers maintained by the LHCb Milano group.

### Access
You can access the server through Secure Shell (`ssh`) as usual.
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

#### VNC (remote desktop)

#### Visual Studio Code Remote

### LHCb Software
The LHCb software is available through [CVMFS](https://cernvm.cern.ch/portal/filesystem).

Use the following command to activate the LHCb environment:

`source /cvmfs/lhcb.cern.ch/lib/etc/cern_profile.sh`

You should land on an environment very similar to CERN lxplus. For convenience, you can put this in your `.bashrc` file (this like should be there already, you only need to uncomment it).

### Additional software
Some additional software is available through the [Software Collections for CERN CentOS 7](https://linux.web.cern.ch/centos7/docs/softwarecollections/).
For example if you want a newer version of `git` you can do: `source scl_source enable rh-git218`. Also in this case you can put this line in you `.bashrc` for convenience.

### Jupyter server

### GPU

## System administrators
In the `admin` directory there are some tools to help with system adiministration.

The `skel` directory contains some useful file to use as skeleton home for new users. You should have these files inside `/etc/skel`.

### Add a new user
Run this command: `./add_user.sh new_user_name`.

The command:
- creates the new user;
- creates a new folder under `/scratch/user/new_user_name` and assign new_user_name as its owner;
- set the disk quotas using the script `set_quota.sh`.

### Set disk quota for a user
Run this command: `./set_quota.sh user_name`.

This command sets the default disk quotas for a given user.

### Set up the VNC server

### Set up the Jupyter server
