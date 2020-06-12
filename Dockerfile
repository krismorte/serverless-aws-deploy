from alpine:3.12.0

RUN apk update && apk add py3-pip && apk add nodejs=12.17.0-r0 && apk add npm=12.17.0-r0 --no-cache && rm -rf /var/cache/apk/*
RUN pip3 install --upgrade awscli
RUN npm install -g serverless