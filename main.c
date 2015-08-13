#include<stdio.h>
#include"foo.h"

int main(int argc, char* argv[])
{
    int len = 100;
    char buf[] = "this is a test";
    struct user u;

    u.age = 18;

    foo_a(len);
    foo_b("this is a test");
    foo_c(&len, buf);
    foo_d(&u);

    return 0;
}

