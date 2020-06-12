FROM python:stretch

WORKDIR /app
COPY . .

RUN pip install -r requirements.txt


ENTRYPOINT [ "gunicorn","-b",":8080","main:APP" ]
