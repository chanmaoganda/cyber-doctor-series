# Brief Introduction to Compile Process

## On Unix like
### compilers unfold macros
Those macros will be unfolded
- #include
- #ifdef #ifndef #define #defined

### compilers compiles sources into objects
gcc or g++ will compiles main.cpp, xxx.cpp into main.cpp.o, xxx.cpp.o

### linkers link those object files into executables
ld or lld will link those objects into main



## On Windows
Things will go different on windows if you use msvc toolchain.

But if you use mingw(Minimal GNU for Windows), everything is same except executable extension.

### compilers unfold macros
Those macros will be unfolded
- #include
- #ifdef #ifndef #define #defined

### compilers compiles sources into objects
cl will compiles main.cpp, xxx.cpp into main.cpp.o, xxx.cpp.o

### linkers link those object files into executables
cl will link those objects into main.exe