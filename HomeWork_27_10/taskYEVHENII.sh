#!/bin/bash
#
myPath="/opt/220823_morning/Ashurov"
mkdir -p $myPath/temp

        for file in {1..10}
        do
	touch $myPath/temp/$file$(date +'%d.%m.%y')
        done

mkdir -p $myPath/hwarchive
tar -cvf $myPath/hwarchive/archive.tar --remove-files -C temp .
