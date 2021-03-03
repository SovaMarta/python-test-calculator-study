FROM python:3.7-slim

MAINTAINER sova.irma@gmail.com

COPY . /python-test-calculator

WORKDIR /python-test-calculator

RUN pip install --no-cache-dir -r requirements.txt

RUN ["pytest", "-v", "--junitxml=reports/result.xml"]

CMD tail -f /dev/null
