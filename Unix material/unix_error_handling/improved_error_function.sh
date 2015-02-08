#!/bin/bash

# this is a slicker errror handling method
# this accepts a string to show the error
# in cas the string is not avaialbnle then 
# replacement takes place


PROGNAME=$(basename $0)

function error_exit()
{
echo "${PROGNAME}: ${1:-"Unknown error"}" 1>&2
exit 1

}

echo "an example of error with line number and message"
error_exit "$LINENO: An error has occured"

