generated_number=$(generate_number)

echo "generated number is ${generate_number}"

buildkite-agent meta-data set "generated-number" "${generated_number}"
