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

# creating project for user
uderid=$(id -u $user)
echo "$userid:/scratch/user/$user" | sudo tee -a /etc/projects >> /dev/null
echo "$user:$userid" | sudo tee -a /etc/projid >> /dev/null
sudo xfs_quota -x -c "project -s $user" /scratch

# setting the quota
./set_quota.sh $user
