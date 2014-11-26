start: start.o
	ld -o $@ $<
	strip $@

start.o: start.asm
	nasm -felf64 -o $@ $<

clean:
	-rm -vf start

.PHONY: clean
