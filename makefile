.PHONY: clean all test 
CFLAGS = -Wall -Werror -MP -MMD 

build/Main.o: src/Main.c src/Func.h
	gcc $(CFLAGS) -c src/Main.c -o build/Main.o -lm
  
build/Func.o: src/Func.c src/Func.h 
	gcc $(CFLAGS) -c src/Func.c -o build/Func.o -lm
  
  clean:
	@echo "Cleaning files in build directory" 	
	@rm -rf build/*.d build/*.o 
	@echo "Cleaning binaries"
	@echo "All files have been cleaned."	

-include build/*.d
