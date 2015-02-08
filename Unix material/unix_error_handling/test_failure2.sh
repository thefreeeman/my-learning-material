#!/bin/bash

function create_file()
{
echo "plaese enter something in the file"
pr $1 > somefile
}

function read_file()
{
echo -n "please enter if you want to read(y/n)?"
read
if [ "$REPLY" == 'y' ]; then
	less somefile
else
	echo "file could not be read"
	error_exit "file could not be read"
	exit 1
fi

echo "this is not the end of the file yet...haha!!"
}

function test_file()
{
echo "this function simply tests the file"
[ -f somefile ] && echo "this is not just a file, its life!!!"
}
