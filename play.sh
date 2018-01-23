#!/bin/bash

# Based on the script found here: http://coleingraham.com/2013/04/28/bytebeat-shell-script/
# With modifications based on the explanation found here: https://github.com/radavis/bytebeat

# This script creates and plays a simple bytebeat

# Arguments:
# $1: A string with the bytebeat algorithm in the form "((t * 3) & (t >> 5))"
# $2: The name of the working files to be created (without an extension)

# Make the C file
echo "
  int main(t) {
    for(int t = 0;;t++) {
      putchar( $1 );
    }
  }" > "$2.c"

# Compile the source
gcc "$2.c" -o "$2"

# Play it with standard ByteBeat settings
./"$2" | sox -traw -r8000 -b8 -e unsigned-integer - -tcoreaudio
