#!/bin/bash

sed -i '' '26d;25d;24d' /Users/omarrayyann/.ssh/known_hosts

HOST1="olr7742@greene.hpc.nyu.edu"
HOST2="gv010.hpc.nyu.edu"

get_password() {
    cat password.txt
}

PASSWORD=$(get_password)

ssh -o StrictHostKeyChecking=no -o PasswordAuthentication=no -L 9876:localhost:9876 -L 9877:localhost:9877 "$HOST1" &
ssh -o StrictHostKeyChecking=no -o PasswordAuthentication=no -L 9876:localhost:9876 -L 9877:localhost:9877 "$HOST2" &

sshpass -p "$PASSWORD" ssh -o StrictHostKeyChecking=no -o PasswordAuthentication=no -L 9876:localhost:9876 -L 9877:localhost:9877 "$HOST1" &
sshpass -p ssh -o StrictHostKeyChecking=no -o PasswordAuthentication=no -L 9876:localhost:9876 -L 9877:localhost:9877 "$HOST2" &
