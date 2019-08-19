cc = gcc
obj1_files = DIO.o LCD.o main.o 
obj2_files = taher-zaglol-abdo-hafez.o
link_target = app

vpath %.c ./src
inc_path = ./inc

%.o : %.c
	$(cc) -c -I$(inc_path) $< -o $@

$(link_target) : $(obj1_files) $(obj2_files)
	$(cc) $^ -o $@