#!/bin/bash
flask --app=sensorhub init-db
flask --app=sensorhub testgen
flask --app=sensorhub masterkey
gunicorn --bind 0.0.0.0:$PORT wsgi:app