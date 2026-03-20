#!/bin/bash
psgms='/home/gfrasca/prod/pointstreak_groupme/pointstreak-groupme/
/home/gfrasca/stage/pointstream_groupme/pointstreak-groupme/
/home/gfrasca/dev/pointstreak_groupme/pointstreak-groupme/'
for i in $psgms; do
	echo $i
	cd $i
	git pull
done
