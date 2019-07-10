#!/bin/sh

echo 'Please uncomment the files you want to download ... '

## raw features (txt), rgb and flow
# echo 'rgb (raw) 3 GB: (org link https://drive.google.com/open?id=184Y5SUx2K0H_eAm6xFCug1jNnQ1SQIJY)'
# wget --load-cookies ./cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies ./cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=184Y5SUx2K0H_eAm6xFCug1jNnQ1SQIJY' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=184Y5SUx2K0H_eAm6xFCug1jNnQ1SQIJY" -O rgb_raw.tar.gz && rm -rf ./cookies.txt

# echo 'flow (raw) 3 GB: (org link https://drive.google.com/open?id=1Dt-lRmJlmxqxKqrAyBcT7tvxEvgasRPh)'
# wget --load-cookies ./cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies ./cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=1Dt-lRmJlmxqxKqrAyBcT7tvxEvgasRPh' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1Dt-lRmJlmxqxKqrAyBcT7tvxEvgasRPh" -O flow_raw.tar.gz && rm -rf ./cookies.txt

## same features in numpy:
# echo 'features in numpy format, rgb and flow are already concatenated (2048 dim vector per frame) 15 GB: (org link https://drive.google.com/file/d/1VitgCDmX9GWPOCx0JI3er-2w25d5Wh_g)'
# wget --load-cookies ./cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies ./cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=1VitgCDmX9GWPOCx0JI3er-2w25d5Wh_g' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1VitgCDmX9GWPOCx0JI3er-2w25d5Wh_g" -O rgb_flow_numpy.tar.gz && rm -rf ./cookies.txt


## additional data:
# echo 'ground truth (frame based and per file) 10 MB: (org link https://drive.google.com/open?id=1ZT-iIioLJVS1QNtedETcu1C5T7aiF0Jx)'
# wget --load-cookies ./cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies ./cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=1ZT-iIioLJVS1QNtedETcu1C5T7aiF0Jx' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1ZT-iIioLJVS1QNtedETcu1C5T7aiF0Jx" -O groundtruth.tar.gz && rm -rf ./cookies.txt

# echo 'transcript (transcript of each video) 1 MB: (org link https://drive.google.com/file/d/17svyrOhgLa7hQVFbEYwxX1p27tguvEfk)'
# wget --load-cookies ./cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies ./cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=17svyrOhgLa7hQVFbEYwxX1p27tguvEfk' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=17svyrOhgLa7hQVFbEYwxX1p27tguvEfk" -O transcript.tar.gz && rm -rf ./cookies.txt


echo 'DONE!'
