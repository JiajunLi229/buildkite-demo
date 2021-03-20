steps_count=100

buildkite-agent meta-data set total "$steps_count"

echo "steps:"
steps_count=${steps_count}
for((i=0;i<steps_count;i++));
do
  cat <<YAML
- label: "$i"
  command: ./src/get-number.sh $i
YAML
done
