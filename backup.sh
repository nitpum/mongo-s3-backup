#!/bin/bash

BACKUP_FILE_NAME="$(date +%y-%m-%d_%H-%M-%S).gz"
BACKUP_FILE_PATH="/tmp/$BACKUP_FILE_NAME"

echo "access_key=$S3_ACCESS_KEY" >> /root/.s3cfg
echo "secret_key=$S3_SECRET_KEY" >> /root/.s3cfg
echo "bucket_location=$S3_BUCKET_LOCATION" >> /root/.s3cfg
echo "host_base=$S3_HOST_BASE" >> /root/.s3cfg
echo "host_bucket=$S3_HOST_BUCKET" >> /root/.s3cfg
echo "website_endpoint=$S3_WEBSITE_ENDPOINT" >> /root/.s3cfg

echo "Start mongodump..."

/usr/bin/mongodump --uri="$MONGO_URI" --gzip --archive="$BACKUP_FILE_PATH"

echo "Finish dump mongo: $BACKUP_FILE_PATH"

echo "Start s3 uploading..."

s3cmd put "$BACKUP_FILE_PATH" "$S3_PATH"

echo "Finish upload to S3: $S3_PATH"
