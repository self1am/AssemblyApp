#!/bin/bash

# Compile assembly
as -arch arm64 greeting.s -o greeting.o

# Compile Swift and link everything
swiftc main.swift greeting.o \
    -target arm64-apple-macosx14.0 \
    -framework Cocoa \
    -o AssemblyApp