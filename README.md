## SSH Key Distribution Script

This Bash script automates the process of generating SSH keys and distributing them to specified servers. It is particularly useful for managing SSH access to multiple servers, such as in a production environment.

### Features:
- Dynamically generates SSH keys based on user input for location and name.
- Allows customization of key names and server names/IP addresses.
- Automatically assigns sequential server names if distributing keys to more than two servers.
- Prompts for username and port number for each server (default port is 22).
- Copies the generated SSH key to each server using `ssh-copy-id`.

### Usage:
1. Clone or download the script to your local machine.
2. Make the script executable: `chmod +x ssh_key_distribution.sh`.
3. Run the script: `./ssh_key_distribution.sh`.
4. Follow the prompts to specify the location and name for the SSH keys, the number of servers, and the details for each server.
5. The script will generate the SSH keys and distribute them to the specified servers.

### Dependencies:
- OpenSSH (for `ssh-keygen` and `ssh-copy-id`)

### License:
This script is licensed under the MIT License. Feel free to modify and distribute it according to your needs.

