curl --include --request POST http://localhost:4741/patients \
  --header "Content-Type: application/json" \
  --data '{
    "patient": {
      "name": "Luke Skywalker",
      "diagnosis": "Daddy Issues",
      "born_on": "1987-08-03"
    }
  }'

NAME='General Leia Organa'
DIAGNOSIS='Total Badass'
DOB='1977-05-25'
curl --include --request POST http://localhost:4741/patients \
  --header "Content-Type: application/json" \
  --data '{
    "patient": {
      "name": "'"${NAME}"'",
      "diagnosis": "'"${DIAGNOSIS}"'",
      "born_on": "'"${DOB}"'",
      "doctor_id": 1
    }
  }'
