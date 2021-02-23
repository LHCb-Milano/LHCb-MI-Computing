---
title: "Storage"
parent: "User documentation"
grand_parent: "Documentation for LHCb Milano computing"
nav_order: 1
---

## Storage

Each user has access to his/her own `home` directory and to a user work space in `\scratch\user\user_name`.

## Disk quotas

Quotas are implemented in two stages: *soft* and *hard*. When a *soft* quota is hit, a timer starts. The user gets a warning and he/she has *7 days* to clean up their space. When the timer pops, the user will be unable to write on disk. The *hard* quota takes effect immediately: when the quota is hit, the user cannot write on disk. The quotas of `home` and `scratch` are independent. The table below reports the standard quota assigned to each user.

| mount point | soft quota | hard quota |
|-------------|------------|------------|
| /home       | 150 GB     | 200 GB     |
| /scratch    | 1 TB       | 1.5 TB     |

Quotas also apply to the total number of files. However, this quota is very large (millions of files), so you will probably never hit it unless you create a huge number of very small files.

It is possible to allocate quotas for projects in `/scratch/project/project_name`. Users are assigned to a project and can access in read/write the project space.

### Check your quota

To check your quota in `/home`:

`xfs_quota -c 'quota -u -h <your_user_name>' /home`

To check your quota in `/scratch`

`xfs_quota -c 'quota -g -h <your_user_name>' /scratch`

### Check your disk space utilization

A useful command to check disk space utlization is the following:

```bash
du -h -d 1 . | sort -h
```

Execute it in your home directory or in your `scratch` space to check the space used by each subdirectory.
