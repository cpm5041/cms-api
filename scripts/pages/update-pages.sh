#!/bin/bash
API="http://localhost:4741"
URL_PATH="/pages"
ID="591b42f4ce289ea49aef04c1"
TOKEN="mQbfWxO5b1yD4Fcz8CCtmVV07HValSz4vz5DfZA84nI=--xfYGH2CUnTciCT6YrD3UlmWPW6hBFnO8yUphPTAzv80="
TEXT="This is a stupid update"

curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "page": {
      "body": "'"${TEXT}"'"
    }
  }'

echo
