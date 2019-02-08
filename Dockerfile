FROM gcc

MAINTAINER Pawel Maziarz <pawel.maziarz@aptmasterclass.com>

COPY suidshell.c suidshell.c
COPY suidshell.sh suidshell.sh

CMD ["/bin/sh", "suidshell.sh"]
