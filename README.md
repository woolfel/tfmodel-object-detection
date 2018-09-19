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

Download Resnet101
===========

The example uses pre-trained model from google. You can download the file from this URL. Unzip the file and copy the the checkpoint files to models directory.
http://download.tensorflow.org/models/object_detection/faster_rcnn_resnet101_coco_2018_01_28.tar.gz


Running on Windows
===========

1. run win_train.sh

Running on Mac and Linux
===========

1. run unix_train.sh

Export trained model
===========

1. run export_graph.sh

Test the model
===========

There's two scripts for testing the retrained model.

test.py - loads the frozen model and runs inference on a test image
test_multiple_runs.py - runs inference 10 times and prints the average run time


Example from the test
===========
![Object detection on one of the images](https://github.com/woolfel/tfmodel-object-detection/blob/master/sample/image50-result.jpg)

Performance
===========

System: Core i7-6700 3.4Ghz, Gigabyte 1070, 64GB RAM, Micron Nvme SSD

On my workstation, running test.py on ./data/images/image00.jpg takes 12 seconds. Running test_multiple_runs.py on ./data/images/image00.jpg had an average of 9 seconds. The moral of the story is you need either Titan V or Testla V100 to get decent performance. At 9 seconds/image, a system equivalent to my workstation would get 6 frames/minute.