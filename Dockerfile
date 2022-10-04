FROM ghcr.io/amirulandalib/mltb-alpine-docker:latest

WORKDIR /usr/src/app
RUN chmod 777 /usr/src/app

copy requirements.txt
RUN pip3 install --no-cache-dir -r requirements.txt

COPY . .

CMD ["bash", "start.sh"]
