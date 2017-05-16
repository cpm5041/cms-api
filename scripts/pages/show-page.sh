#!/bin/sh
#! This works
API="http://localhost:4741"
URL_PATH="/pages"
ID="591b42f4ce289ea49aef04c1"

curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request GET

echo
