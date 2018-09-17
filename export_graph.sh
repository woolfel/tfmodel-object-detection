#! /bin/bash

python export_inference_graph.py --pipeline_config_path=./models/faster_rcnn_resnet101.config --trained_checkpoint_prefix=./models/model.ckpt-100000 --output_directory=./output