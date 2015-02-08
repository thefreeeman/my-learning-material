#!/bin/bash

# another program to show how an error can be handlied 
# using proper error handling function


PROGNAME=$(basename $0)
function error_exit()
{

echo "$PROGNAME: ${1:-"Unknown error"}" 1>&2
}

error_exit "$LINENO: Something went wrong"
