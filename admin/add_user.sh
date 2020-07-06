#!/usr/bin/env bash

user=$1

if [ -z "${user}" ]; then
    echo "Should provide the user name."
    exit
fi

if id "$user" >/dev/null 2>&1; then
    echo "User $user exists already."
    exit
fi

# adding user
sudo useradd $user

echo "Set a temporary password for new user $user"
sudo passwd $user

# creating scratch user space
sudo mkdir /scratch/user/$user
sudo chown $user:$user /scratch/user/$user

# setting the quota
./set_quota.sh $user
