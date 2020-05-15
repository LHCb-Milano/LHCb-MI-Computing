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

See the [user documentation](../users/storage.md) for more information about disk quota.

### Technical details on disk quotas
The disk quotas are implemented as *user* quotas in `/home` and as *project* quotas in `/scratch`.
User quotas are based on file ownership, regardless of the location of the file (inside the mount point).
Project quotas are based on file location, regardless of file ownership.

In order to mimic user quotas in `/scratch`, we give users write permissions only to their own space (`/scratch/user/user_name`), so that each file they create will count against their "project" quotas. However, project quotas are more flexible than user quotas, since we can also create actual projects in `/scratch/project`. In that case, we create also a project group and assign relevant users to that project group. Both the project leader and project group own the project directory and all its files and have read/write permissions.

Instructions to set up user, group and project quotas are found in [this webpage](https://www.linuxtechi.com/disk-quota-xfs-file-system-linux-servers/){:target="_blank"}.
