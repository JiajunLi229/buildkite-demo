NUMBER=$((( $RANDOM % 100 )  + 1))
steps_count=$(buildkite-agent meta-data get steps_count)

echo "random number is ${NUMBER},total steps are ${steps_count}"
