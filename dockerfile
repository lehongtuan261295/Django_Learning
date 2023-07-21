# syntax=docker/dockerfile:1
FROM python:latest
WORKDIR /DjangoWeb

COPY ./* /DjangoWeb/
RUN pip install --upgrade pip
RUN pip install -r requirements.txt
CMD ["python" , "manage.py" , "runserver"]