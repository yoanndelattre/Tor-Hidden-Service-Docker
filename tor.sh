#!/bin/sh
echo "Write 'HiddenServiceDir /var/lib/tor/hidden_service/' in /etc/tor/torrc file"
echo "HiddenServiceDir /var/lib/tor/hidden_service/" >> /etc/tor/torrc
echo "Write 'HiddenServiceVersion 3' in /etc/tor/torrc file"
echo "HiddenServiceVersion 3" >> /etc/tor/torrc
echo "Write 'HiddenServicePort ${TOR_PORT} ${APP_ADDR}:${APP_PORT}' in /etc/tor/torrc file"
echo "HiddenServicePort ${TOR_PORT} ${APP_ADDR}:${APP_PORT}" >> /etc/tor/torrc
exec tor "$@"