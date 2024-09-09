# automated-server-onboarding CentOS Linux server
This project provides a Bash script for automating the process of adding a new user to a CentOS Linux server. It sets up SSH access for the user, assigns the user to the `sudo` group, and configures the system to allow the user to run `sudo` commands without being prompted for a password.

## Prerequisites

- You must have `sudo` privileges on the server.
- You should have the public SSH key for the new user available.

## Script Overview

The script performs the following steps:
1. Creates a new user with the specified username.
2. Adds the user to the `sudo` group.
3. Sets up the `.ssh` directory for the user and configures `authorized_keys`.
4. Ensures appropriate permissions are set on the `.ssh` directory and files.
5. Appends the user's public SSH key to `authorized_keys`.
6. Optionally configures the system to allow passwordless `sudo` for the user.

## How to Use

1. Clone this repository:
   ```bash
   git clone https://github.com/your-username/automated-server-onboarding.git
   cd automated-server-onboarding
