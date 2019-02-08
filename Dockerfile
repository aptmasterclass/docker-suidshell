FROM gcc

LABEL vendor="APT Masterclass"
LABEL maintainer="Pawel Maziarz <pawel.maziarz@aptmasterclass.com>"
LABEL description="Docker suidshell proof-of-concept"

COPY suidshell.c suidshell.c
COPY suidshell.sh suidshell.sh

CMD ["/bin/sh", "suidshell.sh"]
