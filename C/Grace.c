#include <stdio.h>
#include <unistd.h>
#include <fcntl.h>
#define val "#include <stdio.h>%3$c#include <unistd.h>%3$c#include <fcntl.h>%3$c#define val %1$c%2$s%1$c%3$c#define MAIN(x) int main(){int fd=open(%1$cGrace_kid.c%1$c,O_WRONLY|O_TRUNC|O_CREAT,0644);if(fd>2){dprintf(fd,x,34,x,10);}close(fd);}%3$cMAIN(val);%3$c"
#define MAIN(x) int main(){int fd=open("Grace_kid.c",O_WRONLY|O_TRUNC|O_CREAT,0644);if(fd>2){dprintf(fd,x,34,x,10);}close(fd);}
MAIN(val)
