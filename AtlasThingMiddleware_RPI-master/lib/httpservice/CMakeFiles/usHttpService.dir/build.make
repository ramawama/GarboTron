# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.25

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
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
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/pi/Documents/GarboTron/AtlasThingMiddleware_RPI-master/lib/CppMicroServices-development

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/pi/Documents/GarboTron/AtlasThingMiddleware_RPI-master/lib

# Include any dependencies generated for this target.
include httpservice/CMakeFiles/usHttpService.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include httpservice/CMakeFiles/usHttpService.dir/compiler_depend.make

# Include the progress variables for this target.
include httpservice/CMakeFiles/usHttpService.dir/progress.make

# Include the compile flags for this target's objects.
include httpservice/CMakeFiles/usHttpService.dir/flags.make

httpservice/usHttpService/cppmicroservices_resources.cpp: httpservice/usHttpService/res_0.zip
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/pi/Documents/GarboTron/AtlasThingMiddleware_RPI-master/lib/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Checking resource dependencies for usHttpService"
	cd /home/pi/Documents/GarboTron/AtlasThingMiddleware_RPI-master/lib/httpservice && /usr/bin/cmake -E copy /home/pi/Documents/GarboTron/AtlasThingMiddleware_RPI-master/lib/CppMicroServices-development/cmake/CMakeResourceDependencies.cpp /home/pi/Documents/GarboTron/AtlasThingMiddleware_RPI-master/lib/httpservice/usHttpService/cppmicroservices_resources.cpp

httpservice/usHttpService/res_0.zip: /home/pi/Documents/GarboTron/AtlasThingMiddleware_RPI-master/lib/CppMicroServices-development/httpservice/resources/manifest.json
httpservice/usHttpService/res_0.zip: bin/usResourceCompiler4
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/pi/Documents/GarboTron/AtlasThingMiddleware_RPI-master/lib/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Checking resource dependencies for usHttpService"
	cd /home/pi/Documents/GarboTron/AtlasThingMiddleware_RPI-master/lib/CppMicroServices-development/httpservice/resources && /usr/bin/cmake -E make_directory /home/pi/Documents/GarboTron/AtlasThingMiddleware_RPI-master/lib/httpservice/usHttpService
	cd /home/pi/Documents/GarboTron/AtlasThingMiddleware_RPI-master/lib/CppMicroServices-development/httpservice/resources && /home/pi/Documents/GarboTron/AtlasThingMiddleware_RPI-master/lib/bin/usResourceCompiler4 -o /home/pi/Documents/GarboTron/AtlasThingMiddleware_RPI-master/lib/httpservice/usHttpService/res_0.zip -n usHttpService -r manifest.json

httpservice/CMakeFiles/usHttpService.dir/__/third_party/civetweb/civetweb.c.o: httpservice/CMakeFiles/usHttpService.dir/flags.make
httpservice/CMakeFiles/usHttpService.dir/__/third_party/civetweb/civetweb.c.o: /home/pi/Documents/GarboTron/AtlasThingMiddleware_RPI-master/lib/CppMicroServices-development/third_party/civetweb/civetweb.c
httpservice/CMakeFiles/usHttpService.dir/__/third_party/civetweb/civetweb.c.o: httpservice/CMakeFiles/usHttpService.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/Documents/GarboTron/AtlasThingMiddleware_RPI-master/lib/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object httpservice/CMakeFiles/usHttpService.dir/__/third_party/civetweb/civetweb.c.o"
	cd /home/pi/Documents/GarboTron/AtlasThingMiddleware_RPI-master/lib/httpservice && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT httpservice/CMakeFiles/usHttpService.dir/__/third_party/civetweb/civetweb.c.o -MF CMakeFiles/usHttpService.dir/__/third_party/civetweb/civetweb.c.o.d -o CMakeFiles/usHttpService.dir/__/third_party/civetweb/civetweb.c.o -c /home/pi/Documents/GarboTron/AtlasThingMiddleware_RPI-master/lib/CppMicroServices-development/third_party/civetweb/civetweb.c

httpservice/CMakeFiles/usHttpService.dir/__/third_party/civetweb/civetweb.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/usHttpService.dir/__/third_party/civetweb/civetweb.c.i"
	cd /home/pi/Documents/GarboTron/AtlasThingMiddleware_RPI-master/lib/httpservice && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/pi/Documents/GarboTron/AtlasThingMiddleware_RPI-master/lib/CppMicroServices-development/third_party/civetweb/civetweb.c > CMakeFiles/usHttpService.dir/__/third_party/civetweb/civetweb.c.i

httpservice/CMakeFiles/usHttpService.dir/__/third_party/civetweb/civetweb.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/usHttpService.dir/__/third_party/civetweb/civetweb.c.s"
	cd /home/pi/Documents/GarboTron/AtlasThingMiddleware_RPI-master/lib/httpservice && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/pi/Documents/GarboTron/AtlasThingMiddleware_RPI-master/lib/CppMicroServices-development/third_party/civetweb/civetweb.c -o CMakeFiles/usHttpService.dir/__/third_party/civetweb/civetweb.c.s

