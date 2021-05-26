---
title: "GPU"
parent: "User documentation"
grand_parent: "Documentation for LHCb Milano computing"
nav_order: 3
---

## GPU

This section is a stub. Please consider [contributing](https://github.com/LHCb-Milano/LHCb-MI-Computing)!

### TensorFlow

TensorFlow should automatically use the available GPU with [no code changes needed](https://www.tensorflow.org/guide/gpu){:target="_blank"}.  
However the version available through the conda environment provided by CERN (`lb-conda default bash`) is compiled only for CPU (no GPU is available on lxplus).  
To run tensorflow on the GPU available on our machine we have to create our own environment:
```
conda create -n <my_beautiful_environment_name> tensorflow-gpu <other_beautiful_packages> -c conda-forge
```
This command will create an environment named `<my_beautiful_environment>` with the lastest version of tensorflow compiled for GPU compatible with your system available on default channels (conda, conda-forge, ...). You can specify a particular version of a package with `<package>==version`.
At the time of writing (26/05/2021), the following command is working and should install everything needed for almost everyone
```
conda create -n <my_beautiful_environment_name> tensorflow-gpu tensorflow-probability matplotlib seaborn root root-numpy root-pandas python=3.8 -c conda-forge
```
Once the environment is created, you could activate it
```
conda activate <my_beautiful_environment_name>
```
and once you've done deactivate it
```
conda deactivate
```

### Tensorflow-transform

This package is useful to preprocess variables to give as input to the tensorflow classifier/regressor.  
Unfortunately, no version of this package is available in any repository of conda.  
You have to install inside your activated environment created previously with
```
pip install tensorflow-transform
```
