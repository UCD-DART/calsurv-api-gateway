init:
	ls

run:
	docker-compose -f docker-compose.yml up -d

test:
	docker-compose -f docker-compose.yml up -d;\
	docker-compose -f e2e-compose.yml run e2e;\
	RC=$$?;\
	docker-compose down;\
	exit $$RC

ci: 
	docker-compose -f docker-compose.yml up -d;\
	docker-compose -f e2e-compose.yml run e2e;\
	RC=$$?;\
	docker-compose down;\
	exit $$RC
