# Demo Docker x NodeJS

## Installation

### System Requirements

- Docker: [Install Docker](https://docs.docker.com/get-docker/)

### Install the Application

1. Clone the repository from GitHub:

```shell
git clone https://github.com/iamncdai/demo-docker-nodejs
```

2. Navigate to the project directory:

```shell
cd demo-docker-nodejs
```

3. Start the application using Docker Compose:

```shell
docker build -t demo-docker-nodejs .
docker run -dp 127.0.0.1:4000:3000 demo-docker-nodejs
```

4. The application will start and be ready to use (https://localhost:4000).
