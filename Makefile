build:
	docker-compose build

run-shell:
	docker-compose run web bash

up: build
	docker-compose up -d

down:
	docker-compose down

restart-web:
	docker-compose restart web

exec-shell:
	docker-compose exec web bash

migrate:
	docker-compose run web bash -c "python manage.py migrate"

startapp-%:
	docker-compose run web bash -c "python manage.py startapp $*"

