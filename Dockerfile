FROM python:3.7-slim

ENV PYTHONDONTWRITEBYCODE 1
ENV PYTHONNUNBUFFERED 1

WORKDIR /projects

COPY Pipfile Pipfile.lock /projects/
RUN pip install pipenv && pipenv install --system

COPY . /projects