#!/bin/sh
while true
do
youtube-dl https://frnksocial.mmdlive.lldns.net/frnksocial/0bae63f27d8944e3b4dc516a75e457f8/chunklist_b4192000.m3u8 -o "%(epoch)s.%(ext)s"
done

# Was used for archiving frankspeech before I stopped.
# Saves livestreams to videos named with the current epoch.
