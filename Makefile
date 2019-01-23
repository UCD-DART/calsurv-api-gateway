init:
	ls

test:
	docker-compose -f docker-compose.yml -f e2e-compose.yml up

ci: 
	docker-compose -f docker-compose.yml -f e2e-compose.yml up
