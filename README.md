# Getting Started with Symfony

[![Deploy to Divio](https://img.shields.io/badge/DEPLOY-TO%20DIVIO-DFFF67?logo=docker&logoColor=white&labelColor=333333)](https://control.divio.com/app/new/?template_url=https://github.com/divio/getting-started-with-symfony/archive/refs/heads/main.zip)

Welcome to our QuickStart template – your portal to swift application development and seamless local testing. Whether you're delving into Symfony for the first time or optimizing your workflow, our template, based on Symfony' [Guide](https://symfony.com/doc/current/setup.html) guide, has got you covered.

## Cloud Setup

Create a [Divio Account](https://control.divio.com/) and choose **Symfony** from the template selection when creating a new application. Alternatively, click the `Deploy to Divio` button above and follow the app creation wizard. Finally, deploy your app to the `test` or `live` environment.

For in-depth details about Divio Cloud, refer to the [Divio documentation](https://docs.divio.com/introduction/).

## Local Setup

Install the [Divio CLI](https://github.com/divio/divio-cli) to set up your app locally.

Alternatively, build this app locally using Docker:

1. Ensure [Docker](https://docs.docker.com/get-docker/) is installed and running.
2. Run `docker compose build` to build fresh images.
3. Install dependencies using `docker compose run --rm web composer install`.
4. Run `docker compose up` to start the project.
5. Open `http://localhost:8000`.
