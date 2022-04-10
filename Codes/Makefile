GCC = gcc-11
FLAGS = -ansi -pedantic -Wall 
CFLAGS = -lm -lpthread -fopenmp 
THEPROGS= Algorithm3 Algorithm1 Algorithm2

all: Algorithm3 Algorithm1 Algorithm2

Algorithm1:
	$(GCC) $(FLAGS) module.c -c -D_POSIX_C_SOURCE=199309L $(CFLAGS)
	$(GCC) $(FLAGS) $@.c -c $(CFLAGS)
	$(GCC) $(FLAGS) module.o $@.o -o $@ $(CFLAGS)

Algorithm2:
	$(GCC) $(FLAGS) module.c -c -D_POSIX_C_SOURCE=199309L $(CFLAGS)
	$(GCC) $(FLAGS) $@.c -c $(CFLAGS)
	$(GCC) $(FLAGS) module.o $@.o -o $@ $(CFLAGS)
		
Algorithm3:
	$(GCC) $(FLAGS) module.c -c $(CFLAGS) -D_POSIX_C_SOURCE=199309L 
	$(GCC) $(FLAGS) $@.c -c $(CFLAGS) 
	$(GCC) $(FLAGS) module.o $@.o -o $@ $(CFLAGS) 

clean:
	$(RM) $(THEPROGS) *.o