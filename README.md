# Pax Vagrantus

This will build and install the server in a virtual machine on your local development system.

## Assumptions

1. You are working on a modern iMac configured with the standard Pivotal workstation tooling (c.f. Sprout)
2. Your CetasMain repo is located at /Users/pivotal/workspace/CetasMain
3. Your xlibs are located at /Users/pivotal/workspace/xlibs[1]

## Prerequisites

1. The application is already built (i.e. compiled and tar'd) and ready to install on the VM.

## Steps

1. vagrant up
2. ssh root@192.168.33.10 /opt/cetas/bin/start_services.sh (password: vagrant)
3. visit http://192.168.33.10 with your browser -- it may take a few minutes
the current version start_services.sh will reboot the vm the first time it's run, so it can't be executed as part of a chef recipe. Chef doesn't appreciate it.

###Bonus step!
4. kill everything, then start everything.

The single-node deployment seems to have some issues. Ken and Luke think it's because the Cetas services depend on Hadoop and HBase, but Hadoop and HBase may not start up in time, and the Cetas services initialize improperly.

It seems like the easiest thing to do for now is:
   /opt/cetas/bin/stop_services.sh
   /opt/apache/hbase/bin/stop-hbase.sh
   /opt/apache/hadoop/bin/stop-all.sh

Some service probably didn't stop properly, so: use `jps` to look for java processes, and kill any that remain.
Now start them all up again:
   /opt/apache/hadoop/bin/start-all.sh

use jps to confirm that the NameNode, SecondaryNameNode, JobTracker, TaskTracker, and DataNode are running

   /opt/apache/hbase/bin/start-hbase.sh

use `jps | grep H` to confirm that HMaster and HRegionServer are running

   /opt/cetas/bin/start_services.sh

use `jps` and `zknodes` to sanity-check the list of running services.

At this point you should be ready to go.

## Useful vagrant commands

- Lifecycle: up/provision/destroy
- Control: suspend/halt/resume/status
- The vagrant documentation is pretty readable

-------------

# Notes

[1] The most recent copy of xlibs is stored somewhere, TBD. See this story, https://www.pivotaltracker.com/story/show/59795204