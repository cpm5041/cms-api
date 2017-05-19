#!/bin/bash
API="http://localhost:4741"
URL_PATH="/pages"
ID="591b42f4ce289ea49aef04c1"
TOKEN="mQbfWxO5b1yD4Fcz8CCtmVV07HValSz4vz5DfZA84nI=--xfYGH2CUnTciCT6YrD3UlmWPW6hBFnO8yUphPTAzv80="

curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request DELETE \
  --header "Authorization: Token token=${TOKEN}"

echo
