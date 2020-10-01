include .env

.PHONY: install
install:
		docker-compose up --detach --build
.PHONY: password
password:
		docker-compose exec mqtt mosquitto_passwd -b /mosquitto/config/conf.d/passwd ${MQTT_USER} ${MQTT_PASS}

.PHONY: stop
stop:
		docker-compose down

.PHONY: clean
clean:
		rm -rf data log

.PHONY: remove
remove: stop clean

.PHONY: reinstall
reinstall: remove install
