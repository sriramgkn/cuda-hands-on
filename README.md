In this project, we solve some problems in CUDA hands-on. These problems appear in [CS344](https://github.com/udacity/cs344), an archived course on parallel programming by Nvidia and Udacity, and have been remastered in [this fork](https://github.com/Adeemj/cs344) to be compatible with modern OpenCV syntax and Google Colab.

In `cuda-test.cu`, we write a simple kernel (following one [lecture](https://www.youtube.com/watch?v=ByrK61fNVW0&list=PLAwxTw4SYaPm0z11jGTXRF7RuEEAgsIwH&index=31)) that squares every element in an array. We keep this as a clean template to CUDA's program flow.

In `colab-notebook.ipynb`, we discuss our full journey of CUDA with Colab, from basic experimentation, to installing `nvcc4jupyter`, to solving Problem 1 and Problem 2 of the CS344 problem sets. We encourage feedback for further experimentation.

To play directly on Colab, create a copy upon clicking: [https://colab.research.google.com/drive/1ujEKAeK71D7-Jzf-FHvpz1B5lOcX3F7S?usp=sharing](https://colab.research.google.com/drive/1ujEKAeK71D7-Jzf-FHvpz1B5lOcX3F7S?usp=sharing)

<img src="https://drive.google.com/uc?export=view&id=1lLxx9JxLuMZqrKufokpC17HTWRhJFH5I" width="500px">

Conversion to greyscale:
<img src="https://drive.google.com/uc?export=view&id=1X_VABMZxBYLyrOmhPGOIuRVFMOZ9xifx" width="500px">

Gaussian blurring:
<img src="https://drive.google.com/uc?export=view&id=13Vy9seUNQU5Gzv1YDWIYm_s1a6_1bBop" width="500px">