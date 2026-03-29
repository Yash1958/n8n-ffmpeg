FROM node:20-alpine
RUN apk add --no-cache \
    ffmpeg \
    libass \
    fontconfig \
    tzdata \
    curl \
    wget
RUN npm install -g n8n
RUN ffmpeg -version
EXPOSE 5678
ENV N8N_ALLOW_EXEC=true
ENV EXECUTIONS_PROCESS=main
ENV N8N_RUNNERS_ENABLED=true
ENV HOME=/home/node
USER node
CMD ["n8n", "start"]
