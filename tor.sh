#!/bin/sh
echo "Write 'HiddenServiceDir /var/lib/tor/hidden_service/' in /etc/tor/torrc file"
echo "HiddenServiceDir /var/lib/tor/hidden_service/" >> /etc/tor/torrc
echo "Write 'HiddenServiceVersion 3' in /etc/tor/torrc file"
echo "HiddenServiceVersion 3" >> /etc/tor/torrc
echo "Write 'HiddenServicePort ${APP_PORT} 127.0.0.1:${TOR_PORT}' in /etc/tor/torrc file"
echo "HiddenServicePort ${APP_PORT} 127.0.0.1:${TOR_PORT}" >> /etc/tor/torrc
exec tor "$@"