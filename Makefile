.PHONY: dev prod migrations migrate

dev:
	docker compose down && docker compose up -d --build --remove-orphans
prod:
	docker compose -f docker-compose.prod.yml down && docker compose -f docker-compose.prod.yml up -d --build --remove-orphans

migrations:
		docker compose exec web poetry run python manage.py makemigrations

migrate:
		docker compose exec web poetry run python manage.py migrate
