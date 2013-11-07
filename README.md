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
2. visit http://192.168.33.10 with your browser -- it may take a few minutes

## Useful vagrant commands

- Lifecycle: up/provision/destroy
- Control: suspend/halt/resume/status
- The vagrant documentation is pretty readable

-------------

# Notes

[1] The most recent copy of xlibs is stored somewhere, TBD. See this story, https://www.pivotaltracker.com/story/show/59795204