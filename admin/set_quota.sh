#!/usr/bin/env bash

user=$1

if [ -z "${user}" ]; then
    echo "Should provide the user name."
    exit
fi

sudo xfs_quota -x -c "limit bsoft=150g bhard=200g isoft=1000000 ihard=2000000 ${user}" /home
sudo xfs_quota -x -c "limit -p bsoft=1024g bhard=1536g isoft=5000000 ihard=10000000 ${user}" /scratch
