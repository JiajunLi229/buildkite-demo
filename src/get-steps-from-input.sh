steps_count=$(buildkite-agent meta-data get generated-number)

buildkite-agent meta-data set steps-count "$steps_count"

echo "steps:"
steps_count=${steps_count}
for((i=0;i<steps_count;i++));
do
  cat <<YAML
- label: "$i"
  command: ./src/generate-and-store-number.sh $i
YAML
done
