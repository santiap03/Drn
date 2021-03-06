# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

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
CMAKE_SOURCE_DIR = /home/santi/wsfin/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/santi/wsfin/build

# Utility rule file for ardronelib.

# Include the progress variables for this target.
include ardrone_autonomy/CMakeFiles/ardronelib.dir/progress.make

ardrone_autonomy/CMakeFiles/ardronelib: ardrone_autonomy/CMakeFiles/ardronelib-complete


ardrone_autonomy/CMakeFiles/ardronelib-complete: /home/santi/wsfin/devel/src/ardronelib-stamp/ardronelib-install
ardrone_autonomy/CMakeFiles/ardronelib-complete: /home/santi/wsfin/devel/src/ardronelib-stamp/ardronelib-mkdir
ardrone_autonomy/CMakeFiles/ardronelib-complete: /home/santi/wsfin/devel/src/ardronelib-stamp/ardronelib-download
ardrone_autonomy/CMakeFiles/ardronelib-complete: /home/santi/wsfin/devel/src/ardronelib-stamp/ardronelib-update
ardrone_autonomy/CMakeFiles/ardronelib-complete: /home/santi/wsfin/devel/src/ardronelib-stamp/ardronelib-patch
ardrone_autonomy/CMakeFiles/ardronelib-complete: /home/santi/wsfin/devel/src/ardronelib-stamp/ardronelib-configure
ardrone_autonomy/CMakeFiles/ardronelib-complete: /home/santi/wsfin/devel/src/ardronelib-stamp/ardronelib-build
ardrone_autonomy/CMakeFiles/ardronelib-complete: /home/santi/wsfin/devel/src/ardronelib-stamp/ardronelib-install
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/santi/wsfin/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Completed 'ardronelib'"
	cd /home/santi/wsfin/build/ardrone_autonomy && /usr/bin/cmake -E make_directory /home/santi/wsfin/build/ardrone_autonomy/CMakeFiles
	cd /home/santi/wsfin/build/ardrone_autonomy && /usr/bin/cmake -E touch /home/santi/wsfin/build/ardrone_autonomy/CMakeFiles/ardronelib-complete
	cd /home/santi/wsfin/build/ardrone_autonomy && /usr/bin/cmake -E touch /home/santi/wsfin/devel/src/ardronelib-stamp/ardronelib-done

/home/santi/wsfin/devel/src/ardronelib-stamp/ardronelib-install: /home/santi/wsfin/devel/src/ardronelib-stamp/ardronelib-build
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/santi/wsfin/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Performing install step for 'ardronelib'"
	cd /home/santi/wsfin/devel/src/ardronelib && make install INSTALL_PREFIX=/home/santi/wsfin/devel/lib/ardrone
	cd /home/santi/wsfin/devel/src/ardronelib && /usr/bin/cmake -E touch /home/santi/wsfin/devel/src/ardronelib-stamp/ardronelib-install

/home/santi/wsfin/devel/src/ardronelib-stamp/ardronelib-mkdir:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/santi/wsfin/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Creating directories for 'ardronelib'"
	cd /home/santi/wsfin/build/ardrone_autonomy && /usr/bin/cmake -E make_directory /home/santi/wsfin/devel/src/ardronelib
	cd /home/santi/wsfin/build/ardrone_autonomy && /usr/bin/cmake -E make_directory /home/santi/wsfin/devel/src/ardronelib
	cd /home/santi/wsfin/build/ardrone_autonomy && /usr/bin/cmake -E make_directory /home/santi/wsfin/devel
	cd /home/santi/wsfin/build/ardrone_autonomy && /usr/bin/cmake -E make_directory /home/santi/wsfin/devel/tmp
	cd /home/santi/wsfin/build/ardrone_autonomy && /usr/bin/cmake -E make_directory /home/santi/wsfin/devel/src/ardronelib-stamp
	cd /home/santi/wsfin/build/ardrone_autonomy && /usr/bin/cmake -E make_directory /home/santi/wsfin/devel/src
	cd /home/santi/wsfin/build/ardrone_autonomy && /usr/bin/cmake -E touch /home/santi/wsfin/devel/src/ardronelib-stamp/ardronelib-mkdir

/home/santi/wsfin/devel/src/ardronelib-stamp/ardronelib-download: /home/santi/wsfin/devel/src/ardronelib-stamp/ardronelib-gitinfo.txt
/home/santi/wsfin/devel/src/ardronelib-stamp/ardronelib-download: /home/santi/wsfin/devel/src/ardronelib-stamp/ardronelib-mkdir
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/santi/wsfin/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Performing download step (git clone) for 'ardronelib'"
	cd /home/santi/wsfin/devel/src && /usr/bin/cmake -P /home/santi/wsfin/devel/tmp/ardronelib-gitclone.cmake
	cd /home/santi/wsfin/devel/src && /usr/bin/cmake -E touch /home/santi/wsfin/devel/src/ardronelib-stamp/ardronelib-download

