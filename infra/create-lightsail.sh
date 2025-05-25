#!/bin/bash

# VARIABLES
INSTANCE_NAME="test-instance-01"     # Change this to your preferred instance name
REGION="us-east-1"                   # Set your preferred AWS region
BLUEPRINT_ID="ubuntu_22_04"          # Ubuntu 22.04 LTS
BUNDLE_ID="nano_3_0"                 # $3.50/month plan
KEY_PAIR_NAME="MyKeyPair"            # Must exist in your Lightsail account

# CREATE INSTANCE
aws lightsail create-instances \
    --instance-names "$INSTANCE_NAME" \
    --availability-zone "${REGION}a" \
    --blueprint-id "$BLUEPRINT_ID" \
    --bundle-id "$BUNDLE_ID" \
    --key-pair-name "$KEY_PAIR_NAME"
