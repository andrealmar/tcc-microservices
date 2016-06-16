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

ADD . /web
ADD supervisord.conf /etc/supervisor/conf.d/web.conf

# Set working directory
WORKDIR /web

# Install Gunicorn & Supervisor
RUN pip install gunicorn supervisor

# Install requirements file
RUN pip install -r requirements.txt

RUN mkdir logs
RUN touch logs/supervisor.log

EXPOSE 8000

CMD ["supervisord"]

# Remove cache
RUN rm -rf /var/cache/apk/*
