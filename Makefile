PROG = first second
OBJS = first_s.o second_s.o

%.o: %.s 
	as -g -o $@ $< 

$(PROG): $(OBJS)
	gcc -g -o $@ $^

clean:
	rm -rf $(PROGS) $(OBJS)
