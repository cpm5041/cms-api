#!/bin/bash
API="http://localhost:4741"
URL_PATH="/posts"
TOKEN="HzZ8HkbAdamEuHcUUXnsMmKDDtYH45l/p+uQ1xBYWsA=--RKqddsxLNdri753TV7vsZxA246/dWcl3sFE+C/4eN0g="
TITLE="Testing delete"
BODY="Delete Post body"



curl "${API}${URL_PATH}" \
 --include \
 --request POST \
 --header "Content-Type: application/json" \
 --header "Authorization: Token token=${TOKEN}" \
 --data '{
   "post": {
     "title": "'"${TITLE}"'",
     "body": "'"${BODY}"'"
   }
 }'

 echo
