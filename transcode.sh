#!/bin/sh

IN=$1
OUT=$2
ART=album_art.jpg

# Transcode
ffmpeg -i $IN -c:a libfaac -vn -b:a 64k $OUT

echo "Done transcoding"
echo "Adding album art..."

# Add album art
./add-album-art $OUT $ART

echo "Done adding album art"
echo "Track length:"

# Print length
./audio-length $OUT
