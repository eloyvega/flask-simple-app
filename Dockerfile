FROM ubuntu:14.04
MAINTAINER Eloy Vega "eloyvega@gmail.com"
EXPOSE 8000
RUN apt-get update -y
RUN apt-get install -y python python-pip python-dev build-essential
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt
CMD ["gunicorn","-b","0.0.0.0:8000","app.main:app"]
