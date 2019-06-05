# ---
# Category: Util
# Since: 0.1.0
# Usage: l.benchmark <arg>...
# ---

_l.run_benchmark() {
  local c=$1
  local repeats=$2

  # Run the given command [repeats] times
  for (( i = 1; i <= "$repeats" ; i++ )); do
    $c > /dev/null 2>&1
  done;
}

l.benchmark() {
  local c=$1
  local repeats=$2

  echo "Benchmarking: Run command '$c' [$repeats] times.";
  echo "============="
  type "$c"
  echo "============="

  time _l.run_benchmark "$c" "$repeats"

  printf '\n--------------------------\n\n'
}
