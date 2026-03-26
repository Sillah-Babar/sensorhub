#!/bin/bash
python -m flask --app=sensorhub init-db
python -m flask --app=sensorhub testgen
python -m flask --app=sensorhub masterkey
python -m gunicorn --bind 0.0.0.0:$PORT wsgi:app