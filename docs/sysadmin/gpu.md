---
title: "GPU"
parent: "System administrators documentation"
grand_parent: "Documentation for LHCb Milano computing"
nav_order: 5
---

## GPU NVIDIA Tesla T4

First step is to install the NVIDIA drivers: visit [this page](https://docs.nvidia.com/datacenter/tesla/tesla-installation-notes/index.html#unique_1068237798){:target="_blank"}.
Then install the [CUDA drivers](https://developer.nvidia.com/cuda-toolkit-archive){:target="_blank"}.
See also the instructions for [TensorFlow GPU support](https://www.tensorflow.org/install/gpu){:target="_blank"}.
We currently installed CUDA 10.0. This version is compatible with TensforFlow 1.15 but *not* with TensorFlow 2.x.
