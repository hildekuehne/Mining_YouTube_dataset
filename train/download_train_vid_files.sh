#!/bin/sh

echo 'Please uncomment the files you want to download ... '


################
## video_clips - vids_sorted.tar
## precut video clips as single files
################
## (in .mp4, 204GB) (org link  https://drive.google.com/file/d/1imWhxixFEB7V4ASJ3tXYpoBZ8hA6ht00)
# wget --load-cookies ./cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies ./cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=$FILE_ID' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=$FILE_ID" -O vids_sorted.tar && rm -rf ./cookies.txt
# tar xf vids_sorted.tar

## IF you want to unpack all data at once (double check if you have enough free space)
# cd ./vids_sorted
# find -name "*tar.gz" -exec tar xzf '{}' \;
# cd ..


