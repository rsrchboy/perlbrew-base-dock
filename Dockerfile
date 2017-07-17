# This software is Copyright (c) 2014 by Chris Weyl <chris.weyl@wps.io>
#
# This work is licensed under a Creative Commons Attribution-ShareAlike 4.0
# International License (CC-BY-SA-4.0).
#
# http://creativecommons.org/licenses/by-sa/4.0/

FROM ubuntu:xenial
MAINTAINER Chris Weyl <chris.weyl@wps.io>

# update packages
ENV DEBIAN_FRONTEND noninteractive
RUN locale-gen en_US.UTF-8 && dpkg-reconfigure locales
RUN echo "deb http://ppa.launchpad.net/git-core/ppa/ubuntu precise main" >> /etc/apt/sources.list
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E1DD270288B4E6030699E45FA1715D88E1DF1F24
RUN apt-get update && apt-get -y install git curl build-essential perl

# prep for the install...
RUN umask 0022
RUN mkdir -p /usr/local/perlbrew /root
ENV HOME /root
ENV PERLBREW_ROOT /usr/local/perlbrew
ENV PERLBREW_HOME /root/.perlbrew

# install the standalone perlbrew and cpanm
RUN curl -kL http://install.perlbrew.pl | bash
ENV PATH /usr/local/perlbrew/bin:$PATH
ENV PERLBREW_PATH /usr/local/perlbrew/bin
RUN perlbrew install-cpanm
RUN perlbrew info
