#!/bin/bash
API="http://localhost:4741"
URL_PATH="/posts"
TOKEN="6AUj3TCz/Op5dcqTdKrFGa7o2h4i1eFGWdB1T7qYwj0=--2IdivyoQPiPOR68UiSuv3+r18RJT2mCA2rXXzYTLlxU="
TITLE="Yes! Blog"
BODY="Our exciting testing journey continues"

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
