FROM python:3.9
ENV PYTHONUNBUFFERED 1
WORKDIR /app
COPY . /app
RUN apt update && apt install ncat -y
RUN pip install -r requirements.txt