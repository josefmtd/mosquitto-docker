.PHONY: config
config:
		mkdir config
		cp ./mosquitto.conf.example ./config/mosquitto.conf

.PHONY: run
run:
		docker-compose up -d

.PHONY: install
install: config run

.PHONY: stop
stop:
		docker-compose down

.PHONY: clean
clean:
		rm -rf config data log

.PHONY: remove
remove: stop clean

.PHONY: reinstall
reinstall: remove install
