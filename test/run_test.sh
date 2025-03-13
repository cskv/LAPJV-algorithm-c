#!/bin/bash

file_names=(
  examples/example1/example1
  examples/example2/example2
  examples/example3/example3
)

test_case() {
  ./../build/test "${1}.csv"
  output=$()
  if  cmp "${1}.sol" "solution.txt"; then
    echo "[Test case ${1}]: PASSED"
  else
    echo "[Test case ${1}]: FAILED"
  fi
}
# Run all test cases
for i in "${file_names[@]}"; do
  test_case ${i}
done
