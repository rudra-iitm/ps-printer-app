#!/bin/sh
set -eux

/usr/bin/dbus-daemon --system --nofork &
/usr/sbin/avahi-daemon -f /etc/avahi/avahi-daemon.conf --no-drop-root

exec tail -f /dev/null
