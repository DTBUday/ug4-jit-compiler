/*
 * Simple Test program for libtcc
 *
 * libtcc can be useful to use tcc as a "backend" for a code generator.
 */
#include <stdlib.h>
#include <stdio.h>
#include <string.h>

#include "../tinycc/include/libtcc.h"

/* this function is called by the generated code */
int add(int a, int b) {
	return a + b;
}

/* this strinc is referenced by the generated code */
const char hello[] = "Hello World!";

// Method for getting code from file
char *get_file_content(char* file) {
	// Open file to read
	FILE *fp = fopen(file, "rb");

	// Allocate memory for the code
	fseek(fp, 0, SEEK_END);
	long file_size = ftell(fp);
	fseek(fp, 0, SEEK_SET);
	char *code = malloc(file_size+1);

	// Get code and close file
	fread(code, 1, file_size, fp);
	fclose(fp);

	*(code + file_size) = '\0';
	return code;
}

int getTime(struct timeval *startTime, struct timeval *endTime) {
	int elapsed = ((endTime->tv_sec - startTime->tv_sec) * 1000000) + (endTime->tv_usec - startTime->tv_usec);
	return elapsed;
}

void handle_error(void *opaque, const char *msg) {
    fprintf(opaque, "%s\n", msg);
}

TCCState *init() {
	TCCState *s;
	s = tcc_new();
	if (!s) {
		fprintf(stderr, "Could not create tcc state\n");
		exit(1);
	}

	tcc_set_error_func(s, stderr, handle_error);

	/* MUST BE CALLED before any compilation */
	tcc_set_output_type(s, TCC_OUTPUT_MEMORY);
	return s;
}

int main(int argc, char **argv) {
	/* TIMER: Structs
	 * startTime 
	 * 			INITIALIZATION
	 * initMeasure 
	 * 			LOAD FILE
	 * 			COMPILE FILE
	 * compileMeasure
	 * 			RELOCATE CODE 
	 * endTime
	 */
	struct timeval startTime, initMeasure, compileMeasure[argc], compileEndMeasure, endTime, relocateEndMeasure;
	fprintf(stdout, "Compiling %d files", argc-1);
	
	gettimeofday(&startTime, NULL);
	if (argc != 2) {
		/* INITIALIZATION */
		TCCState *s = init();
		gettimeofday(&initMeasure, NULL);

		/* Start of compilation */
		for (int i = 1; i < argc; i++) {
			/* LOAD & COMPILE FILE */
			char *code = get_file_content(argv[i]);
			if (tcc_compile_string(s, code) == -1) {
				//fprintf(stderr, "Failed to compile file %s\n", argv[i]);
				//fprintf(stderr, "Trying to add library\n");

				if (tcc_add_file(s, argv[i]) == -1) {
					//fprintf(stderr, "Failed to compile\n");
				} else {
					//fprintf(stderr, "Succeeded compilation\n");
				}
			} else {
				//fprintf(stderr, "Compilation of %s succees\n", argv[i]);
			}

			gettimeofday(&compileMeasure[i], NULL);
		}

		/* End of compilation */
		gettimeofday(&compileEndMeasure, NULL);

		/* RELOCATE CODE */
		//if (tcc_relocate(s, TCC_RELOCATE_AUTO) < 0)
		//	return 1;
	
		/* Deleting the state */
		tcc_delete(s);

		gettimeofday(&endTime, NULL);

		fprintf(stdout, "Initialization time: %d (micro sec)\n", getTime(&startTime, &initMeasure));
		fprintf(stdout, "Parse and Compile, total time: %d (micro sec)\n", getTime(&initMeasure, &compileEndMeasure));
		fprintf(stdout, "Relocate time: %d (micro sec)\n", getTime(&compileEndMeasure, &endTime));
	} else {
		// Run some tests
		TCCState *s = init();
		char *code = get_file_content(argv[1]);
		if (tcc_compile_string(s, code) == -1) {
			exit(1);
		}

		/* as a test, we add symbols that the compiled program can use.
		   You may also open a dll with tcc_add_dll() and use symbols from that */
		tcc_add_symbol(s, "add", add);
		tcc_add_symbol(s, "hello", hello);

		gettimeofday(&startTime, NULL);
		/* RELOCATE CODE */
		if (tcc_relocate(s, TCC_RELOCATE_AUTO) < 0) {
			exit(1);
		}

		gettimeofday(&relocateEndMeasure, NULL);

		/* get entry symbol */
		int (*func)(void);
		func = tcc_get_symbol(s, "main");
		if (!func) {
			exit(1);
		}

		/* run the code */
		func();
		gettimeofday(&endTime, NULL);

		/* Deleting the state */
		tcc_delete(s);

		fprintf(stdout, "Relocation time: %d (micro sec)\n", getTime(&startTime, &relocateEndMeasure));
		fprintf(stdout, "Execution time: %d (micro sec)\n", getTime(&startTime, &endTime));
	}
	return 0;
}
