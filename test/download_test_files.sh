#!/bin/sh

echo 'Please uncomment the files you want to download ... '

################
## all test data - data_test.tar.gz
## includes full videos, features, transcripts, and groundtruht
################
# wget --load-cookies ./cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies ./cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=1wmJvkvqZoqsD8rvFVZ3KLV2vV9WXv89R' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1wmJvkvqZoqsD8rvFVZ3KLV2vV9WXv89R" -O data_test.tar.gz && rm -rf ./cookies.txt
# tar xzf data_test.tar.gz

echo 'DONE!'
