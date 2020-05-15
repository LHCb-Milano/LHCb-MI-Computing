---
title: "User management"
parent: "System administrators documentation"
grand_parent: "Documentation for LHCb Milano computing"
nav_order: 1
---

# User management

## Add a new user
Run this command: `./add_user.sh new_user_name`.

The command:
- creates the new user;
- creates a new folder under `/scratch/user/new_user_name` and assign new_user_name as its owner;
- set the disk quotas using the script `set_quota.sh`.

## Set disk quota for a user
Run this command: `./set_quota.sh user_name`.

This command sets the default disk quotas for a given user.
