#!/bin/bash
API="http://localhost:4741"
URL_PATH="/posts"
TOKEN="EUJlz3ARuVAlJL0J8m+l3dVLc/ykzLSTLXb8z2DQ0n4=--aMTiImERqSVjDANjhSR2yunUez7ZhnBZTdRC32Dkz5Q="
TITLE="Testing comments with jim at 1058"
BODY="TESTing Post body"



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
