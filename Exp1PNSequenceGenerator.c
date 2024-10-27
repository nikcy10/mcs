#include <stdio.h>

int main()
{
    int t[4] = {1, 1, 0, 1};
    int x1, x2, x3, x4, u1, i;

    x1 = t[0];
    x2 = t[1];
    x3 = t[2];
    x4 = t[3];

    for (i = 0; i <= 15; i++)
    {
        u1 = x3 ^ x4;
        x4 = x3;
        x3 = x2;
        x2 = x1;
        x1 = u1;
        printf("%d ", u1);
    }
    printf("\n\n");
}