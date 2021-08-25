FROM pytorch/pytorch:1.8.1-cuda10.2-cudnn7-devel

RUN apt-get update && \
    apt-get install -y && \
    apt-get install -y apt-utils wget && \
    apt-get -qq -y install curl && \
    apt-get install -y tar && \
    apt-get install npm -y && \

COPY dalle-server/requirements.txt .

RUN pip install --upgrade pip
RUN pip install -r requirements.txt

WORKDIR /app
COPY . .

EXPOSE 80
