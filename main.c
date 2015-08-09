#include<stdio.h>
#include"foo.h"

int main(int argc, char* argv[])
{
    int len = 100;
    char buf[] = "this is a test";

    foo_a(len);
    foo_b("this is a test");
    foo_c(&len, buf);

    return 0;
}

