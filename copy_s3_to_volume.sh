#!/bin/bash

# Assuming your S3 bucket is named "my-s3-bucket" and you want to copy all files to the /data directory

aws s3 cp s3://test-docker-volumes /data --recursive

# Add any additional commands you need here
