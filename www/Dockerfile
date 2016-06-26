FROM python
RUN pip install flask
RUN pip install gunicorn
COPY . /src
WORKDIR /src
CMD gunicorn --bind 0.0.0.0:5000 --workers 10 app:app
EXPOSE 5000
