#include <stdio.h>
#include <unistd.h>
#include <fcntl.h>
#include <stdlib.h>
#define i 5
#define val "#include <stdio.h>%3$c#include <unistd.h>%3$c#include <fcntl.h>%3$c#include <stdlib.h>%3$c#define i %5$d%3$c#define val %1$c%2$s%1$c%3$cint main()%3$c{%3$c#if i > 0%3$c#ifdef __ORIGIN%3$c%6$cchar b[512];snprintf(b,512,%1$cSully_%4$cd.c%1$c,i);int fd=open(b,O_WRONLY|O_TRUNC|O_CREAT,0644);dprintf(fd,val,34,val,10,37,i,9);%3$c#else%3$c%6$cchar b[512];snprintf(b,512,%1$cSully_%4$cd.c%1$c,i-1);int fd=open(b,O_WRONLY|O_TRUNC|O_CREAT,0644);dprintf(fd,val,34,val,10,37,i-1,9);%3$c#endif%3$c%6$cchar s[512];snprintf(s,512,%1$cgcc %4$c1$s -o %4$c1$.*2$s 2>&- &&./%4$c1$.*2$s%1$c,b,7);system(s);%3$c#endif%3$c}%3$c"
int main()
{
#if i > 0
#ifdef __ORIGIN
	char b[512];snprintf(b,512,"Sully_%d.c",i);int fd=open(b,O_WRONLY|O_TRUNC|O_CREAT,0644);dprintf(fd,val,34,val,10,37,i,9);
#else
	char b[512];snprintf(b,512,"Sully_%d.c",i-1);int fd=open(b,O_WRONLY|O_TRUNC|O_CREAT,0644);dprintf(fd,val,34,val,10,37,i-1,9);
#endif
	char s[512];snprintf(s,512,"gcc %1$s -o %1$.*2$s 2>&- &&./%1$.*2$s",b,7);system(s);
#endif
}
