#!/bin/bash

. test_failure2.sh

PROGNAME=$(basename $0)

function error_exit()
{
 echo "$PROGNAME: ${LINENO}: ${1:-"unknown error"}" 1>&2
}
create_file
read_file
test_file
