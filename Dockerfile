ARG TAG=latest

FROM minio/minio:${TAG}

ENV MINIO_ROOT_USER=minioadmin
ENV MINIO_ROOT_PASSWORD=minioadmin
ENV MINIO_BROWSER=off

RUN mkdir -p /data

CMD ["server", "/data", "--console-address", ":9001"]
