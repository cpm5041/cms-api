#!/bin/sh
#! this works
API="http://localhost:4741"
URL_PATH="/pages"

curl "${API}${URL_PATH}" \
  --include \
  --request GET \

echo
