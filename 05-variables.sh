#!/bin/bash

## we can get the values from prompting through the "read" command

echo "enter username"
read USERNAME
echo "Username entered is: $USERNAME"

echo "enter password"
read -s PASSWORD
# this is only for validation should not be printed in terminal
echo "Username entered is: $PASSWORD"
