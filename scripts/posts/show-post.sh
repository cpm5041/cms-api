#!/bin/sh
API="http://localhost:4741"
URL_PATH="/posts"
ID="591b0bd9c69bb72cb59498ee"

curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request GET

echo
