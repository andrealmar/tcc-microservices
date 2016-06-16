FROM alpine:3.4

MAINTAINER Andre Almar <andre@y7mail.com>

# Update OS
RUN apk update
RUN apk upgrade

# Install Python
RUN apk add python python-dev py-pip

# Install Virtualenv
RUN pip install virtualenv

# Install NGINX
RUN apk add nginx

# Install Gunicorn & Supervisor
RUN pip install gunicorn supervisor

# Remove cache
RUN rm -rf /var/cache/apk/*