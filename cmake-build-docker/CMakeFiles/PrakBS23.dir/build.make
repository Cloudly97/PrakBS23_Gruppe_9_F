# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /tmp/praksb21

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /tmp/praksb21/cmake-build-docker

# Include any dependencies generated for this target.
include CMakeFiles/PrakBS23.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/PrakBS23.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/PrakBS23.dir/flags.make

CMakeFiles/PrakBS23.dir/main.c.o: CMakeFiles/PrakBS23.dir/flags.make
CMakeFiles/PrakBS23.dir/main.c.o: ../main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/tmp/praksb21/cmake-build-docker/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/PrakBS23.dir/main.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/PrakBS23.dir/main.c.o   -c /tmp/praksb21/main.c

CMakeFiles/PrakBS23.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/PrakBS23.dir/main.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /tmp/praksb21/main.c > CMakeFiles/PrakBS23.dir/main.c.i

CMakeFiles/PrakBS23.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/PrakBS23.dir/main.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /tmp/praksb21/main.c -o CMakeFiles/PrakBS23.dir/main.c.s

CMakeFiles/PrakBS23.dir/main.c.o.requires:

.PHONY : CMakeFiles/PrakBS23.dir/main.c.o.requires

CMakeFiles/PrakBS23.dir/main.c.o.provides: CMakeFiles/PrakBS23.dir/main.c.o.requires
	$(MAKE) -f CMakeFiles/PrakBS23.dir/build.make CMakeFiles/PrakBS23.dir/main.c.o.provides.build
.PHONY : CMakeFiles/PrakBS23.dir/main.c.o.provides

CMakeFiles/PrakBS23.dir/main.c.o.provides.build: CMakeFiles/PrakBS23.dir/main.c.o


CMakeFiles/PrakBS23.dir/keyValStore.c.o: CMakeFiles/PrakBS23.dir/flags.make
CMakeFiles/PrakBS23.dir/keyValStore.c.o: ../keyValStore.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/tmp/praksb21/cmake-build-docker/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/PrakBS23.dir/keyValStore.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/PrakBS23.dir/keyValStore.c.o   -c /tmp/praksb21/keyValStore.c

CMakeFiles/PrakBS23.dir/keyValStore.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/PrakBS23.dir/keyValStore.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /tmp/praksb21/keyValStore.c > CMakeFiles/PrakBS23.dir/keyValStore.c.i

CMakeFiles/PrakBS23.dir/keyValStore.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/PrakBS23.dir/keyValStore.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /tmp/praksb21/keyValStore.c -o CMakeFiles/PrakBS23.dir/keyValStore.c.s

CMakeFiles/PrakBS23.dir/keyValStore.c.o.requires:

.PHONY : CMakeFiles/PrakBS23.dir/keyValStore.c.o.requires

CMakeFiles/PrakBS23.dir/keyValStore.c.o.provides: CMakeFiles/PrakBS23.dir/keyValStore.c.o.requires
	$(MAKE) -f CMakeFiles/PrakBS23.dir/build.make CMakeFiles/PrakBS23.dir/keyValStore.c.o.provides.build
.PHONY : CMakeFiles/PrakBS23.dir/keyValStore.c.o.provides

CMakeFiles/PrakBS23.dir/keyValStore.c.o.provides.build: CMakeFiles/PrakBS23.dir/keyValStore.c.o


CMakeFiles/PrakBS23.dir/sub.c.o: CMakeFiles/PrakBS23.dir/flags.make
CMakeFiles/PrakBS23.dir/sub.c.o: ../sub.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/tmp/praksb21/cmake-build-docker/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/PrakBS23.dir/sub.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/PrakBS23.dir/sub.c.o   -c /tmp/praksb21/sub.c

CMakeFiles/PrakBS23.dir/sub.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/PrakBS23.dir/sub.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /tmp/praksb21/sub.c > CMakeFiles/PrakBS23.dir/sub.c.i

CMakeFiles/PrakBS23.dir/sub.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/PrakBS23.dir/sub.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /tmp/praksb21/sub.c -o CMakeFiles/PrakBS23.dir/sub.c.s

CMakeFiles/PrakBS23.dir/sub.c.o.requires:

.PHONY : CMakeFiles/PrakBS23.dir/sub.c.o.requires

CMakeFiles/PrakBS23.dir/sub.c.o.provides: CMakeFiles/PrakBS23.dir/sub.c.o.requires
	$(MAKE) -f CMakeFiles/PrakBS23.dir/build.make CMakeFiles/PrakBS23.dir/sub.c.o.provides.build
.PHONY : CMakeFiles/PrakBS23.dir/sub.c.o.provides

CMakeFiles/PrakBS23.dir/sub.c.o.provides.build: CMakeFiles/PrakBS23.dir/sub.c.o


# Object files for target PrakBS23
PrakBS23_OBJECTS = \
"CMakeFiles/PrakBS23.dir/main.c.o" \
"CMakeFiles/PrakBS23.dir/keyValStore.c.o" \
"CMakeFiles/PrakBS23.dir/sub.c.o"

# External object files for target PrakBS23
PrakBS23_EXTERNAL_OBJECTS =

PrakBS23: CMakeFiles/PrakBS23.dir/main.c.o
PrakBS23: CMakeFiles/PrakBS23.dir/keyValStore.c.o
PrakBS23: CMakeFiles/PrakBS23.dir/sub.c.o
PrakBS23: CMakeFiles/PrakBS23.dir/build.make
PrakBS23: CMakeFiles/PrakBS23.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/tmp/praksb21/cmake-build-docker/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking C executable PrakBS23"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/PrakBS23.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/PrakBS23.dir/build: PrakBS23

.PHONY : CMakeFiles/PrakBS23.dir/build

CMakeFiles/PrakBS23.dir/requires: CMakeFiles/PrakBS23.dir/main.c.o.requires
CMakeFiles/PrakBS23.dir/requires: CMakeFiles/PrakBS23.dir/keyValStore.c.o.requires
CMakeFiles/PrakBS23.dir/requires: CMakeFiles/PrakBS23.dir/sub.c.o.requires

.PHONY : CMakeFiles/PrakBS23.dir/requires

CMakeFiles/PrakBS23.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/PrakBS23.dir/cmake_clean.cmake
.PHONY : CMakeFiles/PrakBS23.dir/clean

CMakeFiles/PrakBS23.dir/depend:
	cd /tmp/praksb21/cmake-build-docker && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /tmp/praksb21 /tmp/praksb21 /tmp/praksb21/cmake-build-docker /tmp/praksb21/cmake-build-docker /tmp/praksb21/cmake-build-docker/CMakeFiles/PrakBS23.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/PrakBS23.dir/depend

