curl --include --request POST http://localhost:4741/patients \
  --header "Content-Type: application/json" \
  --data '{
    "patient": {
      "name": "'"${NAME}"'",
      "diagnosis": "'"${DIAGNOSIS}"'",
      "born_on": "'"${BORN_ON}"'"
    }
  }'
