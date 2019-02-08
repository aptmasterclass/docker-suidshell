FROM gcc

COPY suidshell.c suidshell.c
COPY suidshell.sh suidshell.sh

CMD ["/bin/sh", "suidshell.sh"]
