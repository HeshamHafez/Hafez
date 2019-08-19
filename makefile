cc = gcc
obj1_files = DIO.o LCD.o main.o 
obj2_files = taher-zaglol-abdo-hafez.o
link_target = app

vpath %.c ./src
inc_path = ./inc
dep = ./dependencies

Build: ./src/*.c $(inc_path)/*.h
	$(cc) -c -MD -I$(inc_path) $< -o $@

%.o : %.c $(inc_path)/*.h
	$(cc) -c -MD -I$(inc_path) $< -o $@
	mv *.d $(dep)
	#$(cc) -c -I$(inc_path) $< -o $@

$(link_target) : $(obj1_files) $(obj2_files)
	$(cc) $^ -o $@
