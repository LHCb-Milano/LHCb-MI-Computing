#!/usr/bin/env bash

project=$1

if [ -z "${project}" ]; then
    echo "Should provide the project name."
    exit
fi

project_path="/scratch/project/${project}"

if [ -d "$project_path" ]; then
    echo "Project ${project} exists already."
    exit
fi

# creating group
sudo groupadd $project

# creating scratch project space and set ownership/permissions
sudo mkdir --mode=u+rwx,g+rws,o-w ${project_path}
sudo chown :${project} ${project_path}
sudo setfacl -Rdm g::rwx ${project_path}

# setting the quota
sudo xfs_quota -x -c "limit -g bsoft=3072g bhard=4096g isoft=10000000 ihard=20000000 ${project}" /scratch

echo "Project ${project} created in ${project_path}"
echo "Add users to the ${project} group with"
echo "'sudo usermod -a -G ${project} <user_name>'"
