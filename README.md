# Gitolite in a box!

This image is a base perlbrew image.  It's designed to be secure, robust,
easily extensible and a nice base for other images with specific perls to be
built from.

# Usage

There are two ways you can use this image:  directly, and by "inheriting" it
in another container/Dockerfile.

First, create a ```Dockerfile``` for your own image, extending this one,
something like:

```
FROM rsrchboy/perlbrew-base:latest
MAINTAINER Hi There <me@foo.org>

RUN source /usr/local/perlbrew/etc/bashrc
RUN perlbrew install stable
RUN perlbrew use stable
```

# Profit!

Enjoy.  Ideas / bugs / suggestions?  Feel free to submit issues or pull
requests via github :)

# Changes

## Wed Apr  9 22:10:59 PDT 2014

Rebuild to ensure we're using the latest openssl packages (re: CVE-2014-0160),
if any.
