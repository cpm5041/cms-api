#!/bin/bash

API="http://localhost:4741"
URL_PATH="/change-password"
TOKEN="285ZufofnQvDCtOJmqN09FZ6pLPniEp1MBDUauYV8QA=--wQGqVnom4QesiN1XoELDjzmgMl8wcOGB5XYCK09sHdc="
ID="591b05be0fd8d510e4e1fe76"
OLDPW="shake"
NEWPW="bake"

curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request PATCH \
  --header "Authorization: Token token=${TOKEN}" \
  --header "Content-Type: application/json" \
  --data '{
    "passwords": {
      "old": "'"${OLDPW}"'",
      "new": "'"${NEWPW}"'"
    }
  }'

echo
