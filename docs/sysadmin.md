---
title: System administrators documentation
---

# Introduction
In the `admin` directory there are some tools to help with system adiministration.

The `skel` directory contains some useful file to use as skeleton home for new users. You should have these files inside `/etc/skel`.

# Add a new user
Run this command: `./add_user.sh new_user_name`.

The command:
- creates the new user;
- creates a new folder under `/scratch/user/new_user_name` and assign new_user_name as its owner;
- set the disk quotas using the script `set_quota.sh`.

# Set disk quota for a user
Run this command: `./set_quota.sh user_name`.

This command sets the default disk quotas for a given user.

# Set up the VNC server

# Set up the Jupyter server