httpservice/CMakeFiles/usHttpService.dir/__/third_party/civetweb/CivetServer.cpp.o: httpservice/CMakeFiles/usHttpService.dir/flags.make
httpservice/CMakeFiles/usHttpService.dir/__/third_party/civetweb/CivetServer.cpp.o: /home/pi/Documents/GarboTron/AtlasThingMiddleware_RPI-master/lib/CppMicroServices-development/third_party/civetweb/CivetServer.cpp
httpservice/CMakeFiles/usHttpService.dir/__/third_party/civetweb/CivetServer.cpp.o: httpservice/CMakeFiles/usHttpService.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/Documents/GarboTron/AtlasThingMiddleware_RPI-master/lib/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object httpservice/CMakeFiles/usHttpService.dir/__/third_party/civetweb/CivetServer.cpp.o"
	cd /home/pi/Documents/GarboTron/AtlasThingMiddleware_RPI-master/lib/httpservice && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS)  -Wno-old-style-cast -MD -MT httpservice/CMakeFiles/usHttpService.dir/__/third_party/civetweb/CivetServer.cpp.o -MF CMakeFiles/usHttpService.dir/__/third_party/civetweb/CivetServer.cpp.o.d -o CMakeFiles/usHttpService.dir/__/third_party/civetweb/CivetServer.cpp.o -c /home/pi/Documents/GarboTron/AtlasThingMiddleware_RPI-master/lib/CppMicroServices-development/third_party/civetweb/CivetServer.cpp

httpservice/CMakeFiles/usHttpService.dir/__/third_party/civetweb/CivetServer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/usHttpService.dir/__/third_party/civetweb/CivetServer.cpp.i"
	cd /home/pi/Documents/GarboTron/AtlasThingMiddleware_RPI-master/lib/httpservice && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS)  -Wno-old-style-cast -E /home/pi/Documents/GarboTron/AtlasThingMiddleware_RPI-master/lib/CppMicroServices-development/third_party/civetweb/CivetServer.cpp > CMakeFiles/usHttpService.dir/__/third_party/civetweb/CivetServer.cpp.i

httpservice/CMakeFiles/usHttpService.dir/__/third_party/civetweb/CivetServer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/usHttpService.dir/__/third_party/civetweb/CivetServer.cpp.s"
	cd /home/pi/Documents/GarboTron/AtlasThingMiddleware_RPI-master/lib/httpservice && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS)  -Wno-old-style-cast -S /home/pi/Documents/GarboTron/AtlasThingMiddleware_RPI-master/lib/CppMicroServices-development/third_party/civetweb/CivetServer.cpp -o CMakeFiles/usHttpService.dir/__/third_party/civetweb/CivetServer.cpp.s

httpservice/CMakeFiles/usHttpService.dir/src/HttpConstants.cpp.o: httpservice/CMakeFiles/usHttpService.dir/flags.make
httpservice/CMakeFiles/usHttpService.dir/src/HttpConstants.cpp.o: /home/pi/Documents/GarboTron/AtlasThingMiddleware_RPI-master/lib/CppMicroServices-development/httpservice/src/HttpConstants.cpp
httpservice/CMakeFiles/usHttpService.dir/src/HttpConstants.cpp.o: httpservice/CMakeFiles/usHttpService.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/Documents/GarboTron/AtlasThingMiddleware_RPI-master/lib/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object httpservice/CMakeFiles/usHttpService.dir/src/HttpConstants.cpp.o"
	cd /home/pi/Documents/GarboTron/AtlasThingMiddleware_RPI-master/lib/httpservice && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT httpservice/CMakeFiles/usHttpService.dir/src/HttpConstants.cpp.o -MF CMakeFiles/usHttpService.dir/src/HttpConstants.cpp.o.d -o CMakeFiles/usHttpService.dir/src/HttpConstants.cpp.o -c /home/pi/Documents/GarboTron/AtlasThingMiddleware_RPI-master/lib/CppMicroServices-development/httpservice/src/HttpConstants.cpp

httpservice/CMakeFiles/usHttpService.dir/src/HttpConstants.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/usHttpService.dir/src/HttpConstants.cpp.i"
	cd /home/pi/Documents/GarboTron/AtlasThingMiddleware_RPI-master/lib/httpservice && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pi/Documents/GarboTron/AtlasThingMiddleware_RPI-master/lib/CppMicroServices-development/httpservice/src/HttpConstants.cpp > CMakeFiles/usHttpService.dir/src/HttpConstants.cpp.i

httpservice/CMakeFiles/usHttpService.dir/src/HttpConstants.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/usHttpService.dir/src/HttpConstants.cpp.s"
	cd /home/pi/Documents/GarboTron/AtlasThingMiddleware_RPI-master/lib/httpservice && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pi/Documents/GarboTron/AtlasThingMiddleware_RPI-master/lib/CppMicroServices-development/httpservice/src/HttpConstants.cpp -o CMakeFiles/usHttpService.dir/src/HttpConstants.cpp.s

