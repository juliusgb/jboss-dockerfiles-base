FROM ubuntu:14.04
MAINTAINER Marek Goldmann <mgoldman@redhat.com>

# Install packages necessary to run EAP. 
# For now, couldn't find saxon and augeas for ubuntu. Removing them, just like arun-gupta's repo - https://github.com/arun-gupta/docker-images/blob/master/wildfly-ubuntu/Dockerfile
RUN apt-get -y install xmlstarlet bsdtar unzip curl

# Create a user and group used to launch processes
# The user ID 1000 is the default for the first "regular" user on Fedora/RHEL,
# so there is a high chance that this ID will be equal to the current user
# making it easier to use volumes (no permission issues)
RUN groupadd -r jboss -g 1000 && useradd -u 1000 -r -g jboss -m -d /opt/jboss -s /sbin/nologin -c "JBoss user" jboss && \
    chmod 755 /opt/jboss

# Set the working directory to jboss' user home directory
WORKDIR /opt/jboss

# Specify the user which should be used to execute all commands below
USER jboss

