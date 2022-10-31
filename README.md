# Docker Compose Kickstarter

A docker-compose kickstarter for PrestaShop.
This project relies on [ngrok](https://ngrok.com) to open a network edge endpoint,
but [localtunnel](https://github.com/localtunnel/localtunnel) could be used as well.

Requirements:

- [docker](https://www.docker.com) recommended version >= 20
- [docker compose](https://docs.docker.com/compose/) version: >= 1.29
- An Ngrok free account and a token: https://dashboard.ngrok.com/get-started/setup

## Configure

```sh
cp .env.dist
edit .env
```

## Use

Start the services:

```sh
docker compose up
```

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