httpservice/CMakeFiles/usHttpService.dir/src/HttpServlet.cpp.o: httpservice/CMakeFiles/usHttpService.dir/flags.make
httpservice/CMakeFiles/usHttpService.dir/src/HttpServlet.cpp.o: /home/pi/Documents/GarboTron/AtlasThingMiddleware_RPI-master/lib/CppMicroServices-development/httpservice/src/HttpServlet.cpp
httpservice/CMakeFiles/usHttpService.dir/src/HttpServlet.cpp.o: httpservice/CMakeFiles/usHttpService.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/Documents/GarboTron/AtlasThingMiddleware_RPI-master/lib/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object httpservice/CMakeFiles/usHttpService.dir/src/HttpServlet.cpp.o"
	cd /home/pi/Documents/GarboTron/AtlasThingMiddleware_RPI-master/lib/httpservice && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT httpservice/CMakeFiles/usHttpService.dir/src/HttpServlet.cpp.o -MF CMakeFiles/usHttpService.dir/src/HttpServlet.cpp.o.d -o CMakeFiles/usHttpService.dir/src/HttpServlet.cpp.o -c /home/pi/Documents/GarboTron/AtlasThingMiddleware_RPI-master/lib/CppMicroServices-development/httpservice/src/HttpServlet.cpp

httpservice/CMakeFiles/usHttpService.dir/src/HttpServlet.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/usHttpService.dir/src/HttpServlet.cpp.i"
	cd /home/pi/Documents/GarboTron/AtlasThingMiddleware_RPI-master/lib/httpservice && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pi/Documents/GarboTron/AtlasThingMiddleware_RPI-master/lib/CppMicroServices-development/httpservice/src/HttpServlet.cpp > CMakeFiles/usHttpService.dir/src/HttpServlet.cpp.i

httpservice/CMakeFiles/usHttpService.dir/src/HttpServlet.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/usHttpService.dir/src/HttpServlet.cpp.s"
	cd /home/pi/Documents/GarboTron/AtlasThingMiddleware_RPI-master/lib/httpservice && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pi/Documents/GarboTron/AtlasThingMiddleware_RPI-master/lib/CppMicroServices-development/httpservice/src/HttpServlet.cpp -o CMakeFiles/usHttpService.dir/src/HttpServlet.cpp.s

httpservice/CMakeFiles/usHttpService.dir/src/ServletContainer.cpp.o: httpservice/CMakeFiles/usHttpService.dir/flags.make
httpservice/CMakeFiles/usHttpService.dir/src/ServletContainer.cpp.o: /home/pi/Documents/GarboTron/AtlasThingMiddleware_RPI-master/lib/CppMicroServices-development/httpservice/src/ServletContainer.cpp
httpservice/CMakeFiles/usHttpService.dir/src/ServletContainer.cpp.o: httpservice/CMakeFiles/usHttpService.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/Documents/GarboTron/AtlasThingMiddleware_RPI-master/lib/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object httpservice/CMakeFiles/usHttpService.dir/src/ServletContainer.cpp.o"
	cd /home/pi/Documents/GarboTron/AtlasThingMiddleware_RPI-master/lib/httpservice && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT httpservice/CMakeFiles/usHttpService.dir/src/ServletContainer.cpp.o -MF CMakeFiles/usHttpService.dir/src/ServletContainer.cpp.o.d -o CMakeFiles/usHttpService.dir/src/ServletContainer.cpp.o -c /home/pi/Documents/GarboTron/AtlasThingMiddleware_RPI-master/lib/CppMicroServices-development/httpservice/src/ServletContainer.cpp

httpservice/CMakeFiles/usHttpService.dir/src/ServletContainer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/usHttpService.dir/src/ServletContainer.cpp.i"
	cd /home/pi/Documents/GarboTron/AtlasThingMiddleware_RPI-master/lib/httpservice && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pi/Documents/GarboTron/AtlasThingMiddleware_RPI-master/lib/CppMicroServices-development/httpservice/src/ServletContainer.cpp > CMakeFiles/usHttpService.dir/src/ServletContainer.cpp.i

httpservice/CMakeFiles/usHttpService.dir/src/ServletContainer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/usHttpService.dir/src/ServletContainer.cpp.s"
	cd /home/pi/Documents/GarboTron/AtlasThingMiddleware_RPI-master/lib/httpservice && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pi/Documents/GarboTron/AtlasThingMiddleware_RPI-master/lib/CppMicroServices-development/httpservice/src/ServletContainer.cpp -o CMakeFiles/usHttpService.dir/src/ServletContainer.cpp.s

