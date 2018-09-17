# Object Detection using Tensorflow API

Dependencies:

TensorFlow 1.1

Python 3.x

Description
===========

This project demonstrates how to use Tensorflow's object detection API. .

Installation on Windows 10
===========

1. Download Python 64bit for windows. Do not use 32bit! Tensorflow only works on 64bit. If you get an error can't install, double check your python is 64bit.
2. Open a powershell
3. Install tensorflow-gpu
4. Install google protocol buffer
5. Install pilow maplotlib cython
6. Run "python setup.py install" in the research folder
4. clone this repository

NOTE: do not try to run the unix version on windows. The latest model_main.py uses pycoco and pycocotools. There is a known bug with pycocotools, which doesn't work on Windows. The link to the issue is here https://github.com/cocodataset/cocoapi/issues/169

Running on Windows
===========

1. run win_train.sh

Running on Mac and Linux
===========

1. run unix_train.sh

Export trained model
===========

1. run export_graph.sh