---
title: "Batch system usage"
parent: "User documentation"
grand_parent: "Documentation for LHCb Milano computing"
nav_order: 5
---

## Batch system

The [HTCondor](https://research.cs.wisc.edu/htcondor/){:target="_blank"} job scheduler is installed and running in the machine.
You should be able to submit jobs following the [official documentation](https://htcondor.readthedocs.io/en/latest/){:target="_blank"}.

Some important tips.

- You should _always_ submit your jobs in the `vanilla` universe. Any other choice will most likely make things worse for you and clog the entire machine for everybody. To run jobs in the `vanilla` universe add this line in the job description file: `Universe = vanilla`.
- There is a job memory limit of 3 GB. Make sure that your job does not exceeds this memory limit, otherwise it will be probably killed. After being killed, jobs are put in hold. Check the condor logs to knwo the hold reason.
- There is a limit on the execution time of a job. Any job running longer than 48 hours is automatically killed. The job may be put back in the queue and you should monitor the log files to make sure that long jobs are not being resubmitted over and over (it will cause you to loose priority).

This documentation is still not complete, if you use this system, please consider [contributing](https://github.com/LHCb-Milano/LHCb-MI-Computing).
