#!/bin/bash



postgres_host=$1
postgres_port=$2
shift 2





# wait for the postgres docker to be running
while ! nc $postgres_host $postgres_port; do
>&2 echo "Postgres is unavailable - sleeping"
  sleep 1
done



>&2 echo "Postgres is up - executing command"



# run the command
python manage.py migrate                  # Apply database migrations
python manage.py collectstatic --noinput  # Collect static files
python manage.py runserver 0.0.0.0:8000