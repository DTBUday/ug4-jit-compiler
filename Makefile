LIBS=-ldl

jit: jit_program$(EXESUF)
	@echo ----- $@ -----
	./build/$^ program/basic.c

jit_program$(EXESUF): jit_program.c lib/libtcc.a
	$(CC) -o build/$@ $^ $(LIBS)
