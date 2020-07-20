APP_NAME=filtron

build:
	docker rmi -f $(APP_NAME):latest
	docker build -t $(APP_NAME) .

run:
	@echo "\n /!\ DO NOT use in production\n"
	docker run --rm -t -i -v ${PWD}/rules.json:/etc/filtron/rules.json --net=host --name="$(APP_NAME)" $(APP_NAME) --target 127.0.0.1:8888
