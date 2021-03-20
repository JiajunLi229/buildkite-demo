NUMBER=$((( $RANDOM % 100 )  + 1))
steps_count=$(buildkite-agent meta-data get total)

echo "random number is ${NUMBER},total steps are ${steps_count}"
