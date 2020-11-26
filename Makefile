LIBS = -fno-strict-aliasing -I.. -I.. -lm -lpthread -ldl

jit: jit_program$(EXESUF)
	@echo ----- $@ -----
	./build/$^ program/basic.c

jit_program$(EXESUF): jit_program.c ~/tinycc/lib/libtcc.a
	$(CC) -o build/$@ $^ $(LIBS)
