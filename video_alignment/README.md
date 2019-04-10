# video_alignment

This folder contains a small running example for video alignment. To run the example, please go to folder ./src and type:

python video_alignment.py

The example needs (all sample files are provided under data):

* a dictionary file - a list with all class names, class ids will be internally mapped to the line in the dictionary file ( here: file_dict = './data/weakYouTube_dict.txt')
* a length model file - a file with the expectied length of each class, just use a dummy value if nothing else (here: file_length = './data/weakYouTube_length.txt')
* a transcript file - a files which denotes the order of the classes as they apear in the video ( here: file_grammar = './data/grammar/-1okAudsnAc.grammar')
* the probability input - the probabilities of each class for each frame in the video. Class ordering needs to be the same as in the dicttionary file. (here: file_probs = './data/probs/-1okAudsnAc.probs');
* a ground truth file, if you want evaluation (can be skipped)(here: file_gt = './data/gt/-1okAudsnAc.gt')

# Output:
* a file with the aligned output classes (here: file_out= './data/out/-1okAudsnAc.res')
* a files with the MoF accuracy, if ground truth is provided. (here: file_acc= './data/out/-1okAudsnAc.acc');

