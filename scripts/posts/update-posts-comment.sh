#!/bin/bash
API="http://localhost:4741"
URL_PATH="/posts/592eda341325fb0f2b61871b/comments/592eda481325fb0f2b61871d"
ID="592eda481325fb0f2b61871d"
TOKEN="/s2btjcft9q5KnwGmHCCdOK8P5+5OE5I1u9MXtdncck=--gNk6a9Tg3dWb+cucijtSORws3do4C6RC6oVqIglSwhU="
COMMENTS=" 1125 checking for error - Jims for real updated comment"

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
