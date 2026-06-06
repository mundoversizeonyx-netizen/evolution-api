FROM node:20-alpine

RUN apk add --no-cache bash openssl ffmpeg

WORKDIR /evolution

COPY --from=atendai/evolution-api:v2.3.7 /evolution ./

EXPOSE 10000

CMD ["sh", "-c", "export SERVER_PORT=${PORT:-10000} && export SERVER_TYPE=http && node dist/main"]