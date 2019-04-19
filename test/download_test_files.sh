#!/bin/sh

# raw features (txt), rgb and flow
wget $url

# features in numpy format, rgb and flow are alreadu concatenated (2048 dim vector per frame)
wget $url

# ground truth (frame based and per file)
wget

# transcript (transcript of each video)
wget

echo 'DONE!'
