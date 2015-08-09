a.out:main.o foo.o
	gcc -o a.out main.o foo.o

clean:
	rm -f a.out *.o

test:
	./a.out