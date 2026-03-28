FROM n8nio/n8n:latest

USER root

RUN apk update && \
    apk add --no-cache \
        ffmpeg \
            ffmpeg-libs \
                libass \
                    font-noto \
                        fontconfig \
                            tzdata \
                                curl \
                                    wget \
                                        && rm -rf /var/cache/apk/*

                                        RUN ffmpeg -version

                                        USER node

                                        EXPOSE 5678

                                        ENV N8N_ALLOW_EXEC=true
                                        ENV EXECUTIONS_PROCESS=main
                                        ENV N8N_RUNNERS_ENABLED=true

                                        CMD ["n8n", "start"]