httpservice/CMakeFiles/usHttpService.dir/src/ServletContext.cpp.o: httpservice/CMakeFiles/usHttpService.dir/flags.make
httpservice/CMakeFiles/usHttpService.dir/src/ServletContext.cpp.o: /home/pi/Documents/GarboTron/AtlasThingMiddleware_RPI-master/lib/CppMicroServices-development/httpservice/src/ServletContext.cpp
httpservice/CMakeFiles/usHttpService.dir/src/ServletContext.cpp.o: httpservice/CMakeFiles/usHttpService.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/Documents/GarboTron/AtlasThingMiddleware_RPI-master/lib/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object httpservice/CMakeFiles/usHttpService.dir/src/ServletContext.cpp.o"
	cd /home/pi/Documents/GarboTron/AtlasThingMiddleware_RPI-master/lib/httpservice && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT httpservice/CMakeFiles/usHttpService.dir/src/ServletContext.cpp.o -MF CMakeFiles/usHttpService.dir/src/ServletContext.cpp.o.d -o CMakeFiles/usHttpService.dir/src/ServletContext.cpp.o -c /home/pi/Documents/GarboTron/AtlasThingMiddleware_RPI-master/lib/CppMicroServices-development/httpservice/src/ServletContext.cpp

httpservice/CMakeFiles/usHttpService.dir/src/ServletContext.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/usHttpService.dir/src/ServletContext.cpp.i"
	cd /home/pi/Documents/GarboTron/AtlasThingMiddleware_RPI-master/lib/httpservice && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pi/Documents/GarboTron/AtlasThingMiddleware_RPI-master/lib/CppMicroServices-development/httpservice/src/ServletContext.cpp > CMakeFiles/usHttpService.dir/src/ServletContext.cpp.i

httpservice/CMakeFiles/usHttpService.dir/src/ServletContext.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/usHttpService.dir/src/ServletContext.cpp.s"
	cd /home/pi/Documents/GarboTron/AtlasThingMiddleware_RPI-master/lib/httpservice && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pi/Documents/GarboTron/AtlasThingMiddleware_RPI-master/lib/CppMicroServices-development/httpservice/src/ServletContext.cpp -o CMakeFiles/usHttpService.dir/src/ServletContext.cpp.s

httpservice/CMakeFiles/usHttpService.dir/src/HttpOutputStreamBuffer.cpp.o: httpservice/CMakeFiles/usHttpService.dir/flags.make
httpservice/CMakeFiles/usHttpService.dir/src/HttpOutputStreamBuffer.cpp.o: /home/pi/Documents/GarboTron/AtlasThingMiddleware_RPI-master/lib/CppMicroServices-development/httpservice/src/HttpOutputStreamBuffer.cpp
httpservice/CMakeFiles/usHttpService.dir/src/HttpOutputStreamBuffer.cpp.o: httpservice/CMakeFiles/usHttpService.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/Documents/GarboTron/AtlasThingMiddleware_RPI-master/lib/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object httpservice/CMakeFiles/usHttpService.dir/src/HttpOutputStreamBuffer.cpp.o"
	cd /home/pi/Documents/GarboTron/AtlasThingMiddleware_RPI-master/lib/httpservice && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT httpservice/CMakeFiles/usHttpService.dir/src/HttpOutputStreamBuffer.cpp.o -MF CMakeFiles/usHttpService.dir/src/HttpOutputStreamBuffer.cpp.o.d -o CMakeFiles/usHttpService.dir/src/HttpOutputStreamBuffer.cpp.o -c /home/pi/Documents/GarboTron/AtlasThingMiddleware_RPI-master/lib/CppMicroServices-development/httpservice/src/HttpOutputStreamBuffer.cpp

httpservice/CMakeFiles/usHttpService.dir/src/HttpOutputStreamBuffer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/usHttpService.dir/src/HttpOutputStreamBuffer.cpp.i"
	cd /home/pi/Documents/GarboTron/AtlasThingMiddleware_RPI-master/lib/httpservice && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pi/Documents/GarboTron/AtlasThingMiddleware_RPI-master/lib/CppMicroServices-development/httpservice/src/HttpOutputStreamBuffer.cpp > CMakeFiles/usHttpService.dir/src/HttpOutputStreamBuffer.cpp.i

httpservice/CMakeFiles/usHttpService.dir/src/HttpOutputStreamBuffer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/usHttpService.dir/src/HttpOutputStreamBuffer.cpp.s"
	cd /home/pi/Documents/GarboTron/AtlasThingMiddleware_RPI-master/lib/httpservice && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pi/Documents/GarboTron/AtlasThingMiddleware_RPI-master/lib/CppMicroServices-development/httpservice/src/HttpOutputStreamBuffer.cpp -o CMakeFiles/usHttpService.dir/src/HttpOutputStreamBuffer.cpp.s

