#!/bin/bash

#options for TEMPLATE: 'defaultTemplate', 'coolTemplate', or 'fancyTemplate'
API="http://localhost:4741"
URL_PATH="/pages"
TOKEN="OonxbSCybd5QPYr05M46Ar7vLugCNtKenZV119jyIlI=--S1nqbAMn/WMZVuK8FthVRkK+EEkuSKgvSGP/p9ZVG+w="
TITLE="21nd Blog"
BODY="Our exciting testing journey continues"
FOOTER="Foot"
TEMPLATE="defaultTemplate"

curl "${API}${URL_PATH}" \
 --include \
 --request POST \
 --header "Content-Type: application/json" \
 --header "Authorization: Token token=${TOKEN}" \
 --data '{
   "page": {
     "title": "'"${TITLE}"'",
     "body": "'"${BODY}"'",
     "footer": "'"${FOOTER}"'",
     "template": "'"${TEMPLATE}"'"

   }
 }'
