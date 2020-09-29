# Mosquitto on Docker Compose
Eclipse Mosquitto on Docker Container

## Installation

After installing Docker Compose and Docker Engine, use make to install:

```
$ make install
```

Add a password file using `docker-compose exec`

```
$ docker-compose exec mqtt mosquitto_passwd -c /mosquitto/config/passwd <username>
```

You will be prompted to enter a password, after entering the password, be sure to restart the service

```
$ docker-compose restart
```
