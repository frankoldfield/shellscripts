#!/bin/bash
cat $1 | grep -i -o [[:alpha:]] | sort | uniq | while read letra
do
	echo "$letra ($(cat $1 | grep -i -o [[:alpha:]] | grep -c "$letra"))"
done

exit 0
