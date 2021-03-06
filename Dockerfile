FROM python:3.6

RUN pip install -U pip
RUN pip install -U pipenv

COPY example/Pipfile /app/example/Pipfile
COPY example/Pipfile.lock /app/example/Pipfile.lock

WORKDIR /app/example

RUN pipenv install
