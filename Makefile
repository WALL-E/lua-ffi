a.out:main.c libfoo.dylib
	gcc -o a.out main.c -L. -lfoo

libfoo.dylib:foo.c
	gcc foo.c -dynamiclib -current_version 1.0  -o libfoo.dylib

clean:
	rm -f a.out *.o libfoo.dylib

test:
	./a.out

lua:
	luajit ffi.lua