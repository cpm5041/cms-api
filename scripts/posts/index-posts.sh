#!/bin/sh
#! this works
API="http://localhost:4741"
URL_PATH="/posts"
TOKEN="AdzntNBqLLLd5KGH5d5Tk6rcx3cma3qzcDpjWxss23k=--8HKtqF/JZ/0wRWkaIBcKClkGREYeH2nNxR7DIcFt8iI="


curl "${API}${URL_PATH}" \
  --include \
  --request GET \
  --header "Authorization: Token token=$TOKEN"

echo
