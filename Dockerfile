FROM python:3.9-slim-buster

RUN apt update -y && apt install awscli -y
WORKDIR /app
COPY . /app
RUN apt-get update && apt-get install ffmpeg Libsm6 Libxext6 unzip -y && pip install -r requirements.txt

CMD ["python3","app.py"]

