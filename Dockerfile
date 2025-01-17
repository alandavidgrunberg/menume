FROM python:3.8.13-buster

COPY menu_me /menu_me
COPY requirements.txt /requirements.txt
COPY api /api
COPY data /data

RUN pip install --upgrade pip
RUN pip install -r requirements.txt
# RUN pip install -e . # installing as one package!!! No need for docker

CMD uvicorn api.api:app --host 0.0.0.0 --port $PORT
