#!/bin/bash

lines=8 &&
tail -n+$lines $0 > /tmp/dockersearchinstall.tar.gz &&
tar zxvf /tmp/dockersearchinstall.tar.gz -C /  &&
source /etc/bash_completion.d/dockersearch.bash  &&
exit 0
