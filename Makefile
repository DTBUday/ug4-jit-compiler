LIBS = -fno-strict-aliasing -I.. -I.. -lm -lpthread -ldl -O3

jit: jit_program$(EXESUF)
	@echo ----- $@ -----
	./build/$^ program/basic.c

jit_program$(EXESUF): jit_program.c ~/tinycc/libtcc.a
	$(CC) timer_func.c -o timer_func -O3
	$(CC) -o build/$@ $^ $(LIBS)
	$(CC) -o build/profile_jit $^ $(LIBS) -Wall -pg
