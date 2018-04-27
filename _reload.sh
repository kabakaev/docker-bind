#!/usr/bin/env bash
#!/bin/bash


script_dir=`dirname "${BASH_SOURCE[0]}"`

"$script_dir"/_check_config.sh && sudo docker exec -ti dns-master rndc reload
