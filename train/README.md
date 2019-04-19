## Train files

This folder provides an index of the files used for training the respective, automatically generated segmentation information, if you want to use it. 

The segmentation information can be used to extraced segments with the respective actions. Note that the segmentation is createds automatically and will(!) also include false labels

We further provide features of the segmented clips, please use the 'download_train_files.sh' script to download all further files. Available are:

- segmentation 
- clips (in .mp4)
- features in numpy format
- features in numpy format, rgb and flow oncatenated, pre packed in chuncks of 1000 clips for easier loading:

Please uncomment the respective lines in the script.

If you're interested in the original video files and/or the subtitles used, 
