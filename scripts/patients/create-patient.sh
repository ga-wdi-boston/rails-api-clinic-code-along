curl --include --request POST http://localhost:4741/patients \
  --header "Content-Type: application/json" \
  --data '{
    "patient": {
      "name": "Chris Payne",
      "diagnosis": "Free Fitness Junkie",
      "born_on": "1987-08-03"
    }
  }'

NAME='Uncle Sam'
DIAGNOSIS='Freedonemia'
DOB='1774-07-04'
curl --include --request POST http://localhost:4741/patients \
  --header "Content-Type: application/json" \
  --data '{
    "patient": {
      "name": "'"${NAME}"'",
      "diagnosis": "'"${DIAGNOSIS}"'",
      "born_on": "'"${DOB}"'"
    }
  }'
