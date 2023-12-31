default: start

project:=wide-delivery
service:=ms-kotlin-service

.PHONY: start
start:
	docker-compose -p ${project} up -d

.PHONY: stop
stop:
	docker-compose -p ${project} down

.PHONY: logs
logs:
	docker-compose -p ${project} logs -f ms-delivery-kotlin

.PHONY: build
build:
	docker-compose -p ${project} build --no-cache

#.PHONY: install-dependencies
#install-dependencies:
#	docker-compose -p ${project} exec ms-demo-node npm install
#
#.PHONY: install-package
#install-package:
#	docker-compose -p ${project} exec ms-demo-node npm install -S ${package}
#
#.PHONY: install-dev-package
#install-dev-package:
#	docker-compose -p ${project} exec ms-demo-node npm install -D ${package}
#
#.PHONY: migration-create
#migration-create:
#	docker-compose -p ${project} exec ms-demo-node node_modules/db-migrate/bin/db-migrate create --sql-file
#
#.PHONY: migrate
#migrate:
#	docker-compose -p ${project} exec ms-demo-node node_modules/db-migrate/bin/db-migrate up
#
#.PHONY: test
#test:
#	docker-compose -p ${project} exec ms-demo-node npm run test-native
