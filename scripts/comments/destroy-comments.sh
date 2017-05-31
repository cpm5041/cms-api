#!/bin/bash
API="http://localhost:4741"
URL_PATH="/comments"
ID="591b0bd9c69bb72cb59498ee"
TOKEN="AdzntNBqLLLd5KGH5d5Tk6rcx3cma3qzcDpjWxss23k=--8HKtqF/JZ/0wRWkaIBcKClkGREYeH2nNxR7DIcFt8iI="

curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request DELETE \
  --header "Authorization: Token token=${TOKEN}"

echo
