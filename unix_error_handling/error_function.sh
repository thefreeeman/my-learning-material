#!/bin/bash
#set -x
#
#previous_install_dir=`readlink link1`
#echo $previous_install_dir
#
#if [[ "X$previous_install_dir" != 'X' ]] && [[ -d $previous_install_dir ]]
#then
#	cd $previous_install_dir && zip -rT backup.zip . \
#		&& mv backup.zip ./../ \
#			&& echo "backup dir deleted" \
#				&& rm -fv link1
#else
#	echo "bad command"
#fi
#ln -sv myGitProjects link1

function error_exit()
{

	echo "$1" 1>&2
	exit 1
}


if $(cd link2); then
	echo "link2 is alive"
else
	echo "sorry the link is down"
	error_exit "The link is dead buddy"
	exit 1
fi


