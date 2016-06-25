FROM alpine
MAINTAINER Andre Almar <andre@y7mail.com>

#flask environment
RUN apk add --no-cache bash git nginx uwsgi uwsgi-python py-pip \
	&& pip install --upgrade pip \
	&& pip install flask

#app folder
ENV APP_DIR /app

#app dir
RUN mkdir ${APP_DIR} \
	&& chown -R nginx:nginx ${APP_DIR} \
	&& chmod 777 /run/ -R \
	&& chmod 777 /root/ -R
VOLUME [${APP_DIR}]
WORKDIR ${APP_DIR}

#expose web server port
EXPOSE 5000

#copy the config files into the system
COPY nginx.conf /etc/nginx/nginx.conf
COPY app.ini /app.ini
COPY entrypoint.sh /entrypoint.sh

#execute start up script
ENTRYPOINT ["/entrypoint.sh"] 

