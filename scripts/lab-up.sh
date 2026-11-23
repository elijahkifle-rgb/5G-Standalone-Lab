#!/bin/bash
/home/elijahkifle/lab-net.sh
ip netns list | grep -q ue1 || {
  ip netns add ue1
  ip link add veth-gnb type veth peer name veth-ue
  ip link set veth-ue netns ue1
  ip addr add 10.200.1.1/24 dev veth-gnb
  ip link set veth-gnb up
  ip netns exec ue1 ip addr add 10.200.1.2/24 dev veth-ue
  ip netns exec ue1 ip link set veth-ue up
  ip netns exec ue1 ip link set lo up
}
