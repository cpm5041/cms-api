#!/bin/bash
API="http://localhost:4741"
URL_PATH="/posts/592eda341325fb0f2b61871b/comments"
ID="592eda341325fb0f2b61871b"
TOKEN="EUJlz3ARuVAlJL0J8m+l3dVLc/ykzLSTLXb8z2DQ0n4=--aMTiImERqSVjDANjhSR2yunUez7ZhnBZTdRC32Dkz5Q="
COMMENTS="Jims  comment"

curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "comment": {
      "body": "'"${COMMENTS}"'"}
  }'

echo
