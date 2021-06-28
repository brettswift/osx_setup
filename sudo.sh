#!/bin/bash

echo "Passwordless sudo has not been configured. "

echo "Please run: `sudo visudo` and change the line: "

echo "     %admin  ALL=(ALL) ALL"
echo " -- to -- "
echo "     %admin  ALL=(ALL) NOPASSWD: ALL"
