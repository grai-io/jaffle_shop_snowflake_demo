setup:
	pip install dbt-postgres

start:
	docker-compose -f ./warehouse/docker-compose.yml up -d

run:
	dbt build --profiles-dir ./profiles
	dbt run --profiles-dir ./profiles

cleanup:
	docker-compose -f ./warehouse/docker-compose.yml down
	docker-compose -f ./warehouse/docker-compose.yml rm
	dbt clean