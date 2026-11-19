# [Choice] Alpine version: edge, latest...
FROM alpine:edge

# Set locale so Unicode characters render correctly in locale-aware tools (e.g. tmux).
ENV LANG=C.UTF-8

# Mainly done to upgrade packages to avoid security issues
RUN apk -U upgrade --no-cache && export ALPINE_FRONTEND=noninteractive
    # && rm -rf /var/lib/apt/lists/*


RUN apk update --no-cache && export ALPINE_FRONTEND=noninteractive \
    && apk add --no-cache curl git fish rsync \
    bubblewrap tar gzip ca-certificates \
    && apk add --no-cache typst typst-fish-completion \
    && apk add --no-cache --virtual .brilliant-CV font-roboto \
    font-source-sans font-awesome
    # && rm -rf /var/lib/apt/lists/*


COPY --from=ghcr.io/casey/just:latest /just /usr/local/bin/