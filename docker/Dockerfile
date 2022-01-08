FROM --platform=linux/x86_64 mysql:latest
ENV MYSQL_ROOT_PASSWORD admin123
ENV MYSQL_DATABASE pucsdStudents
ENV MYSQL_USER pucsd
ENV MYSQL_PASSWORD pucsd
COPY ./test.sql /docker-entrypoint-initdb.d/
