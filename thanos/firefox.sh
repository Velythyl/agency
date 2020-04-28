#!/bin/bash

apt-get purge firefox  -y
rm -r -f /home/charlie/.mozilla || true
rm -r -f /home/charlie/.macromedia || true
rm -r -f /etc/firefox/ || true
rm -r -f /usr/lib/firefox || true
rm -r -f /usr/lib/firefox-addons/ || true
