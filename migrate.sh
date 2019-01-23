#!/bin/sh

until kong migrations bootstrap; do
  echo "Postgres is unavailable - sleeping"
  sleep 1
done

echo "Migration Complete"
