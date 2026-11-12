# [Choice] Debian version: trixie, bookworm, latest...
FROM alpine:edge

# Mainly done to upgrade packages to avoid security issues
RUN apk update && export ALPINE_FRONTEND=noninteractive \
    && apk upgrade
    # && rm -rf /var/lib/apt/lists/*


RUN apk update && export ALPINE_FRONTEND=noninteractive \
    && apk add typst typst-fish-completion \
    && apk cache clean
    # && rm -rf /var/lib/apt/lists/*