# DlerUDP

Some clash proxy list subscribe url don't support filter out the proxies do not support UDP.
This tools help you filter proxies support udp.

# install

```
sudo mkdir /etc/nginx/lua
sudo ln -s $(pwd)/dlerudp /etc/nginx/sites-enabled/dlerudp
sudo ln -s $(pwd)/dlerudp.lua /etc/nginx/lua/dlerudp.lua
sudo apt install liblua5.1-dev lua5.1 libyaml-dev
git submodule init
git submodule update
cd lyaml
build-aux/luke
sudo build-aux/luke install
sudo nginx -s reload
```