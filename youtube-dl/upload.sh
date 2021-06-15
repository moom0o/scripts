#!/bin/bash
#-H x-archive-keep-old-version:0
ia upload $1 "$2" --metadata="collection:$1" --metadata="mediatype:movies" --retries 100000
rm "$2"