httpservice/CMakeFiles/usHttpService.dir/src/HttpServletRequest.cpp.o: httpservice/CMakeFiles/usHttpService.dir/flags.make
httpservice/CMakeFiles/usHttpService.dir/src/HttpServletRequest.cpp.o: /home/pi/Documents/GarboTron/AtlasThingMiddleware_RPI-master/lib/CppMicroServices-development/httpservice/src/HttpServletRequest.cpp
httpservice/CMakeFiles/usHttpService.dir/src/HttpServletRequest.cpp.o: httpservice/CMakeFiles/usHttpService.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/Documents/GarboTron/AtlasThingMiddleware_RPI-master/lib/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object httpservice/CMakeFiles/usHttpService.dir/src/HttpServletRequest.cpp.o"
	cd /home/pi/Documents/GarboTron/AtlasThingMiddleware_RPI-master/lib/httpservice && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT httpservice/CMakeFiles/usHttpService.dir/src/HttpServletRequest.cpp.o -MF CMakeFiles/usHttpService.dir/src/HttpServletRequest.cpp.o.d -o CMakeFiles/usHttpService.dir/src/HttpServletRequest.cpp.o -c /home/pi/Documents/GarboTron/AtlasThingMiddleware_RPI-master/lib/CppMicroServices-development/httpservice/src/HttpServletRequest.cpp

httpservice/CMakeFiles/usHttpService.dir/src/HttpServletRequest.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/usHttpService.dir/src/HttpServletRequest.cpp.i"
	cd /home/pi/Documents/GarboTron/AtlasThingMiddleware_RPI-master/lib/httpservice && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pi/Documents/GarboTron/AtlasThingMiddleware_RPI-master/lib/CppMicroServices-development/httpservice/src/HttpServletRequest.cpp > CMakeFiles/usHttpService.dir/src/HttpServletRequest.cpp.i

httpservice/CMakeFiles/usHttpService.dir/src/HttpServletRequest.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/usHttpService.dir/src/HttpServletRequest.cpp.s"
	cd /home/pi/Documents/GarboTron/AtlasThingMiddleware_RPI-master/lib/httpservice && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pi/Documents/GarboTron/AtlasThingMiddleware_RPI-master/lib/CppMicroServices-development/httpservice/src/HttpServletRequest.cpp -o CMakeFiles/usHttpService.dir/src/HttpServletRequest.cpp.s

httpservice/CMakeFiles/usHttpService.dir/src/HttpServletResponse.cpp.o: httpservice/CMakeFiles/usHttpService.dir/flags.make
httpservice/CMakeFiles/usHttpService.dir/src/HttpServletResponse.cpp.o: /home/pi/Documents/GarboTron/AtlasThingMiddleware_RPI-master/lib/CppMicroServices-development/httpservice/src/HttpServletResponse.cpp
httpservice/CMakeFiles/usHttpService.dir/src/HttpServletResponse.cpp.o: httpservice/CMakeFiles/usHttpService.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/Documents/GarboTron/AtlasThingMiddleware_RPI-master/lib/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object httpservice/CMakeFiles/usHttpService.dir/src/HttpServletResponse.cpp.o"
	cd /home/pi/Documents/GarboTron/AtlasThingMiddleware_RPI-master/lib/httpservice && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT httpservice/CMakeFiles/usHttpService.dir/src/HttpServletResponse.cpp.o -MF CMakeFiles/usHttpService.dir/src/HttpServletResponse.cpp.o.d -o CMakeFiles/usHttpService.dir/src/HttpServletResponse.cpp.o -c /home/pi/Documents/GarboTron/AtlasThingMiddleware_RPI-master/lib/CppMicroServices-development/httpservice/src/HttpServletResponse.cpp

httpservice/CMakeFiles/usHttpService.dir/src/HttpServletResponse.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/usHttpService.dir/src/HttpServletResponse.cpp.i"
	cd /home/pi/Documents/GarboTron/AtlasThingMiddleware_RPI-master/lib/httpservice && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pi/Documents/GarboTron/AtlasThingMiddleware_RPI-master/lib/CppMicroServices-development/httpservice/src/HttpServletResponse.cpp > CMakeFiles/usHttpService.dir/src/HttpServletResponse.cpp.i

httpservice/CMakeFiles/usHttpService.dir/src/HttpServletResponse.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/usHttpService.dir/src/HttpServletResponse.cpp.s"
	cd /home/pi/Documents/GarboTron/AtlasThingMiddleware_RPI-master/lib/httpservice && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pi/Documents/GarboTron/AtlasThingMiddleware_RPI-master/lib/CppMicroServices-development/httpservice/src/HttpServletResponse.cpp -o CMakeFiles/usHttpService.dir/src/HttpServletResponse.cpp.s

