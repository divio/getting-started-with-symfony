# Getting Started with Symfony

[![Deploy to Divio](https://img.shields.io/badge/DEPLOY-TO%20DIVIO-DFFF67?logo=docker&logoColor=white&labelColor=333333)](https://control.divio.com/app/new/?template_url=https://github.com/divio/getting-started-with-php-symfony/archive/refs/heads/main.zip)

Welcome to our QuickStart template – your portal to swift application development and seamless local testing. Whether you're delving into Symfony for the first time or optimizing your workflow, our template, based on Symfony' [Using Docker](https://symfony.com/doc/current/setup/docker.html) guide, has got you covered.

## Cloud Setup

Use the app creation wizard with a free [Divio Account](https://control.divio.com/) and choose **Symfony** from the template selection. Alternatively, click the `Deploy to Divio` button above and follow the app creation wizard. Finally, deploy your app to the `test` or `live` environment.

For in-depth details about Divio Cloud, refer to the [Divio documentation](https://docs.divio.com/introduction/).

## Local Setup

Install the [Divio CLI](https://github.com/divio/divio-cli) to set up your app locally.

Alternatively, build this app locally using Docker:

1. Ensure [Docker](https://docs.docker.com/get-docker/) is installed and running.
2. Run `docker compose build --no-cache` to build fresh images.
3. Run `docker compose up --pull always -d` to start the project.
4. Open `http://localhost` in your favorite web browser and [accept the auto-generated TLS certificate](https://stackoverflow.com/a/15076602/1352334).
5. Run `docker compose down --remove-orphans` to stop the Docker containers.
