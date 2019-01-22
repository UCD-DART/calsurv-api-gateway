FROM alpine

RUN mkdir /e2e && apk add --no-cache bash
COPY wait-for-it.sh /e2e
WORKDIR /e2e
RUN chmod +x ./wait-for-it.sh