# Harris Stephens Corner Detector

In the classic 3D reconstruction problem, one of the primary questions that arises is about selection of features that needs to be tracked. One of the features that facilitates a unique characterization of the image and also help solve the correspondence problem easily is the **corner feature**. The corner feature is unique in the sense that the irradiance changes in atleast two directions (x and y). Given an image I(x,y), steps to detect whether a pixel (x,y) is a corner feature is as follows:[^1]

1) Set a threshold and window of fixed size and compute the image gradient using one of the filters (central difference or Sobel).
2) 