httpservice/CMakeFiles/usHttpService.dir/src/ServletConfig.cpp.o: httpservice/CMakeFiles/usHttpService.dir/flags.make
httpservice/CMakeFiles/usHttpService.dir/src/ServletConfig.cpp.o: /home/pi/Documents/GarboTron/AtlasThingMiddleware_RPI-master/lib/CppMicroServices-development/httpservice/src/ServletConfig.cpp
httpservice/CMakeFiles/usHttpService.dir/src/ServletConfig.cpp.o: httpservice/CMakeFiles/usHttpService.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/Documents/GarboTron/AtlasThingMiddleware_RPI-master/lib/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building CXX object httpservice/CMakeFiles/usHttpService.dir/src/ServletConfig.cpp.o"
	cd /home/pi/Documents/GarboTron/AtlasThingMiddleware_RPI-master/lib/httpservice && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT httpservice/CMakeFiles/usHttpService.dir/src/ServletConfig.cpp.o -MF CMakeFiles/usHttpService.dir/src/ServletConfig.cpp.o.d -o CMakeFiles/usHttpService.dir/src/ServletConfig.cpp.o -c /home/pi/Documents/GarboTron/AtlasThingMiddleware_RPI-master/lib/CppMicroServices-development/httpservice/src/ServletConfig.cpp

httpservice/CMakeFiles/usHttpService.dir/src/ServletConfig.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/usHttpService.dir/src/ServletConfig.cpp.i"
	cd /home/pi/Documents/GarboTron/AtlasThingMiddleware_RPI-master/lib/httpservice && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pi/Documents/GarboTron/AtlasThingMiddleware_RPI-master/lib/CppMicroServices-development/httpservice/src/ServletConfig.cpp > CMakeFiles/usHttpService.dir/src/ServletConfig.cpp.i

httpservice/CMakeFiles/usHttpService.dir/src/ServletConfig.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/usHttpService.dir/src/ServletConfig.cpp.s"
	cd /home/pi/Documents/GarboTron/AtlasThingMiddleware_RPI-master/lib/httpservice && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pi/Documents/GarboTron/AtlasThingMiddleware_RPI-master/lib/CppMicroServices-development/httpservice/src/ServletConfig.cpp -o CMakeFiles/usHttpService.dir/src/ServletConfig.cpp.s

httpservice/CMakeFiles/usHttpService.dir/usHttpService/cppmicroservices_init.cpp.o: httpservice/CMakeFiles/usHttpService.dir/flags.make
httpservice/CMakeFiles/usHttpService.dir/usHttpService/cppmicroservices_init.cpp.o: httpservice/usHttpService/cppmicroservices_init.cpp
httpservice/CMakeFiles/usHttpService.dir/usHttpService/cppmicroservices_init.cpp.o: httpservice/CMakeFiles/usHttpService.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/Documents/GarboTron/AtlasThingMiddleware_RPI-master/lib/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building CXX object httpservice/CMakeFiles/usHttpService.dir/usHttpService/cppmicroservices_init.cpp.o"
	cd /home/pi/Documents/GarboTron/AtlasThingMiddleware_RPI-master/lib/httpservice && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT httpservice/CMakeFiles/usHttpService.dir/usHttpService/cppmicroservices_init.cpp.o -MF CMakeFiles/usHttpService.dir/usHttpService/cppmicroservices_init.cpp.o.d -o CMakeFiles/usHttpService.dir/usHttpService/cppmicroservices_init.cpp.o -c /home/pi/Documents/GarboTron/AtlasThingMiddleware_RPI-master/lib/httpservice/usHttpService/cppmicroservices_init.cpp

httpservice/CMakeFiles/usHttpService.dir/usHttpService/cppmicroservices_init.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/usHttpService.dir/usHttpService/cppmicroservices_init.cpp.i"
	cd /home/pi/Documents/GarboTron/AtlasThingMiddleware_RPI-master/lib/httpservice && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pi/Documents/GarboTron/AtlasThingMiddleware_RPI-master/lib/httpservice/usHttpService/cppmicroservices_init.cpp > CMakeFiles/usHttpService.dir/usHttpService/cppmicroservices_init.cpp.i

httpservice/CMakeFiles/usHttpService.dir/usHttpService/cppmicroservices_init.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/usHttpService.dir/usHttpService/cppmicroservices_init.cpp.s"
	cd /home/pi/Documents/GarboTron/AtlasThingMiddleware_RPI-master/lib/httpservice && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pi/Documents/GarboTron/AtlasThingMiddleware_RPI-master/lib/httpservice/usHttpService/cppmicroservices_init.cpp -o CMakeFiles/usHttpService.dir/usHttpService/cppmicroservices_init.cpp.s

