#!/bin/bash

lines=8 &&
tail -n+$lines $0 > /tmp/dockerbashinstall.tar.gz &&
tar zxvf /tmp/dockerbashinstall.tar.gz -C /  &&
source /etc/bash_completion.d/dockerbash.bash  &&
exit 0
