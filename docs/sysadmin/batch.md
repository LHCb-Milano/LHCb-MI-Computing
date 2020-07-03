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

## Memory management

The performance of the system may improve reducing the *swappiness*, i.e. the tendency of the linux kernel to move portion of allocated physical memory that have not been used recently to the swap disk space, in order to free the physical memory. The freed memory can then be used for newly allocated processes or for disk cache. The default swappiness value for most systems is 60, which means that the linux kernel will start swapping when the physical memory is 40% full. Sometimes this feature does not help in improving the performance of the system, and it could actually make it *worse*. It really depends on the system (particularly the amount of RAM) and on the applications. No benchmark studies were done specifically for our system, however it seems that swappiness is often clogging the system. So for the moment it seems that setting the swappiness to 0 is the way to go. In order to do that, one must set the swppiness in the `cgroups` settings, by putting the number 0 in this file: `/sys/fs/cgroup/memory/htcondor/memory.swappiness`. Notice that this value will be reset to its deafult when the HTCondor deamon is restarted.

There is also a system-wide swappiness setting that does not affect HTCondor jobs. The default is 60. In our system is set to 10. See this [blog post](https://www.howtoforge.com/tutorial/linux-swappiness/){:target="_blank"} for details.
