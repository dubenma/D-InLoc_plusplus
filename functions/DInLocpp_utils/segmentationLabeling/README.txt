The script "segmentation_labeling.py" build the masks of dynamic objects out of the number of matches and fixed list of static / dynamic classes. Note that this script also evaluate the success rate of the mask guess from matches. For such task, the gt_masks of query images are required. If you do not have the gt_masks, please comment the line 93 and further. 

The script "segmentation_labeling.py" needs:
- pickle
- numpy
- pillow
for running. There are also lines to vizualize the inputs, calculations, and gt masks. To generate this visualizations add libraries scipy, shutil and uncomment the lines 45-47 and 53-62. 

The result are image masks of dynamic objects for given set of thresholds "k" for number of inliers divided by object size in pixels. The parameter "k" may be different for diffent datasets. Please, select the masks, that correspond the dynamic objects at most and fix "k" for real-time processing.