## Train files

This folder provides the YouTube IDs of the files used for training and download scripts for the used subtitle information, extracted video clips and precomputed features. 

The subtitle information can be used to extract segments with the respective actions. 

Please uncomment the respective lines in the scripts.

Available are:

- videos_train.txt - YouTube IDs of respective training videos (in case you want to download yourself)
- download_subtitle_files.sh - Includes download links for:
    - subtitles.tar.gz : the orginial subtitle files, also including a cleaned version 
    - subtitles_sorted.tar.gz : the respective subtitle file for each video clip (sorted in folders according to the first char of the youtube ID) (Should be 375,580 subtitles)
    
- download_train_vid_files.sh - Includes download links for video clips:
    - vids_sorted.tar : pre-extracted video clips based on subtitles as described in the paper. Note that the segmentation and labels are created from subtitle and will(!) also include false labels. (Should be 376,722 clips)
    
- download_train_feat_files.sh - Includes download links for precomputed features:
    - packed_numpy_new_flow_rgb.tar : prepacked feature files in hdf5 format  
    - subtitles_sorted.tar.gz : the respective subtitle file for each video clip (sorted in folders according to the first char of the youtube ID)
 
If you're interested in the original video files, please ontact me under hildekuehne [at] gmx.de

#Naming conventions for clips: 

Each clip is named as follows: 

YouTubeID_clipXXX_action-1_action-2_..._action-n.mp4 

where: 
- YouTubeID is the ID of the original youtube video
- clipXXX - XXX is the number of the subtitle of that segment 
- action-1 ... action-n are the labels found for that clip in the respective subtitle. Note that the segmentation and labels are created from subtitle and will(!) also include false labels.

#Reading HDF5 files

H5 files can be read as follows (see also http://docs.h5py.org/en/latest/quick.html ): 

    import h5py

    hf = h5py.File(file_in, 'r');
    feat = hf.get('data')[()];
    labels = hf.get('labels')[()];
    subtitles = hf.get('subtitles')[()];
    filenames = hf.get('filenames')[()];
    hf.close();



- feat are [2048, num_frames] , and are stacked framewise flow and RGB features (1024 dim each) from 'global_pool' layer of the TSN framework, pretrained on Kinetics
- labels are [1, ..., n] labels for the respective clip, index is based on mapping_without_meta.txt 
- subtitles is a string with the respective subtitle to generate the labels
- filenames is the name of the original clip


