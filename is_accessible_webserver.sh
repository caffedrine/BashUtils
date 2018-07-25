#!/bin/bash

# Check whether a webserver is accessible or not
# Usage: ./script_name <server_ip_or_hostname>

function is_accessible_webserver()
{
	nc -v -z -w 3 $1 80 &> /dev/null && return 1 || return 0
}


# Usage 
url=$1

is_accessible_webserver $url
if [ $? -eq 1 ]; then
	printf "Valid webserver!\n"
else
	printf "Invalid webserver!\n"
fi