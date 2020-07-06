---
title: "User management"
parent: "System administrators documentation"
grand_parent: "Documentation for LHCb Milano computing"
nav_order: 1
---

## Add a new user

Run this command: `./add_user.sh new_user_name`.

The command:

- creates the new user;
- creates a new folder under `/scratch/user/new_user_name` and assign new_user_name as its owner;
- set the disk quotas using the script `set_quota.sh`.

## Set disk quota for a user

Run this command: `./set_quota.sh user_name`.

This command sets the default disk quotas for a given user.

See the [user documentation](../users/storage.md) for more information about disk quota.

### Technical details on disk quotas

The disk quotas are implemented as *user* quotas in `/home` and as *group* quotas in `/scratch`.

Users have read/write permissions only in their own space (`/scratch/user/user_name`).
To create a new project, first create a new group with the same name and a work directory in `/scratch/project`. The new directory must be owned by the new group, which also has read/write permissions. Users participating in the project should be added to the corresponding group, so that they can read/write the directory. Two trick are needed to make this work flawlessly (see also [this link](https://unix.stackexchange.com/a/115632){:target="_blank"}):

1. The group ownership should be inherited from the parent directory for all new files created in the project directory.
2. The group read/write permissions should be inherited from the parent directory. This is achieved through ACL.

Instructions to set up user, group and project quotas are found in [this webpage](https://www.linuxtechi.com/disk-quota-xfs-file-system-linux-servers/){:target="_blank"}.
