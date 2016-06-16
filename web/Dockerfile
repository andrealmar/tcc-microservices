FROM alpine:3.4

# Update OS
RUN apk update
RUN apk upgrade

# Install Python
RUN apk add python python-dev py-pip

# Install Virtualenv
RUN pip install virtualenv

# Remove cache
RUN rm -rf /var/cache/apk/*