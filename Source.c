#include <stdio.h>
#include <stdlib.h>

void inter(char p[],char p1[],char p2[]);

int main()
{
	char p[100], p1[100], p2[200];

	scanf("%s",p);
	scanf("%s",p1);

	inter(p, p1, p2);
	printf("%s\n", p2);
	inter(p1, p, p2);
	printf("%s", p2);
	return 0;
}