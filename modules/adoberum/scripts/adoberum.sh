#!/bin/sh
# Get Adobe Remote Update Manager Log

CURRENT_USER=`/bin/ls -l /dev/console | /usr/bin/awk '{ print $3 }'`
# Skip manual check
if [ "$1" = 'manualcheck' ]; then
	echo 'Manual check: skipping'
	exit 0
fi
#  Check for RemoteUpdateManager in two locations
if [ -x /usr/bin/RemoteUpdateManager  -o -x /usr/local/bin/RemoteUpdateManager ]; then
echo "RemoteUpdateManager exists, lets get logfile"
    else 
    echo "RemoteUpdateManager doesnt exists"
    exit 0
fi

# Create cache dir if it doesnt exist
DIR=$(dirname $0)
mkdir -p "$DIR/cache"

# Get logfile latest 30 lines and clean some
report=`tail -n 30  /Users/$CURRENT_USER/Library/Logs/RemoteUpdateManager.log | cut -c 1-17,93-  | tr -d "#" | tr -d "*"`
# Get version
version=`tail -n 60 /Users/mikael/Library/Logs/RemoteUpdateManager.log | cut -c 1-17,93-  | tr -d "#" | tr -d "*" | grep "RemoteUpdateManager version" | cut -c 52-59`
# Get returncode
returncode=`echo "$report" | grep "Return Code"`

# Show five failed installs
failed1=`echo "$report" | grep -A 5  "Following" | sed -n '2p'`
failed2=`echo "$report" | grep -A 5  "Following" | sed -n '3p'`
failed3=`echo "$report" | grep -A 5  "Following" | sed -n '4p'`
failed4=`echo "$report" | grep -A 5  "Following" | sed -n '5p'`
failed5=`echo "$report" | grep -A 5  "Following" | sed -n '6p'`
 
echo "version =" "$version" >"$DIR/cache/adoberum.txt"
echo "returncode =" "$returncode" >>"$DIR/cache/adoberum.txt"
echo "failed1 =" "$failed2" >>"$DIR/cache/adoberum.txt"
echo "failed2 =" "$failed2" >>"$DIR/cache/adoberum.txt"
echo "failed3 =" "$failed3" >>"$DIR/cache/adoberum.txt"
echo "failed4 =" "$failed4" >>"$DIR/cache/adoberum.txt"
echo "failed5 =" "$failed5" >>"$DIR/cache/adoberum.txt"

exit 0
