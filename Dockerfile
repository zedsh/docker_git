FROM docker:19.03.1-dind
RUN apk update && apk add --no-cach openssh curl git docker python-dev libffi-dev openssl-dev gcc libc-dev make py-pip bash && pip install docker-compose 
RUN mkdir /ssh
COPY ./up.sh /
RUN chmod 777 /up.sh


