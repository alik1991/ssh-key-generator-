#!/bin/bash

# Function to generate SSH keys
generate_keys() {
    echo "Generating SSH keys..."
    read -p "Enter the location to store the keys: " key_location
    read -p "Enter the name for the keys: " key_name
    read -p "Enter the number of servers: " num_servers

    # Generate SSH keys
    ssh-keygen -t rsa -b 4096 -C "Generated by SSH Key Script" -f "$key_location/$key_name"

    # Loop through each server to send the keys
    for ((i=1; i<=num_servers; i++)); do
        if [ $num_servers -gt 2 ]; then
            server_name="server$i"
        else
            read -p "Enter the name or IP address of server $i: " server_name
        fi
        read -p "Enter the username for server $server_name (default is current user): " username
        username=${username:-$(whoami)}
        read -p "Enter the port number for server $server_name (default is 22): " port
        port=${port:-22}
        
        # Send the SSH key to the server
        ssh-copy-id -i "$key_location/$key_name" -p $port $username@$server_name
    done
}

# Execute function to generate keys
generate_keys
