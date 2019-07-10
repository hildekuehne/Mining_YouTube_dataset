
#!/bin/sh

echo 'Please uncomment the files you want to download ... '

## segmentation (76 MB)(org link https://drive.google.com/file/d/1JfvbwdfEqV8aHQ-E87_vtyaZeSCiGkTo)
# wget --load-cookies ./cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies ./cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=1JfvbwdfEqV8aHQ-E87_vtyaZeSCiGkTo' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1JfvbwdfEqV8aHQ-E87_vtyaZeSCiGkTo" -O segmentation.tar.gz && rm -rf ./cookies.txt
# mkdir ./segmentation
# tar xf segmentation.tar.gz -C ./segmentation

## clips (in .mp4, 204GB) (org link  https://drive.google.com/file/d/1imWhxixFEB7V4ASJ3tXYpoBZ8hA6ht00)
# wget --load-cookies ./cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies ./cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=1imWhxixFEB7V4ASJ3tXYpoBZ8hA6ht00' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1imWhxixFEB7V4ASJ3tXYpoBZ8hA6ht00" -O vids_train.tar.gz && rm -rf ./cookies.txt
# mkdir ./vids_train
# tar xf vids_train.tar.gz -C ./vids_train


## features in numpy format
## rgb1 70 GB (org link https://drive.google.com/file/d/13zo0UPqlruutKEkKS0g6QEuKNt-Hi0uf)
# wget --load-cookies ./cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies ./cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=13zo0UPqlruutKEkKS0g6QEuKNt-Hi0uf' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=13zo0UPqlruutKEkKS0g6QEuKNt-Hi0uf" -O rgb_numpy1.tar.gz && rm -rf ./cookies.txt

## rgb2 55 GB (org link https://drive.google.com/file/d/1_PCjQ0LKjzSB_v53AzFl-yzDTVDZ_HTq)
# wget --load-cookies ./cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies ./cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=1_PCjQ0LKjzSB_v53AzFl-yzDTVDZ_HTq' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1_PCjQ0LKjzSB_v53AzFl-yzDTVDZ_HTq" -O rgb_numpy2.tar.gz && rm -rf ./cookies.txt
# mkdir ./rgb_numpy
# tar xf rgb_numpy1.tar.gz -C ./rgb_numpy
# tar xf rgb_numpy2.tar.gz -C ./rgb_numpy

## flow1 76 GB (org link https://drive.google.com/file/d/1VG9oaTZ00z2xbCtSy240eKstCNGXKwV6)
# wget --load-cookies ./cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies ./cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=1VG9oaTZ00z2xbCtSy240eKstCNGXKwV6' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1VG9oaTZ00z2xbCtSy240eKstCNGXKwV6" -O flow_numpy1.tar.gz && rm -rf ./cookies.txt

## flow2 66 GB (org link https://drive.google.com/file/d/1E9AJngHFUlcuotaZ6dr5t6mUX9-X0aPf)
# wget --load-cookies ./cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies ./cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=1E9AJngHFUlcuotaZ6dr5t6mUX9-X0aPf' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1E9AJngHFUlcuotaZ6dr5t6mUX9-X0aPf" -O flow_numpy2.tar.gz && rm -rf ./cookies.txt
# mkdir ./flow_numpy
# tar xf flow_numpy1.tar.gz -C ./flow_numpy
# tar xf flow_numpy2.tar.gz -C ./flow_numpy


## features in numpy format, pre packed in chuncks of 1000 clips for easier loading:
## part1 (151 GB) (org link https://drive.google.com/file/d/1xRAnz8Okrl4NDaXJiQQPFAeWuiGFZury)
# wget --load-cookies ./cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies ./cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=1xRAnz8Okrl4NDaXJiQQPFAeWuiGFZury' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1xRAnz8Okrl4NDaXJiQQPFAeWuiGFZury" -O rgb_flow_numpy1.tar.gz && rm -rf ./cookies.txt

## part2 (103 GB) (org link https://drive.google.com/file/d/15S8rbf7YDjU83rqCidfPVbDQAYJzOnwP)
# wget --load-cookies ./cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies ./cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=15S8rbf7YDjU83rqCidfPVbDQAYJzOnwP' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=15S8rbf7YDjU83rqCidfPVbDQAYJzOnwP" -O rgb_flow_numpy2.tar.gz && rm -rf ./cookies.txt
# mkdir ./rgb_flow_numpy
# tar xf rgb_flow_numpy1.tar.gz -C ./rgb_flow_numpy
# tar xf rgb_flow_numpy2.tar.gz -C ./rgb_flow_numpy

