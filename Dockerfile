FROM ghcr.io/amirulandalib/mltb-alpine-docker:latest


COPY . .

WORKDIR /usr/src/app

RUN chmod 777 /usr/src/app

RUN pip3 install --no-cache-dir -r requirements.txt

CMD ["bash", "start.sh"]
