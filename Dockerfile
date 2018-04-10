FROM base/archlinux

RUN pacman --noconfirm -Sy mongodb python3
RUN pacman --noconfirm -S python-pip npm
RUN mkdir -p /data/db

CMD /usr/bin/mongod --syslog --fork && /bin/bash

