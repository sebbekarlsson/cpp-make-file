# to compile without Makefile:
# 	g++ src/main.cpp src/Person.cpp -o personProgram

# collect all source files
sources = $(wildcard src/*.cpp)

# rename source filenames, replace .cpp with .o
objects = $(sources:.cpp=.o)  


# this is just a variable that holds a name for what we want our program to be named.
executableName = personProgram        # personProgram.exe

compiler = g++

# 								  $@ = personProgram
$(executableName): $(objects)
	$(compiler) $(objects) -o $@         

%.o: %.cpp include/%.hpp
	$(compiler) -c $< -o $@ 