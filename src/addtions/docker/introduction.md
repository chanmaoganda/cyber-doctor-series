# Brief Introduction Docker

## Is Docker a tool like VM Ware or Virtual Box?
My answer is that this definition does not fully fit docker. Offering virtual machine service, isolating processes are their same points as a tool to use vms.
For deep explanation for the difference between traditional vm tools and docker, let's first take a look at traditional vm tools like VM Ware and Virtual Box. Traditional vm tools provide user with full features of an operating system, which offers full support for `graphic user interface(GUI as abbr.)`, `terminal user interface(TUI as abbr.)`, `basic running components`, etc. Those services requires longer time and more resources to startup, meaning user have to cover higher cost if he runs a full operating system. While components packed in docker are `terminal user interface(TUI as abbr.)` and `basic running components`, they can cover most basic usage scenarios.
Thus a modern virtualization tool to serve users with light-weight vm services should be the definition of docker, in my opinion.

## Comparing Docker with Windows Subsystem for Linux (WSL as abbr.)
As mentioned above, it is known that docker is a light-weight vm tool. There is another tool to offer virtualization services on windows pc platform only, which is called `Windows Subsystem of Linux(WSL as abbr.)`. So what is the difference between them?
There are some obvious differences:
- Distribution Size:
    - [wsl distribution on microsoft store](https://apps.microsoft.com/detail/9pn20msr04dw?hl=en-US&gl=US)
    - [docker distribution on hub.docker.com](https://hub.docker.com/_/ubuntu)

    `WSL ubuntu-22.04` distribution size is *321.8MB* while `Docker ubuntu-22.04` size is *77.86MB* in total
- Operational Difficulty
    - VM service management difficulty
        - WSL can only use one instance at a time, no official GUI applications to manage those distributions.
        - Docker can manage lots of containers at a time, with official GUI application to use.
    - New concepts
        - Barely no new concept is introduced for a experienced vm tool user
        - Some new concepts are introduced. Image, container, volumes, workdir, command, etc.
