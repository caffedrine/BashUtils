#!/bin/bash

# Use ping to check whether a host is up or not
# Usage: ./script_name <server_ip_or_hostname>

function is_host_up()
{
	if ping -c 1 -w 1 $1 &> /dev/null
   	then
   		return 1
   	else
		return 0
	fi 
}

# Fetch host from params
host=$1

# Call function
is_host_up $host

# Check result value
if [ $? -eq 1 ]; then
	printf "Host UP\n"
else
	printf "Host DOWN \n"
fi