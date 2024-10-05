BUILD:
	docker compose build

INSTALL:
	docker compose run composer create-project laravel/laravel .

START:
	docker compose up nginx -d

STOP:
	docker compose down -v --remove-orphans

MIGRATE:
	docker compose run artisan migrate:refresh
