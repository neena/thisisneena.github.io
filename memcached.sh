sudo apt-get update
sudo apt-get install memcached libmemcached-tools
# Copy /etc/memcached.conf from existing machine
sudo systemctl restart memcached
