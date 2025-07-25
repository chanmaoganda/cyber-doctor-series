# Cases to use docker and docker compose

There are many circumstances that we'd better use docker and docker compose.

## Separate environments from host machine
Suppose you want to use a database, but you want that database is not directly installed on your host machine. 
- Then you can use a container to start machine.
- If you want store data locally, volume the `/var/lib/postgresql/data` dir at host machine if you use postgres.
- If you want to manage several containers easily, use docker compose.

## Build your own image
Suppose you want to use yew to develop wasm-rust, you want to create your own image to reuse that image.
- Then you can use rust as base image, install dependencies, add target **wasm32-unknown-unknown**, install trunk in docker file.
- If you want to store data locally or use `shorter command` to start a many-flag container, use `docker compose`.