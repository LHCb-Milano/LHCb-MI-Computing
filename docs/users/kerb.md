---
title: "Kerberos"
parent: "User documentation"
grand_parent: "Documentation for LHCb Milano computing"
nav_order: 6
---

## Kerberos

CERN CentOS 7 is already configured for password-less access to CERN LXPLUS via [Kerberos](https://linux.web.cern.ch/docs/kerberos-access/){:target="_blank"}, so no extra configuration is required.
Simply run `kinit your_nice_user_name` and type your CERN account password. Then try to `ssh` into lxplus: you should be able to access without asking again for your password.
