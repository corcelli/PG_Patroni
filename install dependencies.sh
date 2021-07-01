#install ETCD
dnf -y install http://mirror.centos.org/centos/7/extras/x86_64/Packages/etcd-3.3.11-2.el7.centos.x86_64.rpm
while true; do sleep 1; psql -h 127.0.0.1 -p5000 -U postgres -d postgres -c "select inet_server_addr();"; done