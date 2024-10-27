#include <stdio.h>

int main()
{
    int ak[6] = {-1, 1, -1, -1, 1, 1};
    int bk[6] = {1, 1, -1, 1, -1, 1};
    int as[6], bs[6], ds[6];
    int e = 0;

    for (int i = 0; i < 6; i++)
    {
        as[i] = ak[i];
        bs[i] = bk[i] * -1;
        printf("%d ", as[i]);
    }

    printf("\n");
    for (int i = 0; i < 6; i++)
    {
        printf("%d ", bs[i]);
    }

    printf("\n");

    for (int i = 0; i < 6; i++)
    {
        ds[i] = (as[i] + bs[i]) * bk[i];
        printf("%d ", ds[i]);
        e += ds[i];
    }

    printf("\n%d\n", e);

    printf("%d is transmitted\n", e > 0 ? 1 : 0);

    return 0;
}