#!/usr/bin/env bash
#!/bin/bash

# can be used to merge all ddns changes into zone files,
# for example, before backup of zone files

sudo docker exec -ti dns-master rndc sync -clean
