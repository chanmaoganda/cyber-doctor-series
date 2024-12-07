# Brief introduction for Docker Compose

## Warning!!! Contents below are for those who can use basic docker commands.
Suppose you can work with docker, like creating containers, volumes, images, networks, etc. You may get annoyed when you have to type such a long command like `$ docker run --name some-nginx -d -p 8080:80 some-content-nginx` each time you starts a nginx container and expose inner port 80 to host machine port 8080 and make the container called some-nginx. However, this is just a piece of cake when comparing with the command below:
``` bash
$ docker run -d \
	--name some-postgres \
	-e POSTGRES_PASSWORD=mysecretpassword \
	-e PGDATA=/var/lib/postgresql/data/pgdata \
	-v /custom/mount:/var/lib/postgresql/data \
	postgres

```

Developers always get mad when they types those ridiculously long command if they removed the container and have to recreate. That is why docker compose is developed.

## How do we understand docker compose?
Below is a template for docker compose file: docker-compose.yml
``` yaml
services:
  frontend:
    build:
      context: frontend
      target: development
    volumes:
      - ./frontend/src:/code/src:ro
    ports:
      - 3000:3000
    depends_on:
      - backend

  backend:
    image: rust:latest
    # tty: true
    volumes:
      - ./backend:/app
    environment:
      - user=backend_user
      - ...
    ports:
      - 8080:8080
    working_dir: /app
    command: bash -c "RUST_LOG=debug /usr/local/cargo/bin/cargo run --release"

  database:
    image: postgres:17.0-alpine
    environment:
      - POSTGRES_PASSWORD="postgres_secret_password"
      - POSTGRES_USER="postgres"
      - POSTGRES_DB="students_db"
      - PGDATA="/var/lib/postgresql/data"
    volumes:
      - ./database:/var/lib/postgresql/data
    ports:
      - 5432:5432
```
From the template we can run three containers at a time and startup a full stack service. In contrast to typing a ridiculously long command each time, saving those commands in a file and reuse them is obviously a better choice.