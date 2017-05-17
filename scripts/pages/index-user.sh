#!/bin/sh
API="http://localhost:4741"
URL_PATH="/userpages"
TOKEN="DD2U1ft5cl9YRz0qYg7D1oCpve+I983n3g9qmJ9Lzek=--Nzj5DIDzfImmuJvOp3asfF4gUuNIxW8v25Qh/QMdG40="
ID="591c9d1638ae09d166eb9e54"

curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request GET \
  --header "Authorization: Token token=${TOKEN}"\
  --header "Content-Type: application/json"

echo
