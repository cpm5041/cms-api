#!/bin/bash
API="http://localhost:4741"
URL_PATH="/posts"
ID="591b0bd9c69bb72cb59498ee"
TOKEN="AdzntNBqLLLd5KGH5d5Tk6rcx3cma3qzcDpjWxss23k=--8HKtqF/JZ/0wRWkaIBcKClkGREYeH2nNxR7DIcFt8iI="
TEXT="This is an update made at 10:32"

curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "post": {
      "body": "'"${TEXT}"'"
    }
  }'

echo
