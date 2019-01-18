# Calsurv Gateway API

[![Build Status](https://travis-ci.com/UCD-DART/calsurv-api-gateway.svg?branch=master)](https://travis-ci.com/UCD-DART/calsurv-api-gateway)

## Configuration

Set evironment variables:

- DBHOST
- DBUSER
- DBPASS
- DBNAME

uwsgi --socket 0.0.0.0:3031 --uid uwsgi --plugin python3 --protocol uwsgi --wsgi service:__main__ --venv $(pipenv --venv)