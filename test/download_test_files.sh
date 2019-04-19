#!/bin/sh

## raw features (txt), rgb and flow
## rgb (raw) 3 GB:
# wget https://drive.google.com/open?id=184Y5SUx2K0H_eAm6xFCug1jNnQ1SQIJY
## flow (raw) 3 GB:
# wget https://drive.google.com/open?id=1Dt-lRmJlmxqxKqrAyBcT7tvxEvgasRPh

## features in numpy format, rgb and flow are alreadu concatenated (2048 dim vector per frame) 15 GB:
# wget https://drive.google.com/file/d/1VitgCDmX9GWPOCx0JI3er-2w25d5Wh_g

## ground truth (frame based and per file) 10 MB:
# wget https://drive.google.com/open?id=1ZT-iIioLJVS1QNtedETcu1C5T7aiF0Jx

# transcript (transcript of each video) 1 MB:
# wget https://drive.google.com/file/d/17svyrOhgLa7hQVFbEYwxX1p27tguvEfk

echo 'DONE!'
