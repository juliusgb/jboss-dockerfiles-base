# Base Docker image for JBoss community projects

This repository contains base image that is used to build the portfolio of Docker images for JBoss community projects. 

## Base image

This image is used as a base image for *all* JBoss community images. It provides a base layer that includes:

1. A `jboss` user (uid/gid `1000`) with home directory set to `/opt/jboss`
2. A few tools that may be useful when extending the image or installing software, like `unzip`.

### Operating system

This image uses Ubuntu 14.04. `apt-get` commands taken from Arun Gupta's repo - https://github.com/arun-gupta/docker-images/blob/master/wildfly-ubuntu/Dockerfile

### Working directory

This image has the working directory set to `/opt/jboss`, which is the `jboss` user home directory at the same time.

### Availability

The `Dockerfile` is available in the `master` branch.
