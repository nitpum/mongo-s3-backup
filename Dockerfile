FROM mongo:5.0.6

RUN apt update
RUN apt install python s3cmd -y

COPY backup.sh /backup.sh
RUN chmod +x /backup.sh

COPY ./.s3cfg /root/.s3cfg

ENTRYPOINT [ "/backup.sh" ]
