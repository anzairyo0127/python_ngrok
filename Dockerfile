FROM python:3.6

# setting environment variable
ARG fver="1.0.2"
ARG uWSGI_Ver="2.0.17"

COPY ./ngrok-stable-linux-amd64/ngrok /usr/bin/

# pip update
RUN pip install -U pip

# flask 
RUN pip install Flask==${fver}

# uWSGI
RUN pip install uwsgi==${uWSGI_Ver}