httpservice/CMakeFiles/usHttpService.dir/usHttpService/cppmicroservices_resources.cpp.o: httpservice/CMakeFiles/usHttpService.dir/flags.make
httpservice/CMakeFiles/usHttpService.dir/usHttpService/cppmicroservices_resources.cpp.o: httpservice/usHttpService/cppmicroservices_resources.cpp
httpservice/CMakeFiles/usHttpService.dir/usHttpService/cppmicroservices_resources.cpp.o: httpservice/CMakeFiles/usHttpService.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/Documents/GarboTron/AtlasThingMiddleware_RPI-master/lib/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Building CXX object httpservice/CMakeFiles/usHttpService.dir/usHttpService/cppmicroservices_resources.cpp.o"
	cd /home/pi/Documents/GarboTron/AtlasThingMiddleware_RPI-master/lib/httpservice && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT httpservice/CMakeFiles/usHttpService.dir/usHttpService/cppmicroservices_resources.cpp.o -MF CMakeFiles/usHttpService.dir/usHttpService/cppmicroservices_resources.cpp.o.d -o CMakeFiles/usHttpService.dir/usHttpService/cppmicroservices_resources.cpp.o -c /home/pi/Documents/GarboTron/AtlasThingMiddleware_RPI-master/lib/httpservice/usHttpService/cppmicroservices_resources.cpp

httpservice/CMakeFiles/usHttpService.dir/usHttpService/cppmicroservices_resources.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/usHttpService.dir/usHttpService/cppmicroservices_resources.cpp.i"
	cd /home/pi/Documents/GarboTron/AtlasThingMiddleware_RPI-master/lib/httpservice && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pi/Documents/GarboTron/AtlasThingMiddleware_RPI-master/lib/httpservice/usHttpService/cppmicroservices_resources.cpp > CMakeFiles/usHttpService.dir/usHttpService/cppmicroservices_resources.cpp.i

httpservice/CMakeFiles/usHttpService.dir/usHttpService/cppmicroservices_resources.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/usHttpService.dir/usHttpService/cppmicroservices_resources.cpp.s"
	cd /home/pi/Documents/GarboTron/AtlasThingMiddleware_RPI-master/lib/httpservice && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pi/Documents/GarboTron/AtlasThingMiddleware_RPI-master/lib/httpservice/usHttpService/cppmicroservices_resources.cpp -o CMakeFiles/usHttpService.dir/usHttpService/cppmicroservices_resources.cpp.s

# Object files for target usHttpService
usHttpService_OBJECTS = \
"CMakeFiles/usHttpService.dir/__/third_party/civetweb/civetweb.c.o" \
"CMakeFiles/usHttpService.dir/__/third_party/civetweb/CivetServer.cpp.o" \
"CMakeFiles/usHttpService.dir/src/HttpConstants.cpp.o" \
"CMakeFiles/usHttpService.dir/src/HttpServlet.cpp.o" \
"CMakeFiles/usHttpService.dir/src/ServletContainer.cpp.o" \
"CMakeFiles/usHttpService.dir/src/ServletContext.cpp.o" \
"CMakeFiles/usHttpService.dir/src/HttpOutputStreamBuffer.cpp.o" \
"CMakeFiles/usHttpService.dir/src/HttpServletRequest.cpp.o" \
"CMakeFiles/usHttpService.dir/src/HttpServletResponse.cpp.o" \
"CMakeFiles/usHttpService.dir/src/ServletConfig.cpp.o" \
"CMakeFiles/usHttpService.dir/usHttpService/cppmicroservices_init.cpp.o" \
"CMakeFiles/usHttpService.dir/usHttpService/cppmicroservices_resources.cpp.o"

# External object files for target usHttpService
usHttpService_EXTERNAL_OBJECTS = \
"/home/pi/Documents/GarboTron/AtlasThingMiddleware_RPI-master/lib/util/CMakeFiles/util.dir/src/BundleObjFactory.cpp.o" \
"/home/pi/Documents/GarboTron/AtlasThingMiddleware_RPI-master/lib/util/CMakeFiles/util.dir/src/BundleObjFile.cpp.o" \
"/home/pi/Documents/GarboTron/AtlasThingMiddleware_RPI-master/lib/util/CMakeFiles/util.dir/src/Error.cpp.o" \
"/home/pi/Documents/GarboTron/AtlasThingMiddleware_RPI-master/lib/util/CMakeFiles/util.dir/src/FileSystem.cpp.o" \
"/home/pi/Documents/GarboTron/AtlasThingMiddleware_RPI-master/lib/util/CMakeFiles/util.dir/src/String.cpp.o"

