#!/bin/sh

if [ $# -lt 2 ]
then
    echo "Missing parameter"
    exit 1
else 
    writefile=$1
    writestr=$2
fi

# echo "Preparing to write ${writestr} into ${writefile} file"

writedir=$(dirname ${writefile})
if [ ! -d ${writedir} ]
then
    mkdir -p "$writedir"
fi

echo ${writestr} > ${writefile}
writeresult=$?
if [ $writeresult -ne 0 ]; then
    echo "Write file failed"
fi