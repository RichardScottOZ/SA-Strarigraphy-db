#!/bin/sh

exec gunicorn --config gunicorn_config.py wsgi:app