lib/libusHttpServiced.so.0.1.0: httpservice/CMakeFiles/usHttpService.dir/__/third_party/civetweb/civetweb.c.o
lib/libusHttpServiced.so.0.1.0: httpservice/CMakeFiles/usHttpService.dir/__/third_party/civetweb/CivetServer.cpp.o
lib/libusHttpServiced.so.0.1.0: httpservice/CMakeFiles/usHttpService.dir/src/HttpConstants.cpp.o
lib/libusHttpServiced.so.0.1.0: httpservice/CMakeFiles/usHttpService.dir/src/HttpServlet.cpp.o
lib/libusHttpServiced.so.0.1.0: httpservice/CMakeFiles/usHttpService.dir/src/ServletContainer.cpp.o
lib/libusHttpServiced.so.0.1.0: httpservice/CMakeFiles/usHttpService.dir/src/ServletContext.cpp.o
lib/libusHttpServiced.so.0.1.0: httpservice/CMakeFiles/usHttpService.dir/src/HttpOutputStreamBuffer.cpp.o
lib/libusHttpServiced.so.0.1.0: httpservice/CMakeFiles/usHttpService.dir/src/HttpServletRequest.cpp.o
lib/libusHttpServiced.so.0.1.0: httpservice/CMakeFiles/usHttpService.dir/src/HttpServletResponse.cpp.o
lib/libusHttpServiced.so.0.1.0: httpservice/CMakeFiles/usHttpService.dir/src/ServletConfig.cpp.o
lib/libusHttpServiced.so.0.1.0: httpservice/CMakeFiles/usHttpService.dir/usHttpService/cppmicroservices_init.cpp.o
lib/libusHttpServiced.so.0.1.0: httpservice/CMakeFiles/usHttpService.dir/usHttpService/cppmicroservices_resources.cpp.o
lib/libusHttpServiced.so.0.1.0: util/CMakeFiles/util.dir/src/BundleObjFactory.cpp.o
lib/libusHttpServiced.so.0.1.0: util/CMakeFiles/util.dir/src/BundleObjFile.cpp.o
lib/libusHttpServiced.so.0.1.0: util/CMakeFiles/util.dir/src/Error.cpp.o
lib/libusHttpServiced.so.0.1.0: util/CMakeFiles/util.dir/src/FileSystem.cpp.o
lib/libusHttpServiced.so.0.1.0: util/CMakeFiles/util.dir/src/String.cpp.o
lib/libusHttpServiced.so.0.1.0: httpservice/CMakeFiles/usHttpService.dir/build.make
lib/libusHttpServiced.so.0.1.0: lib/libCppMicroServicesd.so.4.0.0
lib/libusHttpServiced.so.0.1.0: httpservice/CMakeFiles/usHttpService.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/pi/Documents/GarboTron/AtlasThingMiddleware_RPI-master/lib/CMakeFiles --progress-num=$(CMAKE_PROGRESS_15) "Linking CXX shared library ../lib/libusHttpServiced.so"
	cd /home/pi/Documents/GarboTron/AtlasThingMiddleware_RPI-master/lib/httpservice && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/usHttpService.dir/link.txt --verbose=$(VERBOSE)
	cd /home/pi/Documents/GarboTron/AtlasThingMiddleware_RPI-master/lib/httpservice && $(CMAKE_COMMAND) -E cmake_symlink_library ../lib/libusHttpServiced.so.0.1.0 ../lib/libusHttpServiced.so.0.1.0 ../lib/libusHttpServiced.so
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Appending zipped resources to usHttpService"
	cd /home/pi/Documents/GarboTron/AtlasThingMiddleware_RPI-master/lib/CppMicroServices-development/httpservice && /home/pi/Documents/GarboTron/AtlasThingMiddleware_RPI-master/lib/bin/usResourceCompiler4 -b /home/pi/Documents/GarboTron/AtlasThingMiddleware_RPI-master/lib/lib/libusHttpServiced.so.0.1.0 -z /home/pi/Documents/GarboTron/AtlasThingMiddleware_RPI-master/lib/httpservice/usHttpService/res_0.zip

lib/libusHttpServiced.so: lib/libusHttpServiced.so.0.1.0
	@$(CMAKE_COMMAND) -E touch_nocreate lib/libusHttpServiced.so

# Rule to build all files generated by this target.
httpservice/CMakeFiles/usHttpService.dir/build: lib/libusHttpServiced.so
.PHONY : httpservice/CMakeFiles/usHttpService.dir/build

httpservice/CMakeFiles/usHttpService.dir/clean:
	cd /home/pi/Documents/GarboTron/AtlasThingMiddleware_RPI-master/lib/httpservice && $(CMAKE_COMMAND) -P CMakeFiles/usHttpService.dir/cmake_clean.cmake
.PHONY : httpservice/CMakeFiles/usHttpService.dir/clean

httpservice/CMakeFiles/usHttpService.dir/depend: httpservice/usHttpService/cppmicroservices_resources.cpp
httpservice/CMakeFiles/usHttpService.dir/depend: httpservice/usHttpService/res_0.zip
	cd /home/pi/Documents/GarboTron/AtlasThingMiddleware_RPI-master/lib && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pi/Documents/GarboTron/AtlasThingMiddleware_RPI-master/lib/CppMicroServices-development /home/pi/Documents/GarboTron/AtlasThingMiddleware_RPI-master/lib/CppMicroServices-development/httpservice /home/pi/Documents/GarboTron/AtlasThingMiddleware_RPI-master/lib /home/pi/Documents/GarboTron/AtlasThingMiddleware_RPI-master/lib/httpservice /home/pi/Documents/GarboTron/AtlasThingMiddleware_RPI-master/lib/httpservice/CMakeFiles/usHttpService.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : httpservice/CMakeFiles/usHttpService.dir/depend
