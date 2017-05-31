#!/bin/bash
API="http://localhost:4741"
URL_PATH="/posts/592ee5b28bfbfa121c280677/comments"
ID="592ee5b28bfbfa121c280677"
TOKEN="HzZ8HkbAdamEuHcUUXnsMmKDDtYH45l/p+uQ1xBYWsA=--RKqddsxLNdri753TV7vsZxA246/dWcl3sFE+C/4eN0g="
COMMENTS=" 2nd delete test comment"

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
