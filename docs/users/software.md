---
title: "Software"
parent: "User documentation"
grand_parent: "Documentation for LHCb Milano computing"
nav_order: 2
---

## LHCb Software

The LHCb software is available through [CVMFS](https://cernvm.cern.ch/portal/filesystem){:target="_blank"}.

Use the following command to activate the LHCb environment:

`source /cvmfs/lhcb.cern.ch/lib/LbEnv`

You should land on an environment very similar to CERN lxplus. For convenience, you can put this in your `.bashrc` file (this like should be there already, you only need to uncomment it).

See also the [official docs](https://twiki.cern.ch/twiki/bin/view/LHCb/LbEnv){:target="_blank"} for more advanced configurations.

## Additional software

Some additional software is available through the [Software Collections for CERN CentOS 7](https://linux.web.cern.ch/centos7/docs/softwarecollections/){:target="_blank"}.
For example if you want a newer version of `git` you can do: `source scl_source enable rh-git218`. Also in this case you can put this line in you `.bashrc` for convenience. The collections currently available in the system can be listed with: `scl -l`. If you need a collection that is not available in the system, ask a system admin to install it.

## Python virtual environment

If you need python packages beyond those available by default, the best way to do it is by setting up a [virtual environment](https://docs.python.org/3.7/tutorial/venv.html){:target="_blank"}.

1. Select your python version. If you are fine with the default python version, you can skip this step. You can select any working version of python available in the system. Python installations are available through CVMFS. For example, by executing `source /cvmfs/sft.cern.ch/lcg/views/setupViews.sh LCG_97python3 x86_64-centos7-gcc8-opt` you will be landed on a python 3.7.6 environment.

2. Create the virtual environment: `python3 -m venv my-virt-env`

3. Activate the environment: `source my-virt-env/bin/activate`

4. Install all packages you need with `pip`

You only need to do steps 1-2 the first time. Afterwards, you only need to activate your environment.
