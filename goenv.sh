#!/bin/bash

# Source this script from within any directory within a valid potential
# GOPATH and it will set it.  It looks for the first parent directory
# named "go" or "Go" and sets GOPATH to it.

c=$(pwd)/dummy
while :
do
	d=$(basename $(dirname $c))
	if [ "$d" == "/" ]; then
		echo not a valid GOPATH
		break
	elif [ "$d" == "go" ] || [ "$d" == "Go" ]; then
		export GOPATH=$(dirname $c)
		export PATH=$PATH:$GOPATH/bin
		echo GOPATH set to $GOPATH
		echo Appended $GOPATH/bin to PATH
		break
	else
		c=$(dirname $c)
	fi
done

