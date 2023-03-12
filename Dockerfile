FROM python:3.9-slim-buster

WORKDIR /app

RUN /usr/local/bin/python -m pip install --upgrade pip
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt
RUN apt update -y && apt upgrade -y&& apt install vim libgl1-mesa-glx libglib2.0-dev -y
RUN mkdir -p ./templates/
COPY index.html ./templates/
COPY app.py ./
COPY yolov3-tiny.cfg ./
COPY yolov3-tiny.weights ./
EXPOSE 5000

CMD [ "python", "app.py" ]

