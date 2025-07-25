# CPlusPlus Compilation Process

## Are you wondering how .cpp file are compiled into a executable file?

Well, .cpp file cannot be directly compiled into executable(.exe) files. They are first compiled into object files(.o), which is done by `g++` (The compiler from gnu project)(gcc, g++, ld also belong to this project). Then linker `ld` link those object files into object files.

## What can `ld` do?
Let's take a tiny project as an example. Suppose i have `main.cpp` and `add.cpp`(What a classic example, I God Dame a genius).
``` cpp
// <--main.cpp-->
#include <iostream>
int main() {
    int return_value = add(1, 2);
    std::cout << return_value << std::endl;
    return 0;
}

// <--add.cpp-->
int add(int num1, int num2) {
    return num1 + num2;
}
```

If you tried to link those object files(main.cpp.o, add.cpp.o) to an executable and run this file, you will got something amazing! This file runs well. Why main can run without including the add.cpp file?

## Why is that working?
The linker `ld` only tries to find symbols that match the function signature.

#### Let's look at a common project:
``` cpp
// <--add.h-->
int add(int num1, int num2);

// <--add.cpp-->
int add(int num1, int num2) {
    return num1 + num2;
}

// <--main.cpp-->
#include <iostream>
#include <add.h>

int main() {
    int return_value = add(1, 2);
    std::cout << return_value << std::endl;
    return 0;
}
```
If you compile main.cpp and add.cpp, link them into an executable, it will definitely work. But why?

#### Insights of how linker works
Unfold those cpp files:
```cpp
// <--add.cpp-->
int add(int num1, int num2);

int add(int num1, int num2) {
    return num1 + num2;
}

// <--main.cpp-->

/// start of iostream....
// contents of iostream
/// end of iostream...

int add(int num1, int num2);

int main() {
    int return_value = add(1, 2);
    std::cout << return_value << std::endl;
    return 0;
}
```

You find that main has signature for int add(int, int). How can linker recognize that add in main.cpp is same to add in add.cpp? You may consider that main.cpp included add.h, add.cpp gives how add should do, then once main includes add.h, it will automatically find add in add.cpp. But that is not the case. Be sure you know how compilers generally work, if not then read [this](./compile_process.md)

#### What linkers do actually?

As linkers will only get compiled object files, how can linker specify which header is to source? The answer is linker does not care. Linker will only recognize signatures. For example, both what main.cpp requires is int add(int, int) and add.cpp provides is int add(int, int), then linkers link them together. If another other.cpp provides int add(int, int) and you link main.cpp.o, add.cpp.o, other.cpp.o together, linkers will tell you that multiple definitions found. That indicates linkers only recognize signatures but not file relations.