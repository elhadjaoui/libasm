#include <stdio.h>
#include <string.h>
 #include <unistd.h>
#include <stdlib.h>
 ssize_t  ft_write(int fildes, const void *buf, size_t nbyte);
 ssize_t  read(int fildes, void *buf, size_t nbyte); 
 char *ft_strcpy(char * dst, const char * src);
 int ft_strcmp(const char *s1, const char *s2);
 char *ft_strdup(const char *s1);
 size_t ft_strlen(const char *s);

int main()
{
	char *s  = "zsimo";
	char *k = "aimo";
	printf("%d\n",ft_strcmp(k,s));
	printf("%d\n",strcmp(k,s));
	return(1);
}

