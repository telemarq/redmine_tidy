FROM python:3.8-alpine

COPY requirements.txt /tmp/requirements.txt
RUN pip install -r /tmp/requirements.txt

RUN mkdir -p /app
WORKDIR /app

COPY redmine-tidy.py /app
RUN chmod +x /app/redmine-tidy.py

# You'll want to mount your own config file in place of this sample:
COPY redmine-tidy-sample.json /etc/redmine-tidy.json

CMD python redmine-tidy.py
