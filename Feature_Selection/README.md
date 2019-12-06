# Harris Stephens Corner Detector

In the classic 3D reconstruction problem, one of the primary questions that arises is about selection of features that needs to be tracked. One of the features that facilitates a unique characterization of the image and also help solve the correspondence problem easily is the **corner feature**. The corner feature is unique in the sense that the irradiance changes in atleast two directions (x and y). Given an image I(x,y), Harris corner detector is one of the oldest algorithms to detect whether a pixel (x,y) is a corner feature. It is rotation and translation invariant and steps to implemnt are as follows:

1) Set a threshold and window of fixed size and compute the image gradient using one of the filters (central difference or Sobel or the DoG).
2) At all pixels in the window around (x,y) compute the Harris Matrix M, which is nothing but the weighted Hessian matrix. &nabla; I. &nabla; I<sup>T.
3) Calculate the product of eigenvalues of M giving det(M) and sum of eigenvalues of M giving trace(M). 
4) Calculate the measure R = det(M)-k(trace(M)/2)<sup>2.
5) When R has large positive values, both eigenvalues are large and indicate a corner as we desire. When R has large negative value, when one eigenvalue is large and other is small, indicating an edge. When absolute value of R is small, both eigenvalues are small, indicating the image patch under consideration is flat.
6) k is a hyperparameter, smaller it is, more likely the detector is to find corners.
7) R is used with a threshold T; if R > T then a corner is detected at a patch.


