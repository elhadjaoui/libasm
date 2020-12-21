#include <stdio.h>
#include <string.h>
#include <stdlib.h>
 ssize_t  ft_write(int fildes, const void *buf, size_t nbyte);
 ssize_t  read(int fildes, void *buf, size_t nbyte); 
 char *ft_strcpy(char * dst, const char * src);
 int ft_strcmp(const char *s1, const char *s2);

int main()
{
	char *s  = "mohhamed";
	//ft_write(1,s,15);
	char *k = "hello world";
	printf("%d\n",ft_strcmp(s,k));
return(1);
}

