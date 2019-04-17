sudo apt-get update
sudo apt-get install memcached libmemcached-tools
# Copy /etc/memcached.conf from existing machine
sudo systemctl restart memcached

git clone https://github.com/ccp-project/eval-scripts.git
cd eval-scripts 
git submodule update --init --recursive
./ccp-system-setup.sh
make 
