# Cmake, a common manager of projects in cpp

## When you should use cmake

- Are you tired of compiling source files yourself?
- Do you want to get rid of clicking the green triangle button?
- Do you want not to link some files in your project but that green button cannot do this?

## Why cmake, not Makefile?
You probably have heard of Makefile, which can provide a script-like functionalities to compile those source files automatically. But Makefile is really weak on its functionalities. Makefile cannot be cross-platform, which means you cannot just copy windows Makefile to MacOs and expect it to work. Also, Writing Makefile is also annoying. That's why cmake comes into.

## How cmake works?
Though Makefile is weak, what cmake do is provide a general purpose script to generate different Makefile on different platforms. Once you learned how to use cmake, you can copy your sources and CMakeLists.txt to another device and compile without any warranty.

## How to use cmake?
Please Read Official Cmake docs or Watch cmake tutorial videos for details.

### How to use cmake to link 3rd libraries.
Suppose you use 