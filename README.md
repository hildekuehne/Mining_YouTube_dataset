# Mining YouTube dataset


The Mining YouTube dataset (working title 'Weak YouTube dataset') is a large-scale real-world benchmark designed to evaluate automated learning techniques for human action recognition without humanly annotated training data. 

The here presented dataset is based on the idea that it should be possible to learn action classes and concepts from unannotated videos.

The dataset comprises 512 different classes (incl. background 513) in form of verb oject combinations, based on 94 different verbs and 171 objects.

![Sample classes](https://www.dropbox.com/s/5z18e5t4rpp0q15/Bild1.png)



## Training data

To gather training data we make use of the spoken language within in the videos to extract possible class labels. It follows the idea that, especially in the context of instructional videos, people usually explain and comment their actions to the viewers, so the performed actions are named during execution, and that those indicators will be sufficient to learn action classes from video data without the need for human intervention. We use publically available video content from YouTube. To avoid crawling millions of videos at random we restrict the dataset domain to cooking videos and further focus on five simple dishes based on egg preparation which are “eggroll”, “fried egg”, “pancake”, “omelette” and “scrambled egg”, as they all share common tasks and are suitable for the mining of related action classes.

Overall the training video base consists of ~20000 video IDs.

The training samples are minded by searching for the respective annotated classes within the subtitles of freely available videos. Please refer to the paper for a deeper analysis of different mining strategies.

![Example for simple class mining](https://www.dropbox.com/s/9qn5d9srl01lc4b/Bild3.png)

## Test da


The test set consits of 250 randomly select cooking videos, 50 from the search query of each dish. 

The test videos are densely annotated, thus each frame is labeled with its respective action class. 

The annotators were instructed to label all visible actions in the videos. Additionally, they were also supposed to listen to the descriptions from audio comment and give the mentioned verb object combinations priority. If an action is visible without audio comment, they were instructed to annotate the respective class from the dictionary. 

All annotated action classes are further checked if they appear at least 10 times in the training data.

![Example for fully annotated test video](https://www.dropbox.com/s/71sedb9c6x5zadw/image_1200.png)


## Feature computation

We provide features for the training samples and the test data. For feature computation we use the Temporal Segment Network
framework pretrained on the Kinetics dataset. We extract features from the output of the last global pooling layer of the spatial and temporal stream of the BNInception architecture. We forward only the center crop of each frame through the spatial and the temporal stream and process every second frame of all clips.


## Task description

To evaluate the performance of the different methods and descriptors, we regard the task of temporal alignment of frames to a given ordered set of action classes. For this task, the transcript of a video as well as the video itself is available at test time and the goal is to temporally align the video frames to the given list of ordered actions. The task of temporal alignment has the advantage that the action classes to detect are already predefined. This relaxes the problem of false synonym labels as in this case e.g. “add oil” will usually not be mixed up with “pour oil” and thus does not result in a false label. As performance measure, we use the Jaccard index computed as intersection over union (IoU) and intersection over detection (IoD).
