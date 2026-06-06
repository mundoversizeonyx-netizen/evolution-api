FROM evoapicloud/evolution-api:v2.3.7
ENV DOCKER_ENV=true
EXPOSE 8080
ENTRYPOINT ["node", "dist/main"]