FROM alpine:latest
ENV APP_NAME="app.com" \
    APP_PORT=80 \
    TOR_PORT=80
COPY tor.sh /tor.sh
RUN apk add --update --no-cache tor && \
    mkdir -p /var/lib/tor/hidden_service && \
    chown -R tor /var/lib/tor/hidden_service && \
    chmod 700 /var/lib/tor/hidden_service && \
    chown -R tor /etc/tor && \
    chmod +x /tor.sh
USER tor
VOLUME ["/var/lib/tor/hidden_service"]
ENTRYPOINT ["/tor.sh"]
CMD ["-f", "/etc/tor/torrc"]