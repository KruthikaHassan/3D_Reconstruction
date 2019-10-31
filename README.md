# 3D Reconstruction using the classical method

The goal of 3D reconstruction from multiple views is to infer geometrical structure of a scene by a collection of 
images. Being one of the fundamental problems in computer vision, it has numerous applications in computer graphics, 
augmented reality, robot navigation, tracking, etc. 

The classical method of 3D Reconstruction consists of the following steps:

**Feature Selection:** Automatically detect geometric features in each individual image.

**Feature Correspondence:** Establish the correspondence of features across different images. The algorithm to be employed depends on whether the inter-frame motion is small (small baseline) or large (wide baseline).

**Projective reconstruction:** Retrieve the camera motion and 3D position of the matched feature points up to a Projective transformation. Lacking additional information on the camera or the scene this is the best one can do.

**Euclidean reconstruction with partial camera knowledge:** Assume that all images are taken by the same camera or some of the camera parameters known, and recover the Euclidean structure of the scene. As a side benefit also retrieve the calibration of the camera.

**Camera calibration:** Assume one has access to camera and the full calibration rig.

**Reconstruction with partial scene knowledge:** Assume that certain knowledge about the scene is available a priori.  Then feature correspondence, camera calibration, and scene structure can be significantly simplified.

**Visualization:** Once the correspondence of a handful of features is available, rectify the epipolar geometry so that epipolar lines correspond to image scan lines. This facilitates correspondence for many if not most pixels in each image for which the 3D positions can be recovered. This yields a dense, highly irregular polygonal mesh model of the scene. Standard mesh manipulation tools from computer graphics can be used to simplify and smooth the mesh, yielding a surface model of the scene. Given the surface model, texture map the images onto it so as to generate a view of the scene from novel vantage points.
