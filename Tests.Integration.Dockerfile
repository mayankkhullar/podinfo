FROM 983894348296.dkr.ecr.us-west-2.amazonaws.com/platform.podinfo:latest
USER root
RUN apk update && apk  upgrade && apk add bash && rm -rf /var/cache/apk/*
RUN mkdir /app
ADD entrypoint.sh /entrypoint.sh
USER app
ENTRYPOINT ["/entrypoint.sh"]

CMD ["echo", "'success'"]
