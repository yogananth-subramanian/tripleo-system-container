#!/bin/sh

set -eu

function quit {
    /usr/share/openvswitch/scripts/ovs-ctl stop --no-ovsdb-server
    exit 0
}

trap quit SIGTERM

/usr/share/openvswitch/scripts/ovs-ctl start --system-id=random --no-ovsdb-server

while true; do sleep 5; done

