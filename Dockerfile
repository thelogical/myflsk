FROM python:3.7
RUN apt-get install -y python3-pip python3-dev build-essential
COPY app.py requirements.txt /app
WORKDIR /app
RUN pip3 install -r requirements.txt
ENTRYPOINT ["python3"]
CMD ["app.py"]