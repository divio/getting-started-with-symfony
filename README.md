# Getting started with Symfony

[![Deploy at Divio
badge](https://img.shields.io/badge/deploy%20at%20divio-DFFF67)](https://control.divio.com/app/new/?template_url=https://github.com/divio/getting-started-with-php-symfony/archive/refs/heads/main.zip)


This is a template project to bootstrap a PHP Symfony application.


## Quick Start with Divio Cloud

### Create a free Divio account
Create a free [Divio account](https://control.divio.com/).

### Deploy your app in Divio Cloud
- Click the `Deploy at Divio` button above and provide the information requested by the app creation wizard (eg. app name and app settings)

- In Divio Control Panel dashboard, Add `MySQL` database under Services section.

- Under settings, add the `Release Command` for database migration:
    - `bash /app/migrate.sh`
(`Release Commands` are the commands executed at the start of app container).


- Deploy an environment; test or live. Open the Env URL in your browser.

For more details about Divio system, read [Divio documentation](https://docs.divio.com/introduction/)


## Setup your local development environment with Divio CLI

Please follow our simple guidelines for [Divio CLI installation](https://docs.divio.com/introduction/01-installation/) and [setup local development](https://docs.divio.com/introduction/01-installation/#tutorial-installation&gsc.tab=0)


## Setup your local development environment without Divio CLI

### Install Docker

This project uses Docker and docker-compose which you can install from the [offical Docker website](https://docs.docker.com/get-docker/).

### Clone the repository

```
git clone https://github.com/divio/getting-started-with-php-symfony.git
```

### Build the project

Let's build the docker image of the project.
```
cd getting-started-with-php-symfony
docker-compose build
```

### Run the project

```
docker-compose up
```

This command will start the `web` and `db` services. You can reach the web application at [http://localhost:8000]().


## How to develop

Follow the official [Symfony docs](https://symfony.com/doc/current/setup.html#creating-symfony-applications)


## Contribute to the project

See the [contribution guide](./CONTRIBUTING.md).
