curl --include --request PATCH http://localhost:4741/patients/$ID \
  --header "Content-Type: application/json" \
  --data '{
    "patient": {
      "name": "'"${NAME}"'",
      "diagnosis": "'"${DIAGNOSIS}"'",
      "born_on": "'"${BORN_ON}"'"
    }
  }'
