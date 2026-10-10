# [Choice] Debian version: trixie, bookworm, latest...
FROM debian-base:latest

# Mainly done to upgrade packages to avoid security issues
RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get upgrade -y && rm -rf /var/lib/apt/lists/*


RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    #&& apt-get -y install --no-install-recommends <your-package-list-here>
    && install_packages opam


RUN opam init -y --disable-sandboxing && \
    eval $(opam env) && \
    opam install -y dune ocaml-lsp-server utop ocamlformat