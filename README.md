In this project, we take on some image processing problems with CUDA on Colab. These problems appear in [CS344](https://github.com/udacity/cs344), an archived course on parallel programming by Nvidia and Udacity, and have been remastered in [this fork](https://github.com/Adeemj/cs344) to be compatible with modern OpenCV syntax and Google Colab.

In `cuda-test.cu`, we write a simple kernel (following one [lecture](https://www.youtube.com/watch?v=ByrK61fNVW0&list=PLAwxTw4SYaPm0z11jGTXRF7RuEEAgsIwH&index=31)) that squares every element in an array. We keep this as a clean template to CUDA's program flow.

In `colab-notebook.ipynb`, we discuss our full journey of CUDA with Colab, from basic experimentation, to installing `nvcc4jupyter`, to solving Problem 1 and Problem 2 of the CS344 problem sets. We encourage feedback for further experimentation.

To play directly on Colab, create a copy upon clicking: [https://colab.research.google.com/drive/1ujEKAeK71D7-Jzf-FHvpz1B5lOcX3F7S?usp=sharing](https://colab.research.google.com/drive/1ujEKAeK71D7-Jzf-FHvpz1B5lOcX3F7S?usp=sharing)

A scenic view of [Cinque Terre](https://en.wikipedia.org/wiki/Cinque_Terre), Italy:

![input](problem-1-images/cinque_terre_small.jpg)

Conversion to greyscale:

![greyscale](problem-1-images/HW1_output.png)

Gaussian blurring:

![blurred](problem-2-images/HW2_output.png)