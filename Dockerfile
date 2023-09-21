FROM alpine:latest
ENV APP_PORT=80
ENV TOR_PORT=80
RUN apk add --update --no-cache tor
COPY tor.sh /tor.sh
RUN chown -R tor /etc/tor && \
    chmod +x /tor.sh
USER tor
VOLUME ["/var/lib/tor/hidden_service"]
ENTRYPOINT ["/tor.sh"]
CMD ["-f", "/etc/tor/torrc"]