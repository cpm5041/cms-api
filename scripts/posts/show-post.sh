#!/bin/sh
API="http://localhost:4741"
URL_PATH="/posts"
ID="592eda341325fb0f2b61871b"

curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request GET

echo
