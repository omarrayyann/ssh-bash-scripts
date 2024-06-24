#!/bin/bash

HOST1="olr7742@greene.hpc.nyu.edu"
HOST2="gv010.hpc.nyu.edu"

ssh -L 9876:localhost:9876 -L 9877:localhost:9877 "$HOST1" &
ssh -L 9876:localhost:9876 -L 9877:localhost:9877 "$HOST2" &
