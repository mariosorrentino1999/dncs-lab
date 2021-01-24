export DEBIAN_FRONTEND=noninteractive
# Startup commands go here

sudo ip addr add 192.168.0.2/26 dev enp0s8
sudo ip link set enp0s8 up

sudo ip route add 10.0.1.0/30 via 192.168.0.1 dev enp0s8
sudo ip route add 192.168.0.0/22 via 192.168.0.1 dev enp0s8