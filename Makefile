.PHONY: install
install:
		docker-compose up --detach --build

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
