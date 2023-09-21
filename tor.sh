#!/bin/sh
chown -R tor /etc/tor
echo "HiddenServiceDir /var/lib/tor/hidden_service/" >> /etc/tor/torrc
echo "HiddenServicePort ${APP_PORT} 127.0.0.1:${TOR_PORT}" >> /etc/tor/torrc
exec tor "$@"