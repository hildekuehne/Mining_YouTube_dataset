#!/bin/sh

echo 'Please uncomment the files you want to download ... '


################
## subtitles for complete videos - subtitles.tar.gz
## (76 MB)(org link https://drive.google.com/open?id=1A2gFE2wiOq80ZQ-fWWBf3JSDplIwQT6-)
################
wget --load-cookies ./cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies ./cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=1A2gFE2wiOq80ZQ-fWWBf3JSDplIwQT6-' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1A2gFE2wiOq80ZQ-fWWBf3JSDplIwQT6-" -O subtitles.tar.gz && rm -rf ./cookies.txt
tar xzf subtitles.tar.gz
find -name "*tar.gz" -exec tar xzf '{}' \;
cd ..

################
## subtitles as single files for pre-cut video clips - subtitles_sorted.tar.gz
## (76 MB)(org link https://drive.google.com/open?id=1IQIei6K0zBt7CRQxzXb9viBhcVUZ6goi)
################
wget --load-cookies ./cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies ./cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=1IQIei6K0zBt7CRQxzXb9viBhcVUZ6goi' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1IQIei6K0zBt7CRQxzXb9viBhcVUZ6goi" -O subtitles_sorted.tar.gz && rm -rf ./cookies.txt
tar xzf subtitles_sorted.tar.gz
find -name "*tar.gz" -exec tar xzf '{}' \;
cd ..


