#include <stdio.h>
#include <stdlib.h>
#include <locale.h>
#include <math.h>

int main(int argc, char *argv[])
{
	if (!setlocale(LC_CTYPE, "")) {
		fprintf(stderr, "Locale failure, check your env vars\n");
		return 1;
	}

#ifndef __ANDROID__
#ifndef __STDC_ISO_10646__
	printf("error\n");
	return 1;
#endif
#endif

	if (argc != 2) {
		return 1;
	}

	double amount = atof(argv[1]);

	if (amount <= 0 || amount > 1) {
		return 1;
	}

	// ▁▂▃▄▅▆▇█
	unsigned int ratio = lround(amount * 8);
	//printf("%d", ratio);
	//printf("%f\t%f\t%f\n%d\n", amount, 8. * amount, roundf(8. * amount), ratio);
	printf("%lc", (0x2580 + ratio));
	return 0;
}
