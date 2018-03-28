#!/bin/sh

set -eu

function quit {
    /usr/share/openvswitch/scripts/ovs-ctl stop --no-ovs-vswitchd 
    exit 0
}

trap quit SIGTERM

/usr/share/openvswitch/scripts/ovs-ctl start --system-id=random --no-ovs-vswitchd 

while true; do sleep 5; done

