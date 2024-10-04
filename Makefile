INSTALL:
	docker compose build
	docker compose run composer create-project laravel/laravel .
	docker compose up nginx -d
	docker compose run artisan migrate

BUILD:
	docker compose build

START:
	docker compose up nginx -d

STOP:
	docker compose down -v --remove-orphans

MIGRATE:
	docker compose run artisan migrate