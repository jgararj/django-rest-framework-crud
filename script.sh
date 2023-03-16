#!/bin/sh
python manage.py migrate
gunicorn --bind 0.0.0.0:8000 --workers=2 --max-requests-jitter=50 --max-requests=1000 api_crud.wsgi

