# Makefile for Complex number class

APP_TARGET	= demo
TEST_TARGET	= run_tests

# directories -----------------------------------
SRC_DIR		= src
TEST_DIR	= tests
INC_DIR		= include

# System dependencies
CFLAGS = -I $(INC_DIR)
CFLAGS += -MMD

ifeq ($(OS), Windows_NT)
	EXT = .exe
	RM = del	
	CFLAGS += -std=c++11
	CXX = C:\usr\local\mingw32\bin\g++.exe
	PREFIX =
else
	EXT =
	PREFIX = ./
	RM = rm -f
	CXX = g++
	UNAME_S := $(shell uname -s)
	ifeq ($(UNAME_S), Linux)
		CFLAGS += 
	endif
	ifeq ($(UNAME_S), Darwin)
<<<<<<< HEAD
		CFLAGS += 
=======
		CFLAGS +=
>>>>>>> S3
	endif
endif

# file lists ------------------------------------
FILES 	= $(wildcard $(SRC_DIR)/*.cpp)
OBJS 	= $(FILES:.cpp=.o)
TESTS 	= $(wildcard $(TEST_DIR)/*.cpp)
TOBJS 	= $(TESTS:.cpp=.o)
COBJS	= $(filter-out $(SRC_DIR)/main.o, $(OBJS))
ALLOBJS	= $(OBJS) $(TOBJS)
DEPENDS = $(ALLOBJS:.o=.d)

# tools -----------------------------------------
CXX 	= g++
RM		= rm -f

# build targets ---------------------------------
all:	$(APP_TARGET)$(EXT) $(TEST_TARGET)$(EXT)

$(APP_TARGET)$(EXT):	$(OBJS)
	$(CXX) -o $@ $(LFLAGS) $^

$(TEST_TARGET)$(EXT):	$(TOBJS)
	$(CXX) -o $@ $(LFLAGS) $^ $(COBJS)

clean:
	$(RM) $(APP_TARGET)$(EXT) $(TEST_TARGET)$(EXT) 
	$(RM) $(OBJS) $(TOBJS) $(DEPENDS)

run:	$(APP_TARGET)$(EXT)
	$(PREFIX)$(APP_TARGET)

test:	$(TEST_TARGET)$(EXT)
	$(PREFIX)$(TEST_TARGET)

.PHONY:
docs:
	cd documentation && make html

view:	docs
	open -a Firefox documentation/_build/html/index.html

# implicit rules --------------------------------

%.o:	%.cpp
	$(CXX) -c $(CFLAGS) $< -o $@

-include $(DEPENDS)
