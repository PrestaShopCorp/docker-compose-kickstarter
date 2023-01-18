# Docker Compose Kickstarter

This is docker-compose kickstarter for PrestaShop. This project relies on [ngrok](https://ngrok.com) to open a network edge endpoint,
but [localtunnel](https://github.com/localtunnel/localtunnel) could be used as well.

Requirements:

- [git](https://git-scm.com/downloads) any recent version
- [docker](https://www.docker.com) recommended version >= 20 (`docker --version`)
- [docker compose](https://docs.docker.com/compose/) version: >= 1.29 (`docker compose version`)
- An Ngrok free account and a token: https://dashboard.ngrok.com/get-started/setup

## Configure

After cloning the sources, configure the environment variables on your host:

```sh
cp .env.dist .env
edit .env
```

## Start

You can now start the services:

```sh
docker compose up -d
```

> Note: `-d` stands for daemonize mode, so your prompt will be freed. Feel free to diagnose any issues with `docker ps -a` or directly docker logs (`docker compose logs prestashop`).

## Use

Browse the shop:

- Front-office: https://localhost:8000
- Back-office: https://localhost:8000/ps-admin

Default credentials are:

- login: `admin@prestashop.com`
- password: `prestashop`

Browse your MySQL data:

- Open phpMyAdmin: http://localhost:8888 (no authentication required)

Audit your Ngrok tunnel:

- Browse: http://localhost:4040 (no authentication required)
- Or from https://dashboard.ngrok.com/cloud-edge/endpoints
