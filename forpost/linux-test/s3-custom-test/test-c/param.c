#include <stdio.h>

int main(int argc, char *argv[])
{
    if (argc > 1)
    {
        printf("You provided at least one argument (or parameter)\n");
        printf("The first argument is \"%s\"\n", argv[1]);
    }

    return 0;
}
