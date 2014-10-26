# Hipache Dockerfile

This hipache image will persist the redis data with `save 300 1`.

For easy deployment (take note of the `/root/ssl` - should contain `ssl.key` and `ssl.crt`):
```
$ docker run --restart="always" -d --name router -p 80:80 -p 443:443 -v /root/ssl:/etc/ssl ruqqq/hipache
```

If you wanna tweak hipache config, mount volume to `/usr/local/lib/node_modules/hipache/config` with a folder with `config.json` inside.