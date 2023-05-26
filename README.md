# Demo Docker x NodeJS

## Installation

### System Requirements

- Docker: [Install Docker](https://docs.docker.com/get-docker/)
- Docker Compose: [Install Docker Compose](https://docs.docker.com/compose/install/)

### Install the Application

1. Clone the repository from GitHub:

```shell
git clone https://github.com/iamncdai/demo-docker-nodejs
```

2. Navigate to the project directory:

```shell
cd repository
```

3. Start the application using Docker Compose:

```shell
docker-compose up -d
```

4. The application will start and be ready to use (https://localhost:4000).

## Usage

### Start the Application

To start the application, navigate to the project directory and run the following command:

```shell
docker-compose up -d
```

The application will start in detached mode (-d).

### Stop the Application

To stop the application, navigate to the project directory and run the following command:

```shell
docker-compose down
```

This command will stop and remove the containers, networks, and volumes associated with the application.
