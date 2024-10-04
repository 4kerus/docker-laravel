INSTALL:
	docker compose run composer create-project laravel/laravel .

BUILD:
	docker compose build

START:
	docker compose up nginx -d

STOP:
	docker compose down -v --remove-orphans

RESTART:
	docker compose down
	docker compose up

MIGRATE:
	docker compose run artisan migrate