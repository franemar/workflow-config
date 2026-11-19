# [Choice] Alpine version: edge, latest...
FROM alpine:edge

# Set locale so Unicode characters render correctly in locale-aware tools (e.g. tmux).
ENV LANG=C.UTF-8

# Mainly done to upgrade packages to avoid security issues
RUN apk update && export ALPINE_FRONTEND=noninteractive \
    && apk upgrade
    # && rm -rf /var/lib/apt/lists/*


RUN apk update && export ALPINE_FRONTEND=noninteractive \
    && apk add curl git fish rsync \
    bubblewrap tar gzip ca-certificates \
    && apk add typst typst-fish-completion \
    && apk cache clean
    # && rm -rf /var/lib/apt/lists/*


COPY --from=ghcr.io/casey/just:latest /just /usr/local/bin/