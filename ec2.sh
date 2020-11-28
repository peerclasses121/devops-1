#!/bin/bash

/usr/local/bin/aws ec2 run-instances \
    --image-id $image \
    --instance-type $InstanceType \
    --subnet-id $subnet \
    --security-group-ids $SGs \
    --key-name $KeyPair \
    --count 1 \
    --region $region \
    --dry-run
