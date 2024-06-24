#!/bin/bash

# Remove specific lines from known_hosts file
sed -i '' '26d;25d;24d' /Users/omarrayyann/.ssh/known_hosts

# Define variables for SSH hosts
HOST1="olr7742@greene.hpc.nyu.edu"
HOST2="gv010.hpc.nyu.edu"

# Forward ports for HOST1
ssh -L 9876:localhost:9876 -L 9877:localhost:9877 "$HOST1" &

# Forward ports for HOST2
ssh -L 9876:localhost:9876 -L 9877:localhost:9877 "$HOST2" &
