#!/bin/sh
API="http://localhost:4741"
URL_PATH="/usercomments"
TOKEN="JiKIyargLnWRy5U0gogfLEE4oKYc83rNsuU75hhG94g=--5lGe2Hn5bMWoGvKK8k0IuuLvRQsMCQe/Sw5J/c8ogTA="
ID="591c576b5682d21c10989711"

curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request GET \
  --header "Authorization: Token token=${TOKEN}"\
  --header "Content-Type: application/json"

echo
