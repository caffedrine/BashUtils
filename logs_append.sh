#!/bin/bash

function log()
{
	filename=test.txt
	timestamp="[$(date +%H:%M:%S)]"
	message="$timestamp $1"

	printf "$message\n" >> $filename
	printf "$message\n"
}

# Test
for i in `seq 1 13`; do
	log $i
	sleep .1
done