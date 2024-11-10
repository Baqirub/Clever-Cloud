FROM python:3.13.0
RUN apt-get update && apt-get upgrade -y
RUN apt-get install git curl python3-pip ffmpeg -y
RUN pip3 install -U pip
RUN python3 -m pip install --upgrade pip
RUN curl -fsSL https://deb.nodesource.com/setup_20.x | sudo bash -
sudo apt-get install -y nodejs
COPY . /app/
WORKDIR /app/
RUN pip3 install -U -r requirements.txt
EXPOSE 8080
CMD ["bash","start.sh"]
