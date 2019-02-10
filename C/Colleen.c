#include <stdio.h>

void f1()
{
	const char *val = "#include <stdio.h>%3$c%3$cvoid f1()%3$c{%3$c%4$cconst char *val = %1$c%2$s%1$c;%3$c%4$cprintf(val, 34, val, 10, 9);%3$c}%3$c%3$c/*%3$c  This program will display itself when run%3$c*/%3$c%3$cint main()%3$c{%3$c/*%3$c  Function to display itself%3$c*/%3$c%4$cf1();%3$c}%3$c";
	printf(val, 34, val, 10, 9);
}

/*
  This program will display itself when run
*/

int main()
{
/*
  Function to display itself
*/
	f1();
}
