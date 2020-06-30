---
title: "Batch system"
parent: "System administrators documentation"
grand_parent: "Documentation for LHCb Milano computing"
nav_order: 4
---

## Set up batch system

Follow HTCondor install instructions for CentOS 7 in the [official website](https://research.cs.wisc.edu/htcondor/instructions/el/7/stable/){:target="_blank"}.
Note: use `minicondor` package (configured for a single node).

Copy the [configuration file](https://github.com/LHCb-Milano/LHCb-MI-Computing/blob/master/condor/condor_config.local){:target="_blank"} in `/etc/condor/condor_config.local`.
