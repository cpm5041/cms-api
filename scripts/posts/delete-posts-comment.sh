#!/bin/bash
API="http://localhost:4741"
URL_PATH="/posts/592ee5b28bfbfa121c280677/comments/592eff364f73491603346d49"
ID="592eff364f73491603346d49"
TOKEN="HzZ8HkbAdamEuHcUUXnsMmKDDtYH45l/p+uQ1xBYWsA=--RKqddsxLNdri753TV7vsZxA246/dWcl3sFE+C/4eN0g="

curl "${API}${URL_PATH}" \
--include \
--request DELETE \
--header "Authorization: Token token=${TOKEN}"

echo
