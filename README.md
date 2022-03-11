
## Run Locally

Clone the project

```bash
  git clone https://github.com/velfin13/docker_practica.git
```

Go to the project directory

```bash
  cd docker_practica/
```

Create the image

```bash
  docker build -t centos7:apache .
```

Start the server ( make sure port 80 is not used by another service before bringing up the service )

```bash
  docker run -d --name apache-server -p 80:80 centos7:apache
```

