#!/bin/sh

if [ $# -lt 2 ]
then
    echo "Missing files directory or search string"
    exit 1
else 
    filesdir=$1
    searchstr=$2
fi

if [ -d ${filesdir} ]
then
    echo "files directory is created"
else 
    echo "files directory does not exist"
    exit 1
fi

total=$(find "$filesdir" -type f | wc -l)
found=$(grep -r ${searchstr} ${filesdir}/* | wc -l)
echo "The number of files are ${total} and the number of matching lines are ${found}"