FROM n8nio/n8n:latest
USER root
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    ffmpeg \
    libass9 \
    fonts-noto \
    fontconfig \
    tzdata \
    curl \
    wget \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*
RUN ffmpeg -version
USER node
EXPOSE 5678
ENV N8N_ALLOW_EXEC=true
ENV EXECUTIONS_PROCESS=main
ENV N8N_RUNNERS_ENABLED=true
CMD ["n8n", "start"]
