init:
	pip install pipenv
	pipenv install --dev

test:
	pycodestyle .
	pipenv run py.test
	docker-compose -f docker-compose.yml -f e2e-compose.yml up --exit-code-from e2e

ci: 
	pycodestyle .
	pipenv run py.test
	docker-compose -f docker-compose.yml -f e2e-compose.yml up --exit-code-from e2e
