# Makefile for Complex number class

APP_TARGET	= demo
TEST_TARGET	= run_tests

# directories -----------------------------------
SRC_DIR		= src
LIB_DIR 	= lib
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
		CFLAGS += 
	endif
endif

# file lists ------------------------------------
SRC_FILES 	= $(wildcard $(SRC_DIR)/*.cpp)
LIB_FILES	= $(wildcard $(LIB_DIR)/*.cpp)
TEST_FILES 	= $(wildcard $(TEST_DIR)/*.cpp)
SRC_OBJS 	= $(SRC_FILES:.cpp=.o)
LIB_OBJS	= $(LIB_FILES:.cpp=.o)
TEST_OBJS 	= $(TEST_FILES:.cpp=.o)
ALL_OBJS	= $(SRC_OBJS) $(LIB_OBJS) $(TEST_OBJS)
DEPENDS 	= $(ALL_OBJS:.o=.d)

# tools -----------------------------------------
CXX 	= g++
RM		= rm -f

# build targets ---------------------------------
all:	$(APP_TARGET)$(EXT) $(TEST_TARGET)$(EXT)

$(APP_TARGET)$(EXT):	$(SRC_OBJS) $(LIB_OBJS)
	$(CXX) -o $@ $(LFLAGS) $^

$(TEST_TARGET)$(EXT):	$(TEST_OBJS)
	$(CXX) -o $@ $(LFLAGS) $^ $(LIB_OBJS)

clean:
	$(RM) $(APP_TARGET)$(EXT) $(TEST_TARGET)$(EXT) 
	$(RM) $(ALL_OBJS) $(DEPENDS)

run:	$(APP_TARGET)$(EXT)
	$(PREFIX)$(APP_TARGET)

test:	$(TEST_TARGET)$(EXT)
	$(PREFIX)$(TEST_TARGET)

.PHONY:
docs:
	cd documentation && make html

.PHONY:
view:	docs
	open -a Firefox documentation/_build/html/index.html

.PHONY:
spelling:
	cd documentation && make spelling

# implicit rules --------------------------------

%.o:	%.cpp
	$(CXX) -c $(CFLAGS) $< -o $@

-include $(DEPENDS)
