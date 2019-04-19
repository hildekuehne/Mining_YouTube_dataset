## Train files

This folder provides an index of the files used for training the respective, automatically generated segmentation information, if you want to use it. 

The segmentation information can be used to extraced segments with the respective actions. Note that the segmentation is createds automatically and will(!) also include false labels

We further provide features of the segmented clips, please use the 'download_train_files.sh' script to download all further files. Available are:

- raw features (txt), rgb and flow
- features in numpy format, rgb and flow are alreadu concatenated (2048 dim vector per frame) 
- ground truth (frame based and per file) 
- transcript (transcript of each video) 

Please uncomment the respective lines in the script.

If you're interested in the original video files and/or the subtitles used, 
