#!/bin/bash
set -e

sudo cp /etc/sudoers /etc/sudoers.bak

sudo sed -i 's/^# %wheel ALL=(ALL) NOPASSWD: ALL/%wheel ALL=(ALL) NOPASSWD: ALL/' /etc/sudoers

sudo visudo -c

if [ $? -eq 0 ]; then
  echo "Sudoers file updated and syntax is correct."
else
  echo "There was an error in the sudoers file. Restoring backup."
  sudo cp /etc/sudoers.bak /etc/sudoers
  exit 1
fi
