export DEBIAN_FRONTEND=noninteractive
# Startup commands go here

sudo sysctl -w net.ipv4.ip_forward=1

sudo ip addr add 10.0.1.1/30 dev enp0s9
sudo ip link set enp0s9 up

sudo ip link add link enp0s8 name enp0s8.7 type vlan id 7
sudo ip link add link enp0s8 name enp0s8.8 type vlan id 8

sudo ip addr add 192.168.0.1/26 dev enp0s8.7
sudo ip addr add 192.168.1.1/24 dev enp0s8.8
sudo ip link set enp0s8 up

sudo ip route add 192.168.2.0/26 via 10.0.1.2