---
title: "CVMFS"
parent: "System administrators documentation"
grand_parent: "Documentation for LHCb Milano computing"
nav_order: 2
---

## Mount CVFMS

[CVMFS](https://cernvm.cern.ch/portal/filesystem){:target="_blank"} is the system used by CERN to deploy software.

Setup instructions can be found [here](https://cernvm.cern.ch/portal/filesystem/quickstart){:target="_blank"}.
Configuration examples with a list of available repositories are available [here](https://cernvm.cern.ch/portal/cvmfs/examples){:target="_blank"}.
Notice that you *do not* need to install squid or anything like that.
In the CVMFS configuration file (`/etc/cvmfs/default.local`) set

```config
CVMFS_QUOTA_LIMIT='25000'
CVMFS_HTTP_PROXY='DIRECT'
CVMFS_CACHE_BASE='/var/lib/cvmfs'
CVMFS_REPOSITORIES='lhcb.cern.ch,cvmfs-config.cern.ch,sft.cern.ch,grid.cern.ch'
```

Additional instrucion are available [here](https://www.gridpp.ac.uk/wiki/UK_CVMFS_Deployment){:target="_blank"} (access restricted).
