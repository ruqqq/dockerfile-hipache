# use hipache
from hipache:latest

# Add supervisor conf
add ./supervisord.conf /etc/supervisor/conf.d/supervisord.conf

# Add ssl dir so we can mount volume to specify certs
run mkdir -p /etc/ssl

# Add redis conf
add ./redis.conf /etc/redis/redis.conf

# Add default hipache config
add ./config.json /usr/local/lib/node_modules/hipache/config/config.json

# Expose hipache and redis
expose  80
expose  443
expose  6379

# Start supervisor
cmd ["supervisord", "-n"]
