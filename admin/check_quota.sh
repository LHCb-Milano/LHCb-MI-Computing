#!/usr/bin/env bash

sudo xfs_quota -x -c 'report -ibh' /home
sudo xfs_quota -x -c 'report -ibh' /scratch
