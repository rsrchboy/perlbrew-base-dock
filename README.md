# Perlbrew in a box!

This container is a base Ubuntu 14.04LTS + perlbrew environment.  It's
designed to be secure, robust, easily extensible and a nice base for other
containers with specific perls to be built from.

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

# Author and License

Copyright (c) 2014 by Chris Weyl \<chris.weyl@wps.io\>.


[![][51]][50]

This work is licensed under a [Creative Commons Attribution-ShareAlike 4.0 International License][50].

[![][100]][101] [![][200]][201] [![][2]][1]

Please note **I do not expect to be gittip'ed or flattr'ed** for this work, but it is rather a very pleasant surprise.  I largely create and release works like this because I need them or I find it enjoyable; however, don't let that stop you giving me money if you feel like it ;)


[1]: https://flattr.com/submit/auto?user_id=RsrchBoy&url=https://github.com/RsrchBoy/perlbrew-base-dock&title=Docker.io%20gitolite-base%20image&tags=docker "RsrchBoy's perl-stable-dock on index.docker.io"
[2]: http://api.flattr.com/button/flattr-badge-large.png "Flattr this if -- and only if -- you want :)"
[4]: https://github.com/RsrchBoy/perlbrew-base-dock/issues
[50]: http://creativecommons.org/licenses/by-sa/4.0/ "Creative Commons License"
[51]: http://i.creativecommons.org/l/by-sa/4.0/88x31.png "Creative Commons License CC-BY-SA"
[52]: http://i.creativecommons.org/l/by-sa/4.0/80x15.png "Creative Commons License CC-BY-SA"
[100]: https://raw.githubusercontent.com/gittip/www.gittip.com/master/www/assets/%25version/logo.png
[101]: https://www.gittip.com/RsrchBoy/
[200]: http://wps.io/wp-content/uploads/2014/05/amazon_wishlist.resized.png
[201]: http://www.amazon.com/gp/registry/wishlist/3G2DQFPBA57L6
