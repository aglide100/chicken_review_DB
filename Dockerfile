# postgres/Dockerfile
#FROM postgres:11.7
FROM postgres:9.3
ENV POSTGRES_USER heejun
ENV POSTGRES_PASSWORD hellopsql
ENV POSTGRES_DB chicken_review

#ENTRYPOINT ./postgres/init-user-db.sh
#EXPOSE 5666