git clone https://github.com/moom0o/aria2.git
cd aria2
apt install nettle-dev libgmp-dev libssh2-1-dev libc-ares-dev libxml2-dev zlib1g-dev libsqlite3-dev pkg-config libssl-dev libxml2-dev libcppunit-dev autoconf automake autotools-dev autopoint libtool -y
autoreconf -i
./configure
make
cp ./src/aria2c /usr/bin/
