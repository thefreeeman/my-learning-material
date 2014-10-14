#!/bin/bash

function error_exit()
{
 	echo "$1" 1>&2
	exit 1
}

cd link2 || error_exit "this is a bad command"
ll
