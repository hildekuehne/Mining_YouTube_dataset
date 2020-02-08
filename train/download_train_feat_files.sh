
#!/bin/sh

echo 'Please uncomment the files you want to download ... '

################
## packed_numpy_new_flow_rgb.tar - features, subtitles, and labels, pre packed in HDF files of 1000 clips each for easier loading:
################
# FILE_ID = "1A2gFE2wiOq80ZQ-fWWBf3JSDplIwQT6-"
# wget --load-cookies ./cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies ./cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=$FILE_ID' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=$FILE_ID" -O packed_numpy_new_flow_rgb.tar && rm -rf ./cookies.txt
# tar xf packed_numpy_new_flow_rgb.tar -C ./packed_numpy_new_flow_rgb


################
## features as single files in numpy format:
################
## rgb: numpy_rgb_sorted_tar
## 70 GB (org link https://drive.google.com/file/d/13zo0UPqlruutKEkKS0g6QEuKNt-Hi0uf)
################
# FILE_ID = "1A2gFE2wiOq80ZQ-fWWBf3JSDplIwQT6-"
# wget --load-cookies ./cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies ./cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=$FILE_ID' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=$FILE_ID" -O numpy_rgb_sorted_tar.tar && rm -rf ./cookies.txt
# tar xf numpy_rgb_sorted_tar.tar

## IF you want to unpack all data at once (double check if you have enough free space)
# cd ./numpy_rgb_sorted_tar
# find -name "*tar.gz" -exec tar xzf '{}' \;
# cd ..


################
## flow: numpy_flow_sorted_tar.tar
## 70 GB (org link https://drive.google.com/file/d/13zo0UPqlruutKEkKS0g6QEuKNt-Hi0uf)
#################
# FILE_ID = "1A2gFE2wiOq80ZQ-fWWBf3JSDplIwQT6-"
# wget --load-cookies ./cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies ./cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=$FILE_ID' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=$FILE_ID" -O numpy_flow_sorted_tar.tar && rm -rf ./cookies.txt
# tar xf numpy_flow_sorted_tar.tar.gz

## IF you want to unpack all data at once (double check if you have enough free space)
# cd ./numpy_flow_sorted_tar
# find -name "*tar.gz" -exec tar xzf '{}' \;
# cd ..


