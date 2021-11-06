# Pull base image
FROM python:3.8-slim

# Install psql so that "python manage.py dbshell" works
RUN apt-get update -qq && apt-get install -y gcc libpq-dev python3-dev  postgresql-client 

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Set work directory
WORKDIR /app

# Copy project, install depend
COPY . /app/
RUN pip install -r /app/requirements.txt

# add and run as non-root user
RUN adduser datauser
USER datauser
