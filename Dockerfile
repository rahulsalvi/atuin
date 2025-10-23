FROM ghcr.io/atuinsh/atuin:18.10.0

USER root
RUN mkdir -p /usr/local/share/ca-certificates
COPY ext/pki/tls/*.crt /usr/local/share/ca-certificates
RUN apt-get update \
  && apt-get install -y ca-certificates \
  && rm -rf /var/lib/apt/lists/* \
  && update-ca-certificates

USER atuin
