---
title: "Software"
parent: "User documentation"
grand_parent: "Documentation for LHCb Milano computing"
nav_order: 2
---

# Software

## LHCb Software
The LHCb software is available through [CVMFS](https://cernvm.cern.ch/portal/filesystem){:target="_blank"}.

Use the following command to activate the LHCb environment:

`source /cvmfs/lhcb.cern.ch/lib/etc/cern_profile.sh`

You should land on an environment very similar to CERN lxplus. For convenience, you can put this in your `.bashrc` file (this like should be there already, you only need to uncomment it).

## Additional software
Some additional software is available through the [Software Collections for CERN CentOS 7](https://linux.web.cern.ch/centos7/docs/softwarecollections/){:target="_blank"}.
For example if you want a newer version of `git` you can do: `source scl_source enable rh-git218`. Also in this case you can put this line in you `.bashrc` for convenience.
