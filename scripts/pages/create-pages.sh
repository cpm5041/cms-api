#!/bin/bash
#!/ this works
API="http://localhost:4741"
URL_PATH="/pages"
TOKEN="6ZonqZ2CpAxAVOPfL0voVIy8pTRQ3HM2CnJtuNZrgNc=--4Et10dt52oXYOqcTST7K36UBoHXoArky1EJNxgFvwb8="
TITLE="21nd Blog"
BODY="Our exciting testing journey continues"
FOOTER="Foot"
BACKGROUND="blue"

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
     "BACKGROUND": "'"${BACKGROUND}"'"

   }
 }'
#  jjj
#
# echo
# #! testing with missing auth info
# #! this allows creation without a token being passed. BAD!
# API="http://localhost:4741"
# URL_PATH="/posts"
# TITLE="Test Blog"
# BODY="Will this post without a token being passed in the request? 10:53 am"
#
# curl "${API}${URL_PATH}" \
#  --include \
#  --request POST \
#  --header "Content-Type: application/json" \
#  --header "Authorization: Token token=${TOKEN}" \
#  --data '{
#    "post": {
#      "title": "'"${TITLE}"'",
#      "body": "'"${BODY}"'"
#    }
#  }'
#
#
#  #! testing with missing auth info
#  #! this works. this DOES NOT allow creation without a token. GOOD
#  API="http://localhost:4741"
#  URL_PATH="/posts"
#  BODY="Will this post without a title in the request?"
#
#  curl "${API}${URL_PATH}" \
#   --include \
#   --request POST \
#   --header "Content-Type: application/json" \
#   --data '{
#     "post": {
#       "title": "'"${TITLE}"'",
#       "body": "'"${BODY}"'"
#     }
#   }'
#
# echo
#
# #! testing with missing auth info
# #! this allows creation without a title!!
# API="http://localhost:4741"
# URL_PATH="/posts"
# TOKEN="AdzntNBqLLLd5KGH5d5Tk6rcx3cma3qzcDpjWxss23k=--8HKtqF/JZ/0wRWkaIBcKClkGREYeH2nNxR7DIcFt8iI="
# BODY="Will this post without a title in the request?"
#
# curl "${API}${URL_PATH}" \
#  --include \
#  --request POST \
#  --header "Content-Type: application/json" \
#  --header "Authorization: Token token=${TOKEN}" \
#  --data '{
#    "post": {
#      "title": "'"${TITLE}"'",
#      "body": "'"${BODY}"'"
#    }
#  }'
