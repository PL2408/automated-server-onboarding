#!/bin/bash

if [ -z "$1" ]; then
  echo "No arguments provided."
  exit 1
else
  echo "Argument passed: $1"
fi

USERNAME=$1
PUB_KEY=${1}.pub

sudo useradd ${USERNAME} -m -b /home -s /bin/bash -G sudo
usermod -aG sudo ${USERNAME}

mkdir -p /home/${USERNAME}/.ssh

echo "folders were created"

touch /home/${USERNAME}/.ssh/authorized_keys
chmod 700 /home/${USERNAME}/.ssh
chmod 600 /home/${USERNAME}/.ssh/authorized_keys

echo "permissions are writen"

chown ${USERNAME}:${USERNAME} /home/${USERNAME}/.ssh
chown ${USERNAME}:${USERNAME} /home/${USERNAME}/.ssh/authorized_keys

echo "ownership is writen"

cat $PUB_KEY >> /home/${USERNAME}/.ssh/authorized_keys

echo "key is in authorized_keys"
