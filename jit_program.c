/*
 * Simple Test program for libtcc
 *
 * libtcc can be useful to use tcc as a "backend" for a code generator.
 */
#include <stdlib.h>
#include <stdio.h>
#include <string.h>

#include "libtcc.h"

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

	return code;
}

int main(int argc, char **argv) {
	if (argc != 2) {
		fprintf(stderr, "Require file to be compiled as argument to the program\n");
		exit(1);
	}

	char *code = get_file_content(argv[1]);

	TCCState *s;
	int i;
	int (*func)(int);

	s = tcc_new();
	if (!s) {
		fprintf(stderr, "Could not create tcc state\n");
		exit(1);
	}

	/* if tcclib.h and libtcc1.a are not installed, where can we find them */
	for (i = 1; i < argc; ++i) {
		char *a = argv[i];
		if (a[0] == '-') {
			if (a[1] == 'B')
				tcc_set_lib_path(s, a+2);
			else if (a[1] == 'I')
				tcc_add_include_path(s, a+2);
			else if (a[1] == 'L')
				tcc_add_library_path(s, a+2);
		}
	}

	/* MUST BE CALLED before any compilation */
	tcc_set_output_type(s, TCC_OUTPUT_MEMORY);

	if (tcc_compile_string(s, code) == -1)
		return 1;

	/* as a test, we add symbols that the compiled program can use.
	   You may also open a dll with tcc_add_dll() and use symbols from that */
	tcc_add_symbol(s, "add", add);
	tcc_add_symbol(s, "hello", hello);

	/* relocate the code */
	if (tcc_relocate(s, TCC_RELOCATE_AUTO) < 0)
		return 1;

	/* get entry symbol */
	func = tcc_get_symbol(s, "foo");
	if (!func)
		return 1;

	/* run the code */
	func(32);

	/* delete the state */
	tcc_delete(s);

	return 0;
}
