#!/bin/bash

if [ $# -eq 0 ]
  then
    echo "Please supply a song/playlist url as an argument"
    exit 1
fi

poetry run python zspotify $1
loudgain -I4 -S -r -k -s e /mnt/d/Musik/Spotify/rec/*/*.m4a
loudgain -I4 -S -r -k -s e /mnt/d/Musik/Spotify/rec/*/*.mp3
