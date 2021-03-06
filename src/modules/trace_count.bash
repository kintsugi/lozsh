# ---
# Category: Debug
# Since: 0.1.0
# Usage: l.trace_count [<label>=trace]
# Description: It prints a count which increased after each called.
# Description: Attention: l.trace_count should run in same process. It will not work in subprocess such as $(l.trace_count)
# ---

l.trace_count() {
  local label=${1:-trace}
  local key=_LOBASH_trace_count_$label

  if [[ -z ${!key:-} ]]; then
    read -r "$key" <<< 0
  fi

  read -r "$key" <<< $(( ${!key} + 1 ))

  printf '[%s] count: %s\n' "$label" "${!key}"
}
