#!/bin/bash
# creating and using a temp file
tempfile=$(mktemp test19.XXXXXX)
exec 3>$tempfile
echo "This script writes to temp file $tempfile"
echo "This is the first line" >&3
echo "This is the second line" >&3
echo "This is the third line" >&3
exec 3>&-
echo "Done creatingtemp file. the contents are:"
cat $tempfile
rm -f $template 2> /dev/null

