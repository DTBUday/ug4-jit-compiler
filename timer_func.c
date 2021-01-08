#include <stdio.h>
#include <stdlib.h>

int getTime(struct timeval *startTime, struct timeval *endTime) {
	int elapsed = ((endTime->tv_sec - startTime->tv_sec) * 1000000) + (endTime->tv_usec - startTime->tv_usec);
	return elapsed;
}

int main(int argc, char *argv[]) {
	struct timeval startTime, endTime;
	gettimeofday(&startTime, NULL);

	// Execute command
	int res = system(argv[1]);
	if (res) {
		exit(-1);
	}

	gettimeofday(&endTime, NULL);

	fprintf(stdout, "Total execution time: %d (micro sec)\n", getTime(&startTime, &endTime));
	return 0;
}
