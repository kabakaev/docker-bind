#!/usr/bin/env bash
#!/bin/bash

# check zone files and bind configs before calling _reload.sh

command='named-checkconf /etc/bind/named.conf'
command+=' && named-checkzone tss.cool /etc/bind/authoritative/cool.tss.internal.zone.db'
command+=' && named-checkzone tss.cool /etc/bind/authoritative/cool.tss.external.zone.db'

sudo docker exec -ti dns-master /bin/sh -c "$command"
command_exit_code=$?

echo Exit code = $command_exit_code

exit $command_exit_code
