#!/bin/bash
pip list
gunicorn django_sra.wsgi:application --bind 0.0.0.0:8000
