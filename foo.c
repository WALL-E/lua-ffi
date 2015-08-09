#include<stdio.h>

void foo_a(int len)
{
    printf("%d\n", len);
}

void foo_b(char *buf)
{
    printf("%s\n", buf);
}

void foo_c(int *len, char *buf)
{
    printf("%d\n", *len);
    printf("%s\n", buf);
    *len = 10;
    snprintf(buf, *len+1, "%s", "hello, world, abcdefghijklmnopq");
}