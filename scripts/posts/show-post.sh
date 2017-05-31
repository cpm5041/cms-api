#!/bin/sh
API="http://localhost:4741"
URL_PATH="/posts"
ID="592ee5b28bfbfa121c280677"

curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request GET

echo
