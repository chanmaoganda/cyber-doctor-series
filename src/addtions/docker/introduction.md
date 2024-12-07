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

Taking those drawbacks of WSL into consideration, easy to use for beginners is the only reason for using WSL instead docker. WSL can be used correctly once you can operate a linux or unix like operating system. That means you can use the most of WSL if you can use the most of linux or unix like systems. But that is not the case when it comes to docker. Virtual machine is just a small part of docker. Management to `virtual machines(container in docker concepts)` is why we use docker.

Higher cost to learn docker is tied with higher performance. Higher learning curve is composed of new concepts, docker commands, compose commands, etc. Those new to docker often get confused to those concepts and flags passed to docker command. Once you get accustomed to those in docker, you can dive into a new world with combinations of different images and containers!