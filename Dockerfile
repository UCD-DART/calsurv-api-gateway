FROM python:3.6-alpine

EXPOSE 3031
VOLUME /app
WORKDIR /app
COPY . .

RUN apk update \
        && apk add --no-cache \
            uwsgi-python3 \
            gcc \
            musl-dev \
            postgresql-dev \            
        && pip install pipenv \
        && pipenv install

CMD [ "uwsgi", "--socket", "0.0.0.0:3031", \
               "--uid", "uwsgi", \
               "--plugins", "python3", \
               "--protocol", "uwsgi", \
               "--wsgi", "service:__main__" \
               "--venv" "$(pipenv --venv)"]