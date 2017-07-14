curl --include --request POST http://localhost:4741/doctors \
  --header "Content-Type: application/json" \
  --data '{
    "doctor": {
      "family_name": "Kenobi",
      "given_name": "Obi Wan",
      "specialty": "Sith Lords",
      "gender": "m"
    }
  }'

FAMILYNAME='Kenobi'
GNAME='Obi Wan'
SPEC='Sith Lords'
G='m'
curl --include --request POST http://localhost:4741/doctors \
  --header "Content-Type: application/json" \
  --data '{
    "doctor": {
      "family_name": "'"${FAMILYNAME}"'",
      "given_name": "'"${GNAME}"'",
      "specialty": "'"${SPEC}"'",
      "gender": "'"${G}"'"
    }
  }'
