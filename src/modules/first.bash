# ---
# Category: Collection
# Since: 0.1.0
# Usage: l.first <array_name>
# Description: It will return the value of arg1.
# ---

l.first() {
  local -n a=$1
  printf '%s\n' "${a[@]:0:1}"
}