/home/santi/wsfin/devel/src/ardronelib-stamp/ardronelib-update: /home/santi/wsfin/devel/src/ardronelib-stamp/ardronelib-download
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/santi/wsfin/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Performing update step for 'ardronelib'"
	cd /home/santi/wsfin/devel/src/ardronelib && /usr/bin/cmake -P /home/santi/wsfin/devel/tmp/ardronelib-gitupdate.cmake

/home/santi/wsfin/devel/src/ardronelib-stamp/ardronelib-patch: /home/santi/wsfin/devel/src/ardronelib-stamp/ardronelib-download
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/santi/wsfin/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "No patch step for 'ardronelib'"
	cd /home/santi/wsfin/build/ardrone_autonomy && /usr/bin/cmake -E echo_append
	cd /home/santi/wsfin/build/ardrone_autonomy && /usr/bin/cmake -E touch /home/santi/wsfin/devel/src/ardronelib-stamp/ardronelib-patch

/home/santi/wsfin/devel/src/ardronelib-stamp/ardronelib-configure: /home/santi/wsfin/devel/tmp/ardronelib-cfgcmd.txt
/home/santi/wsfin/devel/src/ardronelib-stamp/ardronelib-configure: /home/santi/wsfin/devel/src/ardronelib-stamp/ardronelib-update
/home/santi/wsfin/devel/src/ardronelib-stamp/ardronelib-configure: /home/santi/wsfin/devel/src/ardronelib-stamp/ardronelib-patch
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/santi/wsfin/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Performing configure step for 'ardronelib'"
	cd /home/santi/wsfin/devel/src/ardronelib && echo "No configure"
	cd /home/santi/wsfin/devel/src/ardronelib && /usr/bin/cmake -E touch /home/santi/wsfin/devel/src/ardronelib-stamp/ardronelib-configure

/home/santi/wsfin/devel/src/ardronelib-stamp/ardronelib-build: /home/santi/wsfin/devel/src/ardronelib-stamp/ardronelib-configure
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/santi/wsfin/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Performing build step for 'ardronelib'"
	cd /home/santi/wsfin/devel/src/ardronelib && make
	cd /home/santi/wsfin/devel/src/ardronelib && /usr/bin/cmake -E touch /home/santi/wsfin/devel/src/ardronelib-stamp/ardronelib-build

ardronelib: ardrone_autonomy/CMakeFiles/ardronelib
ardronelib: ardrone_autonomy/CMakeFiles/ardronelib-complete
ardronelib: /home/santi/wsfin/devel/src/ardronelib-stamp/ardronelib-install
ardronelib: /home/santi/wsfin/devel/src/ardronelib-stamp/ardronelib-mkdir
ardronelib: /home/santi/wsfin/devel/src/ardronelib-stamp/ardronelib-download
ardronelib: /home/santi/wsfin/devel/src/ardronelib-stamp/ardronelib-update
ardronelib: /home/santi/wsfin/devel/src/ardronelib-stamp/ardronelib-patch
ardronelib: /home/santi/wsfin/devel/src/ardronelib-stamp/ardronelib-configure
ardronelib: /home/santi/wsfin/devel/src/ardronelib-stamp/ardronelib-build
ardronelib: ardrone_autonomy/CMakeFiles/ardronelib.dir/build.make

.PHONY : ardronelib

# Rule to build all files generated by this target.
ardrone_autonomy/CMakeFiles/ardronelib.dir/build: ardronelib

.PHONY : ardrone_autonomy/CMakeFiles/ardronelib.dir/build

ardrone_autonomy/CMakeFiles/ardronelib.dir/clean:
	cd /home/santi/wsfin/build/ardrone_autonomy && $(CMAKE_COMMAND) -P CMakeFiles/ardronelib.dir/cmake_clean.cmake
.PHONY : ardrone_autonomy/CMakeFiles/ardronelib.dir/clean

ardrone_autonomy/CMakeFiles/ardronelib.dir/depend:
	cd /home/santi/wsfin/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/santi/wsfin/src /home/santi/wsfin/src/ardrone_autonomy /home/santi/wsfin/build /home/santi/wsfin/build/ardrone_autonomy /home/santi/wsfin/build/ardrone_autonomy/CMakeFiles/ardronelib.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : ardrone_autonomy/CMakeFiles/ardronelib.dir/depend

