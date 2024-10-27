#include <stdio.h>

int main()
{
    int t[5] = {1, 0, 1, 0, 0};
    int i, u1, u2, x1 = 0, x2 = 0, x3 = 0;

    for (i = 0; i <= 4; i++)
    {
        x1 = t[i];
        u1 = x1 ^ x2 ^ x3;
        u2 = x1 ^ x3;
        printf("%d ", u1);
        printf("%d ", u2);
        x3 = x2;
        x2 = x1;
    }
}