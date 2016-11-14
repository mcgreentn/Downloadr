#!/bin/bash

echo Welcome to Downloadr, an application for downloading Youtube videos!
echo Please enter an address to either a Youtube video or playlist:

read ADDRESS
echo "#################################"
echo "####       PLEASE  WAIT      ####"
echo "#################################"

mkdir temp && cd temp
youtube-dl -f mp4 $ADDRESS

#for file in "`find . -type f  -name '*.mp4'`"
for file in *.mp4
 do
  ffmpeg -i "$file" -aq 2 "$file.mp3"
  mv "$file.mp3" ~/Music/
 done
cd .. && rm -rf temp
echo "**Operation complete"

