#! /bin/bash
cd multibin
for dir in *; do
	mkdir -p ../singlebin/"$dir" &&
	cd ../binmerge-master &&
	./binmerge -o ../singlebin/"$dir" ../multibin/"$dir"/"$dir".cue "$dir"
	done
