#include <stdio.h>
#include <unistd.h>
#include <fcntl.h>
#define nl 10
#define val "#include <stdio.h>%3$c#include <unistd.h>%3$c#include <fcntl.h>%3$c#define nl 10%3$c#define val %1$c%2$s%1$c%3$c#define MAIN(x) int main(){int fd=open(%1$cGrace_kid.c%1$c,O_WRONLY|O_TRUNC|O_CREAT,0644);if(fd>-1){dprintf(fd,x,34,x,nl);}close(fd);}%3$c/*%3$c  This is a comment%3$c*/%3$cMAIN(val)%3$c"
#define MAIN(x) int main(){int fd=open("Grace_kid.c",O_WRONLY|O_TRUNC|O_CREAT,0644);if(fd>-1){dprintf(fd,x,34,x,nl);}close(fd);}
/*
  This is a comment
*/
MAIN(val)
