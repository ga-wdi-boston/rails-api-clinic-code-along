curl --include --request PATCH http://localhost:4741/doctors/$ID \
  --header "Content-Type: application/json" \
  --data '{
	"doctor": {
		"specialty": "Jedi Mind Tricks"
	}
}'
