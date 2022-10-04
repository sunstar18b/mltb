FROM anasty17/mltb:heroku

# LABEL
MAINTAINER missemily2022 missemilymirror@gmail.com
LABEL org.opencontainers.image.source="https://github.com/missemily2022/Anasty_Docker"
LABEL org.opencontainers.image.description="Docker for Anas Repo"

WORKDIR /usr/src/app
RUN chmod 777 /usr/src/app

COPY requirements.txt .
RUN pip3 install --no-cache-dir -r requirements.txt
