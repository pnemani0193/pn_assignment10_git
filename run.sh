#!/usr/bin/env bash
echo $1 > token-file1
gcloud config set project pn-project-374416
gcloud compute instances create pn-instance-1 --access-token-file=token-file1 --zone=us-central1-a --network-interface=subnet=pn-subnet1,no-address --tags=web-server,http-server,https-server
