#!/bin/bash
API="http://localhost:4741"
URL_PATH="/posts/592ee5b28bfbfa121c280677/comments/592ee60c8bfbfa121c280678"
ID="592ee60c8bfbfa121c280678"
TOKEN="HzZ8HkbAdamEuHcUUXnsMmKDDtYH45l/p+uQ1xBYWsA=--RKqddsxLNdri753TV7vsZxA246/dWcl3sFE+C/4eN0g="
COMMENTS=" creating new comment id   comment"

curl "${API}${URL_PATH}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "comment": {
      "body": "'"${COMMENTS}"'"}
  }'

echo
